
(in-package :pddl)
(use-syntax :annot)

@export
(defun ground-cost (ground-action)
  (shallow-copy
   ground-action
   :effect `(and ,@(add-list ground-action)
                 ,@(mapcar (lambda (x) `(not ,x)) (delete-list ground-action))
                 ,(match ground-action
                    ((pddl-ground-action
                      :domain *domain*
                      :problem *problem*)
                     (parse-numeric-effect
                      `(increase
                        (total-cost)
                        ,(reduce #'+
                                 (mapcar (lambda (op)
                                           (value
                                            (query-function-state
                                             (increase op)
                                             (init (problem ground-action)))))
                                         (assign-ops ground-action))))))))
   'assign-ops +unbound+))
