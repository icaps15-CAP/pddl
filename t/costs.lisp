(in-package :pddl-test)
(in-suite :pddl)

(export '(cell-assembly-cost
	  cell-assembly-with-cost-p1
	  cell-assembly-with-cost-p2
	  cell-assembly-with-cost-p3
	  cell-assembly-with-cost-p4
	  cell-assembly-with-cost-p32))

(test costs
  
  (handler-bind ((found-in-dictionary #'muffle-warning))
    (finishes
      (setf domain
	    (symbol-value
	     (parse-file (data "costs/domain-with-costs.pddl"))))
      "failed parsing a domain")
    (finishes
      (setf problem
	    (symbol-value
	     (parse-file (data "costs/model2b1c.pddl"))))
      "failed parsing a problem")
    (finishes
      (pddl-plan :domain domain
		 :problem problem
		 :path (data "costs/model2b1c.plan.5"))
      "failed parsing a plan")
    (finishes
      (setf env (pddl-environment :domain domain
				  :problem problem
				  :path (data "costs/model2b1c.plan.5")))
      "failed parsing a plan"))
  

  (is (= (cost env) 0) "the metric is not initialized to 0")
  (is (= (value (function-state env '(MOVE-COST MACHINE-B MACHINE-A)))
	 3)
      "failed to query a function state (MOVE-COST MACHINE-B MACHINE-A) ~
       and to get its value")


  (finishes (setf env (proceed env))) ; slide +0

  (is (= 0 (cost env)))

  ;; test 8
  (finishes (setf env (proceed env))) ; move table-out tray-a +3
  
  (is (= 3 (cost env)))

  ;; test 10
  (finishes (setf env (proceed env))) ; pickup +1
  
  (is (= 3 (cost env)))

  ;; test 12
  (finishes (setf env (proceed env))) ; move tray-a table-in +6
  
  (is (= 9 (cost env)))
  )

(test (simulate-plan-with-costs :depends-on costs)
  (reinitialize-instance env)
  (is (= 0 (cost env)))
  
  (iter (repeat 27)
	(format t "~%~a~%" (cost env))
	(setf env (proceed env)))
  
  (is (= 101 (cost env))))

(test (read-all-problem-and-plans :depends-on costs)
  (handler-bind ((found-in-dictionary #'muffle-warning))
    (let ((*domain* cell-assembly-cost))
      (parse-file (data "costs/model2b2c.pddl"))
      (parse-file (data "costs/model2b3c.pddl"))
      (parse-file (data "costs/model2b3c2.pddl"))
      (parse-file (data "costs/model2b4c.pddl")))

    (flet ((read-many (problem pathstr start end)
	     (iter (for i from start to end)
		   (for sym = (concatenate-symbols
			       (name problem) i))
		   (setf (symbol-value sym)
			 (pddl-plan
			  :domain cell-assembly-cost
			  :problem problem
			  :path (data (format nil pathstr i))))
		   (export sym))))
      (read-many cell-assembly-with-cost-p1
		 "costs/model2b1c.plan.~a"
		 1 5)
      (read-many cell-assembly-with-cost-p3
		 "costs/model2b3c.plan.~a"
		 1 7)
      (read-many cell-assembly-with-cost-p32
		 "costs/model2b3c2.plan.~a"
		 1 6))))



