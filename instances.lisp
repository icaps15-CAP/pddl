(in-package :cl-user)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (handler-bind ((sb-int:package-at-variance
                  (lambda (c)
                    (muffle-warning c))))
    (defpackage pddl.instances
      (:use :cl :iterate :pddl :guicho-utilities :alexandria
            :cl-ppcre :osicat)
      (:shadowing-import-from :pddl :minimize :maximize))))

(in-package :pddl.instances)

(defun find-by-regex (regex)
  (let (acc)
    (walk-directory
     (asdf:system-relative-pathname :pddl "data/")
     (lambda (path)
       (push (absolute-pathname path) acc))
     :test
     (lambda (path)
       (scan regex (princ-to-string (absolute-pathname path)))))
    acc))

(defun read-many-plans (problem planname-regex)
  (iter (for path in (find-by-regex planname-regex))
        (for i from 1)
        (for sym = (concatenate-symbols
                    (name problem) i))
        (for plan = (pddl-plan
                     :domain *domain*
                     :problem problem
                     :path path))
        (eval `(defparameter ,sym ,plan))
        (export sym)))

(defun read-many-problems (problempath-regex planpath-regex)
  (iter (for path in (find-by-regex problempath-regex))
        (for sym = (parse-file path))
        (read-many-plans (symbol-value sym) planpath-regex)
        (export sym)))

(defun data (name)
  (merge-pathnames
   name
   (asdf:system-relative-pathname :pddl "data/")))

(defun all (domain &rest args)
  (format t "~&; loading ~a~&" domain)
  (handler-bind ((warning #'muffle-warning))
    (let ((sym (parse-file (data domain))))
      (export sym)
      (let ((*domain* (symbol-value sym)))
        (all2 args)))))

(defun all2 (args)
  (when args
    (format t "~&; loading ~a~&; and     ~a"
            (first args)            
            (second args))
    (read-many-problems
     (first args)
     (second args))
    (all2 (nthcdr 2 args))))

(all "domain.pddl"
     "pfile[0-9]*$"
     "pfile[0-9]*.plan.[0-9]*")
(all "costs/domain.pddl"
     "costs/model2[ab][0-9]*.pddl"
     "costs/model2[ab][0-9]*.plan.[0-9]*"
     "model[23][a-c]-loop/p[0-9]*.pddl"
     "model[23][a-c]-loop/p[0-9]*.plan.[0-9]*")
(all "costs-eachparts/domain.pddl"
     "costs-eachparts/model2a-each-[0-9]*.pddl"
     "costs-eachparts/model2a-each-[0-9]*.plan.[0-9]*")
(all "woodworking-sat11-strips/domain.pddl"
     "woodworking-(sat|opt)11-strips/p[0-9]*.pddl"
     "woodworking-(sat|opt)11-strips/p[0-9]*.plan.[0-9]*")
(all "woodworking-test/domain.pddl"
     "woodworking-test2?/wood-test-[0-9]*.pddl"
     "woodworking-test2?/wood-test-[0-9]*.plan.[0-9]*")
(all "satellite-typed/domain.pddl"
     "satellite-typed/p[0-9]*.pddl"
     "satellite-typed/p[0-9]*.plan.[0-9]*"
     "satellite-typed-loop/satellite-loop-[0-9]*.pddl"
     "satellite-typed-loop/satellite-loop-[0-9]*.plan.[0-9]*")
(all "rovers/domain.pddl"
     "rovers/p[0-9]*.pddl"
     "rovers/p[0-9]*.plan.[0-9]*")
