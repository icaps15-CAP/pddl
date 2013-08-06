
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
		(pddl-intermediate-action
		 :name action-name
		 :domain *domain*
		 :problem *problem*
		 :index index
		 :parameters
		 (mapcar (curry #'object *problem*)
			 arguments))))))
      (iter (for plan-description in (%parse-plan-rec s nil))
	    (for index from 1)
	    (with plan = (list (problem-initial-action *problem*)))
	    (push (instantiate plan-description index) plan)
	    (finally
	     (return
	       (nreverse
		(cons (problem-goal-action *problem* (1+ index))
		      plan))))))))

(defun %parse-plan-rec (s acc)
  (if-let ((read (read s nil)))
    (%parse-plan-rec s (cons read acc))
    (nreverse acc)))

(define-pddl-class pddl-actual-action (pddl-problem-slot pddl-action)
  ((index :type fixnum)))

(define-pddl-class pddl-intermediate-action (pddl-actual-action)
  ())
(define-pddl-class pddl-initial-action (pddl-actual-action)
  ())
(define-pddl-class pddl-goal-action (pddl-actual-action)
  ())

(defun problem-initial-action (*problem*)
  (pddl-initial-action
   :name 'init
   :domain *domain*
   :problem *problem*
   :index 0
   :parameters (objects *problem*)
   :precondition nil
   :effect `(and ,@(init *problem*))))

(defun problem-goal-action (*problem* index)
  (pddl-goal-action
   :name 'goal
   :domain *domain*
   :problem *problem*
   :index index
   :parameters (objects *problem*)
   :precondition (goal *problem*)
   :effect nil))

(defmethod action ((dom pddl-domain) (aa pddl-intermediate-action))
  (action dom (name aa)))

(defmethod initialize-instance :after ((aa pddl-intermediate-action)
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
(defmethod match-set ((aa pddl-intermediate-action))
  (let ((set nil)
	(a (action (domain aa) aa)))
    (iter (for obj in (parameters aa))
	  (for var in (parameters a))
	  (setf (getf set var) obj))
    set))
(defmethod match-set ((aa pddl-initial-action))
  (let ((set nil))
    (iter (for obj in (parameters aa))
	  (setf (getf set obj) obj))
    set))
(defmethod match-set ((aa pddl-goal-action))
  (let ((set nil))
    (iter (for obj in (parameters aa))
	  (setf (getf set obj) obj))
    set))