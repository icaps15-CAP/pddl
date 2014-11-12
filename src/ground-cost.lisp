
(in-package :pddl)
(use-syntax :annot)

@export
(defun ground-cost (action)
  (shallow-copy
   action
   :effect `(and ,@(add-list action)
                 ,@(mapcar (lambda (x) `(not ,x)) (delete-list action))
                 ,(parse-numeric-effect
                   `(increase
                     (total-cost)
                     ,(reduce #'+
                              (mapcar (lambda (op)
                                        (let ((i (increase op)))
                                          (typecase i
                                            (pddl-function-state
                                             (value
                                              (query-function-state
                                               i
                                               (init *problem*))))
                                            (number i))))
                                      (assign-ops action)))))
                 ;; (ematch action
                 ;;    ((pddl-action
                 ;;      :domain *domain*
                 ;;      :problem *problem*)))
                 )
   'assign-ops +unbound+))
