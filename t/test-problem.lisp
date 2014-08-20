(in-package :pddl-test)
(in-suite :pddl)

(test test-problem
  (let ((*default-pathname-defaults*
         (asdf:system-source-directory :pddl-test)))
    (multiple-value-bind (plan-path-list
                          translate-time
                          preprocess-time
                          search-time
                          translate-memory
                          preprocess-memory
                          search-memory)
        (test-problem
         (merge-pathnames "t/data/problem.pddl")
         (merge-pathnames "t/data/domain.pddl")
         :verbose t)
      (is (not (null plan-path-list)))
      (is (numberp (print translate-time)))
      (is (numberp (print preprocess-time)))
      (is (numberp (print search-time)))
      (is (numberp (print translate-memory)))
      (is (numberp (print preprocess-memory)))
      (is (numberp (print search-memory))))))

(test test-problem-ff
  (let ((*default-pathname-defaults*
         (asdf:system-source-directory :pddl-test)))
    (multiple-value-bind (plan-path-list
                          translate-time
                          preprocess-time
                          search-time
                          translate-memory
                          preprocess-memory
                          search-memory)
        (test-problem-ff
         (merge-pathnames "t/data/problem.pddl")
         (merge-pathnames "t/data/domain.pddl")
         :verbose t)
      (is (not (null plan-path-list)))
      (is (numberp (print translate-time)))
      (is (numberp (print preprocess-time)))
      (is (numberp (print search-time)))
      (is (numberp (print translate-memory)))
      (is (numberp (print preprocess-memory)))
      (is (numberp (print search-memory))))))
