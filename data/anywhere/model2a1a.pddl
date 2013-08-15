(define (problem cell-assembly-anywhere-p3)
  (:domain cell-assembly-anywhere)
  (:objects arm1
	    arm2 - arm
	    b1 b2 b3 - base
	    part-a
	    part-b
	    part-c - component
	    
	    tray-a
	    tray-b
	    tray-c - tray
	    
	    table1
	    table2 - table
	    
	    screw-machine-a
	    screw-machine-b
	    masking-machine-c
	    paint-machine-d
	    paint-machine-e - machine
	    
	    attatch-a
	    attatch-b
	    attatch-c
	    attatch-d
	    attatch-e - job
	    
	    screw-a
	    screw-b
	    screw-c
	    paint-a
	    paint-c - machine-job
	    )
    (:init
   ;;;;;;;;;;;;;;;; ATTRIBUTES ;;;;;;;;;;;;;;;;
   ;; 
   ;; cost initialization
   (= (total-cost) 0)   ; !!! do not remove this
   (= (loading-cost) 1) ; !!! do not remove this

   ;; arm attributes
   

   ;; position attributes
      
   ;; conveyor attributes
   (connected carry-in table-in)   ; !!! do not remove this
   (connected table-out carry-out) ; !!! do not remove this

   ;; job and component attributes

   
   ;;;;;;;;;;;;;;;; INITIAL STATES ;;;;;;;;;;;;;;;;
   ;; 
   ;;;; Bases ;;;;;;;;;
   ;; 
   ;; All bases are at CARRY-IN
   ;; Base and jobs. All bases must have finished NOTHING-DONE

   (AT B1 CARRY-IN) 
   (FINISHED NOTHING-DONE B1)  

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