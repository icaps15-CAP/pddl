
(in-package :pddl)
(use-syntax :annot)
;; metatilities:defclass*

@export
@doc "returns a list of PDDL-VARIABLEs.
the optional argument DICTIONARY is a list of `pddl-variable's.
if the designator in the list refers to an already defined variable
then it is always used. The reference is determined by the EQuality
to the `pddl-variable''s slot NAME."
(defun parse-typed-list (lst &optional dictionary)
  (%getting-vars lst nil nil dictionary))

(defun %eqname1 (sym var)
  (eq sym (name var)))

(defun %intern-variable (name type dictionary)
  (if-let ((found (find-if (curry #'%eqname1 name) dictionary)))
    (values found nil)
    (values (pddl-variable :name name :type type) t)))

(defun %getting-vars (lst vars acc dictionary)
  (ematch lst
    ((list* '- type rest)
     (iter (for name in vars) ;; 2. vars : reverse order
	   (for (values var new?) = (%intern-variable name type dictionary))
	   (when new? (push var dictionary))
	   ;; 3. pushing at the beginning, resulting order is regular
	   (collecting var into variables at beginning)
	   (finally
	    (return
	      (%getting-vars ;; 4. acc is always in a regular order
	       rest nil (append acc variables) dictionary)))))
    ((list* name rest) ;; 1. reversed order
     (%getting-vars rest (cons name vars) acc dictionary))
    (nil
     ;; 5. var is reversed, acc is regular
     (append acc (nreverse (mapcar (rcurry #'%intern-variable t dictionary)
				   vars))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; domain clause getters 

;; (:key ... body...)
(defun find-clause (domain-or-problem-body key)
  (cdr (find-if (lambda (clause) (eq (car clause) key))
		domain-or-problem-body)))

(defmacro define-clause-getter (name key initializer)
  `(defmethod ,name ((domain list))
     (if-let ((cl (find-clause domain ,key)))
       (funcall ,initializer cl)
       (warn "~A not found in this PDDL" ',name))))

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
    (mapcar #'parse-predicate predicates)))

(define-clause-getter functions :functions #'parse-functions)

@export
(defun parse-functions (body)
  (not-implemented 'functions))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; actions etc.

(defmacro define-action-getter (name key initializer)
  `(progn
     (defmethod ,name ((domain-body list))

       (if-let ((cls (remove-if-not
		      (lambda (clause) (eq (car clause) ,key))
		      domain-body)))
	 (mapcar (compose ,initializer #'cdr)
		 cls)
	 (warn "~A not found in this PDDL" ',name)))))

(define-action-getter actions :action #'parse-action)

@export
(defun parse-action (action)
  (ematch action
    ((list name
	   :parameters typed-variables
	   :precondition precond
	   :effect effect)
     (let ((params (parse-typed-list typed-variables)))
       (pddl-action :name name
		    :parameters params
		    :precondition (parse-pre-GD precond params)
		    :effect (parse-effect effect params))))))

(define-action-getter durative-actions :durative-action
  #'parse-durative-action)

@export
(defun parse-durative-action (durative-action)
  (not-implemented 'durative-action)
  ;; (ematch durative-action
  ;;   ((list name
  ;; 	   :parameters typed-variables
  ;; 	   :duration (list '= '?duration f-exp)
  ;; 	   :condition cond
  ;; 	   :effect effect)
  ;;    (let ((params (parse-typed-list typed-variables)))
  ;;      (pddl-durative-action
  ;;    	:name name
  ;;    	:parameters params
  ;;    	:duration f-exp
  ;;    	:condition (parse-GD cond params)
  ;;    	:effect (parse-effect effect params)))))
  )

(define-action-getter derived-predicates :derived
  #'parse-derived-predicate)

@export
(defun parse-derived-predicate (derived-predicate)
  (not-implemented 'derived-predicate)
  ;; (ematch derived-predicate
  ;;   ((list typed-variables effect)
  ;;    (not-implemented 'derived-predicate)
  ;;    (pddl-derived-predicate
  ;;     :parameters (parse-typed-list typed-variables)
  ;;     :effect (parse-GD effect))))
  )
