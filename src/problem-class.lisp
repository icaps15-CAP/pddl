
(in-package :pddl)
(use-syntax :annot)

;; metatilities:defclass*

(define-pddl-class pddl-atomic-state (pddl-predicate)
  ())

(defmethod predicate ((domain pddl-domain) (state pddl-atomic-state))
  (predicate domain (name state)))

(define-pddl-class pddl-problem (pddl-domain-slot namable)
  (objects
   (init :type pddl-atomic-state)
   (goal :type pddl-atomic-state)
   metric))

(define-pddl-class pddl-problem-slot (pddl-domain-slot)
  (problem))

(define-pddl-class pddl-object (pddl-problem-slot pddl-variable)
  ())

(define-pddl-class pddl-metric (pddl-problem-slot)
  (body))

