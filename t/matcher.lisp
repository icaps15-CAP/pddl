
(in-package :pddl-test)
(in-suite :pddl)

(test (appliability :depends-on (and predicate accessors))
  (let* ((*domain* depot)
	 (*problem* depotprob1818)
	 (p (predicate *domain* :at))
	 (*params* (objects depotprob1818)))
    (let* ((s (parse-atomic-state '(at pallet1 distributor0)))
	   (s2 (parse-atomic-state '(at pallet1 distributor1)))
	   (matches (%try-match p s nil)))
      
      (is (eq 'pallet1 (name (first (parameters s)))))
      (is (eq 'distributor0 (name (second (parameters s)))))
      (is (eq 'distributor1 (name (second (parameters s2)))))

      (is (eq (first (parameters s))
	      (first (parameters s2))))

      (iter (for var in (parameters p))
	    (for obj in (parameters s))
	    (is (eq (getf matches (name var))
		    obj)))


      ;; (signals assignment-error
      ;;   (%try-match p s2 matches))
      (is (null (%try-match p s2 matches)))))
  (is (appliable
       (init depotprob1818)
       (action depot :drive)))

  )

(test (all-match-set :depends-on appliability)
  (let ((set (retrieve-all-match-set
	       (init depotprob1818)
	       (action depot :drive))))
  (is (= (length set) 2))))