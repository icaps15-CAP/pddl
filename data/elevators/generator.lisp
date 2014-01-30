(require :pddl.builder)

(in-package :pddl.builder)

(defun elevator-form (floors
                      area-size
                      fast-num
                      slow-num
                      fast-capacity
                      slow-capacity
                      min-passenger-num
                      max-passenger-num
                      step
                      pname)

  `(define (problem ,pname)
       (:domain elevators-sequencedstrips)

     (:objects ,@counts - count
               ,@passengers - passenger
               ,@fasts  - fast-elevator
               ,@slows - slow-elevator)

     (:init
      ,@nexts
      ,@above
      ,@per-lift
      ;; (lift-at fast0 n8)
      ;; (passengers fast0 n0)
      ;; (can-hold fast0 n1) (can-hold fast0 n2) (can-hold fast0 n3) (can-hold fast0 n4) 
      ;; (reachable-floor fast0 n0)(reachable-floor fast0 n4)(reachable-floor fast0 n8)(reachable-floor fast0 n12)(reachable-floor fast0 n16)

      ,@per-passenger
      ;; (passenger-at p0 n13)
      ;; (passenger-at p1 n10)
      ;; (passenger-at p2 n13)

      ,@distances
      ;; (= (travel-slow n0 n1) 6)
      ;; (= (travel-slow n0 n2) 7)
      ;; (= (travel-slow n0 n3) 8)
      ;; (= (travel-slow n0 n4) 9)
      ;; (= (travel-slow n0 n5) 10)
      ;; (= (travel-slow n0 n6) 11)
      ;; (= (travel-slow n0 n7) 12)
      ;; (= (travel-slow n0 n8) 13)
      ;; (= (travel-slow n1 n2) 6)
      ;; (= (travel-slow n1 n3) 7)

      ;; (= (travel-fast n0 n4) 13)
      ;; (= (travel-fast n0 n8) 25)
      ;; (= (travel-fast n0 n12) 37)
      ;; (= (travel-fast n0 n16) 49) 

      (= (total-cost) 0))

     (:goal
      (and
       ,@passenger-goal
       ;; (passenger-at p0 n8)
       ;; (passenger-at p1 n15)
       ;; (passenger-at p2 n6)
       ))

     (:metric minimize (total-cost))))
