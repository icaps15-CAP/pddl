
(in-package :pddl)
(use-syntax :annot)

@export
@doc "Signalled when the match conflict accured and start backtracking."
(define-condition assignment-error (error)
  ((state :initarg :state :reader state)
   (variable :initarg :variable)
   (assignment :initarg :assignment)
   (old-assignment :initarg :old-assignment)))

@export
@doc "STATES : `list' of `pddl-atomic-state' .
ACTION: `pddl-action'.
supported requirements:
 (:DISJUNCTIVE-PRECONDITIONS :NEGATIVE-PRECONDITIONS)
returns (values t remained-states matches used-states)
where remained-states are the states which did not appear in the precond
and used-states are those which did."
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

  ;; %apply-clause-rec only provides 1 matching to the current states,
  ;; so it would be necessary to retrieve as many matching as possible.

  (%apply-clause-rec states (precondition action) nil nil))

@export
(defun retrieve-all-match-set (states action)
  (if states
      (multiple-value-match (%apply-clause-rec states (precondition action) nil nil)
	((t _ matches used)
	 (cons matches
	       (iter (for u in used)
		     (warn "~@<~;removed ~a from the states!~;~@:>" u)
		     (when-let ((match (retrieve-all-match-set
					(remove u states) action)))
		       (appending match)))))
	((_) nil))
      nil))


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

(defun %apply-and-rec (states preds matches used-states)
  (tagbody
   start
     (return-from %apply-and-rec
       (handler-bind
	   ((assignment-error
	     (lambda (c)
	       (match c
		 ((class assignment-error
			 (variable (guard var (null (getf matches var))))
			 (old-assignment obj))
		  
		  (format t "~%removing any facts which matches ~a ~a ..."
			  var obj)
		  (setf
		   states
		   (remove-if
		    (let ((p (car preds)))
		      (lambda (s)
			(when 
			    (and (eqname s p)
				 (eq (nth (position
					   var (parameters p))
					  (parameters s))
				     obj))
			  (format t "~%removed ~a from the states!"
				  s)
			  t)))
		    states))
		  (format t "~%restarting...~%")
		  (go start))
		 (_ (format
		     t "~%assignment found, backtracking further..."))))))
	 (%%apply-and-rec states preds matches used-states)))))

(defun %%apply-and-rec (states preds matches used-states)
  (multiple-value-match (%apply-clause-rec states (car preds)
					   matches used-states)
    (((not nil) remaining-states new-matches used-states)
     (if-let ((rest (cdr preds)))
       (%apply-and-rec remaining-states rest new-matches used-states)
       (values t remaining-states new-matches used-states)))
    (() nil)))

(defun %apply-or-rec (states preds matches used-states)
  (multiple-value-match (%apply-clause-rec states (car preds) matches used-states)
    (((not nil) new-state new-matches used-states)
     (values t new-state new-matches used-states))
    (()
     (if-let ((rest (cdr preds)))
       (%apply-or-rec states rest matches used-states)
       nil))))

(defun %apply-not-rec (states pred matches used-states)
  (multiple-value-match (%apply-clause-rec states pred matches used-states)
    (((not nil) _ _)
     nil)
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
    (if-let ((new-matches (%try-match pred s matches)))
      (values t (append unused rest) new-matches (cons s used-states))
      (if rest
	  (%apply-rec-pruned rest pred matches (cons s unused) used-states)
	  nil))))

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
