(define (problem cell-assembly-anywhere-p3)
  (:domain cell-assembly-anywhere)
  (:objects arm - arm
	    b1 b2 b3 - base
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
   ;; (make-reachable 'arm '(table-in
   ;; 			  tray-a
   ;; 			  machine-a
   ;; 			  tray-b
   ;; 			  table2
   ;; 			  tray-c
   ;; 			  machine-b
   ;; 			  table-out))
   (REACHABLE ARM TABLE-IN) 
   (REACHABLE ARM TABLE-OUT) 
   (REACHABLE ARM TRAY-A) 
   (REACHABLE ARM TRAY-B) 
   (REACHABLE ARM TRAY-C) 
   (REACHABLE ARM TABLE2) 
   (REACHABLE ARM MACHINE-A) 
   (REACHABLE ARM MACHINE-B)

   ;; position attributes
   ;; (make-dists2  '(table-in
   ;; 		   tray-a
   ;; 		   machine-a
   ;; 		   tray-b
   ;; 		   table2
   ;; 		   tray-c
   ;; 		   machine-b
   ;; 		   table-out))

   (= (MOVE-COST TABLE-IN TRAY-A) 2) 
   (= (MOVE-COST TRAY-A TABLE-IN) 2) 
   (ADJACENT TABLE-IN TRAY-A) 
   (ADJACENT TRAY-A TABLE-IN) 
   (= (MOVE-COST TRAY-A MACHINE-A) 4) 
   (= (MOVE-COST MACHINE-A TRAY-A) 4) 
   (ADJACENT TRAY-A MACHINE-A) 
   (ADJACENT MACHINE-A TRAY-A) 
   (= (MOVE-COST MACHINE-A TRAY-B) 1) 
   (= (MOVE-COST TRAY-B MACHINE-A) 1) 
   (ADJACENT MACHINE-A TRAY-B) 
   (ADJACENT TRAY-B MACHINE-A) 
   (= (MOVE-COST TRAY-B TABLE2) 3) 
   (= (MOVE-COST TABLE2 TRAY-B) 3) 
   (ADJACENT TRAY-B TABLE2) 
   (ADJACENT TABLE2 TRAY-B) 
   (= (MOVE-COST TABLE2 TRAY-C) 2) 
   (= (MOVE-COST TRAY-C TABLE2) 2) 
   (ADJACENT TABLE2 TRAY-C) 
   (ADJACENT TRAY-C TABLE2) 
   (= (MOVE-COST TRAY-C MACHINE-B) 1) 
   (= (MOVE-COST MACHINE-B TRAY-C) 1) 
   (ADJACENT TRAY-C MACHINE-B) 
   (ADJACENT MACHINE-B TRAY-C) 
   (= (MOVE-COST MACHINE-B TABLE-OUT) 1) 
   (= (MOVE-COST TABLE-OUT MACHINE-B) 1) 
   (ADJACENT MACHINE-B TABLE-OUT) 
   (ADJACENT TABLE-OUT MACHINE-B) 
   (= (MOVE-COST TABLE-IN MACHINE-A) 1000) 
   (= (MOVE-COST MACHINE-A TABLE-IN) 1000) 
   (= (MOVE-COST TABLE-IN TRAY-B) 1000) 
   (= (MOVE-COST TRAY-B TABLE-IN) 1000) 
   (= (MOVE-COST TABLE-IN TABLE2) 1000) 
   (= (MOVE-COST TABLE2 TABLE-IN) 1000) 
   (= (MOVE-COST TABLE-IN TRAY-C) 1000) 
   (= (MOVE-COST TRAY-C TABLE-IN) 1000) 
   (= (MOVE-COST TABLE-IN MACHINE-B) 1000) 
   (= (MOVE-COST MACHINE-B TABLE-IN) 1000) 
   (= (MOVE-COST TABLE-IN TABLE-OUT) 1000) 
   (= (MOVE-COST TABLE-OUT TABLE-IN) 1000) 
   (= (MOVE-COST TRAY-A TRAY-B) 1000) 
   (= (MOVE-COST TRAY-B TRAY-A) 1000) 
   (= (MOVE-COST TRAY-A TABLE2) 1000) 
   (= (MOVE-COST TABLE2 TRAY-A) 1000) 
   (= (MOVE-COST TRAY-A TRAY-C) 1000) 
   (= (MOVE-COST TRAY-C TRAY-A) 1000) 
   (= (MOVE-COST TRAY-A MACHINE-B) 1000) 
   (= (MOVE-COST MACHINE-B TRAY-A) 1000) 
   (= (MOVE-COST TRAY-A TABLE-OUT) 1000) 
   (= (MOVE-COST TABLE-OUT TRAY-A) 1000) 
   (= (MOVE-COST MACHINE-A TABLE2) 1000) 
   (= (MOVE-COST TABLE2 MACHINE-A) 1000) 
   (= (MOVE-COST MACHINE-A TRAY-C) 1000) 
   (= (MOVE-COST TRAY-C MACHINE-A) 1000) 
   (= (MOVE-COST MACHINE-A MACHINE-B) 1000) 
   (= (MOVE-COST MACHINE-B MACHINE-A) 1000) 
   (= (MOVE-COST MACHINE-A TABLE-OUT) 1000) 
   (= (MOVE-COST TABLE-OUT MACHINE-A) 1000) 
   (= (MOVE-COST TRAY-B TRAY-C) 1000) 
   (= (MOVE-COST TRAY-C TRAY-B) 1000) 
   (= (MOVE-COST TRAY-B MACHINE-B) 1000) 
   (= (MOVE-COST MACHINE-B TRAY-B) 1000) 
   (= (MOVE-COST TRAY-B TABLE-OUT) 1000) 
   (= (MOVE-COST TABLE-OUT TRAY-B) 1000) 
   (= (MOVE-COST TABLE2 MACHINE-B) 1000) 
   (= (MOVE-COST MACHINE-B TABLE2) 1000) 
   (= (MOVE-COST TABLE2 TABLE-OUT) 1000) 
   (= (MOVE-COST TABLE-OUT TABLE2) 1000) 
   (= (MOVE-COST TRAY-C TABLE-OUT) 1000) 
   (= (MOVE-COST TABLE-OUT TRAY-C) 1000) 
   (= (MOVE-COST TABLE-IN TABLE-IN) 1000) 
   (= (MOVE-COST TRAY-A TRAY-A) 1000) 
   (= (MOVE-COST MACHINE-A MACHINE-A) 1000) 
   (= (MOVE-COST TRAY-B TRAY-B) 1000) 
   (= (MOVE-COST TABLE2 TABLE2) 1000) 
   (= (MOVE-COST TRAY-C TRAY-C) 1000) 
   (= (MOVE-COST MACHINE-B MACHINE-B) 1000) 
   (= (MOVE-COST TABLE-OUT TABLE-OUT) 1000) 
   
   ;; conveyor attributes
   (connected carry-in table-in)   ; !!! do not remove this
   (connected table-out carry-out) ; !!! do not remove this

   ;; job and component attributes

   ;; (make-linear-jobs
   ;;  '((attatch-a table-in part-a tray-a)
   ;;    (screw-a machine-a)
   ;;    (attatch-b table2 part-b tray-b)
   ;;    (attatch-c table2 part-c tray-c)
   ;;    (screw-c machine-b)))

   (= (JOB-COST NOTHING-DONE) 0) 
   (JOB-AVAILABLE-AT ATTATCH-A TABLE-IN) 
   (DEPENDS NOTHING-DONE ATTATCH-A) 
   (= (JOB-COST ATTATCH-A) 18) 
   (USES ATTATCH-A PART-A) 
   (AT PART-A TRAY-A) 
   (JOB-AVAILABLE-AT SCREW-A MACHINE-A) 
   (DEPENDS ATTATCH-A SCREW-A) 
   (= (JOB-COST SCREW-A) 18) 
   (JOB-AVAILABLE-AT ATTATCH-B TABLE2) 
   (DEPENDS SCREW-A ATTATCH-B) 
   (= (JOB-COST ATTATCH-B) 13) 
   (USES ATTATCH-B PART-B) 
   (AT PART-B TRAY-B) 
   (JOB-AVAILABLE-AT ATTATCH-C TABLE2) 
   (DEPENDS ATTATCH-B ATTATCH-C) 
   (= (JOB-COST ATTATCH-C) 28) 
   (USES ATTATCH-C PART-C) 
   (AT PART-C TRAY-C) 
   (JOB-AVAILABLE-AT SCREW-C MACHINE-B) 
   (DEPENDS ATTATCH-C SCREW-C) 
   (= (JOB-COST SCREW-C) 38) 
   
   ;;;;;;;;;;;;;;;; INITIAL STATES ;;;;;;;;;;;;;;;;
   ;; 
   ;;;; Bases ;;;;;;;;;
   ;; 
   ;; All bases are at CARRY-IN
   ;; Base and jobs. All bases must have finished NOTHING-DONE

   ;; (make-initial-bases '(b1))

   (AT B1 CARRY-IN) 
   (FINISHED NOTHING-DONE B1) 
   (AT B2 CARRY-IN) 
   (FINISHED NOTHING-DONE B2) 
   (AT B3 CARRY-IN) 
   (FINISHED NOTHING-DONE B3) 

   ;;;; Arms ;;;;;;;;;;;;;;;;
   (free arm))
  (:goal (and
	  ;; In the goal state, all bases should be at CARRY-OUT
	  (at b1 carry-out)
	  (at b2 carry-out)
	  (at b3 carry-out)
	  
	  ;; Also, all base should already passed the last job.
	  (finished screw-c b1)
	  (finished screw-c b2)
	  (finished screw-c b3)
	  ))
  (:metric minimize (total-cost)))