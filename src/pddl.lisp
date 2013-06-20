#|
  This file is a part of pddl project.
  Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage pddl
  (:use :cl :annot.doc :cl-syntax :optima :alexandria))
(in-package :pddl)
(use-syntax :annot)
;; blah blah blah.

@export
(defun parse-file (pathname)
  (with-open-file (s pathname)
     (parse-stream s)))

@export
(defun parse-stream (s)
  (eval (read s)))

@export
(defmacro define (type &body body)
  (ematch type
    ((list 'domain name)  (domain  name body))
    ((list 'problem name) (problem name body))))

@export
(defun domain (name body)
  `(progn
     (defparameter ,name ,(parse-domain body))
     ,name))

@export
(defun problem (name body)
  `(progn
     (defparameter ,name ,(parse-problem body))
     ,name))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; parser

(defun parse-domain (body)
  `(quote ,body))
(defun parse-problem (body)
  `(quote ,body))

(macrolet ((define-clause (type key)
	     `(progn
		(export '(,type))
		(defun ,type (domain)
		  (cdr (find-if (lambda (clause) (eq (car clause) ,key))
				domain))))))
  (define-clause requirements :requirements)
  (define-clause types :types)
  (define-clause predicates :predicates)
  (define-clause constants :constants)
  (define-clause functions :functions))



