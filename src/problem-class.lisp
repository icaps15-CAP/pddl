
(in-package :pddl)
(use-syntax :annot)

;; metatilities:defclass*

(define-pddl-class pddl-problem (pddl-domain-slot namable)
  (objects
   init
   goal
   metric))

(defmethod objects :around ((p pddl-problem))
  (append (constants (domain p))
	  (call-next-method)))

(define-pddl-class pddl-problem-slot (pddl-domain-slot)
  (problem))

(defmethod initialize-instance :after ((o pddl-problem-slot)
				       &key (problem *problem* supplied-p))
  (assert (typep problem 'pddl-problem)
	  nil "~a ~a ~a" problem *problem* supplied-p)
  (setf (problem o) problem))

(define-pddl-class pddl-atomic-state (pddl-problem-slot pddl-predicate)
  ())

(defmethod predicate ((domain pddl-domain) (state pddl-atomic-state))
  (predicate domain (name state)))

(define-pddl-class pddl-object (pddl-problem-slot pddl-variable)
  ())

@export
(defgeneric related-to (designator parametrized))


(defmethod related-to ((designator symbol)
		       (parametrized pddl-problem-slot))
  (related-to
   (object (problem parametrized) designator)
   parametrized))
(defmethod related-to ((designator pddl-object)
		       (parametrized pddl-parametrized-object))
  (some (curry #'eqname designator)
	(parameters parametrized)))


(defmethod related-to :around (designator parametrized)
  (if (next-method-p)
      (call-next-method)
      nil))

(defmethod related-to (designator parametrized)
  nil)

@export
(defgeneric object (problem designator))
(defmethod object ((problem pddl-problem) (name symbol))
  (object problem (symbol-name name)))
(defmethod object ((problem pddl-problem) (name string))
  (find-if (lambda (o)
	     (string= name (symbol-name (name o))))
	   (objects problem)))


(define-pddl-class pddl-metric (pddl-problem-slot)
  (optimization metric-function))

(define-pddl-class pddl-function-state (pddl-function)
  (value body))

