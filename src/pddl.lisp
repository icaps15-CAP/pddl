#|
This file is a part of pddl project.
Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage pddl
  (:use :cl :cl-syntax :optima :alexandria :guicho-utilities))
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

(export '(domain problem))

@export
(defmacro define (type &body body)
  (ematch type
    ((list 'domain name)
     `(progn
	(defparameter ,name ,(parse-domain body))
	,name))
    ((list 'problem name)
     `(progn
	(defparameter ,name ,(parse-problem body))
	,name))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; bare parser

(defun parse-domain (body)
  `(quote ,body))
(defun parse-problem (body)
  `(quote ,body))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defun keyword-symbol (key)
    (intern (symbol-name key))))

;;;;;;;;;;;;;;;;
;;;; for domain
(macrolet ((define-clause-getter (name key)
	     `(progn
		(defun ,name (domain)
		  (cdr (find-if (lambda (clause) (eq (car clause) ,key))
				domain))))))
  (define-clause-getter requirements-bare :requirements)
  (define-clause-getter types-bare :types)
  (define-clause-getter predicates-bare :predicates)
  (define-clause-getter constants-bare :constants)
  (define-clause-getter functions-bare :functions))

(macrolet ((define-action-getter (name key)
	     `(progn
		(defun ,name (domain)
		  (mapcar #'cdr
			  (remove-if-not
			   (lambda (clause) (eq (car clause) ,key))
			   domain))))))
  (define-action-getter actions-bare :action)
  (define-action-getter durative-actions-bare :durative-action)
  (define-action-getter derived-predicates-bare :derived))

;;;;;;;;;;;;;;;;
;;;; for problem
(macrolet ((define-clause-getter (name key)
	     `(progn
		(defun ,name (domain)
		  (cdr (find-if (lambda (clause) (eq (car clause) ,key))
				domain))))))
  ;; for problem
  (define-clause-getter domain-bare :domain)
  (define-clause-getter objects-bare :objects)
  (define-clause-getter init-bare :init)
  (define-clause-getter goal-bare :goal)
  (define-clause-getter metric-bare :metric))


(defun parse-typed-list (lst)
  (%getting-vars lst nil nil))


(defun %getting-vars (lst vars acc)
  (ematch lst
    ((list* name '- type rest)
     (%getting-vars rest nil (cons 



  (ematch lst
    ((list* name '- type 