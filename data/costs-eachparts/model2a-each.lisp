(in-package :pddl.builder)

(defun make-component-bases (components bases)
  (iter (for components/kinds in components)
        (appending
         (iter (for component in components/kinds)
               (for base in bases)
               (collect `(component-base ,component ,base))))))

(defun write-model2a-each (max)
  (iter (for i from 1 to max)
	(write-model #'model2a-each
		     #'(lambda (i)
                         (merge-pathnames
                          (format nil "model2a-each-~a.pddl" i)
                          (asdf:system-relative-pathname :pddl.builder "data/costs-eachparts/")))
		     i)))

(defun model2a-each (basenum)
  (let ((bases (make-bases basenum))
        (distances (make-dists  '(table-in
                                  gasket-machine
                                  table1
                                  screw-machine-a
                                  tray-b
                                  oiling-machine
                                  tray-c
                                  screw-machine-c
                                  table2
                                  inspection-machine
                                  table-out
                                  tray-a
                                  table-in)))
        (parts (iter (for kind in '(a b c))
                     (collect
                         (iter (for i below basenum)
                               (collect
                                   (concatenate-symbols 'part kind i)))))))
    `(define (problem ,(concatenate-symbols
			'cell-assembly-model2a-each
			basenum))
       (:domain cell-assembly-eachparts)
       (:objects arm1
		 arm2 - arm
		 ,@bases - base
		 ,@(reduce #'append parts :from-end t) - component
		 
		 tray-a
		 tray-b
		 tray-c - tray
		 
		 table1
		 table2 - table
		 
		 gasket-machine
		 screw-machine-a
		 oiling-machine
		 screw-machine-c
		 inspection-machine  - machine
		 
		 insert-gasket  - machine-job
		 attatch-a      - job ;; at table1
		 screw-a        - machine-job
		 oil-cylinder   - machine-job
		 attatch-b      - job ;; at table2
		 attatch-c      - job ;; at table2
		 screw-c        - machine-job
		 inspect-base   - machine-job
		 )
       (:init
   ;;;;;;;;;;;;;;;; ATTRIBUTES ;;;;;;;;;;;;;;;;
	;; 
	;; cost initialization
	(= (total-cost) 0)   ; !!! do not remove this
	(= (loading-cost) 1) ; !!! do not remove this

	;; arm attributes
	,@(make-reachable
	   'arm1 '(gasket-machine
		   inspection-machine
		   
		   table-in
		   table-out
		   table1
		   table2
		   
		   tray-a))

	,@(make-reachable
	   'arm2 '(screw-machine-a
		   oiling-machine
		   screw-machine-c
		   
		   table1
		   table2
		   
		   tray-b
		   tray-c))

	;; position attributes
	,@distances
	
	;; conveyor attributes
	(connected carry-in table-in)   ; !!! do not remove this
	(connected table-out carry-out) ; !!! do not remove this

	;; job and component attributes
	
	,@(destructuring-bind (part-as part-bs part-cs) parts
            (make-linear-jobs
             `((insert-gasket gasket-machine)
               (attatch-a table1 ,part-as tray-a)
               (screw-a screw-machine-a)
               (oil-cylinder oiling-machine)
               (attatch-b table2 ,part-bs tray-b)
               (attatch-c table2 ,part-cs tray-c)
               (screw-c screw-machine-c)
               (inspect-base inspection-machine)) 2 4))
        
        ,@(make-component-bases parts bases)
	
   ;;;;;;;;;;;;;;;; INITIAL STATES ;;;;;;;;;;;;;;;;
	;; 
   ;;;; Bases ;;;;;;;;;
	;; 
	;; All bases are at CARRY-IN
	;; Base and jobs. All bases must have finished NOTHING-DONE

	,@(make-initial-bases bases)
   ;;;; Arms ;;;;;;;;;;;;;;;;
	,@(make-initial-arms '(arm1 arm2)
			     '(tray-a oiling-machine)))
       (:goal (and
	       ,@(make-goal-bases bases 'inspect-base)
	       ))
       (:metric minimize (total-cost)))))