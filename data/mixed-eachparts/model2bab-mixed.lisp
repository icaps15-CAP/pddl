
(in-package :pddl.builder)

(defun write-2a2b-mixed-each (max)
  (iter (for i from 1 to max)
	(write-model #'2a2b-mixed-each
		     #'(lambda (i)
                         (merge-pathnames
                          (format nil "2a2b-mixed-each-~a.pddl" i)
                          (asdf:system-relative-pathname :pddl.builder "data/mixed-eachparts/")))
		     i)))

(defun 2a2b-mixed-each (basenum)
  (let ((bases-2a (iter (for i below basenum) (collect (concatenate-symbols 'base-2a i))))
        (bases-2b (iter (for i below basenum) (collect (concatenate-symbols 'base-2b i))))
        (distances (make-dists '(table-in
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
        (parts-2a (iter (for kind in '(a b c))
                        (collect
                            (iter (for i below basenum)
                                  (collect
                                      (concatenate-symbols 'part-2a kind i))))))
        (parts-2b (iter (for kind in '(a b c))
                        (collect
                            (iter (for i below basenum)
                                  (collect
                                      (concatenate-symbols 'part-2b kind i)))))))
    `(define (problem ,(concatenate-symbols
			'cell-assembly-2a2b-mixed-each
			basenum))
	 (:domain cell-assembly-eachparts)
       (:objects arm1 arm2 - arm
		 ,@bases-2a ,@bases-2b - base
		 ,@(reduce #'append parts-2a :from-end t)
                 ,@(reduce #'append parts-2b :from-end t)- component
		 tray-a tray-b tray-c - tray
		 table1 table2 - table
		 gasket-machine screw-machine-a oiling-machine
		 screw-machine-c inspection-machine  - machine
                 ;; jobs in 2a
		 2a-insert-gasket  - machine-job
		 2a-attatch-a      - job ;; at table1
		 2a-screw-a        - machine-job
		 2a-oil-cylinder   - machine-job
		 2a-attatch-b      - job ;; at table2
		 2a-attatch-c      - job ;; at table2
		 2a-screw-c        - machine-job
		 2a-inspect-base   - machine-job
                 ;; jobs in 2b
        	 2b-attatch-a      - job ;; at table-in
        	 2b-screw-a        - machine-job
        	 2b-attatch-b      - job ;; at table1
        	 2b-attatch-c      - job ;; at table1
        	 2b-screw-c        - machine-job
                 )
       (:init
        ;;;;;;;;;;;;;;;;;; ATTRIBUTES ;;;;;;;;;;;;;;;;
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
        ;; 2a jobs
	,@(destructuring-bind (part-as part-bs part-cs) parts-2a
            (make-linear-jobs
             `((2a-insert-gasket gasket-machine)
               (2a-attatch-a table1 ,part-as tray-a)
               (2a-screw-a screw-machine-a)
               (2a-oil-cylinder oiling-machine)
               (2a-attatch-b table2 ,part-bs tray-b)
               (2a-attatch-c table2 ,part-cs tray-c)
               (2a-screw-c screw-machine-c)
               (2a-inspect-base inspection-machine)) 2 4))
        ;; 2b jobs
	,@(destructuring-bind (part-as part-bs part-cs) parts-2b
            (make-linear-jobs
             `((2b-attatch-a table-in ,part-as tray-a)
               (2b-screw-a screw-machine-a)
               (2b-attatch-b table1 ,part-bs tray-b)
               (2b-attatch-c table1 ,part-cs tray-c)
               (2b-screw-c screw-machine-c)) 2 4))
        ;; component-base association
        ,@(make-component-bases parts-2a bases-2a)
        ,@(make-component-bases parts-2b bases-2b)
        ;;;;;;;;;;;;;;; INITIAL STATES ;;;;;;;;;;;;;;;;
	;; 
        ;;;;;; Bases ;;;;;;;;;
	;; 
	;; All bases are at CARRY-IN
	;; Base and jobs. All bases must have finished NOTHING-DONE
	,@(make-initial-bases bases-2a)
	,@(make-initial-bases bases-2b)
        ;; Arms ;;;;;;;;;;;;;;;;
        ,@(make-initial-arms '(arm1 arm2)
			     '(tray-a oiling-machine)))
       (:goal (and ,@(make-goal-bases bases-2a '2a-inspect-base)
                   ,@(make-goal-bases bases-2b '2b-screw-c)))
       (:metric minimize (total-cost)))))


