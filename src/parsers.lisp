
(in-package :pddl)
(use-syntax :annot)

(defun variable-generator (name &optional typesym)
  (pddl-variable 
   :name name
   :type (or
          ;; Note: (types *domain*) might be nil, in which case
          ;; *pddl-primitive-object-type* is used
          (when typesym
            (find-if (curry #'%eqname1 typesym) (types *domain*)))
          *pddl-primitive-object-type*)))

(defun parse-typed-list (lst &optional
                         (dictionary *params*)
                         (generator #'variable-generator))
  "returns a list of PDDL-VARIABLEs.
the optional argument DICTIONARY is a list of `pddl-variable's.
if the designator in the list refers to an already defined variable
then it is always used. The reference is determined by the EQNAME."
  (%getting-vars lst nil nil dictionary generator))

(defun %eqname1 (sym var)
  (eq sym (name var)))

(define-condition domain-parse-condition ()
  ((domain :initarg :domain :reader domain :initform *domain*)
   (clause :initarg :clause :accessor clause))
  (:report
   (lambda (c s)
     (format s "~@<~;condition ~A signalled while ~
                     parsing the clause in domain ~A: ~
                     ~A~;~@:>"
             (class-name (class-of c)) (domain c) (clause c)))))

(define-condition declared-type-not-found (domain-parse-condition error)
  ((typesym :initarg :typesym))
  (:report
   (lambda (c s)
     (with-slots (typesym) c
       (format s "~@<~;type ~A is not defined in ~A: ~A ~
                       while parsing ~A~;~:@>"
               typesym (domain c) (types (domain c)) (clause c))))))

(define-condition found-in-dictionary (domain-parse-condition warning)
  ((found :initarg :found)
   (dictionary :initarg :dictionary)
   (interning-class :reader interning-class
                    :initarg :interning-class
                    :initform 'pddl-variable))
  (:report
   (lambda (c s)
     (with-slots (interning-class found dictionary) c
       (format s "~@<~;While trying to make an instance of type ~A, ~
                  ~A has been found in the dictionary: ~
                  ~a ~
                  Maybe duplicated?~;~:@>"
               interning-class found dictionary)))))

(define-condition type-conflict (found-in-dictionary error)
  ((declared-type :initarg :declared-type))
  (:report
   (lambda (c s)
     (with-slots (dictionary found declared-type) c
       (format s "~@<~;In ~A: The declared type ~A conflicts with ~A.~;~@:>"
                dictionary declared-type found)))))

(define-condition not-found-in-dictionary (domain-parse-condition error)
  ((name :initarg :name)
   (dictionary :initarg :dictionary)
   (pddl-form :initarg :pddl-form :initform nil)
   (interning-class :reader interning-class
                    :initarg :interning-class
                    :initform 'pddl-variable))
  (:report
   (lambda (c s)
     (with-slots (name dictionary interning-class pddl-form) c
       (format s "~@<~;While trying to make an instance of type ~A, ~
                  ~A hasn't been found in the given dictionary ~a . ~
                  Adding ~a to the definition may solve this. ~;~@:>"
               interning-class name dictionary pddl-form)))))

(defun %intern-variable (dictionary namesym &optional typesym)
  (if-let ((found (find-if (curry #'%eqname1 namesym) dictionary)))
    (progn
      (warn 'found-in-dictionary
            :found found
            :dictionary dictionary)
      (when typesym
        (if-let ((typeobj (find-if (curry #'%eqname1 typesym)
                                (types *domain*))))
          (unless (%eqname1 typesym (type found)) ; a bit faster
            (error 'type-conflict
                   :found found
                   :declared-type typeobj))
          (restart-case
              (error 'declared-type-not-found
                     :typesym typesym
                     :domain *domain*)
            (continue (c)
              @ignore c))))
      found)
    (error 'not-found-in-dictionary
           :name namesym
           :dictionary dictionary)))

(defun %add-current-parsing-clause (lst)
  (lambda (c)
    (unless (slot-boundp c 'clause)
      (setf (clause c) lst))))

(defun %getting-vars (lst vars acc dictionary generator)
  (ematch lst
    ((list* '- type rest)
     (restart-case
         (handler-bind ((domain-parse-condition
                         (%add-current-parsing-clause `(,@vars - ,type))))
           (iter (for name in vars) ;; 2. vars : reverse order
                 (for var = 
                      (restart-case
                          (%intern-variable dictionary name type)
                        (intern-variable (&optional c)
                          @ignore c
                          (let ((instance (funcall generator name type)))
                            (push instance dictionary)
                            instance))
                        (skip-variable (&optional c)
                          @ignore c
                          (next-iteration))))
                 ;; 3. pushing at the beginning, resulting order is regular
                 (collecting var into variables at beginning)
                 (finally
                  (return
                    (%getting-vars ;; 4. acc is always in a regular order
                     rest nil (append acc variables) dictionary generator)))))
       (skip-this-type (&optional c)
         @ignore c
         (%getting-vars rest nil acc dictionary generator))))
    ((list* name rest) ;; 1. reversed order
     (%getting-vars rest (cons name vars) acc dictionary generator))
    (nil
     (handler-bind ((domain-parse-condition
                     (%add-current-parsing-clause vars)))
       ;; 5. var is reversed, acc is regular
       (append acc (nreverse (mapcar (lambda (name)
                                       (restart-case
                                           (%intern-variable dictionary name)
                                         (intern-variable (&optional c)
                                           @ignore c
                                           (funcall generator name))))
                                     vars)))))))

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
                    :pddl-form predicate-def
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

