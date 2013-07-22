
(in-package :pddl)
(use-syntax :annot)

(defun variable-generator (name &optional (type t))
  (pddl-variable :name name :type type))

@export
@doc "returns a list of PDDL-VARIABLEs.
the optional argument DICTIONARY is a list of `pddl-variable's.
if the designator in the list refers to an already defined variable
then it is always used. The reference is determined by the EQNAME."
(defun parse-typed-list (lst &optional
			 (dictionary *params*)
			 (generator #'variable-generator))
  (%getting-vars lst nil nil dictionary generator))

(defun %eqname1 (sym var)
  (eq sym (name var)))

@export
(define-condition found-in-dictionary (simple-warning)
  ((found :initarg :found) (dictionary :initarg :dictionary))
  (:report
   (lambda (c s)
     (with-slots (found dictionary) c
       (format s "~A found in the dictionary:~%~a~% Maybe duplicated?"
	       found dictionary)))))
@export
(define-condition not-found-in-dictionary (simple-error)
  ((name :initarg :name) (dictionary :initarg :dictionary))
  (:report
   (lambda (c s)
     (with-slots (name dictionary) c
       (format s "~A not found in the given dictionary:~% ~a"
	       name dictionary)))))

(defun %intern-variable (name type dictionary)
  (if-let ((found (find-if (curry #'%eqname1 name) dictionary)))
    (progn
      (warn 'found-in-dictionary :found found :dictionary dictionary)
      found)
    (error 'not-found-in-dictionary :name name :dictionary dictionary)))

(defun %getting-vars (lst vars acc dictionary generator)
  (ematch lst
    ((list* '- type rest)
     (iter (for name in vars) ;; 2. vars : reverse order
	   (for var = 
		(restart-case
		    (%intern-variable name type dictionary)
		  (intern-variable ()
		    (let ((instance (funcall generator name type)))
		      (push instance dictionary)
		      instance))))
	   ;; 3. pushing at the beginning, resulting order is regular
	   (collecting var into variables at beginning)
	   (finally
	    (return
	      (%getting-vars ;; 4. acc is always in a regular order
	       rest nil (append acc variables) dictionary generator)))))
    ((list* name rest) ;; 1. reversed order
     (%getting-vars rest (cons name vars) acc dictionary generator))
    (nil
     
     ;; 5. var is reversed, acc is regular
     (append acc (nreverse (mapcar (lambda (name)
				     (restart-case
					 (%intern-variable name t dictionary)
				       (intern-variable ()
					 (funcall generator name))))
				   vars)))))))

@export
(defun parse-predicate (predicate-def &optional
			(params *params*))
  (match predicate-def
    ((list* pred-name arguments)
     (handler-bind ((not-found-in-dictionary 
		     (lambda (c)
		       @ignore c
		       (invoke-restart
			(find-restart 'intern-variable)))))
       (pddl-predicate
	:name pred-name
	:parameters (parse-typed-list arguments params))))))

@export
(defun parse-atomic-formula (atom)
  (parse-predicate atom)) ;; same as predicate

@export
(defun parse-atomic-state (desc)
  (change-class (parse-atomic-formula desc)
		'pddl-atomic-state))

@export
@doc "Parsing description for precondition."
(defun parse-pre-GD (goal-description)
  (match goal-description
    ((andp ds)
     `(and ,@(mapcar (rcurry #'parse-pre-GD) ds)))
    ((forallp typed-list d)
     `(forall ,(parse-typed-list typed-list) ,(parse-pre-GD d)))
    (_ (parse-pref-GD goal-description))))

@export
(defun parse-pref-GD (goal-description)
  (match goal-description
    ((op 'preference _)
     (not-implemented 'preference))
    (_ (parse-GD goal-description))))

@export
(defun parse-GD (goal-description)
  (ematch goal-description
    ((op (and op (or 'or 'and)) ds)  `(,op ,@(mapcar (rcurry #'parse-GD) ds)))
    ((notp d)                        `(not ,(parse-GD d)))
    ((impliesp d1 d2)                `(implies ,(parse-GD d1)
					       ,(parse-GD d2)))
    ((op (and op (or 'forall 'exists)) typed-list d)
     `(,op ,(parse-typed-list typed-list) ,(parse-GD d)))
    ((op (or '> '< '>= '<= '=) _)
     (parse-f-comp goal-description))
    (_ (parse-atomic-formula goal-description))))

@export
(defun parse-functions (body)
  (not-implemented 'functions))

@export
(defun parse-f-comp (f-comp)
  @ignore f-comp
  (not-implemented '(> < >= <= =)))

@export
(defun parse-literal (desc)
  (match desc
    ((notp atom) (parse-atomic-formula atom))
    (atom (parse-atomic-formula atom))))

@export
(defun parse-effect (effect)
  (match effect
    ((andp ds)
     `(and ,@(mapcar (rcurry #'parse-c-effect) ds)))
    (_ (parse-c-effect effect))))

(defun parse-c-effect (effect)
  (match effect
    ((forallp typed-list d)
     `(forall ,(parse-typed-list typed-list)
	      ,(parse-effect d)))
    ((whenp cond cond-effect)
     `(when ,(parse-GD cond)
	,(parse-cond-effect cond-effect)))
    (_ (parse-p-effect effect))))
  
(defun parse-p-effect (effect)
  (match effect
    ((list* (or 'assign 'scale-up 'scale-down 'increase 'decrease) _)
     (not-implemented '(assign scale-up scale-down increase decrease)))
    ((notp d)
     `(not ,(parse-atomic-formula d)))
    (_ (parse-atomic-formula effect))))

(defun parse-cond-effect (effect)
  (match effect
    ((andp p)
     `(and ,(mapcar (rcurry #'parse-p-effect) p)))
    (_ (parse-p-effect effect))))

@export
(defun parse-metric (body)
  @ignore body
  (not-implemented 'metric)
  ;; (ematch body
  ;;   ((list (and optimization (or 'maximize 'minimize)) metric-f-exp)
  ;;    `(,optimization ,(parse-metric-f-exp metric-f-exp))))
  )

;; (defun parse-metric-f-exp (body)
;;   (

