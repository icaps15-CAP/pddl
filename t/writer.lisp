(in-package :pddl-test)
(in-suite :pddl)

(test (write-back-pddl :depends-on (and parse-domain parse-problem))
  (is-true (macroexpand (print-pddl-object depot)))
  (is-true (macroexpand (print-pddl-object depotprob1818))))
