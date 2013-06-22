#|
This file is a part of pddl project.
Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage pddl
  (:use :cl :cl-syntax :optima :alexandria :guicho-utilities)
  (:import-from :metatilities :defclass*))
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
	(defparameter ,name ,(parse-domain name body))
	',name))
    ((list 'problem name)
     `(progn
	(defparameter ,name ,(parse-problem body))
	',name))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; bare parser

(defun parse-domain (name body)
  (pddl-domain :name name
	       :requirements    (requirements body)
	       :types           (types        body)
	       :predicates      (predicates   body)
	       :constants       (constants    body)
	       :functions       (functions    body)
	       :actions         (actions      body)
	       :durative-action (durative-actions body)))
(defun parse-problem (body)
  (pddl-problem :name name
		:domain  (domain body)
		:objects (objects body)
		:init    (init body)
		:goal    (goal body)
		:metric  (metric body)))

;; (eval-when (:compile-toplevel :load-toplevel :execute)
;;   (defun keyword-symbol (key)
;;     (intern (symbol-name key))))
