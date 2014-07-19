

(in-package :pddl)
(cl-syntax:use-syntax :annot)

@export
(defun ground-actions (action problem)
  "returns a list of all possible grounded actions"
  (let ((objects (objects problem)))
    (match action
      ((pddl-action :domain domain
                    :name name
                    :parameters params
                    :precondition pre
                    :effect eff)
       (apply #'map-product
              (lambda (&rest objects)
                (labels ((value (v) (nth (position v params) objects))
                         (ground (e)
                           (match e
                             ((pddl-predicate name parameters)
                              (pddl-atomic-state
                               :domain domain
                               :problem problem
                               :name name
                               :parameters (mapcar #'value parameters))))))
                  (pddl-ground-action
                   :domain domain
                   :problem problem
                   :name name
                   :parameters objects
                   :precondition (mapcar #'ground pre)
                   :effect (mapcar #'ground eff))))
              (iter (for p in params)
                    (collect
                        (remove-if-not
                         (rcurry #'pddl-supertype-p (type p))
                         objects :key #'type))))))))
