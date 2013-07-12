
(in-package :pddl)
(use-syntax :annot)

@export
(defun parse-plan (pathname *domain* *problem*)
  (with-open-file (s pathname)
    (flet ((instantiate (plan-description index)
	     (ematch plan-description
	       ((list* action-name arguments)
		(assert (action *domain* action-name) nil
			"action-name ~A not found in ~A"
			action-name *domain*)
		(pddl-actual-action
		 :name action-name
		 :domain *domain*
		 :problem *problem*
		 :index index
		 :parameters
		 (mapcar (curry #'object *problem*)
			 arguments))))))
      (iter (for plan-description in (%parse-plan-rec s nil))
	    (for index from 0)
	    (collecting (instantiate plan-description index))))))

(defun %parse-plan-rec (s acc)
  (if-let ((read (read s nil)))
    (%parse-plan-rec s (cons read acc))
    (nreverse acc)))

(define-pddl-class pddl-actual-action (pddl-problem-slot pddl-action)
  (index))

(defmethod action ((dom pddl-domain) (aa pddl-actual-action))
  (action dom (name aa)))

(defmethod initialize-instance :after ((aa pddl-actual-action)
				       &rest args)
  @ignore args
  (let ((set (match-set aa))
	(a (action (domain aa) aa)))
    (with-slots (effect precondition) aa
      (setf effect
	    (walk-tree 
	     (lambda (branch cont)
	       (match branch
		 ((cons op preds) `(,op ,@(funcall cont preds)))
		 ((pddl-predicate :name name :parameters parameters)
		  (pddl-atomic-state
		   :name name
		   :parameters
		   (mapcar (lambda (param)
			     (getf set param))
			   parameters)))))
	     (effect a))
	    precondition
	    (walk-tree 
	     (lambda (branch cont)
	       (match branch
		 ((cons op preds) `(,op ,@(funcall cont preds)))
		 ((pddl-predicate :name name :parameters parameters)
		  (pddl-atomic-state
		   :name name
		   :parameters
		   (mapcar (lambda (param)
			     (getf set param))
			   parameters)))))
	     (precondition a))))))

@export
(defgeneric match-set (source))
(defmethod match-set ((aa pddl-actual-action))
  (let ((set nil)
	(a (action (domain aa) aa)))
    (iter (for obj in (parameters aa))
	  (for var in (parameters a))
	  (setf (getf set var) obj))
    set))