
(in-package :pddl-test)
(in-suite :pddl)

(test appliability
  (let* ((p (parse-predicate '(at ?X ?Y)))
	 (s (parse-atomic-state '(at pallet1 distributor0)))
	 (s2 (parse-atomic-state '(at pallet1 distributor1)))
	 (matches (%try-match p s nil)))
    (iter (for var in (parameters p))
	  (for obj in (parameters s))
	  (is (eq (getf matches var)
		  obj)))


    ;; (signals assignment-error
    ;;   (%try-match p s2 matches))
    (is (null (%try-match p s2 matches))))
  (is (appliable
       (init depotprob1818)
       (action depot :drive)))

  )

