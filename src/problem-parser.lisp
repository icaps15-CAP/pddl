
(in-package :pddl)
(use-syntax :annot)

(define-clause-getter domain :domain 
  (lambda (clause-body)
    (let ((domain-symbol (first clause-body)))
      (if (boundp domain-symbol)
	  (symbol-value domain-symbol)
	  (warn "the domain ~A is not loaded yet!" domain-symbol)))))

;; these need to accept additional arguments `params'
(define-clause-getter init :init
  (lambda (init-descriptions)
    (mapcar #'parse-atomic-state
	    init-descriptions)))

(define-clause-getter goal :goal
  (compose #'parse-GD #'car))

(define-clause-getter metric :metric
  #'parse-metric)

(define-clause-getter objects :objects
  (rcurry #'typed-objects 'pddl-object))



@export
(defun parse-predicate (predicate-def params)
  (match predicate-def
    ((list* pred-name arguments)
     (pddl-predicate :name pred-name
		     :parameters (parse-typed-list arguments params)))))

@export
(defun parse-atomic-formula (atom params)
  (parse-predicate atom params)) ;; same as predicate

@export
(defun parse-atomic-state (desc params)
  (change-class (parse-atomic-formula desc params)
		'pddl-atomic-state))

@export
@doc "Parsing description for precondition."
(defun parse-pre-GD (goal-description params)
  (match goal-description
    ((andp ds)
     `(and ,@(mapcar (rcurry #'parse-pre-GD params) ds)))
    ((forallp typed-list d)
     `(forall ,(parse-typed-list typed-list params) ,(parse-pre-GD d params)))
    (_ (parse-pref-GD goal-description params))))

@export
(defun parse-pref-GD (goal-description params)
  (match goal-description
    ((op 'preference _)
     (not-implemented 'preference))
    (_ (parse-GD goal-description params))))

@export
(defun parse-GD (goal-description params)
  (ematch goal-description
    ((op (and op (or 'or 'and)) ds)  `(,op ,@(mapcar (rcurry #'parse-GD params) ds)))
    ((notp d)                        `(not ,(parse-GD d params)))
    ((impliesp d1 d2)                `(implies ,(parse-GD d1 params)
					       ,(parse-GD d2 params)))
    ((op (and op (or 'forall 'exists)) typed-list d)
     `(,op ,(parse-typed-list typed-list params) ,(parse-GD d params)))
    ((op (or '> '< '>= '<= '=) _)
     (parse-f-comp goal-description params))
    (_ (parse-atomic-formula goal-description))))

@export
(defun parse-f-comp (f-comp params)
  @ignore f-comp params
  (not-implemented '(> < >= <= =)))

@export
(defun parse-literal (desc params)
  (match desc
    ((notp atom) (parse-atomic-formula atom params))
    (atom (parse-atomic-formula atom params))))

@export
(defun parse-effect (effect params)
  (match effect
    ((andp ds)
     `(and ,@(mapcar (rcurry #'parse-c-effect params) ds)))
    (_ (parse-c-effect effect params))))

(defun parse-c-effect (effect params)
  (match effect
    ((forallp typed-list d)
     `(forall ,(parse-typed-list typed-list params)
	      ,(parse-effect d params)))
    ((whenp cond cond-effect)
     `(when ,(parse-GD cond params)
	,(parse-cond-effect cond-effect params)))
    (_ (parse-p-effect effect params))))
  
(defun parse-p-effect (effect params)
  (match effect
    ((list* (or 'assign 'scale-up 'scale-down 'increase 'decrease) _)
     (not-implemented '(assign scale-up scale-down increase decrease)))
    ((notp d)
     `(not ,(parse-atomic-formula d params)))
    (_ (parse-atomic-formula effect params))))

(defun parse-cond-effect (effect params)
  (match effect
    ((andp p)
     `(and ,(mapcar (rcurry #'parse-p-effect params) p)))
    (_ (parse-p-effect effect params))))

@export
(defun parse-metric (body params)
  @ignore body params
  (not-implemented 'metric)
  ;; (ematch body
  ;;   ((list (and optimization (or 'maximize 'minimize)) metric-f-exp)
  ;;    `(,optimization ,(parse-metric-f-exp metric-f-exp))))
  )

;; (defun parse-metric-f-exp (body)
;;   (

