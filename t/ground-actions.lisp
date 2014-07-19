(in-package :pddl-test)
(in-suite :pddl)

(test ground-actions
  ;; in depot, there are no types
  ;; so the number of possible ground actions of (drive x y z) is |O|^3
  (is (= (length (ground-actions (action depot :drive) depotprob1818))
         (expt (length (objects depotprob1818)) 3))))
