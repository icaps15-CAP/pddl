
(in-package :pddl-test)
(in-suite :pddl)

(test validate
  (let ((*default-pathname-defaults*
         (asdf:system-relative-pathname
          :pddl-test "t/data/")))
    (is-true
      (validate-plan "domain.pddl"
                     "problem.pddl"
                     "opt"))
    (is-false
     (validate-plan "domain.pddl"
                    "problem.pddl"
                    "opt.dummy"))))
