
(in-package :pddl-test)
(in-suite :pddl)

(test (appliability :depends-on (and predicate accessors))
  (let* ((*domain* depot)
	 (*problem* depotprob1818)
	 (p (predicate *domain* :at))
	 (*params* (objects depotprob1818)))
    (let ((s (find-if (lambda (pred)
			(match pred
			  ((pddl-atomic-state
			    :name 'at
			    :parameters
			    (list (pddl-object :name 'pallet0)
			    	  (pddl-object :name 'depot0)))
			   t)))
		      (init *problem*)))
	  (s2 (find-if (lambda (pred)
			 (match pred
			   ((state 'at 'pallet1 'distributor0) t)))
		       (init *problem*)))
	  
	  (s3 (find-if (lambda (pred)
			 (match pred
			   ((state 'place 'depot0) t)))
		       (init *problem*))))
      (let* ((matches (%try-match p s nil)))
	(is-false (null s))
	(is-false (null s2))

	(is (eq (second (parameters s))
		(first (parameters s3))))

	(iter (for var in (parameters p))
	      (for obj in (parameters s))
	      (is (eq (getf matches (name var))
		      obj)))


	;; (signals assignment-error
	;;   (%try-match p s2 matches))
	(is (null (%try-match p s2 matches)))))
    (is (appliable
	 (init *problem*)
	 (action *domain* :drive)))))

(test (all-match-set :depends-on appliability)
  (let ((set (retrieve-all-match-set
	       (init depotprob1818)
	       (action depot :drive))))
  (is (= (length set) 2))))