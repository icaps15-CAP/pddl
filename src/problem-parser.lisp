
(in-package :pddl)
(use-syntax :annot)

(define-clause-getter domain :domain ()
  (lambda (clause-body)
    (let ((domain-symbol (first clause-body)))
      (if (boundp domain-symbol)
	  (symbol-value domain-symbol)
	  (warn "the domain ~A is not loaded yet!" domain-symbol)))))

;; these need to accept additional arguments `params'
(define-clause-getter init :init ()
  (lambda (init-descriptions)
    (mapcar #'parse-atomic-state
	    init-descriptions)))

(define-clause-getter goal :goal ()
  (compose #'parse-GD #'car))

(define-clause-getter metric :metric ()
  #'parse-metric)

(define-clause-getter objects :objects ()
  (rcurry #'typed-objects 'pddl-object))

