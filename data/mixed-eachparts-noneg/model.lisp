
(in-package :pddl.builder)

(defparameter *2a2b-mixed-each-noneg-path*
  (pathname-directory-pathname #.*compile-file-pathname*))

(defun write-2a2b-mixed-each-noneg ()
  (let ((*default-pathname-defaults* *2a2b-mixed-each-noneg-path*))
    (print *default-pathname-defaults*)
    (write-models-many #'2a2b-mixed-each-noneg
                       :format-control "p~2,,,'0@a.pddl"
                       :size-list (iota 20 :start 1))))


(defun unfinished-jobs-bases (bases jobs)
  (iter outer
        (for base in bases)
        (iter (for job in jobs)
              (in outer 
                  (collect `(not-finished ,job ,base))))))

(defun make-initial-arms-noneg (arms positions)
  (mappend
    (lambda (arm pos)
      `((free ,arm) (at ,arm ,pos)))
    (ensure-list arms)
    (ensure-list positions)))

(defun not-arm-present (positions except)
  (mapcar (lambda (pos) `(not-arm-present ,pos))
          (set-difference positions except)))

(defun not-base-present (positions)
  (mapcar (lambda (pos) `(not-base-present ,pos)) positions))

(defun 2a2b-mixed-each-noneg (basenum)
  (let ((bases-2a (iter (for i below basenum) (collect (concatenate-symbols 'base-2a i))))
        (bases-2b (iter (for i below basenum) (collect (concatenate-symbols 'base-2b i))))
        (distances (make-dists
                    '(table-in
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
	 (:domain cell-assembly-eachparts-noneg)
       (:objects arm1 arm2 - arm
		 ,@bases-2a ,@bases-2b - base
		 ,@(reduce #'append parts-2a :from-end t)
                 ,@(reduce #'append parts-2b :from-end t) - component
		 tray-a tray-b tray-c - tray
		 table1 table2 - table
		 gasket-machine screw-machine-a oiling-machine
		 screw-machine-c inspection-machine  - machine
                 ;; jobs in 2a
		 j2a-insert-gasket  - machine-job
		 j2a-attatch-a      - job ;; at table1
		 j2a-screw-a        - machine-job
		 j2a-oil-cylinder   - machine-job
		 j2a-attatch-b      - job ;; at table2
		 j2a-attatch-c      - job ;; at table2
		 j2a-screw-c        - machine-job
		 j2a-inspect-base   - machine-job
                 ;; jobs in 2b
        	 j2b-attatch-a      - job ;; at table-in
        	 j2b-screw-a        - machine-job
        	 j2b-attatch-b      - job ;; at table1
        	 j2b-attatch-c      - job ;; at table1
        	 j2b-screw-c        - machine-job
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
             `((j2a-insert-gasket gasket-machine)
               (j2a-attatch-a table1 ,part-as tray-a)
               (j2a-screw-a screw-machine-a)
               (j2a-oil-cylinder oiling-machine)
               (j2a-attatch-b table2 ,part-bs tray-b)
               (j2a-attatch-c table2 ,part-cs tray-c)
               (j2a-screw-c screw-machine-c)
               (j2a-inspect-base inspection-machine)) 2 4))
        ;; 2b jobs
	,@(destructuring-bind (part-as part-bs part-cs) parts-2b
            (make-linear-jobs
             `((j2b-attatch-a table-in ,part-as tray-a)
               (j2b-screw-a screw-machine-a)
               (j2b-attatch-b table1 ,part-bs tray-b)
               (j2b-attatch-c table1 ,part-cs tray-c)
               (j2b-screw-c screw-machine-c)) 2 4 t))
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
        ,@(unfinished-jobs-bases bases-2a
                                 `(j2a-insert-gasket j2a-attatch-a j2a-screw-a
                                                     j2a-oil-cylinder j2a-attatch-b
                                                     j2a-attatch-c j2a-screw-c
                                                     j2a-inspect-base))
        ,@(unfinished-jobs-bases bases-2b
                                 `(j2b-attatch-a j2b-screw-a j2b-attatch-b
                                                 j2b-attatch-c j2b-screw-c))
        ;; Arms ;;;;;;;;;;;;;;;;
        ,@(make-initial-arms-noneg
           '(arm1 arm2)
           '(tray-a oiling-machine))
        ,@(not-arm-present '(table-in ; important!
                             tray-a tray-b tray-c
                             table1 table2
                             gasket-machine screw-machine-a oiling-machine
                             screw-machine-c inspection-machine
                             table-out ; important!
                             )
                           '(tray-a oiling-machine))
        ,@(not-base-present '(table-in ; important!
                              tray-a tray-b tray-c
                              table1 table2
                              gasket-machine screw-machine-a oiling-machine
                              screw-machine-c inspection-machine
                              table-out ; important!
                              )))
       (:goal (and ,@(make-goal-bases bases-2a 'j2a-inspect-base)
                   ,@(make-goal-bases bases-2b 'j2b-screw-c)))
       (:metric minimize (total-cost)))))


