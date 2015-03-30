
(in-package :pddl.test)
(in-suite :pddl)

(test (remove-costs :depends-on test-problem-ff)
  (print-pddl-object (remove-costs logistics-typed-cost) t)
  (print-pddl-object (remove-costs logistics-typed-cost-prob) t)
  (let* ((*default-pathname-defaults*
          (asdf:system-source-directory :pddl-test))
         (d (nth-value 1 (parse-file (merge-pathnames "t/data/domain-cost.pddl"))))
         (p (nth-value 1 (parse-file (merge-pathnames "t/data/problem-cost.pddl")))))
    (let ((tmp (mktemp "pddl-test" t)))
      (is-false (test-problem-common
                (write-pddl p "problem.pddl" tmp t)
                (write-pddl d "domain.pddl" tmp t)
                :name "ff-clean"
                :verbose t)))
    (let ((tmp (mktemp "pddl-test" t)))
      (is-true (test-problem-common
                (write-pddl (remove-costs p) "problem.pddl" tmp t)
                (write-pddl (remove-costs d) "domain.pddl" tmp t)
                :name "ff-clean"
                :verbose t)))))
