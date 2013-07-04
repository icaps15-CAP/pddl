#|
This file is a part of pddl project.
Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage pddl
  (:use :cl :cl-syntax :optima :alexandria :guicho-utilities
	:annot.doc :annot.eval-when
	:iterate)
  (:import-from :metatilities :defclass*))
(in-package :pddl)
(use-syntax :annot)
;; blah blah blah.
(package-optimize-setting 0 3 3 0)
(optimize*)

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
	(defparameter ,name ,(parse-domain-def name body))
	',name))
    ((list 'problem name)
     `(progn
	(defparameter ,name ,(parse-problem-def name body))
	',name))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; bare parser

(defun parse-domain-def (name body)
  (let ((dom (pddl-domain :name name)))
    (macrolet ((body-domain (accessor &rest args)
		 `(setf (,accessor dom)
			(mapcar (lambda (obj)
				  (setf (domain obj) dom)
				  obj)
				(,(concatenate-symbols 'parse accessor)
				  body ,@args)))))
      (body-domain requirements)
      (body-domain types)
      (body-domain predicates)
      (body-domain constants)
      (body-domain functions)
      (body-domain actions (predicates dom))
      (body-domain durative-actions (predicates dom))
      (body-domain derived-predicates (predicates dom)))
    dom))

(defun parse-problem-def (name body)
  (let* ((dom (domain body))
	 (prob (pddl-problem :name name
			     :domain dom)))
    (macrolet ((body-problem (accessor &rest args)
		 `(setf (,accessor prob)
			(mapcar (lambda (obj)
				  (setf (domain obj) dom)
				  (setf (problem obj) prob)
				  obj)
				(,(concatenate-symbols 'parse accessor)
				  body ,@args)))))
      (body-problem objects)
      (body-problem init (predicates dom) (objects prob))

      (setf (goal prob)
	    (walk-tree (lambda (branch cont)
			 (typecase branch
			   (cons (funcall cont branch))
			   (pddl-predicate
			    (change-class branch 'pddl-atomic-state
					  :domain dom :problem prob))
			   (t branch)))
		       (parse-goal body (predicates dom) (objects prob))))

      (body-problem metric)
      prob)))

;; (eval-when (:compile-toplevel :load-toplevel :execute)
;;   (defun keyword-symbol (key)
;;     (intern (symbol-name key))))
