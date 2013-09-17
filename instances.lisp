(in-package :cl-user)
(defpackage pddl.instances
  (:use :cl :iterate :pddl :guicho-utilities :alexandria)
  (:shadowing-import-from :pddl :minimize :maximize))

(in-package :pddl.instances)

(eval-when (:compile-toplevel :load-toplevel :execute)
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

  (handler-bind ((warning #'muffle-warning))
    (export (parse-file (data "domain.pddl")))
    (let ((*domain* (symbol-value 'depot)))
      (read-many-problems
       (lambda (i) (data (format nil "pfile~a" i)))
       (lambda (i j) (data (format nil "pfile~a.plan.~a" i j))))))

  (handler-bind ((warning #'muffle-warning))
    (export (parse-file (data "costs/domain.pddl")))
    (let ((*domain* (symbol-value 'cell-assembly)))
      (read-many-problems
       (lambda (i) (data (format nil "costs/model2b~a.pddl" i)))
       (lambda (i j) (data (format nil "costs/model2b~a.plan.~a" i j))))
      (read-many-problems
       (lambda (i) (data (format nil "costs/model2a~a.pddl" i)))
       (lambda (i j) (data (format nil "costs/model2a~a.plan.~a" i j))))))

  (handler-bind ((warning #'muffle-warning))
    (export (parse-file (data "woodworking-sat11-strips/domain.pddl")))
    (let ((*domain* (symbol-value 'woodworking)))
      (read-many-problems
       (lambda (i) (data (format nil "woodworking-sat11-strips/p~2,,,'0@a.pddl" i)))
       (lambda (i j) (data (format nil "woodworking-sat11-strips/p~2,,,'0@a.plan.~a" i j))))))
  
  (handler-bind ((warning #'muffle-warning))
    (export (parse-file (data "rovers/domain.pddl")))
    (let ((*domain* (symbol-value 'rover)))
      (read-many-problems
       (lambda (i) (data (format nil "rovers/p~2,,,'0@a.pddl" i)))
       (lambda (i j) (data (format nil "rovers/p~2,,,'0@a.plan.~a" i j))))))
  )