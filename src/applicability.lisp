
(in-package :pddl)
(use-syntax :annot)

@export
@doc "Signalled when the match conflict has occured and start backtracking."
(define-condition assignment-error (error)
  ((state :initarg :state :reader state)
   (variable :initarg :variable)
   (assignment :initarg :assignment)
   (old-assignment :initarg :old-assignment))
  (:report
   (lambda (c s)
     (describe c s))))

@export
@doc "Signalled when the matching state is not found."
(define-condition state-not-found (condition)
  ((predicate :initarg :predicate)
   (matches :initarg :matches))
  (:report
   (lambda (c s)
     (describe c s))))

@export
@doc "Signalled when a state violates the negative condition."
(define-condition negative-condition-matched (condition)
  ((predicate :initarg :predicate)
   (matches :initarg :matches))
  (:report
   (lambda (c s)
     (describe c s))))

@export
@doc "STATES : `list' of `pddl-atomic-state' .
ACTION: `pddl-action'.
supported requirements:
 (:DISJUNCTIVE-PRECONDITIONS :NEGATIVE-PRECONDITIONS)
returns (values t remained-states matches used-states)
where remained-states are the states which did not appear in the precond
and used-states are those which did."
(defgeneric applicable (states action))

(defmethod applicable ((states list) (action pddl-action))
  (handler-bind ((assignment-error
                  (lambda (c)
                    (invoke-restart
                     (find-restart
                      'remove-conflict-and-continue c) c))))
    (%apply-clause-rec states
                       (precondition action)
                       nil
                       nil)))

(defmethod applicable ((states list) (aa pddl-actual-action))
  (handler-bind 
      ((assignment-error
        (lambda (c)
          (invoke-restart
           (find-restart
            'ignore-conflict-and-continue c) c))))
    (%apply-clause-rec
     states
     (precondition (action (domain aa) aa))
     (match-set aa)
     nil)))

(defun %delay-negatives (preds)
  (let (positive negative)
    (dolist (p preds)
      (match p
        ((notp _) (push p negative))
        (_ (push p positive))))
    (append positive negative)))
    

@doc "Returns 4 values or nil when no matching found.
Values are (success-p remaining-states new-matches used-states)."
(defun %apply-clause-rec (states precond-branch matches used-states)
  (match precond-branch
    ((andp (and preds (not nil)))
     (%apply-and-rec states (%delay-negatives preds)
                     matches used-states))
    ((andp nil)
     (values t states matches used-states))
    ((orp (and preds (not nil)))
     (%apply-or-rec states (nreverse (%delay-negatives preds))
                    matches used-states))
    ((orp nil)
     nil)
    ((notp pred)
     (%apply-not-rec states pred matches used-states))
    ((type pddl-predicate)
     (%apply-rec states precond-branch matches nil used-states))
    (_ (error "~@<~;May contain unrecognizable clause? ~A~;~@:>"
              precond-branch))))

(defun remove-conflict-handler (states preds matches used-states c)
  (match c
    ((class assignment-error
            (variable var)
            (old-assignment obj))
     (format t "~%removing facts matching ~a = ~a ..."
             var obj)
     (%apply-and-rec
      (prog1 (remove-if
              (let* ((p (car preds))
                     (params (parameters p)))
                (lambda (s)
                  (when (and (eqname s p)
                             (eq obj
                                 (nth (position var params)
                                      (parameters s))))
                    (format t "~%removed ~a" s)
                    t)))
              states)
        (format t "~%restarting...~%"))
      preds matches used-states))))

(defun %apply-and-rec (states preds matches used-states)
  (restart-case
      (%%apply-and-rec states preds matches used-states)
    (remove-conflict-and-continue (c)
      :test
      (lambda (c)
        (match c
          ((class assignment-error
                  (variable (guard var (null (getf matches var))))) t)))
      (remove-conflict-handler
       states preds matches used-states c))))


(defun %%apply-and-rec (states preds matches used-states)
  (multiple-value-match (%apply-clause-rec states (car preds)
                                           matches used-states)
    (((not nil) remaining-states new-matches used-states)
     (if-let ((rest (cdr preds)))
       (%apply-and-rec remaining-states rest new-matches used-states)
       (values t remaining-states new-matches used-states)))
    (() nil)))

(defun %apply-or-rec (states preds matches used-states)
  (multiple-value-match
      (ignore-errors
        (%apply-clause-rec states (car preds) matches used-states))
    (((not nil) new-state new-matches used-states)     (values t new-state new-matches used-states))
    (()
     (if-let ((rest (cdr preds)))
       (%apply-or-rec states rest matches used-states)
       nil))))

(defun %apply-not-rec (states pred matches used-states)
  (multiple-value-match
        (%apply-clause-rec states pred matches used-states)
    (((not nil) _ _)
     (signal 'negative-condition-matched
             :predicate pred
             :matches matches))
    (()
     (values t states matches used-states))))

(defun %apply-rec (unmatched pred matches unused used-states)
  (let (diffs sames)
    (dolist (u unmatched)
      (if (eqname u pred)
          (push u sames)
          (push u diffs)))
    (when sames
      (multiple-value-bind (success remaining-states
                                    new-matches new-used-states)
          (%apply-rec-pruned sames pred matches unused used-states)
        (values success (append diffs remaining-states)
                new-matches new-used-states)))))



(defun %apply-rec-pruned (unmatched pred matches unused used-states)
  (destructuring-bind (s . rest) unmatched
    (if-let ((new-matches
              (restart-case 
                  (%try-match pred s matches)
                (ignore-conflict-and-continue (c)
                  @ignore c
                  nil))))
      (values t (append unused rest) new-matches (cons s used-states))
      (if rest
          (%apply-rec-pruned rest pred matches (cons s unused) used-states)
          (signal 'state-not-found
                :predicate pred
                :matches matches)))))

@export
(defun %try-match (p s matches) ;; predicate, state, match-set(plist).
  (when (and (= (arity p) (arity s))
             (eqname p s))
    (let ((matches (copy-seq matches))
          (changed nil))
      (iter (for var in (parameters p))
            (for obj in (parameters s))
            (if-let ((matched-obj (getf matches var)))
              (if (eq obj matched-obj)
                  (next-iteration)
                  (error 'assignment-error
                         :state s
                         :variable var
                         :assignment obj
                         :old-assignment matched-obj))
              (progn 
                (setf changed t)
                (setf (getf matches var) obj))))
      (values matches changed))))
