
(in-package :pddl)
(use-syntax :annot)

(defun variable-generator (name &optional (typesym t type-supplied-p))
  (pddl-variable 
   :name name
   :type (or (not type-supplied-p)
	     (find-if (curry #'%eqname1 typesym) (types *domain*))
	     (error 'declared-type-not-found :typesym typesym
		    :domain *domain*))))

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
(define-condition domain-parse-condition ()
  ((domain :initarg :domain :reader domain :initform *domain*))
  (:report
   (lambda (c s)
     (format s "~@<~;condition ~A signalled in parsing ~A~;~@:>"
	     (class-name (class-of c)) (domain c)))))

@export
(define-condition declared-type-not-found (domain-parse-condition error)
  ((typesym :initarg :typesym))
  (:report
   (lambda (c s)
     (with-slots (typesym) c
       (format s "~@<~;~A is not defined in ~A: ~A~;~:@>"
	       typesym (domain c) (types (domain c)))))))

@export
(define-condition found-in-dictionary (domain-parse-condition warning)
  ((found :initarg :found)
   (dictionary :initarg :dictionary)
   (interning-class :reader interning-class
		    :initarg :interning-class
		    :initform 'pddl-variable))
  (:report
   (lambda (c s)
     (with-slots (interning-class found dictionary) c
       (format s "~@<~;During trying to make an instance of type ~A, ~
                  ~A has been found in the dictionary: ~
                  ~a ~
                  Maybe duplicated?~;~:@>"
	       interning-class found dictionary)))))

@export
(define-condition type-conflict (found-in-dictionary error)
  ((declared-type :initarg :declared-type))
  (:report
   (lambda (c s)
     (with-slots (dictionary found declared-type) c
       (format s "~@<~;In ~A: The declared type ~A conflicts with ~A.~;~@:>"
	        dictionary declared-type found)))))

@export
(define-condition not-found-in-dictionary (domain-parse-condition error)
  ((name :initarg :name)
   (dictionary :initarg :dictionary)
   (interning-class :reader interning-class
		    :initarg :interning-class
		    :initform 'pddl-variable))
  (:report
   (lambda (c s)
     (with-slots (name dictionary interning-class) c
       (format s "~@<~;During trying to make an instance of type ~A, ~
                  ~A hasn't been found in the given dictionary: ~a~;~@:>"
	       interning-class name dictionary)))))

(defun %intern-variable (dictionary namesym &optional typesym)
  (if-let ((found (find-if (curry #'%eqname1 namesym) dictionary)))
    (progn
      (warn 'found-in-dictionary :found found :dictionary dictionary)
      (when (and typesym (not (%eqname1 typesym (type found))))
	(error 'type-conflict :found found :declared-type typesym))
      found)
    (error 'not-found-in-dictionary :name namesym :dictionary dictionary)))

(defun %getting-vars (lst vars acc dictionary generator)
  (ematch lst
    ((list* '- type rest)
     (iter (for name in vars) ;; 2. vars : reverse order
	   (for var = 
		(restart-case
		    (%intern-variable dictionary name type)
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
					 (%intern-variable dictionary name)
				       (intern-variable ()
					 (funcall generator name))))
				   vars)))))))

@export
(defun parse-predicate (predicate-def &optional
			(params *params*))
  (match predicate-def
    ((list* namesym arguments)
     ;; check feasibility
     (let ((dictionary (predicates *domain*)))
       (if-let ((found (find-if (curry #'%eqname1 namesym) dictionary)))
	 (progn
	   (warn 'found-in-dictionary :found found :dictionary dictionary
		 :interning-class 'pddl-predicate)
	   (assert (= (length arguments) (arity found))
		   nil "predicate ~a has the wrong arity than the declared one.~%~a"
		   predicate-def found))
	 (restart-case
	     (error 'not-found-in-dictionary
		    :interning-class 'pddl-predicate
		    :name namesym :dictionary dictionary)
	   (intern-variable (&optional c)
	     @ignore c))))
     (pddl-predicate
      :name namesym
      :parameters
      (handler-bind ((not-found-in-dictionary
		      #'intern-variable))
	(parse-typed-list arguments params))))))

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

