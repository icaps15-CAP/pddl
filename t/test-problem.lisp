(in-package :pddl-test)
(in-suite :pddl)

(defun ensure-deleted (path)
  (when (probe-file path)
    (delete-file path)))

;; old
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
      (is (numberp (print search-memory)))
      (mapcar #'delete-file plan-path-list))))

(cerror "Done. Continue testing"
        'simple-error
        :format-control "Run in your terminal: ~&   ~a  ~& to continue."
        :format-arguments
        (list (namestring
               (asdf:system-relative-pathname
                :pddl-test
                "planner-scripts/cgroup-setup.sh"))))

(test test-problem-fd
  (let ((*default-pathname-defaults*
         (asdf:system-source-directory :pddl-test)))
    (multiple-value-bind (plan-path-list
                          search-time
                          search-memory
                          complete?)
        (test-problem-common
         (merge-pathnames "t/data/problem.pddl")
         (merge-pathnames "t/data/domain.pddl")
         :name "fd-clean"
         :hard-time-limit 1
         :verbose t)
      (is (not (null plan-path-list)))
      (is (numberp (print search-time)))
      (is (numberp (print search-memory)))
      (is-true complete?)
      (ensure-deleted (merge-pathnames "t/data/problem.negative"))
      (mapcar #'delete-file plan-path-list))))

(test test-problem-ff
  (let ((*default-pathname-defaults*
         (asdf:system-source-directory :pddl-test)))
    (multiple-value-bind (plan-path-list
                          search-time
                          search-memory
                          complete?)
        (test-problem-common
         (merge-pathnames "t/data/problem.pddl")
         (merge-pathnames "t/data/domain.pddl")
         :name "ff-clean"
         :verbose t)
      (is (not (null plan-path-list)))
      (is (numberp (print search-time)))
      (is (numberp (print search-memory)))
      (is-false complete?)
      (ensure-deleted (merge-pathnames "t/data/problem.negative"))
      (mapcar #'delete-file plan-path-list))))

(test test-problem-ff-noverbose
  (let ((*default-pathname-defaults*
         (asdf:system-source-directory :pddl-test)))
    (multiple-value-bind (plan-path-list
                          search-time
                          search-memory
                          complete?)
        (test-problem-common
         (merge-pathnames "t/data/problem.pddl")
         (merge-pathnames "t/data/domain.pddl")
         :name "ff-clean")
      (is (not (null plan-path-list)))
      (is (numberp (print search-time)))
      (is (numberp (print search-memory)))
      (is-false complete?)
      (ensure-deleted (merge-pathnames "t/data/problem.negative"))
      (mapcar #'delete-file plan-path-list))))

(test test-problem-marvin
  (let ((*default-pathname-defaults*
         (asdf:system-source-directory :pddl-test)))
    (multiple-value-bind (plan-path-list
                          search-time
                          search-memory
                          complete?)
        (test-problem-common
         (merge-pathnames "t/data/problem.pddl")
         (merge-pathnames "t/data/domain.pddl")
         :name "marvin-clean"
         :verbose t)
      (is (not (null plan-path-list)))
      (is (numberp (print search-time)))
      (is (numberp (print search-memory)))
      (is-false complete?)
      (ensure-deleted (merge-pathnames "t/data/problem.negative"))
      (mapcar #'delete-file plan-path-list))))

(test test-problem-marvin-noverbose
  (let ((*default-pathname-defaults*
         (asdf:system-source-directory :pddl-test)))
    (multiple-value-bind (plan-path-list
                          search-time
                          search-memory
                          complete?)
        (test-problem-common
         (merge-pathnames "t/data/problem.pddl")
         (merge-pathnames "t/data/domain.pddl")
         :name "marvin-clean")
      (is (not (null plan-path-list)))
      (is (numberp (print search-time)))
      (is (numberp (print search-memory)))
      (is-false complete?)
      (ensure-deleted (merge-pathnames "t/data/problem.negative"))
      (mapcar #'delete-file plan-path-list))))
