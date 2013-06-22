
(in-package :pddl)
(use-syntax :annot)
;; metatilities:defclass*




(defmacro define-pddl-class (name superclass slots)
  `(progn
     (defclass* ,name ,superclass
       ,slots
       (:EXPORT-P t)
       :EXPORT-SLOTS
       :AUTOMATIC-ACCESSORS
       :AUTOMATIC-INITARGS)
     (define-constructor ,name)))

(define-pddl-class pddl-domain ()
  (name
   requirements
   types
   predicates
   constants
   functions
   actions
   durative-actions
   derived-predicates))

(define-pddl-class pddl-domain-slot ()
  (domain))

(define-pddl-class pddl-predicate (pddl-domain-slot)
  (name (parameters :type variable)))

(define-pddl-class pddl-variable (pddl-domain-slot)
  (name type))

(define-pddl-class pddl-constant (pddl-variable)
  ())

(define-pddl-class pddl-function (pddl-domain-slot)
  (body))

(define-pddl-class pddl-action (pddl-domain-slot)
  ((parameters :type variable)
   precondition
   effect))

(define-pddl-class pddl-durative-action (pddl-domain-slot)
  ((parameters :type variable)
   condition
   effect))

(define-pddl-class pddl-derived-predicate (pddl-domain-slot)
  ((parameters :type variable)
   body))
