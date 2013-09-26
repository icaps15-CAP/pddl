(in-package :cl-user)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (handler-bind ((sb-int:package-at-variance
                  (lambda (c)
                    (muffle-warning c))))
    (defpackage pddl.instances
      (:use :cl :iterate :pddl :guicho-utilities :alexandria)
      (:shadowing-import-from :pddl :minimize :maximize))))

(in-package :pddl.instances)


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
        (eval `(defparameter ,sym ,plan))
        (export sym)))

(defun read-many-problems (problempath-fn planpath-fn)
  (iter (for i from 1)
        (for path = (funcall problempath-fn i))
        (while (probe-file path))
        (for sym = (parse-file path))
        (read-many-plans (symbol-value sym)
                         (curry planpath-fn i))
        (export sym)))

(defun data (name)
  (merge-pathnames
   name
   (asdf:system-relative-pathname :pddl "data/")))

(defun all (domain &rest args)
  (handler-bind ((warning #'muffle-warning))
    (let ((sym (parse-file (data domain))))
      (export sym)
      (let ((*domain* (symbol-value sym)))
        (all2 args)))))

(defun all2 (args)
  (when args
    (read-many-problems
     (lambda (i) (data (format nil (first args) i)))
     (lambda (i j) (data (format nil (second args) i j))))
    (all2 (nthcdr 2 args))))

(all "domain.pddl"
     "pfile~a"
     "pfile~a.plan.~a")
(all "costs/domain.pddl"
     "costs/model2b~a.pddl"
     "costs/model2b~a.plan.~a"
     "costs/model2a~a.pddl"
     "costs/model2a~a.plan.~a")
(all "costs-eachparts/domain.pddl"
     "costs-eachparts/model2a-each-~a.pddl"
     "costs-eachparts/model2a-each-~a.plan.~a")
(all "woodworking-sat11-strips/domain.pddl"
     "woodworking-sat11-strips/p~2,,,'0@a.pddl"
     "woodworking-sat11-strips/p~2,,,'0@a.plan.~a"
     "woodworking-opt11-strips/p~2,,,'0@a.pddl"
     "woodworking-opt11-strips/p~2,,,'0@a.plan.~a")
(all "satellite-typed/domain.pddl"
     "satellite-typed/p~2,,,'0@a.pddl"
     "satellite-typed/p~2,,,'0@a.plan.~a"
     "satellite-typed-loop/p~2,,,'0@a.pddl"
     "satellite-typed-loop/p~2,,,'0@a.plan.~a")
(all "rovers/domain.pddl"
     "rovers/p~2,,,'0@a.pddl"
     "rovers/p~2,,,'0@a.plan.~a")
