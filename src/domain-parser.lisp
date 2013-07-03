
(in-package :pddl)
(use-syntax :annot)
;; metatilities:defclass*

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; domain clause getters 

;; (:key ... body...)
(defun find-clause (domain-or-problem-body key)
  (cdr (find-if (lambda (clause) (eq (car clause) key))
		domain-or-problem-body)))

(defmacro define-clause-getter (name key additional-arguments initializer)
  `(defun ,(concatenate-symbols 'parse name)
       (domain ,@additional-arguments)
     (declare (type list domain))
     (if-let ((cl (find-clause domain ,key)))
       (funcall ,initializer cl ,@additional-arguments)
       (warn "~A not found in this PDDL" ',name))))

(define-clause-getter
    requirements :requirements ()
    #'identity)

(defun typed-objects (typed-list class)
  (mapcar (rcurry #'change-class class)
	  (parse-typed-list typed-list)))
;;           ^^-- returns PDDL-VARIABLEs

(define-clause-getter
    types :types ()
    (rcurry #'typed-objects 'pddl-types))

(define-clause-getter
    constants :constants ()
    (rcurry #'typed-objects 'pddl-constant))

(define-clause-getter 
    predicates :predicates ()
    (lambda (predicates)
      (mapcar #'parse-predicate predicates)))

(define-clause-getter
    functions :functions ()
    #'parse-functions)

@export
(defun parse-functions (body)
  (not-implemented 'functions))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;; actions etc.

(defmacro define-action-getter (name key additional-arguments initializer)
  `(progn
     (defun ,(concatenate-symbols 'parse name)
	 (domain ,@additional-arguments)
       (if-let ((cls (remove-if-not
		      (lambda (clause) (eq (car clause) ,key))
		      domain)))
	 (mapcar (compose (rcurry ,initializer ,@additional-arguments)
			  #'cdr)
		 cls)
	 (warn "~A not found in this PDDL" ',name)))))

(define-action-getter actions :action () #'parse-action)

@export
(defun parse-action (action predicates)
  (ematch action
    ((list name
	   :parameters typed-variables
	   :precondition precond
	   :effect effect)
     (let ((params (parse-typed-list typed-variables nil nil)))
       (pddl-action :name name
		    :parameters params
		    :precondition (parse-pre-GD precond params)
		    :effect (parse-effect effect params))))))

(define-action-getter durative-actions :durative-action ()
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

(define-action-getter derived-predicates :derived ()
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
