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

@doc "bind this variable with LET if you want to change the directory"
(defvar *data-home* (asdf:system-relative-pathname :pddl "data/"))

(defun find-by-regex (regex)
  (let (acc)
    (walk-directory
     *data-home*
     (lambda (path)
       (push (absolute-pathname path) acc))
     :test
     (lambda (path)
       (scan regex (princ-to-string (absolute-pathname path)))))
    acc))

(defun read-many-plans (problem plans)
  (iter (for path in plans)
        (format t "~&; loading ~a~&" path)
        (for i from 1)
        (for sym = (concatenate-symbols
                    (name problem) i))
        (for plan = (pddl-plan
                     :domain *domain*
                     :problem problem
                     :path path))
        (eval `(defparameter ,sym ,plan))
        (export sym)))

(defun read-many-problems (problempath-regex)
  (iter (for path in (find-by-regex problempath-regex))
        (format t "~&; loading ~a~&" path)
        (for sym = (parse-file path))
        (read-many-plans (symbol-value sym) (problem->plans path))
        (export sym)))

(defun data (name)
  (merge-pathnames
   name
   *data-home*))

(defun all (domain &rest args)
  (let ((*package* (find-package :pddl.instances)))
    (format t "~&; loading ~a~&" domain)
    (handler-bind ((warning #'muffle-warning))
      (cond
        ((or (stringp domain) (pathnamep domain))
         (let ((sym (parse-file (data domain))))
           (export sym)
           (let ((*domain* (symbol-value sym)))
             (mapc #'read-many-problems args))))
        ((typep domain 'pddl-domain)
         (let ((*domain* domain))
           (mapc #'read-many-problems args)))))
    nil))

(defun problem->plans (problem-path)
  (register-groups-bind (prefix)
      ("^(.*)pddl$" (princ-to-string (absolute-pathname problem-path)))
    (find-by-regex (format nil "~aplan.[0-9]*" prefix))))

(all "domain.pddl"
     "pfile[0-9]*$")
(all "costs/domain.pddl"
     "costs/model2[ab][0-9]*.pddl")
