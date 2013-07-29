
(in-package :pddl)
(use-syntax :annot)

(define-clause-getter domain :domain
  (lambda (clause-body)
    (let ((domain-symbol (first clause-body)))
      (if (boundp domain-symbol)
	  (symbol-value domain-symbol)
	  (warn "the domain ~A is not loaded yet!" domain-symbol)))))

;; these need to accept additional arguments `params'

(define-clause-getter objects :objects
  (lambda (objects)
    (handler-bind ((not-found-in-dictionary
		    #'intern-variable))
      (typed-objects objects 'pddl-object))))

(define-clause-getter init :init
  (lambda (init-descriptions)
    (mapcar #'parse-init-el
	    init-descriptions)))

(defun parse-init-el (desc)
  (match desc
    ((list '= head (and n (type number)))
     (let ((head (parse-f-head head)))
       (pddl-function-state
	:name (first head)
	:parameters (parse-typed-list (rest head))
	:value n)))
    ((list '= _ (type symbol))
     (not-implemented 'object-fluents))
    (_ (parse-atomic-state desc))))

(define-clause-getter goal :goal
  (lambda (goal-clause)
    (walk-tree
     (lambda (branch cont)
       (etypecase branch
	 (cons (funcall cont branch))
	 (pddl-predicate (change-class branch 'pddl-atomic-state
				       :problem *problem*))
	 (symbol branch)))
     (parse-GD (car goal-clause)))))

(define-clause-getter metric :metric
  #'parse-metric-body)

