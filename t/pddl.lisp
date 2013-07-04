#|
  This file is a part of pddl project.
  Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage pddl-test
  (:use :cl
	:iterate
	:optima
        :pddl
        :fiveam)
  (:shadow :place)
  (:shadowing-import-from :fiveam :fail))
(in-package :pddl-test)

(defun data (name)
  (merge-pathnames
   name
   (asdf:system-relative-pathname :pddl "data/")))

(defvar +problem+ (data "pfile1"))
(defvar +domain+ (data "domain.pddl"))
(defvar +plan+ (data "pfile1.plan.1"))

(print +problem+)
(print +domain+)
(print +plan+)

(def-suite :pddl)
(in-suite :pddl)

(defvar domain)
(defvar problem)
(defvar plan)


(test parse-typed-list

  (signals not-found-in-dictionary
    (parse-typed-list '(a b c)))

  (handler-bind ((not-found-in-dictionary
		  #'intern-variable-handler))
    (match (parse-typed-list '(a b c))
      ((list (pddl-variable :name 'a :type t)
	     (pddl-variable :name 'b :type t)
	     (pddl-variable :name 'c :type t))
       (pass))
      (_ (fail)))
    (match (parse-typed-list '(a b - number c - (either time number) d))
      ((list (pddl-variable :name 'a :type 'number)
	     (pddl-variable :name 'b :type 'number)
	     (pddl-variable :name 'c :type '(either time number))
	     (pddl-variable :name 'd :type t))
       (pass))
      (_ (fail)))))

(test parse-domain
  (finishes (setf domain (parse-file +domain+)))
  ;; depot
  (is (typep (symbol-value domain) 'pddl-domain)))

(test (parse-problem :depends-on parse-domain)
  (finishes (setf problem (parse-file +problem+)))
  ;; depotprob1818 
  (is (typep (symbol-value problem) 'pddl-problem)))

(test (parse-plan :depends-on parse-problem)
  (finishes (setf plan (parse-plan +plan+
				   (symbol-value domain)
				   (symbol-value problem)))))
