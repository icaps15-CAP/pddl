
(in-package :pddl)
(use-syntax :annot)

@export
@doc "STATES : list of `pddl-atomic-state' .
PROBLEM: `pddl-problem'."
(defun appliable (states action)
  
  ;; assume all state in states are in the same domain
  
  ;; assume all object in states are declared in the problem
  
  ;; match the action precondition to the state
  
  
  ;; precondition has thefollowing form:
  ;; (AND #<PREDICATE TRUCK ?X>
  ;;      #<PREDICATE PLACE ?Y>
  ;;      #<PREDICATE PLACE ?Z>
  ;;      #<PREDICATE AT ?X ?Y>)
  ;; see parse-pre-GD .

  (%apply-clause-rec states (precondition action) nil))


@doc "returns 3 values. success-p, new-states, new-matches."
(defun %apply-clause-rec (states precond-branch matches)
  (match precond-branch
    ((andp preds)
     (%apply-and-rec states preds matches))
    ((orp preds)
     (%apply-or-rec states preds matches))
    ((notp pred)
     (%apply-not-rec states pred matches))
    ((type pddl-predicate)
     (%apply-rec states precond-branch matches nil))
    (_ (error "May contain unrecognizable clause? ~%~A" precond-branch))))

(defun %apply-and-rec (states preds matches)
  (multiple-value-match (%apply-clause-rec states (car preds) matches)
    (((not nil) new-states new-matches)
     (if-let ((rest (cdr preds)))
       (%apply-and-rec new-states rest new-matches)
       (values t new-states new-matches)))
    (() nil)))

(defun %apply-or-rec (states preds matches)
  (multiple-value-match (%apply-clause-rec states (car preds) matches)
    (((not nil) new-state new-matches)
     (values t new-state new-matches))
    (()
     (if-let ((rest (cdr preds)))
       (%apply-or-rec states rest matches)
       nil))))

(defun %apply-not-rec (states pred matches)
  (multiple-value-match (%apply-clause-rec states pred matches)
    (((not nil) _ _)
     nil)
    (()
     (values t states matches))))

(defun %apply-rec (unmatched pred matches unused)
  (if unmatched
      (if-let ((new-matches (%try-match pred (car unmatched) matches)))
	(values t (append unused (cdr unmatched)) new-matches)
	(%apply-rec (cdr unmatched) pred matches (cons (car unmatched) unused)))
      nil))

(defun eqname (a b)
  (eq (name a) (name b)))

@export
(defun %try-match (p s matches)
  (when (and (= (arity p) (arity s))
	     (eqname p s))
    (let ((matches (copy-seq matches))
	  (changed nil))
      (iter (for var in (parameters p))
	    (for obj in (parameters s))
	    (if-let ((matched-obj (getfe matches var)))
	      (if (eqname obj matched-obj)
		  (next-iteration)
		  (return-from %try-match nil))
	      (progn 
		(setf changed t)
		(setf (getf matches var) obj))))
      (values matches changed))))

(define-condition assignment-error ()
  ((variable :initarg :variable)
   (assignment :initarg :assignment)
   (old-assignment :initarg :old-assignment)))

(export 'assignment-error)
