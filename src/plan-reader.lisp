
(in-package :pddl)
(use-syntax :annot)

(define-pddl-class pddl-plan (pddl-problem-slot)
  (path actions))

(defmethod initialize-instance :after ((env pddl-plan)
				       &key path actions
				       (domain *domain*)
				       (problem *problem*))
  (cond
    ((and path actions)
     (error "both actions and path are specified!"))
    ((not (or path actions))
     (error "neither actions nor path is specified!"))
    (path
     (setf (actions env) 
	   (coerce (parse-plan path domain problem) 'vector)))
    (actions
     (setf (actions env)
	   (coerce actions 'vector)))))

(define-pddl-class pddl-environment (pddl-problem-slot)
  (plan
   (index :initform 0)
   states))

(defmethod initialize-instance :after ((env pddl-environment)
				       &key
				       path plan states
				       (domain 
					(or *domain*
					    (and plan (domain plan))))
				       (problem
					(or *problem*
					    (and plan (problem plan)))))
  (cond
    ((and path plan) (error "both plan and path are specified!"))
    ((not (or path plan)) (error "neither plan nor path is specified!"))
    (path (setf (plan env) (pddl-plan :domain domain
				      :problem problem
				      :path path)))
    (plan (setf (plan env) plan)))
  (unless states
    (setf (states env) (mapcar #'shallow-copy (init problem)))))

(defmethod reinitialize-instance :after ((env pddl-environment)
					 &key
					 &allow-other-keys)
  (setf (index env) 0
	(states env) (mapcar #'shallow-copy (init problem))))

@export
(defun proceed (env)
  (let ((aa (elt (actions (plan env)) (index env))))
    (pddl-environment
     :domain (domain env)
     :problem (problem env)
     :plan (plan env)
     :index (1+ (index env))
     :states (apply-actual-action aa (states env)))))

@export
(defun simulate-plan (env &optional function)
  (handler-case
      (if (functionp function)
	  (iter (funcall function env)
		(setf env (proceed env)))
	  (iter (setf env (proceed env))))
    (type-error ()
      env)))

@export
(defmacro with-simulating-plan ((envname env) &body body)
  `(simulate-plan ,env
		  (lambda (,envname)
		    ,@body)))
    

@export
(defun cost (env)
  (funcall (metric-function (metric (problem env)))
	   (states env)))


@export
(defun function-state (env f-head)
  (match (ensure-list f-head)
    ((list* name params)
     (find-if
      (lambda-match
	((pddl-function-state
	  :name (eq name)
	  :parameters objs)
	 (equal (mapcar #'name objs) params))) 
      (states env)))))

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
		 (mapcar (curry #'object *problem*) ;; namesym -> object
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
			   parameters)))
		 ((and op (pddl-assign-op)) op)))
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
@doc "Returns a plist 
  (<pddl-variable> <pddl-object> <pddl-variable> <pddl-object> ...)
meaning it is a valid assignment of an object to a variable in an action."
(defgeneric match-set (source))
(defmethod match-set ((aa pddl-actual-action))
  (let ((set nil)
	(a (action (domain aa) aa)))
    (iter (for obj in (parameters aa))
	  (for var in (parameters a))
	  (setf (getf set var) obj))
    set))