#|
  This file is a part of alien project.
  Copyright (c) 2015 Masataro Asai (guicho2.71828@gmail.com)
|#

;; (in-package :cl-user)
;; (defpackage :alien.untype.test
;;   (:use :cl
;;         :alien.untype
;;         :fiveam
;;         :optima :alexandria :iterate :pddl)
;;   (:shadow :fail)
;;   (:shadowing-import-from :pddl :maximize :minimize))
;; (in-package :alien.untype.test)

(in-package :pddl-test)
(def-suite :pddl.untype :in :pddl)
(in-suite :pddl.untype)

;;; single layered types

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
                        (increase (total-cost) (distance ?y ?z)))))

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
      (:metric minimize (total-cost)))

(test untype
  (finishes
    (print-pddl-object (untype-domain logistics-typed-cost) *standard-output*)
    (print-pddl-object (untype-problem logistics-typed-cost-prob
                                       (untype-domain logistics-typed-cost)) *standard-output*)))




;;; hierarchical types

(handler-bind ((warning #'muffle-warning))
  ;; since functgion-value-missing is signalled.
  ;; 
  (define (domain elevators-sequencedstrips)
  (:requirements :typing :action-costs)
  (:types 	elevator - object 
                slow-elevator fast-elevator - elevator
                passenger - object
          	count - object)

  (:predicates 
   (passenger-at ?person - passenger ?floor - count)
   (boarded ?person - passenger ?lift - elevator)
   (lift-at ?lift - elevator ?floor - count)
   (reachable-floor ?lift - elevator ?floor - count)
   (above ?floor1 - count ?floor2 - count)
   (passengers ?lift - elevator ?n - count)
   (can-hold ?lift - elevator ?n - count)
   (next ?n1 - count ?n2 - count)) 
  (:functions (total-cost) - number
              (travel-slow ?f1 - count ?f2 - count) - number
              (travel-fast ?f1 - count ?f2 - count) - number)

  (:action move-up-slow
           :parameters (?lift - slow-elevator ?f1 - count ?f2 - count )
           :precondition (and (lift-at ?lift ?f1) (above ?f1 ?f2 ) (reachable-floor ?lift ?f2) )
           :effect (and (lift-at ?lift ?f2) (not (lift-at ?lift ?f1)) (increase (total-cost) (travel-slow ?f1 ?f2))))

  (:action move-down-slow
           :parameters (?lift - slow-elevator ?f1 - count ?f2 - count )
           :precondition (and (lift-at ?lift ?f1) (above ?f2 ?f1 ) (reachable-floor ?lift ?f2) )
           :effect (and (lift-at ?lift ?f2) (not (lift-at ?lift ?f1)) (increase (total-cost) (travel-slow ?f2 ?f1))))

  (:action move-up-fast
           :parameters (?lift - fast-elevator ?f1 - count ?f2 - count )
           :precondition (and (lift-at ?lift ?f1) (above ?f1 ?f2 ) (reachable-floor ?lift ?f2) )
           :effect (and (lift-at ?lift ?f2) (not (lift-at ?lift ?f1)) (increase (total-cost) (travel-fast ?f1 ?f2))))

  (:action move-down-fast
           :parameters (?lift - fast-elevator ?f1 - count ?f2 - count )
           :precondition (and (lift-at ?lift ?f1) (above ?f2 ?f1 ) (reachable-floor ?lift ?f2) )
           :effect (and (lift-at ?lift ?f2) (not (lift-at ?lift ?f1)) (increase (total-cost) (travel-fast ?f2 ?f1))))

  (:action board
           :parameters (?p - passenger ?lift - elevator ?f - count ?n1 - count ?n2 - count)
           :precondition (and  (lift-at ?lift ?f) (passenger-at ?p ?f) (passengers ?lift ?n1) (next ?n1 ?n2) (can-hold ?lift ?n2) )
           :effect (and (not (passenger-at ?p ?f)) (boarded ?p ?lift) (not (passengers ?lift ?n1)) (passengers ?lift ?n2) ))

  (:action leave 
           :parameters (?p - passenger ?lift - elevator ?f - count ?n1 - count ?n2 - count)
           :precondition (and  (lift-at ?lift ?f) (boarded ?p ?lift) (passengers ?lift ?n1) (next ?n2 ?n1) )
           :effect (and (passenger-at ?p ?f) (not (boarded ?p ?lift)) (not (passengers ?lift ?n1)) (passengers ?lift ?n2) )))
  (define (problem elevators-sequencedstrips-p16_14_1)
  (:domain elevators-sequencedstrips)
  (:objects 
   n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16  - count
   p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13  - passenger
   fast0 fast1  - fast-elevator
   slow0-0 slow1-0 - slow-elevator)
  (:init
   (next n0 n1) (next n1 n2) (next n2 n3) (next n3 n4) (next n4 n5) (next n5 n6) (next n6 n7) (next n7 n8) (next n8 n9) (next n9 n10) (next n10 n11) (next n11 n12) (next n12 n13) (next n13 n14) (next n14 n15) (next n15 n16) 
   (above n0 n1) (above n0 n2) (above n0 n3) (above n0 n4) (above n0 n5) (above n0 n6) (above n0 n7) (above n0 n8) (above n0 n9) (above n0 n10) (above n0 n11) (above n0 n12) (above n0 n13) (above n0 n14) (above n0 n15) (above n0 n16) 
   (above n1 n2) (above n1 n3) (above n1 n4) (above n1 n5) (above n1 n6) (above n1 n7) (above n1 n8) (above n1 n9) (above n1 n10) (above n1 n11) (above n1 n12) (above n1 n13) (above n1 n14) (above n1 n15) (above n1 n16) 
   (above n2 n3) (above n2 n4) (above n2 n5) (above n2 n6) (above n2 n7) (above n2 n8) (above n2 n9) (above n2 n10) (above n2 n11) (above n2 n12) (above n2 n13) (above n2 n14) (above n2 n15) (above n2 n16) 
   (above n3 n4) (above n3 n5) (above n3 n6) (above n3 n7) (above n3 n8) (above n3 n9) (above n3 n10) (above n3 n11) (above n3 n12) (above n3 n13) (above n3 n14) (above n3 n15) (above n3 n16) 
   (above n4 n5) (above n4 n6) (above n4 n7) (above n4 n8) (above n4 n9) (above n4 n10) (above n4 n11) (above n4 n12) (above n4 n13) (above n4 n14) (above n4 n15) (above n4 n16) 
   (above n5 n6) (above n5 n7) (above n5 n8) (above n5 n9) (above n5 n10) (above n5 n11) (above n5 n12) (above n5 n13) (above n5 n14) (above n5 n15) (above n5 n16) 
   (above n6 n7) (above n6 n8) (above n6 n9) (above n6 n10) (above n6 n11) (above n6 n12) (above n6 n13) (above n6 n14) (above n6 n15) (above n6 n16) 
   (above n7 n8) (above n7 n9) (above n7 n10) (above n7 n11) (above n7 n12) (above n7 n13) (above n7 n14) (above n7 n15) (above n7 n16) 
   (above n8 n9) (above n8 n10) (above n8 n11) (above n8 n12) (above n8 n13) (above n8 n14) (above n8 n15) (above n8 n16) 
   (above n9 n10) (above n9 n11) (above n9 n12) (above n9 n13) (above n9 n14) (above n9 n15) (above n9 n16) 
   (above n10 n11) (above n10 n12) (above n10 n13) (above n10 n14) (above n10 n15) (above n10 n16) 
   (above n11 n12) (above n11 n13) (above n11 n14) (above n11 n15) (above n11 n16) 
   (above n12 n13) (above n12 n14) (above n12 n15) (above n12 n16) 
   (above n13 n14) (above n13 n15) (above n13 n16) 
   (above n14 n15) (above n14 n16) 
   (above n15 n16) 

   (lift-at fast0 n8)
   (passengers fast0 n0)
   (can-hold fast0 n1) (can-hold fast0 n2) (can-hold fast0 n3) (can-hold fast0 n4) 
   (reachable-floor fast0 n0)(reachable-floor fast0 n4)(reachable-floor fast0 n8)(reachable-floor fast0 n12)(reachable-floor fast0 n16)

   (lift-at fast1 n12)
   (passengers fast1 n0)
   (can-hold fast1 n1) (can-hold fast1 n2) (can-hold fast1 n3) (can-hold fast1 n4) 
   (reachable-floor fast1 n0)(reachable-floor fast1 n4)(reachable-floor fast1 n8)(reachable-floor fast1 n12)(reachable-floor fast1 n16)

   (lift-at slow0-0 n2)
   (passengers slow0-0 n0)
   (can-hold slow0-0 n1) (can-hold slow0-0 n2) (can-hold slow0-0 n3) 
   (reachable-floor slow0-0 n0)(reachable-floor slow0-0 n1)(reachable-floor slow0-0 n2)(reachable-floor slow0-0 n3)(reachable-floor slow0-0 n4)(reachable-floor slow0-0 n5)(reachable-floor slow0-0 n6)(reachable-floor slow0-0 n7)(reachable-floor slow0-0 n8)

   (lift-at slow1-0 n12)
   (passengers slow1-0 n0)
   (can-hold slow1-0 n1) (can-hold slow1-0 n2) (can-hold slow1-0 n3) 
   (reachable-floor slow1-0 n8)(reachable-floor slow1-0 n9)(reachable-floor slow1-0 n10)(reachable-floor slow1-0 n11)(reachable-floor slow1-0 n12)(reachable-floor slow1-0 n13)(reachable-floor slow1-0 n14)(reachable-floor slow1-0 n15)(reachable-floor slow1-0 n16)

   (passenger-at p0 n13)
   (passenger-at p1 n10)
   (passenger-at p2 n13)
   (passenger-at p3 n0)
   (passenger-at p4 n9)
   (passenger-at p5 n12)
   (passenger-at p6 n8)
   (passenger-at p7 n3)
   (passenger-at p8 n5)
   (passenger-at p9 n2)
   (passenger-at p10 n4)
   (passenger-at p11 n11)
   (passenger-at p12 n13)
   (passenger-at p13 n7)

   (= (travel-slow n0 n1) 6) (= (travel-slow n0 n2) 7) (= (travel-slow n0 n3) 8) (= (travel-slow n0 n4) 9) (= (travel-slow n0 n5) 10) (= (travel-slow n0 n6) 11) (= (travel-slow n0 n7) 12) (= (travel-slow n0 n8) 13) (= (travel-slow n1 n2) 6) (= (travel-slow n1 n3) 7) (= (travel-slow n1 n4) 8) (= (travel-slow n1 n5) 9) (= (travel-slow n1 n6) 10) (= (travel-slow n1 n7) 11) (= (travel-slow n1 n8) 12) (= (travel-slow n2 n3) 6) (= (travel-slow n2 n4) 7) (= (travel-slow n2 n5) 8) (= (travel-slow n2 n6) 9) (= (travel-slow n2 n7) 10) (= (travel-slow n2 n8) 11) (= (travel-slow n3 n4) 6) (= (travel-slow n3 n5) 7) (= (travel-slow n3 n6) 8) (= (travel-slow n3 n7) 9) (= (travel-slow n3 n8) 10) (= (travel-slow n4 n5) 6) (= (travel-slow n4 n6) 7) (= (travel-slow n4 n7) 8) (= (travel-slow n4 n8) 9) (= (travel-slow n5 n6) 6) (= (travel-slow n5 n7) 7) (= (travel-slow n5 n8) 8) (= (travel-slow n6 n7) 6) (= (travel-slow n6 n8) 7) (= (travel-slow n7 n8) 6) 
   (= (travel-slow n8 n9) 6) (= (travel-slow n8 n10) 7) (= (travel-slow n8 n11) 8) (= (travel-slow n8 n12) 9) (= (travel-slow n8 n13) 10) (= (travel-slow n8 n14) 11) (= (travel-slow n8 n15) 12) (= (travel-slow n8 n16) 13) (= (travel-slow n9 n10) 6) (= (travel-slow n9 n11) 7) (= (travel-slow n9 n12) 8) (= (travel-slow n9 n13) 9) (= (travel-slow n9 n14) 10) (= (travel-slow n9 n15) 11) (= (travel-slow n9 n16) 12) (= (travel-slow n10 n11) 6) (= (travel-slow n10 n12) 7) (= (travel-slow n10 n13) 8) (= (travel-slow n10 n14) 9) (= (travel-slow n10 n15) 10) (= (travel-slow n10 n16) 11) (= (travel-slow n11 n12) 6) (= (travel-slow n11 n13) 7) (= (travel-slow n11 n14) 8) (= (travel-slow n11 n15) 9) (= (travel-slow n11 n16) 10) (= (travel-slow n12 n13) 6) (= (travel-slow n12 n14) 7) (= (travel-slow n12 n15) 8) (= (travel-slow n12 n16) 9) (= (travel-slow n13 n14) 6) (= (travel-slow n13 n15) 7) (= (travel-slow n13 n16) 8) (= (travel-slow n14 n15) 6) (= (travel-slow n14 n16) 7) (= (travel-slow n15 n16) 6) 
   (= (travel-fast n0 n4) 13) (= (travel-fast n0 n8) 25) (= (travel-fast n0 n12) 37) (= (travel-fast n0 n16) 49) 
   (= (travel-fast n4 n8) 13) (= (travel-fast n4 n12) 25) (= (travel-fast n4 n16) 37) 
   (= (travel-fast n8 n12) 13) (= (travel-fast n8 n16) 25) 
   (= (travel-fast n12 n16) 13) 
   (= (total-cost) 0))

  (:goal
   (and
    (passenger-at p0 n8)
    (passenger-at p1 n15)
    (passenger-at p2 n6)
    (passenger-at p3 n14)
    (passenger-at p4 n5)
    (passenger-at p5 n2)
    (passenger-at p6 n14)
    (passenger-at p7 n4)
    (passenger-at p8 n10)
    (passenger-at p9 n9)
    (passenger-at p10 n12)
    (passenger-at p11 n13)
    (passenger-at p12 n5)
    (passenger-at p13 n6)))

    (:metric minimize (total-cost))))

(test untype-hierarchical
  (finishes
    (print-pddl-object (untype-domain elevators-sequencedstrips) *standard-output*)
    (print-pddl-object (untype-problem elevators-sequencedstrips-p16_14_1
                                       (untype-domain elevators-sequencedstrips)) *standard-output*)))


