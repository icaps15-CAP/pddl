
(in-package :pddl)
(use-syntax :annot)
;; metatilities:defclass*

@export
@doc "returns a list of PDDL-VARIABLEs."
(defun parse-typed-list (lst)
  (%getting-vars lst nil nil))

(defun %getting-vars (lst vars acc)
  (ematch lst
    ((list* '- type rest)
     (%getting-vars rest
		    nil 
		    (append (mapcar (lambda (name)
				      (pddl-variable :name name
						     :type type))
				    vars)
			    acc)))
    ((list* name rest)
     (%getting-vars rest
		    (cons name vars)
		    acc))
    (nil (nreverse (append (mapcar (lambda (name)
				      (pddl-variable :name name
						     :type t))
				    vars)
			   acc)))))

;; (:key ... body...)
(defun find-clause (domain-or-problem-body key)
  (cdr (find-if (lambda (clause) (eq (car clause) key))
		domain-or-problem-body)))

(defmacro define-clause-getter (name key initializer)
  `(defmethod ,name ((domain list))
     (if-let ((cl (find-clause domain ,key)))
       (funcall ,initializer cl)
       (warn "~A not found in this domain" ',name))))

(define-clause-getter requirements :requirements #'identity)

(defun typed-objects (typed-list class)
  (mapcar (rcurry #'change-class class)
	  (parse-typed-list typed-list)))
;;           ^^-- returns PDDL-VARIABLEs

(define-clause-getter types :types
  (rcurry #'typed-objects 'pddl-types))

(define-clause-getter constants :constants
  (rcurry #'typed-objects 'pddl-constant))

(define-clause-getter predicates :predicates
  (lambda (predicates)
    (mapcar (lambda (predicate)
	      (ematch predicate
		((list* name parameters)
		 (pddl-predicate
		  :name name
		  :parameters (parse-typed-list parameters)))))
	    predicates)))

;; (define-clause-getter functions :functions)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; actions etc.

(defmacro define-action-getter (name key initializer)
  `(progn
     (defmethod ,name ((domain-body list))
       (mapcar (compose ,initializer #'cdr)
	       (remove-if-not
		(lambda (clause) (eq (car clause) ,key))
		domain-body)))))

(define-action-getter actions :action #'parse-action)

(defun parse-action (action)
  (ematch action
    ((list* name
	    :parameters typed-variables
	    :precondition precond
	    :effect effect)
     (pddl-action :name name
		  :parameters (parse-typed-list typed-variables)
		  :precondition (parse-GD precond)
		  :effect (parse-GD effect)))))

(define-action-getter durative-actions :durative-action
  #'parse-durative-action)

(defun parse-durative-action (durative-action)
  (ematch durative-action
    ((list* name
	    :parameters typed-variables
	    :duration (list '= '?duration f-exp)
	    :condition cond
	    :effect effect)
     (pddl-durative-action
      :name name
      :parameters (parse-typed-list typed-variables)
      :duration f-exp
      :condition cond
      :effect (parse-GD effect)))))

(define-action-getter derived-predicates :derived
  #'parse-derived-predicate)

(defun parse-derived-predicate (derived-predicate)
  (ematch durative-action
    ((list* typed-variables effect)
     (pddl-derived-predicate
      :parameters (parse-typed-list typed-variables)
      :effect (parse-GD effect)))))
