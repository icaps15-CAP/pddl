
(in-package :pddl-test)
(in-suite :pddl)

(test remove-costs
  (print-pddl-object (remove-costs logistics-typed-cost) t)
  (print-pddl-object (remove-costs logistics-typed-cost-prob) t))
