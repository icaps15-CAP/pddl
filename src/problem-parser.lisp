
(in-package :pddl)
(use-syntax :annot)

(define-clause-getter domain :domain 
  (lambda (clause-body)
    (symbol-value (first clause-body))))

(defun parse-predicate (predicate-def)
  (match predicate-def
    ((list* pred-name arguments)
     (pddl-predicate :name pred-name
		     :parameters (parse-typed-list arguments)))))

(define-clause-getter init :init
  (curry #'mapcar
	 #'parse-atomic-formula))

(define-clause-getter goal :goal
  #'parse-GD)

(defun parse-pre-GD (goal-description)
  (match goal-description
    ((list* 'and ds) (parse-pre-GD ds))
    ((list (and op 'forall) (and (type list) typed-list) d)
     `(,op ,(parse-typed-list typed-list) ,(parse-pre-GD d)))
    (_ (parse-pref-GD goal-description))))

(defun parse-pref-GD (goal-description)
  (match goal-description
    ((list* 'preference _)
     (error "preference not supported"))
    (_ (parse-GD goal-description))))

(defun parse-GD (goal-description)
  (match goal-description
    ;; ((list* (and operator (or 'and 'or 'not 'implies)) ds)
    ;;  `(,operator ,@(parse-GD ds)))
    ((list* (and op (or 'and 'or)) ds)
     `(,op ,@(parse-GD ds)))
    ((list 'not d)
     `(not ,(parse-GD d)))
    ((list 'implies d1 d2)
     `(implies ,(parse-GD d1) ,(parse-GD d2)))
    ((list (and op (or 'exists 'forall)) (and (type list) typed-list) d)
     `(,op ,(parse-typed-list typed-list) ,(parse-GD d)))
    ((list* (or '> '< '>= '<= '=) _)
     (error "bindary compare ops not supported"))))

(defun parse-literal (desc)
  (match desc
    ((list 'not atom) (parse-atomic-formula atom))
    (atom (parse-atomic-formula atom))))

(defun parse-atomic-formula (atom)
  (parse-predicate atom)) ;; same as predicate

(defun parse-effect (effect)
  (match effect
    ((list* 'and ds)
     `(and ,@(parse-c-effect ds)))
    (_ (parse-c-effect effect))))

(defun parse-c-effect (effect)
  (match effect
    ((list (and op 'forall) (and (type list) typed-list) d)
     `(,op ,(parse-typed-list typed-list) ,(parse-effect d)))
    ((list 'when cond cond-effect)
     `(when ,(parse-GD cond) ,(parse-cond-effect cond-effect)))
    (_ (parse-p-effect effect))))
  
(defun parse-p-effect (effect)
  (match effect
    ((list* (or 'assign 'scale-up 'scale-down 'increase 'decrease) _)
     (error "assign ops not supported"))
    ((list 'not d)
     `(not ,(parse-atomic-formula d)))
    (_ (parse-atomic-formula error))))

(defun parse-cond-effect (effect)
  (match effect
    ((list* 'and p)
     `(and ,(parse-p-effect p)))
    (_ (parse-p-effect effect))))

(define-clause-getter metric :metric
  #'pddl-metric)

(define-clause-getter objects :objects
  (rcurry #'typed-objects 'pddl-object))
   