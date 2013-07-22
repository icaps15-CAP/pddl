(in-package :pddl-test)
(in-suite :pddl)

(test write-back-pddl
  (is-true (macroexpand (print-pddl-object depot)))
  (is-true (macroexpand (print-pddl-object depotprob1818))))