(in-package :pddl.test)
(in-suite :pddl)

;; remove because now these files are removed
#+nil
(test (read-all-problem-and-plans)
  (handler-bind ((found-in-dictionary #'muffle-warning))
    (finishes
      (multiple-value-bind (dname *domain*)
          (parse-file (data "costs/domain.pddl"))
        (multiple-value-bind (pname *problem*)
            (parse-file (data "costs/p0001.pddl"))
	  (setf cell-assembly-model2b-1-1
		(pddl-plan
		 :path (data "costs/p0001.plan.1"))))))))

(test costs
  (finishes
    (define (domain logistics-typed-cost)
      (:requirements :strips :action-costs)
      (:types truck place)
      (:predicates (at ?t - truck ?a - place) (connected ?x ?y - place))
      (:functions (total-cost) (distance ?x ?y - place))
      (:action move-fixed
	       :parameters (?t - truck ?x ?y - place)
	       :precondition (and (at ?t ?x) (connected ?x ?y))
	       :effect (and (not (at ?t ?x)) (at ?t ?y)
                            (increase (total-cost) 10)))
      (:action move-function
	       :parameters (?t - truck ?x ?y - place)
	       :precondition (and (at ?t ?x) (connected ?x ?y))
	       :effect (and (not (at ?t ?x)) (at ?t ?y)
                            (increase (total-cost) (distance ?x ?y))))
      (:action move-multi-function
	       :parameters (?t - truck ?x ?y ?z - place)
	       :precondition (and (at ?t ?x)
                                  (connected ?x ?y)
                                  (connected ?y ?z))
	       :effect (and (not (at ?t ?x)) (at ?t ?z)
                            (increase (total-cost) (distance ?x ?y))
                            (increase (total-cost) (distance ?y ?z))))))
  (finishes
    (define (problem logistics-typed-cost-prob)
      (:domain logistics-typed-cost)
      (:objects t1 - truck
                a b c - place)
      (:init (at t1 a)
             (connected a b)
             (connected b c)
             (= (total-cost) 0)
             (= (distance a a) 0)
             (= (distance a b) 5)
             (= (distance a c) 5)
             ;;
             (= (distance b a) 5)
             (= (distance b b) 0)
             (= (distance b c) 5)
             ;;
             (= (distance c a) 5)
             (= (distance c b) 5)
             (= (distance c c) 0))
      (:goal (at t1 c))
      (:metric minimize (total-cost))))

  (let (*env* logistics-plan
        (*domain* logistics-typed-cost)
        (*problem* logistics-typed-cost-prob))

    (finishes
      (setf logistics-plan
            (pddl-plan
             :actions (parse-plan '((move-fixed t1 a b)
                                    (move-function t1 b c))
                                  logistics-typed-cost
                                  logistics-typed-cost-prob))))
    (finishes
      (setf *env* (pddl-environment
                   :domain logistics-typed-cost
                   :problem logistics-typed-cost-prob
                   :plan logistics-plan)))
    (is (= 0 (cost *env*)) "the metric is not initialized to 0")
    (finishes (setf *env* (proceed *env*)))
    (is (= 10 (cost *env*)))
    ;; function-state is a utility function and not important.
    ;; removed in 9/8, 2014
    ;;(is (= 5 (value (function-state *env* '(distance b c)))))
    (finishes (setf *env* (proceed *env*)))
    (is (= 15 (cost *env*)))
    ;; integrated test
    (is (= 15 (cost
               (with-simulating-plan (env *env*)
                 (format t "~&~a" (cost env))))))))

(test detect-cost-initialization-missing
  (signals warning ;; because the definition is not full
    (define (problem logistics-definition-missing)
      (:domain logistics-typed-cost)
      (:objects t1 - truck
                a b c - place)
      (:init (at t1 a)
             (connected a b)
             (connected b c)
             ;;(= (total-cost) 0)
             (= (distance a a) 0)
             (= (distance a b) 5)
             (= (distance a c) 5)
             ;;
             (= (distance b a) 5)
             ;;(= (distance b b) 0)
             (= (distance b c) 5)
             ;;
             (= (distance c a) 5)
             (= (distance c b) 5)
             (= (distance c c) 0))
      (:goal (at t1 c))
      (:metric minimize (total-cost)))))


(test (ground-cost :depends-on costs)
  (let (*env* logistics-plan)
    (let ((*domain* logistics-typed-cost)
          (*problem* logistics-typed-cost-prob))
      (finishes
        (setf logistics-plan
              (pddl-plan
               :actions (parse-plan '((move-multi-function t1 a b c))))))
      (finishes
        (setf *env* (pddl-environment :plan logistics-plan)))
      (is (= 0 (cost *env*)) "the metric is not initialized to 0")
      (finishes (setf *env* (proceed *env*)))
      (is (= 10 (cost *env*))) ;; (distance a b) + (distance b c) = 5+5
    
      (let ((multi-func-action (elt (actions logistics-plan) 0)))
        ;; (distance a b), (distance b c)
        (is (= 2 (length (assign-ops multi-func-action))))
        (let ((grounded (ground-cost multi-func-action)))
          (is (= 1 (length (assign-ops grounded))))
          (let ((increase (increase
                           (first
                            (assign-ops grounded)))))
            (is (numberp increase))
            (is (= 10 increase))))))))



