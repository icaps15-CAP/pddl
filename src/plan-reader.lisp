
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
   (index :initform 1)
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
  (assert (typep (or domain 
                     *domain*
                     (and plan (domain plan))) 'pddl-domain))
  (assert (typep (or problem 
                     *problem*
                     (and plan (problem plan))) 'pddl-problem))
  (setf (domain env) domain
        (problem env) problem)
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
  (setf (index env) 1
        (states env) (mapcar #'shallow-copy (init (problem env)))))

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
  (reinitialize-instance env)
  (handler-case
      (if (functionp function)
          (iter (setf env (proceed env))
                (funcall function env))
          (iter (setf env (proceed env))))
    (terminal-action-operator-error ()
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
(defun parse-plan (pathname domain problem)
  (let ((*domain* domain)
        (*problem* problem))
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
                   (mapcar (curry #'object *problem*) ;; namesym -> object
                           arguments))))))
        (iter (for plan-description in (%parse-plan-rec s nil))
              (for index from 1)
              (with plan = (list (problem-initial-action *problem*)))
              (push (instantiate plan-description index) plan)
              (finally
               (return
                 (nreverse
                  (cons (problem-goal-action *problem* (1+ index))
                        plan)))))))))

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

@export
(defun problem-initial-action (*problem*)
  (pddl-initial-action
   :name 'init
   :domain (domain *problem*)
   :problem *problem*
   :index 0
   :parameters (objects *problem*)
   :precondition '(and)
   :effect `(and ,@(init *problem*))))

@export
(defun problem-goal-action (*problem* index)
  (pddl-goal-action
   :name 'goal
   :domain (domain *problem*)
   :problem *problem*
   :index index
   :parameters (objects *problem*)
   :precondition (goal *problem*)
   :effect '(and)))

(defmethod action ((dom pddl-domain) (aa pddl-intermediate-action))
  (action dom (name aa)))

(define-condition terminal-action-operator-error (simple-error)
  ())

(defmethod action ((dom pddl-domain) (aa pddl-initial-action))
  (error 'terminal-action-operator-error
         :format-control 
         "initial action doesn't have a corresponding operator!"))
(defmethod action ((dom pddl-domain) (aa pddl-goal-action))
  (error 'terminal-action-operator-error
         :format-control 
         "goal action doesn't have a corresponding operator!"))

(defmethod initialize-instance :after ((aa pddl-intermediate-action)
                                       &rest args)
  @ignore args
  (let ((set (match-set aa))
        (*domain* (domain aa))
        (*problem* (problem aa))
        (a (action *domain* aa)))
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
(defgeneric match-set (actual-action))
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