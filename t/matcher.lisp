
(in-package :pddl-test)
(in-suite :pddl)

(defvar APPLIABILITY-NOT)
(defvar APPLIABILITY-NOT-PROB)

(test (applicability :depends-on (and predicate accessors))
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
      (is-false (null s))
      (is-false (null s2))
      
      (is (eq (second (parameters s))
	      (first (parameters s3))))
      
      
      (let ((matches (%try-match p s nil)))
	(iter 
	  (for var in (parameters p))
	  (for obj in (parameters s))
	  (is (eq (getf matches var)
		  obj)))


	(signals assignment-error
	  (%try-match p s2 matches))))
    
    (is (applicable
	 (init *problem*)
	 (action *domain* :drive)))))

(test (applicability-not)
  (finishes
    (define (domain applicability-not)
      (:predicates (true ?a))
      (:action should-not-applicable
	       :parameters (?x)
	       :precondition (and (not (true ?x)))
	       :effect nil)))
  (finishes
    (define (problem applicability-not-prob)
      (:domain applicability-not)
      (:objects a b c)
      (:init (true a)
	     (true b)
	     (true c))))
  (is-false
   (let* ((*domain* applicability-not)
	  (*problem* applicability-not-prob))
     (applicable (init applicability-not-prob)
		(pddl-intermediate-action
		 :name 'should-not-applicable
		 :domain applicability-not
		 :problem applicability-not-prob
		 :parameters (list (object applicability-not-prob 'a)))))))

(test (apply-action :depends-on applicability)
  (let* ((*domain* depot)
	 (*problem* depotprob1818)
	 (aa (pddl-intermediate-action
	      :name 'drive
	      :domain depot
	      :problem depotprob1818
	      :parameters (list
			   (object depotprob1818 'truck1)
			   (object depotprob1818 'depot0)
			   (object depotprob1818 'distributor1))))
	 (inits (init depotprob1818)))
    (is (applicable inits aa))
    (let ((new-states (apply-ground-action aa inits)))
      (is-false (null new-states))
      (handler-bind ((warning #'muffle-warning))
	(dolist (s new-states)
	  (match s
	    ((state 'at 'truck1 (where))
	     (is-false (eq where (object depotprob1818 'depot0))
		       "truck1 not moved")
	     (is (eq where (object depotprob1818 'distributor1))
		 "truck1 moved to the wrong position ~A" where))))))))

(test (simulate-plan :depends-on apply-action)
  (let ((*plan* (pddl-plan :domain depot
                           :problem depotprob1818 
                           :actions *depot-actions*)))
    (setf *env* (pddl-environment :plan *plan*
				:domain depot
				:problem depotprob1818))
    
    (map nil
	 (lambda (aa)
	   (is (domain aa) depot)
	   (is (problem aa) depotprob1818))
	 (actions *plan*))
    (let ((last-env (handler-bind ((warning #'muffle-warning))
		      (simulate-plan *env*))))
      (map nil
	 (lambda (s)
	   (is (domain s) depot)
	   (is (problem s) depotprob1818))
	 (states last-env))
      (is (goal-p depotprob1818 (states last-env))))))

