
(in-package :pddl)
(use-syntax :annot)

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



@doc "Returns 4 values or nil when no matching found.
Values are (success-p remaining-states new-matches used-states)."
(defun %apply-clause-rec (states precond-branch matches used-states)
  (match precond-branch
    ((andp preds)
     (%apply-and-rec states preds matches used-states))
    ((orp preds)
     (%apply-or-rec states preds matches used-states))
    ((notp pred)
     (%apply-not-rec states pred matches used-states))
    ((type pddl-predicate)
     (%apply-rec states precond-branch matches nil used-states))
    (_ (error "~@<~;May contain unrecognizable clause? ~A~;~@:>"
	      precond-branch))))

(defun %apply-and-rec (states preds matches used-states)
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
