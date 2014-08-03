(in-package :cl-user)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (handler-bind ((sb-int:package-at-variance
                  (lambda (c)
                    (muffle-warning c))))
    (defpackage pddl.instances
      (:use :cl :iterate :pddl :guicho-utilities :alexandria
            :optima :cl-ppcre :osicat)
      (:shadow :place)
      (:shadowing-import-from :pddl :minimize :maximize))))

(in-package :pddl.instances)

(defvar *data-home*
  (asdf:system-relative-pathname :pddl "data/")
  "bind this variable with LET if you want to change the directory")
(export '*data-home*)

(defun ensure-complete-match (re)
  (if (char= #\$ (aref re (1- (length re))))
      re
      (concatenate 'string re "$")))

(defun find-by-regex (regex)
  (let (acc)
    (walk-directory
     *data-home*
     (lambda (path)
       (push (absolute-pathname path) acc))
     :test
     (lambda (path)
       (scan (ensure-complete-match regex)
             (princ-to-string (absolute-pathname path)))))
    acc))

(defun read-many-plans (plans)
  (iter (for path in plans)
        (format t "~&; loading ~a~&" path)
        (for i from 1)
        (for sym = (concatenate-symbols
                    (name *problem*) i))
        (for plan = (pddl-plan :path path))
        (eval `(defparameter ,sym ,plan))
        (export sym)
        (collecting plan)))

(defun read-many-problems (problempath-regex)
  (iter (for path in (find-by-regex problempath-regex))
        (for sym = (parse-file path t))
        (let ((*problem* (symbol-value sym)))
          (collecting
           (list* (symbol-value sym)
                  (read-many-plans (problem->plans path)))))))

(defun data (name)
  (merge-pathnames
   name
   *data-home*))

(defun all (domain &rest args)
  (let ((*package* (find-package :pddl.instances))
        (*load-verbose* t)
        (*load-print* nil))
    (handler-bind ((warning #'muffle-warning))
      (cond
        ((or (stringp domain) (pathnamep domain))
         (let ((sym (parse-file (data domain) t)))
           (let ((*domain* (symbol-value sym)))
             (list* *domain*
                    (mappend #'read-many-problems args)))))
        ((typep domain 'pddl-domain)
         (let ((*domain* domain))
           (list* *domain*
                  (mappend #'read-many-problems args))))))))

(export 'all)

(defun problem->plans (problem-path)
  (register-groups-bind (prefix)
      ("^(.*)pddl$" (princ-to-string (absolute-pathname problem-path)))
    (find-by-regex (format nil "~aplan.[0-9]*" prefix))))

(all "domain.pddl"
     "pfile[0-9]*$")
(all "costs/domain.pddl"
     "costs/model2[ab][0-9]*.pddl")
