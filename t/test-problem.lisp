(in-package :pddl-test)
(in-suite :pddl)

(test test-problem
  (let ((*default-pathname-defaults*
         (asdf:system-source-directory :pddl-test)))
    (multiple-value-bind (plan-path-list
                          translate-time
                          preprocess-time
                          search-time)
        (test-problem
         (merge-pathnames "t/data/problem.pddl")
         (merge-pathnames "t/data/domain.pddl")
         :verbose t)
      (is (not (null plan-path-list)))
      (is (numberp (print translate-time)))
      (is (numberp (print preprocess-time)))
      (is (numberp (print search-time))))))
