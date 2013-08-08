
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
	      (is (eq (getf matches var)
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

(defun new-states (prob)
  (let* ((a (action depot :drive))
	 (set (first (retrieve-all-match-set
		      (init prob) a))))
    (apply-action 
     a
     set
     (init prob))))

(test (apply-action :depends-on appliability)
  (let ((new-states (new-states depotprob1818)))
    (is-false (null new-states))
    (dolist (s new-states)
      (match s
	((state 'at 'truck1 (where))
	 (is-false (eq where (object depotprob1818 'depot0))
		   "truck1 not moved")
	 (is (eq where (object depotprob1818 'distributor1))
	     "truck1 moved to the wrong position ~A" where))))))

(test (simulate-plan :depends-on apply-action)
  (setf env (pddl-environment :plan (pddl-plan :domain depot
					       :problem depotprob1818 
					       :actions depot-actions)
			      :domain depot
			      :problem depotprob1818))
  (let ((last-env (simulate-plan env)))
    (is (goal-p depotprob1818 (states last-env)))))

