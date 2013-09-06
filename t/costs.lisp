(in-package :pddl-test)
(in-suite :pddl)

(defvar CELL-ASSEMBLY)
(defvar CELL-ASSEMBLY-MODEL2B-1)
(defvar CELL-ASSEMBLY-MODEL2B-1-6)

(test (read-all-problem-and-plans)
  (handler-bind ((found-in-dictionary #'muffle-warning))
    (finishes
      (parse-file (data "costs/domain.pddl"))
      (let ((*domain* cell-assembly))
	(parse-file (data (format nil "costs/model2b~a.pddl" 1)))
	(let ((*problem* cell-assembly-model2b-1))
	  (setf cell-assembly-model2b-1-6
		(pddl-plan
		 :path (data (format nil "costs/model2b~a.plan.~a" 1 6)))))))))

(test (costs :depends-on read-all-problem-and-plans)
  (handler-bind ((found-in-dictionary #'muffle-warning))
    (finishes
      (setf *env* (pddl-environment
		 :domain cell-assembly
		 :problem cell-assembly-model2b-1
		 :plan cell-assembly-model2b-1-6))))

  (is (= (cost *env*) 0) "the metric is not initialized to 0")
  (is (= (value (function-state *env* '(MOVE-COST SCREW-MACHINE-A TRAY-B)))
	 3)
      "failed to query a function state '(MOVE-COST SCREW-MACHINE-A TRAY-B) ~
       and to get its value")


  (finishes (setf *env* (proceed *env*))) ;slide
  (is (= 1 (cost *env*)))
  (finishes (setf *env* (proceed *env*))) ;move-arm table-on tray-a
  (is (= 5 (cost *env*)))
  (finishes (setf *env* (proceed *env*))) ;pickup
  (is (= 6 (cost *env*)))
  (finishes (setf *env* (proceed *env*))) ;move-arm tray-a table-on
  (is (= 10 (cost *env*))))

(test (simulate-plan-with-costs :depends-on costs)
  (reinitialize-instance *env*)
  (is (= 0 (cost *env*)))
  (setf env
	(with-simulating-plan (envname *env*)
	  (format t "~%~a~%" (cost *env*))))
  
  (is (= 63 (cost *env*))))





