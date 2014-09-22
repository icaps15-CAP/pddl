
(in-package :pddl.builder)

(defparameter *2a-each-noneg-nocost-path*
              (pathname-directory-pathname #.*compile-file-pathname*))

(defun write-2a-each-noneg-nocost-large ()
  (let ((*default-pathname-defaults* *2a-each-noneg-nocost-path*))
    (print *default-pathname-defaults*)
    (write-models-many #'2a-each-noneg-nocost
                       :format-control "p~2,,,'0@a.pddl"
                       :size-list '(1000))))

(defun 2a-each-noneg-nocost (basenum)
  (let ((bases-2a (iter (for i below basenum) (collect (concatenate-symbols 'base-2a i))))
        (distances (make-dists-noneg-nocost
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
                                      (concatenate-symbols 'part-2a kind i)))))))
    `(define (problem ,(concatenate-symbols
			'cell-assembly-2a-each
			basenum))
       (:domain cell-assembly-eachparts-noneg-nocost)
       (:objects arm1 arm2 - arm
		 ,@bases-2a - base
		 ,@(reduce #'append parts-2a :from-end t) - component
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
		 j2a-inspect-base   - machine-job)
       (:init
        ;;;;;;;;;;;;;;;;;; ATTRIBUTES ;;;;;;;;;;;;;;;;
	;; 

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
            (make-linear-jobs-noneg-nocost
             `((j2a-insert-gasket gasket-machine)
               (j2a-attatch-a table1 ,part-as tray-a)
               (j2a-screw-a screw-machine-a)
               (j2a-oil-cylinder oiling-machine)
               (j2a-attatch-b table2 ,part-bs tray-b)
               (j2a-attatch-c table2 ,part-cs tray-c)
               (j2a-screw-c screw-machine-c)
               (j2a-inspect-base inspection-machine)) 2 4))
        ;; component-base association
        ,@(make-component-bases parts-2a bases-2a)
        ;;;;;;;;;;;;;;; INITIAL STATES ;;;;;;;;;;;;;;;;
	;; 
        ;;;;;; Bases ;;;;;;;;;
	;; 
	;; All bases are at CARRY-IN
	;; Base and jobs. All bases must have finished NOTHING-DONE
	,@(make-initial-bases bases-2a)
        ,@(unfinished-jobs-bases bases-2a
                                 `(j2a-insert-gasket j2a-attatch-a j2a-screw-a
                                                     j2a-oil-cylinder j2a-attatch-b
                                                     j2a-attatch-c j2a-screw-c
                                                     j2a-inspect-base))
        ;; Arms ;;;;;;;;;;;;;;;;
        ,@(make-initial-arms-noneg-nocost
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
       (:goal (and ,@(make-goal-bases bases-2a 'j2a-inspect-base))))))


