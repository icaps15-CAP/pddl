(in-package :pddl-test)
(in-suite :pddl)

(test costs
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
    (setf env (pddl-environment :domain domain
				:problem problem
				:path (data "costs/model2b1c.plan.5")))
    "failed parsing a plan")

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



