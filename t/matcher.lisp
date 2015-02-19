
(in-package :pddl-test)
(in-suite :pddl)

(defmacro check (tester operator &rest names)
  `(,tester
    (applicable
     (init *problem*)
     (ground-action (action *domain* ',operator)
                    (list ,@(mapcar (lambda (name)
                                      `(object *problem* ,name))
                                    names))))))

(test (applicability :depends-on (and predicate accessors))
  (finishes
    (define (domain *test-domain*)
      (:requirements :strips
                     :disjunctive-precondition
                     :negative-precondition)
      (:predicates (true ?a) (success))
      (:action and
               :parameters (?x ?y)
	       :precondition (and (true ?x) (true ?y))
	       :effect (and (success)))
      (:action not
	       :parameters (?x)
	       :precondition (and (not (true ?x)))
	       :effect (and (success)))
      (:action or
	       :parameters (?x ?y)
	       :precondition (or (true ?x) (true ?y))
	       :effect (and (success)))))
  (finishes
    (define (problem *test-problem*)
      (:domain *test-domain*)
      (:objects a b c d)
      (:init (true a) (true b))))
  (let* ((*domain* *test-domain*)
         (*problem* *test-problem*))
    ;; and
    (check is-true and :a :b)
    (check is-false and :a :d)
    (check is-false and :c :b)
    (check is-false and :c :d)
    ;; or
    (check is-true or :a :b)
    (check is-true or :a :d)
    (check is-true or :c :b)
    (check is-false or :c :d)
    ;; not
    (check is-false not :a)
    (check is-true not :c)))

(test logistics
  (finishes
    (define (domain logistics)
      (:requirements :strips)
      (:predicates (truck ?t) (at ?t ?a) (connected ?x ?y))
      (:action move
	       :parameters (?t ?x ?y)
	       :precondition (and (truck ?t) (at ?t ?x) (connected ?x ?y))
	       :effect (and (not (at ?t ?x)) (at ?t ?y)))))
  (finishes
    (define (problem logistics-prob)
      (:domain logistics)
      (:objects t1 a b c)
      (:init (truck t1) (at t1 a) (connected a b) (connected b c))
      (:goal (at t1 c))))

  (let* ((*domain* logistics)
	 (*problem* logistics-prob))
    (check is-true move :t1 :a :b)
    (check is-false move :t1 :a :c)
    ;; this test was added for maintaining the consistency wrto domain
    ;; definition and the ground action e.g. action `foo' below is
    ;; undefined in the logistics domain.
    ;; this was changed from error to warning some time. 2015/2/19
    (signals warning
      (pddl-ground-action
       :name 'foo
       :parameters (list (object *problem* :b)
                         (object *problem* :c))))))

(test (apply-action :depends-on applicability)
  (let* ((*domain* logistics)
	 (*problem* logistics-prob)
         (ga1 (ground-action (action *domain* :move)
                             (list (object *problem* :t1)
                                   (object *problem* :a)
                                   (object *problem* :b))))
         (ga2 (ground-action (action *domain* :move)
                             (list (object *problem* :t1)
                                   (object *problem* :b)
                                   (object *problem* :c)))))
    (is-true (applicable (init *problem*) ga1))
    (is-false (applicable (init *problem*) ga2))
    ;; ensure not modified
    (let ((original-init (copy-list (init *problem*))))
      (finishes
        (apply-ground-action ga1 (init *problem*)))
      (is (equalp (init *problem*) original-init)))
    ;; apply
    (let ((new-state (apply-ground-action ga1 (init *problem*))))
      (is-false (applicable new-state ga1))
      (is-true (applicable new-state ga2)))
    (let* ((*actions* (list ga1 ga2))
           (*plan* (pddl-plan :actions *actions*))
           (*env* (pddl-environment :plan *plan*)))
      (let ((last-env (simulate-plan *env*)))
        (is-true (typep last-env 'pddl-environment))
        (is (goal-p *problem* (states last-env)))))))

