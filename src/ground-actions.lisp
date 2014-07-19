

(in-package :pddl)
(cl-syntax:use-syntax :annot)

@export
(defun ground-action (action objects &optional (*problem* *problem*))
  (match action
    ((pddl-action :name name
                  :domain *domain*
                  :parameters params
                  :precondition pre
                  :effect eff)
     (assert (action *domain* name) nil
             "action-name ~A not found in ~A"
             *domain* name)
     (pddl-ground-action
      :name name
      :parameters objects
      :precondition (ground-ctree pre params objects)
      :effect (ground-ctree eff params objects)))))

(defun ground-ctree (ctree params objects
                     &optional
                       (*domain* *domain*) (*problem* *problem*))
  "Grounds each preconditions in a condition tree"
  (labels ((value (p) (elt objects (position p params)))
           (rec (e)
             (ematch e
               ((list* op rest)
                (list* op (mapcar #'rec rest)))
               ((pddl-predicate name parameters domain)
                (pddl-atomic-state
                 :domain *domain*
                 :problem *problem*
                 :name name
                 :parameters (mapcar #'value parameters)))
               ((pddl-assign-op) e))))
    (rec ctree)))

@export
(defun ground-actions (action problem)
  "returns a list of all possible grounded actions"
  (let ((objects (objects problem)))
    (match action
      ((pddl-action :parameters params)
       (apply #'map-product
              (lambda (&rest objects)
                (ground-action action objects))
              (iter (for p in params)
                    (collect
                        (remove-if-not
                         (rcurry #'pddl-supertype-p (type p))
                         objects :key #'type))))))))
