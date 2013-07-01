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


(test parse-typed-list
  (match (parse-typed-list '(a b c))
    ((list (pddl-variable :name 'a :type t)
	   (pddl-variable :name 'b :type t)
	   (pddl-variable :name 'c :type t))
     (pass))
    (_ (fail)))
  (match (parse-typed-list '(a b - number c - time d))
    ((list (pddl-variable :name 'a :type 'number)
	   (pddl-variable :name 'b :type 'number)
	   (pddl-variable :name 'c :type 'time)
	   (pddl-variable :name 'd :type t))
     (pass))
    (_ (fail))))

(test parse-plan
  (finishes (parse-plan +plan+)))

(test parse-domain
  (finishes (parse-file +domain+)))

(test (parse-problem :depends-on parse-domain)
  (finishes (parse-file +problem+)))

(test (parse-success :depends-on (and parse-domain parse-problem))
  (finishes (setf domain (parse-file +domain+)))
  (finishes (setf problem (parse-file +problem+)))
  (is (eq 'depot domain))
  (print depot)
  (is (typep depot 'pddl-domain)))

(5am:run! :pddl)
