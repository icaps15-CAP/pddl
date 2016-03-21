#|
This file is a part of pddl project.
Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage pddl
  (:use :cl
        :trivia
        :alexandria
        :guicho-utilities
        :annot.doc
        :annot.eval-when
        :iterate)
  (:import-from :metatilities :defclass*)
  (:shadow :minimize :maximize)
  (:export :total-cost :total-time
           :parse-typed-list ;; these are required 
           :not-found-in-dictionary ;; in order to run the test safely
           :domain-not-found
           :found-in-dictionary
           :parse-plan
           :query-function
           :*pddl-primitive-number-type*
           :*pddl-primitive-object-type*
           :query-type
           :pddl-typep
           :pddl-supertype-p
           :pddl-supertype
           :arity
           :predicate-agrees-p
           :predicate-more-specific-p
           :predicate
           :constant
           :action
           :define-pddl-class
           :pprint-pddl
           :print-pddl-object
           :cleanup-pddlfasl
           :parse-file
           :pddl-ground-action
           :unspecified-parameter
           :parameter
           ;; 
           :remove-costs
           ;; 
           :untype-domain
           :untype-problem
           :add-costs
           :undefined-predicate
           :undefined-pddl-function))
(in-package :pddl)
(cl-syntax:use-syntax :annot)
;; blah blah blah.
(package-optimize-setting 0 3 3 3)
(optimize*)

