(in-package :pddl)
(use-syntax :annot)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; turn pddl objects into a cons so that it can be
;;;; a valid pddl problem, domain etc.
;;;;

@export
(defgeneric print-pddl-object (o))

(defmethod print-pddl-object ((o pddl-domain))
  `(define (domain ,(name o))
     (:requirements ,@(requirements o))
     (:types ,@(mappend #'print-pddl-object (types o)))
     (:predicates ,@(print-pddl-object (predicates o)))
     (:constants ,@(mappend #'print-pddl-object (constants o)))
     ;; (:functions ,@(print-pddl-object (functions o)))
     ,@(mapcar #'print-pddl-object (actions o))
     ,@(mapcar #'print-pddl-object (durative-actions o))
     ,@(mapcar #'print-pddl-object (derived-predicates o))))

(defmethod print-pddl-object ((o pddl-problem))
  `(define (problem ,(name o))
     (:domain ,(name (domain o)))
     (:objects ,@(mappend #'print-pddl-object (objects o)))
     (:init ,@(print-pddl-object (init o)))
     (:goal ,(print-pddl-object (goal o)))
     ;; (:metric ,(print-pddl-object (metric o)))
     ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; clauses

(defmethod print-pddl-object ((o symbol))
  o)

(defmethod print-pddl-object ((o list))
  (walk-tree 
   (lambda (branch cont)
     (if (consp branch)
	 (funcall cont branch)
	 (print-pddl-object branch)))
   o))

(defmethod print-pddl-object ((o namable))
  (name o))

(defmethod print-pddl-object ((o pddl-predicate))
  `(,(name o) ,@(mappend #'print-pddl-object (parameters o))))

(defmethod print-pddl-object ((v pddl-variable))
  `(,(name v)
     ,@(when (not (eq (type v) t))
	     `(- ,(type v)))))

(defmethod print-pddl-object ((o pddl-action))
  `(:action ,(name o)
	    :parameters ,(mappend #'print-pddl-object (parameters o))
	    :precondition ,(print-pddl-object (precondition o))
	    :effect ,(print-pddl-object (effect o))))

(defmethod print-pddl-object ((o pddl-actual-action))
  `(,(name o) ,@(mappend #'print-pddl-object (parameters o))))

