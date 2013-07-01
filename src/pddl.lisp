#|
This file is a part of pddl project.
Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage pddl
  (:use :cl :cl-syntax :optima :alexandria :guicho-utilities
	:annot.doc :annot.eval-when)
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
	(defparameter ,name ,(parse-domain name body))
	',name))
    ((list 'problem name)
     `(progn
	(defparameter ,name ,(parse-problem name body))
	',name))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; bare parser

(defun parse-domain (name body)
  (let ((dom (pddl-domain :name name)))
    (macrolet ((body-domain (accessor)
		 `(setf (,accessor dom)
			(mapcar (lambda (obj)
				  (setf (domain obj) dom)
				  obj)
				(,accessor body)))))
      (body-domain requirements)
      (body-domain types)
      (body-domain predicates)
      (body-domain constants)
      (body-domain functions)
      (body-domain actions)
      (body-domain durative-actions)
      (body-domain derived-predicates))
    dom))

(defun parse-problem (name body)
  (let* ((dom (domain body))
	 (prob (pddl-problem :name name
			     :domain dom)))
    (macrolet ((body-problem (accessor)
		 `(setf (,accessor prob)
			(mapcar (lambda (obj)
				  (setf (domain obj) dom)
				  (setf (problem obj) prob)
				  obj)
				(,accessor body)))))
      (body-problem objects)
      (body-problem init)

      (setf (goal prob)
	    (walk-tree (lambda (branch cont)
			 (typecase branch
			   (cons (funcall cont branch))
			   (pddl-predicate
			    (change-class branch 'pddl-atomic-state :domain dom :problem prob))
			   (t branch)))
		       (goal body)))

      (body-problem metric)
      prob)))

;; (eval-when (:compile-toplevel :load-toplevel :execute)
;;   (defun keyword-symbol (key)
;;     (intern (symbol-name key))))
