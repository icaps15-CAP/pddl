

(in-package :pddl)

(function-cache:defcached remove-costs (pddl)
  (%remove-costs pddl))

(defgeneric %remove-costs (pddl))

(defmethod %remove-costs ((p pddl-problem))
  (shallow-copy
   p
   :domain (remove-costs (domain p))
   :init (remove-if (lambda (x)
                      (typep x 'pddl-function-state))
                    (init p))
   :metric nil))

(defmethod %remove-costs ((d pddl-domain))
  (let ((newdomain (shallow-copy
                    d
                    :requirements (set-difference (requirements d)
                                                  '(:action-costs :numeric-fluents))
                    :functions nil)))
    (setf (actions newdomain)
          (let ((*domain* newdomain))
            (mapcar #'remove-costs (actions d))))
    newdomain))

(defmethod %remove-costs ((a pddl-action))
  (shallow-copy
   a
   :domain *domain*
   :effect `(and ,@(add-list a)
                 ,@(mapcar (lambda (x) `(not ,x)) (delete-list a)))
   'assign-ops +unbound+
   'add-list +unbound+
   'delete-list +unbound+))

