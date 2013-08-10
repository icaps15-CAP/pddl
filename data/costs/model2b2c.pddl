(define (problem cell-assembly-with-cost-p2)
  (:domain cell-assembly-cost)
  (:objects arm - arm
	    b1 b2  - base
	    part-a
	    part-b
	    part-c - component
	    
	    tray-a
	    tray-b
	    tray-c - tray
	    
	    table2 - table
	    
	    machine-a
	    machine-b - machine
	    attatch-a
	    attatch-b
	    attatch-c - job
	    screw-a
	    screw-c - machine-job
	    )
  (:init
   ;;;;;;;;;;;;;;;; ATTRIBUTES ;;;;;;;;;;;;;;;;
   ;; 
   ;; cost initialization
   (= (total-cost) 0)   ; !!! do not remove this
   (= (loading-cost) 1) ; !!! do not remove this

   ;; arm attributes
   (reachable arm table-in)   ; !!! do not remove this
   (reachable arm table-out)  ; !!! do not remove this
   (reachable arm tray-a)
   (reachable arm tray-b)
   (reachable arm tray-c)
   (reachable arm table2)
   (reachable arm machine-a)
   (reachable arm machine-b)
;; position attributes
   (= (MOVE-COST MACHINE-B MACHINE-A) 3) (= (MOVE-COST MACHINE-A MACHINE-B) 3)
   (= (MOVE-COST TABLE2 TRAY-C) 3) (= (MOVE-COST TRAY-C TABLE2) 3)
   (= (MOVE-COST TRAY-B TRAY-A) 3) (= (MOVE-COST TRAY-A TRAY-B) 3)
   (= (MOVE-COST TRAY-A TABLE-OUT) 3) (= (MOVE-COST TABLE-OUT TRAY-A) 3)
   (= (MOVE-COST MACHINE-A TABLE2) 4) (= (MOVE-COST TABLE2 MACHINE-A) 4)
   (= (MOVE-COST TRAY-C TRAY-B) 4) (= (MOVE-COST TRAY-B TRAY-C) 4)
   (= (MOVE-COST TABLE-OUT TABLE-IN) 4) (= (MOVE-COST TABLE-IN TABLE-OUT) 4)
   (= (MOVE-COST TRAY-B TABLE-OUT) 5) (= (MOVE-COST TABLE-OUT TRAY-B) 5)
   (= (MOVE-COST MACHINE-B TABLE2) 6) (= (MOVE-COST TABLE2 MACHINE-B) 6)
   (= (MOVE-COST MACHINE-A TRAY-C) 6) (= (MOVE-COST TRAY-C MACHINE-A) 6)
   (= (MOVE-COST TABLE2 TRAY-B) 6) (= (MOVE-COST TRAY-B TABLE2) 6)
   (= (MOVE-COST TRAY-C TRAY-A) 6) (= (MOVE-COST TRAY-A TRAY-C) 6)
   (= (MOVE-COST TRAY-A TABLE-IN) 6) (= (MOVE-COST TABLE-IN TRAY-A) 6)
   (= (MOVE-COST MACHINE-B TRAY-C) 8) (= (MOVE-COST TRAY-C MACHINE-B) 8)
   (= (MOVE-COST TABLE2 TRAY-A) 8) (= (MOVE-COST TRAY-A TABLE2) 8)
   (= (MOVE-COST TRAY-C TABLE-OUT) 8) (= (MOVE-COST TABLE-OUT TRAY-C) 8)
   (= (MOVE-COST TRAY-B TABLE-IN) 8) (= (MOVE-COST TABLE-IN TRAY-B) 8)
   (= (MOVE-COST MACHINE-A TRAY-B) 9) (= (MOVE-COST TRAY-B MACHINE-A) 9)
   (= (MOVE-COST TABLE2 TABLE-OUT) 10) (= (MOVE-COST TABLE-OUT TABLE2) 10)
   (= (MOVE-COST MACHINE-B TRAY-B) 11) (= (MOVE-COST TRAY-B MACHINE-B) 11)
   (= (MOVE-COST MACHINE-A TRAY-A) 11) (= (MOVE-COST TRAY-A MACHINE-A) 11)
   (= (MOVE-COST TRAY-C TABLE-IN) 11) (= (MOVE-COST TABLE-IN TRAY-C) 11)
   (= (MOVE-COST MACHINE-B TRAY-A) 13) (= (MOVE-COST TRAY-A MACHINE-B) 13)
   (= (MOVE-COST MACHINE-A TABLE-OUT) 13) (= (MOVE-COST TABLE-OUT MACHINE-A) 13)
   (= (MOVE-COST TABLE2 TABLE-IN) 13) (= (MOVE-COST TABLE-IN TABLE2) 13)
   (= (MOVE-COST MACHINE-B TABLE-OUT) 15) (= (MOVE-COST TABLE-OUT MACHINE-B) 15)
   (= (MOVE-COST MACHINE-A TABLE-IN) 16) (= (MOVE-COST TABLE-IN MACHINE-A) 16)
   (= (MOVE-COST MACHINE-B TABLE-IN) 18) (= (MOVE-COST TABLE-IN MACHINE-B) 18)
   (= (MOVE-COST MACHINE-B MACHINE-B) 1000)
   (= (MOVE-COST MACHINE-A MACHINE-A) 1000) (= (MOVE-COST TABLE2 TABLE2) 1000)
   (= (MOVE-COST TRAY-C TRAY-C) 1000) (= (MOVE-COST TRAY-B TRAY-B) 1000)
   (= (MOVE-COST TRAY-A TRAY-A) 1000) (= (MOVE-COST TABLE-OUT TABLE-OUT) 1000)
   (= (MOVE-COST TABLE-IN TABLE-IN) 1000)
   ;; this is awful
   ;; see make-distances.lisp

   ;; conveyor attributes
   (connected carry-in table-in)   ; !!! do not remove this
   (connected table-out carry-out) ; !!! do not remove this
   ;; job attributes
   (job-available-at attatch-a table-in)
   (job-available-at screw-a machine-a)
   (job-available-at attatch-b table2)
   (job-available-at attatch-c table2)
   (job-available-at screw-c machine-b)
   ;; job attributes
   (uses attatch-a part-a)
   (uses attatch-b part-b)
   (uses attatch-c part-c)
   ;; linear job ordering
   (depends nothing-done attatch-a)
   (depends attatch-a screw-a)
   (depends screw-a attatch-b)
   (depends attatch-b attatch-c)
   (depends attatch-c screw-c)

   (= (job-cost attatch-a) 5)
   (= (job-cost attatch-b) 5)
   (= (job-cost attatch-c) 5)
   (= (job-cost screw-a) 5)
   (= (job-cost screw-c) 5)
   
   ;;;;;;;;;;;;;;;; INITIAL STATES ;;;;;;;;;;;;;;;;
   ;; 
   ;;;; Bases ;;;;;;;;;
   ;; 
   ;; All bases are at CARRY-IN
   (at b1 carry-in)
   (at b2 carry-in)
   ;; Base and jobs. All bases must have finished NOTHING-DONE
   (finished nothing-done b1)
   (finished nothing-done b2)

   ;;;; Components ;;;;;;;;
   ;; 
   ;; Explain where each type of components is placed.
   (at part-a tray-a)
   (at part-b tray-b)
   (at part-c tray-c)

   ;;;; Arms ;;;;;;;;;;;;;;;;
   ;; 
   ;; Initially it can be anywhere, but I suggest you to keep
   ;; them collision-free.
   (at arm table-out)
   ;; 
   ;; Arm presence. The number of these clause would be exactly the
   ;; same as that of arms.
   (arm-present table-out)
   ;; 
   ;; All arms should be free.
   (free arm))
  (:goal (and
	  ;; In the goal state, all bases should be at CARRY-OUT
	  (at b1 carry-out)
	  (at b2 carry-out)
	  
	  ;; Also, all base should already passed the last job.
	  (finished screw-c b1)
	  (finished screw-c b2)
	  ))
  (:metric minimize (total-cost)))