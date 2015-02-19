

(in-package :pddl)

(defgeneric remove-costs (pddl))

(defmethod remove-costs ((p pddl-problem))
  (shallow-copy
   p
   :init (remove-if (lambda (x)
                      (typep x 'pddl-function-state))
                    (init p))
   :metric nil))

(defmethod remove-costs ((d pddl-domain))
  (shallow-copy
   d
   :requirements (set-difference (requirements d)
                                 '(:action-costs :numeric-fluents))
   :functions nil
   :actions (mapcar #'remove-costs (actions d))))

(defmethod remove-costs ((a pddl-action))
  (shallow-copy
   a
   :effect `(and ,@(add-list a)
                 ,@(mapcar (lambda (x) `(not ,x)) (delete-list a)))
   'assign-ops +unbound+))

