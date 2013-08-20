(in-package :pddl-test)
(in-suite :pddl)

(defun read-many-plans (problem planname-fn)
  (iter (for i from 1)
	(for path = (funcall planname-fn i))
	(while (probe-file path))
	(for sym = (concatenate-symbols
		    (name problem) i))
	(for plan = (pddl-plan
		     :domain *domain*
		     :problem problem
		     :path path))
	(setf (symbol-value sym) plan)
	(export sym)))

(defun read-many-problems (problempath-fn planpath-fn)
  (iter (for i from 1)
	(for path = (funcall problempath-fn i))
	(while (probe-file path))
	(for sym = (parse-file path))
	(read-many-plans (symbol-value sym)
			 (curry planpath-fn i))
	(export sym)))

(test (read-all-problem-and-plans)
  (handler-bind ((found-in-dictionary #'muffle-warning))
    (finishes
      (export (parse-file (data "costs/domain.pddl"))))
    
    
    (let ((*domain* cell-assembly))
      (read-many-problems
       (lambda (i) (data (format nil "costs/model2b~a.pddl" i)))
       (lambda (i j) (data (format nil "costs/model2b~a.plan.~a" i j))))
      (read-many-problems
       (lambda (i) (data (format nil "costs/model2a~a.pddl" i)))
       (lambda (i j) (data (format nil "costs/model2a~a.plan.~a" i j)))))))

(test (costs :depends-on read-all-problem-and-plans)
  (handler-bind ((found-in-dictionary #'muffle-warning))
    (finishes
      (setf env (pddl-environment
		 :domain cell-assembly
		 :problem cell-assembly-model2b-1
		 :plan cell-assembly-model2b-1-6))))

  (is (= (cost env) 0) "the metric is not initialized to 0")
  (is (= (value (function-state env '(MOVE-COST SCREW-MACHINE-A TRAY-B)))
	 3)
      "failed to query a function state '(MOVE-COST SCREW-MACHINE-A TRAY-B) ~
       and to get its value")


  (finishes (setf env (proceed env))) ;slide
  (is (= 1 (cost env)))
  (finishes (setf env (proceed env))) ;move-arm table-on tray-a
  (is (= 5 (cost env)))
  (finishes (setf env (proceed env))) ;pickup
  (is (= 6 (cost env)))
  (finishes (setf env (proceed env))) ;move-arm tray-a table-on
  (is (= 10 (cost env))))

(test (simulate-plan-with-costs :depends-on costs)
  (reinitialize-instance env)
  (is (= 0 (cost env)))
  (setf env
	(with-simulating-plan (envname env)
	  (format t "~%~a~%" (cost env))))
  
  (is (= 63 (cost env))))





