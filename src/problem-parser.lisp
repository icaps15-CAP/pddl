
(in-package :pddl)
(use-syntax :annot)

(define-clause-getter domain :domain ()
  (lambda (clause-body)
    (let ((domain-symbol (first clause-body)))
      (if (boundp domain-symbol)
	  (symbol-value domain-symbol)
	  (warn "the domain ~A is not loaded yet!" domain-symbol)))))

;; these need to accept additional arguments `params'

(define-clause-getter objects :objects ()
  (rcurry #'typed-objects 'pddl-object))

(define-clause-getter init :init (predicates objects)
  (lambda (init-descriptions predicates objects)
    (mapcar (rcutty #'parse-atomic-state objects predicates)
	    init-descriptions)))

(define-clause-getter goal :goal (predicates objects)
  (lambda (goal-clause predicates objects)
    (parse-GD (car goal-clause) objects predicates)))

(define-clause-getter metric :metric ()
  #'parse-metric-spec)

