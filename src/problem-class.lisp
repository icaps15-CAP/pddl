
(in-package :pddl)
(use-syntax :annot)

;; metatilities:defclass*


(define-pddl-class pddl-problem (pddl-domain-slot namable)
  (objects
   (init :type pddl-atomic-state)
   (goal :type pddl-atomic-state)
   metric))

(define-pddl-class pddl-problem-slot (pddl-domain-slot)
  (problem))

(defmethod initialize-instance :after ((o pddl-problem-slot)
				       &rest args)
  @ignore args
  (setf (problem o) *problem*))

(define-pddl-class pddl-atomic-state (pddl-problem-slot pddl-predicate)
  ())

(defmethod predicate ((domain pddl-domain) (state pddl-atomic-state))
  (predicate domain (name state)))

(defmethod print-object ((o pddl-atomic-state) s)
  (format s "#<STATE ~a ~{~a~^ ~}>" (name o) (parameters o)))

(define-pddl-class pddl-object (pddl-problem-slot pddl-variable)
  ())

(defmethod print-object ((v pddl-object) s)
  (if (eq (type v) t)
      (format s "#<OBJ ~A>" (name v))
      (format s "#<OBJ ~A - ~A>" (name v) (type v))))

(define-pddl-class pddl-metric (pddl-problem-slot)
  (body))

@export
(defgeneric object (problem designator))
(defmethod object ((problem pddl-problem) (name symbol))
  (find name (objects problem) :key #'name))
(defmethod object ((problem pddl-problem) (name string))
  (find name (objects problem) :key (compose #'symbol-name #'name)))

