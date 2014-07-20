(in-package :pddl-test)
(in-suite :pddl)

(test (grounding :depends-on (and parse-domain parse-problem))
  ;; in depot, there are no types
  ;; so the number of possible ground actions of (drive x y z) is |O|^3
  (iter (for name in '(:drive :lift :drop))
        (for a = (action depot name))
        (is (= (length (ground-actions a depotprob1818))
               (expt (length (objects depotprob1818))
                     (arity a)))))
  (iter (for name in '(:at :lifting))
        (for p = (predicate depot name))
        (is (= (length (ground-predicates p depotprob1818))
               (expt (length (objects depotprob1818))
                     (arity p))))))

