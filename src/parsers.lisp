
(in-package :pddl)
(use-syntax :annot)

@export
@doc "returns a list of PDDL-VARIABLEs.
the optional argument DICTIONARY is a list of `pddl-variable's.
if the designator in the list refers to an already defined variable
then it is always used. The reference is determined by the EQuality
to the `pddl-variable''s slot NAME."
(defun parse-typed-list (lst &optional dictionary (error-not-found t))
  (%getting-vars lst nil nil dictionary error-not-found))

(defun %eqname1 (sym var)
  (eq sym (name var)))

(defun %intern-variable (name type dictionary)
  (if-let ((found (find-if (curry #'%eqname1 name) dictionary)))
    (values found nil)
    (values (pddl-variable :name name :type type) t)))

(defun %getting-vars (lst vars acc dictionary e)
  (ematch lst
    ((list* '- type rest)
     (iter (for name in vars) ;; 2. vars : reverse order
	   (for (values var new?) = (%intern-variable name type dictionary))
	   (when new?
	     (if e
		 (error "~A not found in given dictionary ~a" var dictionary)
		 (push var dictionary)))
	   ;; 3. pushing at the beginning, resulting order is regular
	   (collecting var into variables at beginning)
	   (finally
	    (return
	      (%getting-vars ;; 4. acc is always in a regular order
	       rest nil (append acc variables) dictionary e)))))
    ((list* name rest) ;; 1. reversed order
     (%getting-vars rest (cons name vars) acc dictionary e))
    (nil
     ;; 5. var is reversed, acc is regular
     (append acc (nreverse (mapcar (rcurry #'%intern-variable t dictionary)
				   vars))))))

@export
(defun parse-predicate (predicate-def params &optional dictionary (error-not-found t))
  (match predicate-def
    ((list* pred-name arguments)
     (if-let ((found (find-if (curry #'%eqname1 pred-name) dictionary)))
	     (values found nil)
	     (when error-not-found
	       (error "~A not found in given dictionary ~a" pred-name dictionary)
	       (values (pddl-predicate
			:name pred-name
			:parameters (parse-typed-list arguments params)) t))))))

@export
(defun parse-atomic-formula (atom params predicates)
  (parse-predicate atom params predicates)) ;; same as predicate

@export
(defun parse-atomic-state (desc params predicates)
  (change-class (parse-atomic-formula desc params predicates)
		'pddl-atomic-state))

@export
@doc "Parsing description for precondition."
(defun parse-pre-GD (goal-description params predicates)
  (match goal-description
    ((andp ds)
     `(and ,@(mapcar (rcurry #'parse-pre-GD params predicates) ds)))
    ((forallp typed-list d)
     `(forall ,(parse-typed-list typed-list params) ,(parse-pre-GD d params predicates)))
    (_ (parse-pref-GD goal-description params predicates))))

@export
(defun parse-pref-GD (goal-description params predicates)
  (match goal-description
    ((op 'preference _)
     (not-implemented 'preference))
    (_ (parse-GD goal-description params predicates))))

@export
(defun parse-GD (goal-description params predicates)
  (ematch goal-description
    ((op (and op (or 'or 'and)) ds)  `(,op ,@(mapcar (rcurry #'parse-GD params predicates) ds)))
    ((notp d)                        `(not ,(parse-GD d params predicates)))
    ((impliesp d1 d2)                `(implies ,(parse-GD d1 params predicates)
					       ,(parse-GD d2 params predicates)))
    ((op (and op (or 'forall 'exists)) typed-list d)
     `(,op ,(parse-typed-list typed-list params) ,(parse-GD d params predicates)))
    ((op (or '> '< '>= '<= '=) _)
     (parse-f-comp goal-description params predicates))
    (_ (parse-atomic-formula goal-description params predicates))))

@export
(defun parse-functions (body)
  (not-implemented 'functions))

@export
(defun parse-f-comp (f-comp params predicates)
  @ignore f-comp params
  (not-implemented '(> < >= <= =)))

@export
(defun parse-literal (desc params predicates)
  (match desc
    ((notp atom) (parse-atomic-formula atom params predicates))
    (atom (parse-atomic-formula atom params predicates))))

@export
(defun parse-effect (effect params predicates)
  (match effect
    ((andp ds)
     `(and ,@(mapcar (rcurry #'parse-c-effect params predicates) ds)))
    (_ (parse-c-effect effect params predicates))))

(defun parse-c-effect (effect params predicates)
  (match effect
    ((forallp typed-list d)
     `(forall ,(parse-typed-list typed-list params)
	      ,(parse-effect d params predicates)))
    ((whenp cond cond-effect)
     `(when ,(parse-GD cond params predicates)
	,(parse-cond-effect cond-effect params predicates)))
    (_ (parse-p-effect effect params predicates))))
  
(defun parse-p-effect (effect params predicates)
  (match effect
    ((list* (or 'assign 'scale-up 'scale-down 'increase 'decrease) _)
     (not-implemented '(assign scale-up scale-down increase decrease)))
    ((notp d)
     `(not ,(parse-atomic-formula d params predicates)))
    (_ (parse-atomic-formula effect params predicates))))

(defun parse-cond-effect (effect params predicates)
  (match effect
    ((andp p)
     `(and ,(mapcar (rcurry #'parse-p-effect params predicates) p)))
    (_ (parse-p-effect effect params predicates))))

@export
(defun parse-metric (body params predicates)
  @ignore body params predicates
  (not-implemented 'metric)
  ;; (ematch body
  ;;   ((list (and optimization (or 'maximize 'minimize)) metric-f-exp)
  ;;    `(,optimization ,(parse-metric-f-exp metric-f-exp))))
  )

;; (defun parse-metric-f-exp (body)
;;   (

