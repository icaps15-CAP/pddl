
(in-package :pddl)
(use-syntax :annot)


@export
(defclass pddl-domain ()
  (name
   requirements
   types
   predicates
   constants
   functions
   actions))

@export
(defclass pddl-predicate ()
  (domain))

@export
(defclass pddl-variable ()
  (domain
   name
   type))

@export
(defclass pddl-constant (pddl-variable)
  ())

@export
(defclass pddl-function ()
  (domain))

@export
(defclass pddl-action ()
  (domain
   parameters
   precondition
   effect))

@export
(defclass pddl-durative-action ()
  (domain
   parameters
   condition
   effect))

@export
(defclass pddl-derived-knowledge ()
  ())

(define-class-utils pddl-domain)
(define-class-utils pddl-predicate)
(define-class-utils pddl-variable)
(define-class-utils pddl-constant)
(define-class-utils pddl-function)
(define-class-utils pddl-action)
(define-class-utils pddl-durative-action)
(define-class-utils pddl-derived-knowledge)

