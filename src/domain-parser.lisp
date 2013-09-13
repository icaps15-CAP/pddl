
(in-package :pddl)
(use-syntax :annot)
(optimize*)
;; metatilities:defclass*

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; domain clause getters 

;; (:key ... body...)
(defun find-clause (domain-or-problem-body key)
  (cdr (find-if (lambda (clause) (eq (car clause) key))
		domain-or-problem-body)))

(defmacro define-clause-getter (name key initializer)
  (with-gensyms (cl)
    `(defun ,(concatenate-symbols 'parse name) (unparsed-domain-or-problem)
       (declare (type list unparsed-domain-or-problem))
       (if-let ((,cl (find-clause unparsed-domain-or-problem ,key)))
	 (funcall ,initializer ,cl)
	 (warn "~A not found in this PDDL" ',name)))))

(define-clause-getter
    requirements :requirements
  #'identity)

(defun typed-objects (typed-list class)
  (mapcar (rcurry #'change-class class)
	  (parse-typed-list typed-list)))
;;           ^^-- returns PDDL-VARIABLEs


;; only :types clause should be parsed incrementally, or for many times,
;; in order to resolve the forward referenced type issue.
(define-clause-getter
    types :types
  (lambda (types)
    (%parse-types-rec types (list *pddl-primitive-object-type*))))


(defun %parse-types-rec (input parsed-types)
  (let ((delayed-types nil))
    (let ((newly-parsed
	   (handler-bind ((not-found-in-dictionary #'intern-variable)
			  (declared-type-not-found
			   (lambda (c)
			     (appendf delayed-types (clause c))
			     (invoke-restart 'skip-this-type))))
	     (parse-typed-list
	      input parsed-types
	      (lambda (name &optional typesym)
		(pddl-type
		 :name name
		 :type (if typesym
			   (if-let ((type-found
				     (find-if (curry #'%eqname1 typesym)
					      parsed-types)))
			     type-found
			     ;; this is always handled
			     (error 'declared-type-not-found))
			   *pddl-primitive-object-type*)))))))
      (if delayed-types
	  (%parse-types-rec
	   delayed-types
	   (append newly-parsed parsed-types))
	  (append newly-parsed parsed-types)))))


(define-clause-getter
    constants :constants
  (lambda (constants)
    (handler-bind ((not-found-in-dictionary
		    #'intern-variable))
      (parse-typed-list
       constants nil
       (lambda (name &optional typesym)
	 (pddl-constant 
	  :name name
	  :type  (if typesym
		     (find-if (curry #'%eqname1 typesym) (types *domain*))
		     *pddl-primitive-object-type*)))))))

(define-clause-getter 
    predicates :predicates
  (lambda (predicates)
    (handler-bind ((not-found-in-dictionary
		    (lambda (c)
		      (if (eq (interning-class c) 'pddl-predicate)
			  (intern-variable)))))
      (mapcar (lambda (predicate-def)
		(parse-predicate predicate-def nil))
	      predicates))))

(define-clause-getter
    functions :functions
  (lambda (functions)
    (parse-function-typed-list functions)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; actions etc.

(defmacro define-action-getter (name key initializer)
  (with-gensyms (cls)
    `(progn
       (defun ,(concatenate-symbols 'parse name) (domain)
	 (if-let ((,cls (remove-if-not
			 (lambda (clause) (eq (car clause) ,key))
			 domain)))
	   (mapcar (compose ,initializer #'cdr) ,cls)
	   (warn "~A not found in this PDDL" ',name))))))

(define-action-getter actions :action #'parse-action)


@export
(defun parse-action (action)
  (ematch action
    ((list name
	   :parameters typed-variables
	   :precondition precond
	   :effect effect)
     (let ((action-params (handler-bind ((not-found-in-dictionary
                                          #'intern-variable))
                            (parse-typed-list typed-variables nil))))
       (let ((*params* (append action-params (constants *domain*))))
         (pddl-action :name name
                      :parameters action-params
                      :precondition (parse-pre-GD precond)
                      :effect (parse-effect effect)))))))

(define-action-getter durative-actions :durative-action
  #'parse-durative-action)

@export
(defun parse-durative-action (durative-action)
  (not-implemented 'durative-action)
  ;; TODO:: params
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
  ;; TODO:: params
  ;; (ematch derived-predicate
  ;;   ((list typed-variables effect)
  ;;    (not-implemented 'derived-predicate)
  ;;    (pddl-derived-predicate
  ;;     :parameters (parse-typed-list typed-variables)
  ;;     :effect (parse-GD effect))))
  )
