
(in-package :pddl.builder)

(defun write-model2b-each ()
  (let ((*default-pathname-defaults*
         (pathname-directory-pathname
          #.*compile-file-pathname*)))
    (write-models-many #'model2b-each
                       :format-control "p~4,,,'0@a.pddl")))

(defun model2b-each (basenum)
  (let ((bases (iter (for i below basenum)
		     (collect
		      (concatenate-symbols 'b i))))
        (distances (make-dists  '(table-in
                                  table1
                                  screw-machine-a
                                  tray-a
                                  tray-b
                                  tray-c
                                  screw-machine-c
                                  table-out
                                  table-in)))
        (parts (iter (for kind in '(a b c))
                     (collect
                         (iter (for i below basenum)
                               (collect
                                   (concatenate-symbols 'part kind i)))))))
    `(define (problem ,(concatenate-symbols
			'cell-assembly-model2b-each
			basenum))
	 (:domain cell-assembly-eachparts)
       (:objects arm - arm
		 ,@bases - base
		 ,@(reduce #'append parts :from-end t) - component
		 tray-a tray-b tray-c - tray
                 table1 - table 
		 screw-machine-a screw-machine-c  - machine
		 attatch-a      - job ;; at table-in
		 screw-a        - machine-job
		 attatch-b      - job ;; at table1
		 attatch-c      - job ;; at table1
		 screw-c        - machine-job)
       (:init
        ;;;;;;;;;;;;;;;;;; ATTRIBUTES ;;;;;;;;;;;;;;;;
	;; 
	;; cost initialization
	(= (total-cost) 0)   ; !!! do not remove this
	(= (loading-cost) 1) ; !!! do not remove this

	;; arm attributes
	,@(make-reachable
	   'arm '(screw-machine-c
		  screw-machine-a
		  table-in
		  table-out
		  table1		   
		  tray-a		   
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
             `((attatch-a table-in ,part-as tray-a)
               (screw-a screw-machine-a)
               (attatch-b table1 ,part-bs tray-b)
               (attatch-c table1 ,part-cs tray-c)
               (screw-c screw-machine-c)) 2 4))
        ;; component-base association
        ,@(make-component-bases parts bases)
        ;;;;;;;;;;;;;;; INITIAL STATES ;;;;;;;;;;;;;;;;
	;; 
        ;;;;;; Bases ;;;;;;;;;
	;; 
	;; All bases are at CARRY-IN
	;; Base and jobs. All bases must have finished NOTHING-DONE
	,@(make-initial-bases bases)
        ;; Arms ;;;;;;;;;;;;;;;;
	,@(make-initial-arms 'arm 'table-in))
       (:goal (and ,@(make-goal-bases bases 'screw-c)))
       (:metric minimize (total-cost)))))


