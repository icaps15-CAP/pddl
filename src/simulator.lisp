
(in-package :pddl)
(use-syntax :annot)

(define-pddl-class pddl-environment (pddl-problem-slot)
  (plan
   states
   (index :initform 0)))

(defmethod initialize-instance :after
    ((env pddl-environment)
     &key plan states
       (domain (or *domain* (and plan (domain plan))))
       (problem (or *problem* (and plan (problem plan)))))
  (cond
    (plan (setf (plan env) plan)))
  (unless states
    (setf (states env) (init problem))))

(defmethod reinitialize-instance :after ((env pddl-environment)
                                         &key &allow-other-keys)
  (setf (index env) 0
        (states env) (init (problem env))))

@export
(defun proceed (env)
  (let ((a (elt (actions (plan env)) (index env))))
    (values
     (pddl-environment
      :domain (domain env)
      :problem (problem env)
      :plan (plan env)
      :index (1+ (index env))
      :states (apply-ground-action a (states env)))
     (array-in-bounds-p (actions (plan env)) (1+ (index env))))))

@export
(defun simulate-plan (env &optional function)
  " Simulates the plan. Call the function for each state in the plan,
including the initial state and the goal state.

 The function should take
two arguments, the first one is the environment and the second one tells if
it is the goal state. In the goal state, getting (elt (actions plan) (index
env)) signals an index-out-of-bound error.

 The value i in the slot `index' indicates the state is the i-th state in
the plan.  The initial state has the index 0."
  (reinitialize-instance env)
  (iter (for (values e safe-next)
             initially (values env t)
             then (proceed e))
        (when (functionp function)
          (funcall function e safe-next))
        (while safe-next)
        (finally (return e))))

@export
(defmacro with-simulating-plan ((simulation-env
                                 start-env
                                 &optional
                                 (safe-next (gensym "SAFE-NEXT")))
                                &body body)
  "See simulate-plan."
  `(simulate-plan ,start-env
                  (lambda (,simulation-env ,safe-next)
                    (declare (ignorable ,safe-next))
                    ,@body)))

@export
(defun cost (env)
  (if-let ((metric (metric (problem env))))
    (fluent-value metric (states env))
    (index env)))


