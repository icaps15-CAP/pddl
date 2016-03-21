(in-package :pddl.test)
(in-suite :pddl)

(defun test-re-readability (pddl)
  (terpri)
  (finishes
    (print-pddl-object pddl *standard-output*)
    (eval
     (read-from-string
      (with-output-to-string (s)
        (let ((copied (shallow-copy pddl :name (symbolicate (name pddl) '-copied))))
          (print-pddl-object copied s)))))))

(define (domain null1))

(define (domain null2)
    (:predicates)
  (:types)
  (:constants))

(define (problem nullp)
    (:domain null2)
  (:objects)
    (:init)
  (:goal (and)))

(define (domain null3)
  (:requirements)
  (:predicates)
  (:types)
  (:constants)
  (:action act :parameters ()
           :precondition (and)
           :effect (and)))

(test (write-back-pddl :depends-on (and parse-domain parse-problem costs logistics))
  (mapc #'test-re-readability
        (list depot
              depotprob1818
              logistics
              logistics-prob
              logistics-typed-cost
              logistics-typed-cost-prob
              null1
              null2
              null3
              nullp)))
