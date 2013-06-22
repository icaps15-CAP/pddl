
(in-package :pddl)
(use-syntax :annot)

;; metatilities:defclass*
(define-pddl-class pddl-problem (pddl-domain-slot)
  (name
   objects
   (init :type pddl-predicate)
   (goal :type pddl-predicate)
   metric))

(define-pddl-class pddl-problem-slot (pddl-domain-slot)
  (problem))

(define-pddl-class pddl-object (pddl-problem-slot pddl-variable)
  ())

(define-pddl-class pddl-metric (pddl-problem-slot)
  (body))

