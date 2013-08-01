(in-package :pddl)
(use-syntax :annot)
;; metatilities:defclass*

;; (defmacro define-class-pattern (class-name)
;;   (let ((c (find-class class-name)))
;;     `(eval-when (:load-toplevel :execute)
;;        (defpattern ,class-name ,(class-slot-names c)
;; 	 `(,',class-name
;; 	      ,@(iter (for slot-name in (class-slot-names c))
;; 		      (collecting `(,slot-name slot-name))))))))

;; (define-class-pattern pddl-domain)

(defmacro define-pddl-class (name superclass slots)
  `(eval-when (:compile-toplevel :load-toplevel :execute)
     (defclass* ,name ,superclass
       ,slots
       (:EXPORT-P t)
       :EXPORT-SLOTS
       :AUTOMATIC-ACCESSORS
       :AUTOMATIC-INITARGS)
     (define-constructor ,name)))

(define-pddl-class namable ()
  (name))

(define-pddl-class pddl-domain-slot ()
  (domain))

(define-pddl-class pddl-state-transition ()
  (state-transition-function))


(defmethod initialize-instance :after ((o pddl-domain-slot)
				       &rest args)
  @ignore args
  (setf (domain o) *domain*))

(define-pddl-class pddl-domain (namable)
  (requirements
   types
   (predicates :initform nil)
   constants
   functions
   actions
   durative-actions
   derived-predicates))

@export
@doc "find the action specified by the designator."
(defgeneric action (pddl-domain designator))
(defmethod action ((dom pddl-domain) designator)
  (find-if (lambda (action)
	     (string= (symbol-name (name action))
		      (typecase designator
			(symbol (symbol-name designator))
			(string designator))))
	   (actions dom)))

@export
@doc "find the predicate specified by the designator."
(defgeneric predicate (pddl-domain designator))

(defmethod predicate ((dom pddl-domain) (designator symbol))
  (find-if (lambda (predicate)
	     (string= (symbol-name (name predicate))
		      (symbol-name designator)))
	   (predicates dom)))

(defmethod predicate ((dom pddl-domain) (str string))
  (find-if (lambda (predicate)
	     (string= str (symbol-name (name predicate))))
	   (predicates dom)))

@export
@doc "returns the number of parameters."
(defun arity (thing)
  (length (parameters thing)))

(define-pddl-class pddl-predicate (pddl-domain-slot namable)
  ((parameters :type pddl-variable)))

#+sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (sb-ext:with-unlocked-packages (:cl)
    (define-pddl-class pddl-variable (pddl-domain-slot
				      namable)
      (type))))

#-sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (define-pddl-class pddl-variable (pddl-domain-slot namable)
    (type)))

(define-pddl-class pddl-type (pddl-variable)
  ())

(defun pddl-supertype (type)
  (type type))

(defun pddl-supertype-p (subtype supertype)
  (or (eq subtype supertype)
      (let ((subtype-1 (pddl-supertype subtype)))
	(unless (eq subtype subtype-1)
	  (pddl-supertype-p subtype-1 supertype)))))

(defun pddl-typep (object type)
  (pddl-supertype-p (type object) type))


@eval-always
@export
(defvar *pddl-primitive-object-type*
  (let ((pt (pddl-type :name 'object)))
    (setf (type pt) pt)
    pt))

@eval-always
@export
(defvar *pddl-primitive-number-type*
  (let ((pt (pddl-type :name 'number)))
    (setf (type pt) pt)
    pt))

(define-pddl-class pddl-constant (pddl-variable)
  ())

(define-pddl-class pddl-function (pddl-predicate)
  ((type :initform *pddl-primitive-number-type*)))
@export
@doc "find the pddl-function specified by the designator."
(defun pfunction (domain name)
  (find name (functions domain) :key #'name))

(define-pddl-class pddl-assign-op (pddl-domain-slot
				   pddl-state-transition)
  (place-function value-function))



(define-pddl-class pddl-action (pddl-domain-slot
				namable
				pddl-state-transition)
  ((parameters :type pddl-variable)
   precondition
   effect
   add-list
   delete-list
   assign-ops))

(defmethod add-list ((a pddl-action))
  (with-memoising-slot (add-list a)
    (let ((acc nil))
      (walk-tree (lambda (branch cont)
		   (match branch
		     ((andp rest)
		      (funcall cont rest))
		     ((type pddl-predicate)
		      (push branch acc))))
		 (effect a))
      acc)))

(defmethod delete-list ((a pddl-action))
  (with-memoising-slot (delete-list a)
    (let ((acc nil))
      (walk-tree (lambda (branch cont)
		   (match branch
		     ((andp rest)
		      (funcall cont rest))
		     ((notp (and pred (type pddl-predicate)))
		      (push pred acc))))
		 (effect a))
      acc)))

(defmethod assign-ops ((a pddl-action))
  (with-memoising-slot (assign-ops a)
    (let ((acc nil))
      (walk-tree (lambda (branch cont)
		   (match branch
		     ((andp rest)
		      (funcall cont rest))
		     ((type pddl-assign-op)
		      (push branch acc))))
		 (effect a))
      acc)))


#+sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (sb-ext:with-unlocked-packages (:cl)
    (define-pddl-class pddl-durative-action (pddl-domain-slot namable)
      ((parameters :type pddl-variable)
       duration
       condition
       effect))))

#-sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (define-pddl-class pddl-durative-action (pddl-domain-slot)
    ((parameters :type pddl-variable)
     condition
     effect)))

(define-pddl-class pddl-derived-predicate (pddl-domain-slot)
  ((parameters :type pddl-variable)
   effect))