(defun parse-atomic-formula (atom)
  (parse-predicate atom)) ;; same as predicate

(defun parse-atomic-state (desc)
  (change-class (parse-atomic-formula desc)
                'pddl-atomic-state
                :problem *problem*))

(defun parse-pre-GD (goal-description)
  "Parsing description for precondition."
  (match goal-description
    ((andp ds)
     `(and ,@(mapcar #'parse-pre-GD ds)))
    ((forallp typed-list d)
     `(forall ,(parse-typed-list typed-list) ,(parse-pre-GD d)))
    (_ (parse-pref-GD goal-description))))

(defun parse-pref-GD (goal-description)
  (match goal-description
    ((op 'preference _)
     (not-implemented 'preference))
    (_ (parse-GD goal-description))))

(defun parse-GD (goal-description)
  (ematch goal-description
    ((op (and op (qor or and)) ds)  `(,op ,@(mapcar (rcurry #'parse-GD) ds)))
    ((notp d)                        `(not ,(parse-GD d)))
    ((impliesp d1 d2)                `(implies ,(parse-GD d1)
                                               ,(parse-GD d2)))
    ((op (and op (qor forall exists)) typed-list d _)
     (let* ((closure-arguments (handler-bind ((not-found-in-dictionary
                                        #'intern-variable))
                          (parse-typed-list typed-list)))
            (*params* (append closure-arguments *params*)))
       `(,op ,closure-arguments ,(parse-GD d))))
    ((op (qor > < >= <= =) _)
     (parse-f-comp goal-description))
    (_ (parse-atomic-formula goal-description))))

(defun parse-literal (desc)
  (match desc
    ((notp atom) (parse-atomic-formula atom))
    (atom (parse-atomic-formula atom))))

(defun parse-effect (effect)
  (match effect
    ((andp ds)
     `(and ,@(mapcar #'parse-c-effect ds)))
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
    ((op (qor assign scale-up scale-down increase decrease) _)
     (parse-numeric-effect effect))
    ((notp d)
     `(not ,(parse-atomic-formula d)))
    (_ (parse-atomic-formula effect))))

(defun parse-cond-effect (effect)
  (match effect
    ((andp p)
     `(and ,(mapcar (rcurry #'parse-p-effect) p)))
    (_ (parse-p-effect effect))))

