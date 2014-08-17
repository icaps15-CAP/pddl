
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
    (path (setf (actions env) (coerce (parse-plan path domain problem) 'vector)
                (name env) (pathname-name (pathname path))))
    (actions (setf (actions env) (coerce actions 'vector)))))

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

(defun parse-ground-action (a-desc)
  (ematch a-desc
    ((list* name arguments)
     (ground-action
      (action *domain* name)
      (mapcar (curry #'object *problem*) arguments)))))

(defun parse-plan (path-or-descriptions
                   &optional
                     (*domain* *domain*) (*problem* *problem*))
  (typecase path-or-descriptions
    ((or string pathname)
     (with-open-file (s path-or-descriptions)
       (iter (for action-desc in (%parse-plan-rec s nil))
             (collect (parse-ground-action action-desc)))))
    (list
     (iter (for action-desc in path-or-descriptions)
           (collect (parse-ground-action action-desc))))))

(defun %parse-plan-rec (s acc)
  (if-let ((read (read s nil)))
    (%parse-plan-rec s (cons read acc))
    (nreverse acc)))

(define-pddl-class pddl-ground-action (pddl-problem-slot pddl-action) ())

(defmethod initialize-instance :after ((ga pddl-ground-action)
                                       &rest args &key &allow-other-keys)
  (declare (ignore args))
  (let ((a (action (domain ga) ga)))
    (restart-case
        (if a
            (assert (= (arity a) (arity ga)))
            (warn "undefined action ~A" (let ((str (symbol-name (name ga))))
                                          (subseq str 0 (min 20 (length str))))))
      (ignore ()
        (warn "Applying an action that's not defined in the domain: ~A" (name ga))
        (return-from initialize-instance)))))

(defmethod action ((dom pddl-domain) (a pddl-ground-action))
  (action dom (name a)))

