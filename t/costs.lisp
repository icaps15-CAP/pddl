(in-package :pddl-test)
(in-suite :pddl)

(test (costs :depends-on simulate-plan)
  (finishes
    (parse-file (data "costs/domain-with-costs.pddl"))
    "failed parsing a domain")
  (finishes
    (parse-file (data "costs/model2b1c.pddl"))
    "failed parsing a problem")
  (finishes
    (parse-plan (data "costs/model2b1c.plan.5"))
    "failed parsing a plan"))