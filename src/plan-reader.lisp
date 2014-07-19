
(in-package :pddl)
(use-syntax :annot)

(define-pddl-class pddl-plan (pddl-problem-slot pathnamable namable)
  (actions))

(defmethod initialize-instance :after ((env pddl-plan)
                                       &key path actions
                                       (domain *domain*)
                                       (problem *problem*))
  (cond
    ((and path actions)
     (error "both actions and path are specified!"))
    ((not (or path actions))
     (error "neither actions nor path is specified!"))
    (path (setf (actions env) (coerce (parse-plan path domain problem) 'vector)))
    (actions (setf (actions env) (coerce actions 'vector)))))

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
    (flet ((instantiate (a-desc)
             (ematch a-desc
               ((list* action-name arguments)
                (pddl-ground-action
                 :name action-name
                 :parameters ; namesym -> object
                 (mapcar (curry #'object *problem*) arguments))))))
      (cons (problem-initial-action *problem*)
            (let (acc)
              (dolist (action-desc (%parse-plan-rec s nil)
                       (nreverse
                        (cons (problem-goal-action *problem*) acc)))
                (push (instantiate action-desc) acc)))))))

(defun %parse-plan-rec (s acc)
  (if-let ((read (read s nil)))
    (%parse-plan-rec s (cons read acc))
    (nreverse acc)))

(define-pddl-class pddl-ground-action (pddl-problem-slot pddl-action) ())
(define-pddl-class pddl-initial-action (pddl-ground-action) ())
(define-pddl-class pddl-goal-action (pddl-ground-action) ())

@export
(defun problem-initial-action (*problem*)
  (pddl-initial-action
   :name 'init
   :domain (domain *problem*)
   :parameters (objects *problem*)
   :precondition '(and)
   :effect `(and ,@(init *problem*))))

@export
(defun problem-goal-action (*problem*)
  (pddl-goal-action
   :name 'goal
   :domain (domain *problem*)
   :parameters (objects *problem*)
   :precondition (goal *problem*)
   :effect '(and)))


(define-condition terminal-action-operator-error (simple-error) ())
(defmethod action ((dom pddl-domain) (a pddl-ground-action))
  (action dom (name aa)))
(defmethod action ((dom pddl-domain) (aa pddl-initial-action))
  (error 'terminal-action-operator-error
         :format-control 
         "initial action doesn't have a corresponding operator!"))
(defmethod action ((dom pddl-domain) (aa pddl-goal-action))
  (error 'terminal-action-operator-error
         :format-control 
         "goal action doesn't have a corresponding operator!"))


