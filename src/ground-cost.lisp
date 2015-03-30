
(in-package :pddl)
(use-syntax :annot)

@export
(defun ground-cost (gaction)
  " convert the function-states in the grounded action definition into a
grounded number, e.g., given

  (and (increase (total-cost) (cost a b))
       (increase (total-cost) (cost b c))) ,

check the actual fluent value of (cost a b) and (cost b c) in the initial
state and replace the fluent with the sum of the numbers, e.g., when the
value is 2 and 3, (increase (total-cost) 5) ."
  (shallow-copy
   gaction
   :effect
   `(and ,@(add-list gaction)
         ,@(mapcar (lambda (x) `(not ,x)) (delete-list gaction))
         ,@(when (assign-ops gaction)
             ;; FIXME this part signals error when parsing (total-cost)
             ;; while the domain is not an action-cost domain.
             ;; I am not sure if this `when' statement is sufficient
             ;; 
             (list (parse-numeric-effect
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
                                                (init (problem gaction)))))
                                             (number i))))
                                       (assign-ops gaction))))))))
   'assign-ops +unbound+))
