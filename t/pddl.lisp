#|
  This file is a part of pddl project.
  Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage pddl-test
  (:use :cl
	:guicho-utilities
	:repl-utilities
	:alexandria
	:iterate
	:optima
        :pddl
        :fiveam)
  (:shadow :place)
  (:shadowing-import-from :pddl :maximize :minimize)
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
(defvar actions)
(defvar depot-actions)
(defvar plan)
(defvar env)

(test parse-typed-list

  (signals not-found-in-dictionary
    (parse-typed-list '(a b c)))

  (let ((*domain* (pddl-domain)))
    (setf (types *domain*)
	  (list *pddl-primitive-object-type*
		*pddl-primitive-number-type*))
    (handler-bind ((not-found-in-dictionary
		    #'intern-variable))
      (ematch (parse-typed-list '(a - object b - number c))
	((list (pddl-variable :name 'a
			      :type (eq *pddl-primitive-object-type*))
	       (pddl-variable :name 'b
			      :type (eq *pddl-primitive-number-type*))
	       (pddl-variable :name 'c
			      :type (eq *pddl-primitive-object-type*)))
	 (pass))))))

(test parse-domain
  (handler-bind ((found-in-dictionary #'muffle-warning))
    (finishes (setf domain (parse-file +domain+))))
  ;; depot
  (is (typep (symbol-value domain) 'pddl-domain)))

(test (parse-domain-airport :depends-on parse-domain)
  ;; airport-adl
  (handler-bind ((found-in-dictionary #'muffle-warning))
    (finishes (parse-file (data "airport-adl/domain.pddl")))))

(test (parse-problem :depends-on parse-domain)
  (handler-bind ((found-in-dictionary #'muffle-warning))
    (finishes (setf problem (parse-file +problem+))))
  ;; depotprob1818 
  (is (typep (symbol-value problem) 'pddl-problem)))

(test (parse-problem-airport :depends-on parse-problem)
  ;; airport 
  (handler-bind ((found-in-dictionary #'muffle-warning))
    (finishes (parse-file (data "airport-adl/p01-airport1-p1.pddl")))))

(test (parse-plan :depends-on parse-problem)
  (handler-bind ((found-in-dictionary #'muffle-warning))
    (finishes (setf depot-actions (parse-plan +plan+
					      (symbol-value domain)
					      (symbol-value problem))))))
