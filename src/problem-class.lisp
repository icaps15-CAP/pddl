
(in-package :pddl)
(cl-syntax:use-syntax :annot)

;; metatilities:defclass*

(define-pddl-class pddl-problem (pddl-domain-slot pathnamable namable)
  (objects
   init
   goal
   positive-goals
   metric))

(defmethod objects :around ((p pddl-problem))
  (append (constants (domain p))
          (call-next-method)))


(defmethod slot-unbound (class (a pddl-problem) (x (eql 'positive-goals)))
  (declare (ignore class x))
  (with-memoising-slot (positive-goals a)
    (let ((acc nil))
      (walk-tree (lambda (branch cont)
                   (match branch
                     ((andp rest)
                      (funcall cont rest))
                     ((type pddl-predicate)
                      (push branch acc))))
                 (goal a))
      acc)))

@export
(defun objects/const (pddl-problem)
  @type pddl-problem pddl-problem
  (slot-value pddl-problem 'objects))
@export
(defun (setf objects/const) (new-value pddl-problem)
  @type pddl-problem pddl-problem
  (setf (slot-value pddl-problem 'objects) new-value))

(define-pddl-class pddl-problem-slot (pddl-domain-slot)
  (problem))

(defmethod initialize-instance :after ((o pddl-problem-slot)
                                       &key (problem *problem*))
  (setf (problem o) problem)
  (unless (problem o)
    (warn "~a = NIL" `(problem ,(type-of o)))))

(define-pddl-class pddl-atomic-state (pddl-problem-slot pddl-predicate)
  ())

(defmethod predicate ((domain pddl-domain) (state pddl-atomic-state))
  (predicate domain (name state)))

(define-pddl-class pddl-object (pddl-problem-slot pddl-variable)
  ())

@export
(defgeneric related-to (designator parametrized))

(defmethod related-to (designator (list list))
  (mapcar (curry #'related-to designator) list))

(defmethod related-to ((designator string)
                       (parametrized pddl-problem-slot))
  (related-to
   (object (problem parametrized) designator)
   parametrized))

(defmethod related-to ((designator symbol)
                       (parametrized pddl-problem-slot))
  (related-to
   (object (problem parametrized) designator)
   parametrized))

(defmethod related-to ((designator pddl-object)
                       (parametrized pddl-parametrized-object))
  (let ((same (curry #'eqname designator))
        (params (parameters parametrized)))
    (some same params)))

;; same
(defmethod related-to ((designator pddl-constant)
                       (parametrized pddl-parametrized-object))
  (let ((same (curry #'eqname designator))
        (params (parameters parametrized)))
    (some same params)))

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
(defmethod object ((problem pddl-problem) (object pddl-object))
  (when (member object (objects problem))
    object))

(define-pddl-class pddl-function-state (pddl-function pddl-problem-slot)
  (value body))

(define-pddl-class pddl-ground-fluent (pddl-fluent-expression)
  ((value-function :type function)))

(define-pddl-class pddl-ground-assign-op (pddl-assign-op pddl-ground-fluent)
  ())

(define-pddl-class pddl-metric (pddl-problem-slot pddl-ground-fluent)
  ((optimization :type symbol)))
