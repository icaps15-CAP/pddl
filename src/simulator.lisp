
(in-package :pddl)
(use-syntax :annot)

(define-pddl-class pddl-environment (pddl-problem-slot)
  (plan
   states
   (index :initform 0)))

(defmethod initialize-instance :after
    ((env pddl-environment)
     &key
       path plan states
       (domain (or *domain* (and plan (domain plan))))
       (problem (or *problem* (and plan (problem plan)))))
  (cond
    ((and path plan) (error "both plan and path are specified!"))
    ((not (or path plan)) (error "neither plan nor path is specified!"))
    (path (setf (plan env) (pddl-plan :domain domain
                                      :problem problem
                                      :path path)))
    (plan (setf (plan env) plan)))
  (unless states
    (setf (states env) (init problem))))

(defmethod reinitialize-instance :after ((env pddl-environment)
                                         &key &allow-other-keys)
  (setf (index env) 0
        (states env) (init (problem env))))

@export
(defun proceed (env)
  "signals an index-out-of-bound error after goal-action"
  (let ((a (elt (actions (plan env)) (index env))))
    (pddl-environment
     :domain (domain env)
     :problem (problem env)
     :plan (plan env)
     :index (1+ (index env))
     :states (apply-ground-action a (states env)))))

@export
(defun simulate-plan (env &optional function)
  (reinitialize-instance env)
  (handler-case
      (if (functionp function)
          (iter (setf env (proceed env))
                (funcall function env))
          (iter (setf env (proceed env))))
    (error () env)))

@export
(defmacro with-simulating-plan ((simulation-env start-env) &body body)
  `(simulate-plan ,start-env
                  (lambda (,simulation-env)
                    ,@body)))

@export
(defun cost (env)
  (if-let ((metric (metric (problem env))))
    (funcall (metric-function metric) (states env))
    (1- (index env))))


