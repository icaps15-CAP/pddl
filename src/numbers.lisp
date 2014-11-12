
(in-package :pddl)
(use-syntax :annot)
(export '(scale-up scale-down increase decrease assign))
(export '(maximize minimize))

;;;; basic argument parser

@export
(defun parse-function-typed-list (body)
  "This function is meant to be called while parsing the :functions 
clause in the domain description. *params* is bound to nil."
  (handler-bind ((not-found-in-dictionary
                  #'intern-variable))
    (parse-typed-list
     body nil
     (lambda (atomic-function-skelton &optional type)
       (let ((type (if type
                       (find-if (curry #'%eqname1 type) (types *domain*))
                       *pddl-primitive-number-type*)))
         (match atomic-function-skelton
           ((list* name typed-variables)
            (pddl-function
             :name name
             :type type
             :parameters
             (handler-bind ((not-found-in-dictionary
                             #'intern-variable))
               (parse-typed-list typed-variables nil))))))))))

;;;; parse-f-head parser

@export
(defun parse-f-head (head)
  "parses a fluent form like (plane-cost ?plane) and returns a
pddl-function object."
  (ematch head
    ((and name (type symbol)) ; unary variable is allowed according to PDDL3.0
     (unary-f-head name))
    ((list* name arguments)
     (multiary-f-head name arguments))))

(define-condition malformed-f-head (error)
  ((fn :initarg :fn)
   (arguments :initarg :arguments))
  (:report (lambda (c s)
             (with-slots (fn arguments) c
               (format s "Invalid number of arguments ~_~A, ~_expected to be ~A in ~A"
                       (length arguments) (arity fn) fn)))))

(defun multiary-f-head (name arguments)
  (ematch (find-if (curry #'%eqname1 name) (functions *domain*))
    ((and fn (pddl-function name parameters))
     (assert (= (length arguments) (length parameters)) nil
             'malformed-f-head :fn fn :arguments arguments)
     (pddl-function
      :name name :parameters
      (mapcar (lambda (sym)
                (or (find sym *params* :key #'name)
                    (error 'not-found-in-dictionary
                           :pddl-form (list* name arguments)
                           :interning-class 'pddl-variable
                           :name sym)))
              arguments)))
    (nil
     (error 'not-found-in-dictionary
            :pddl-form (list* name arguments)
            :interning-class 'pddl-function
            :name name))))

(defun unary-f-head (name)
  (if-let ((fn (find-if (curry #'%eqname1 name) (functions *domain*))))
    (progn
      (assert (null (parameters fn)) nil
              'malformed-f-head :fn fn :arguments (parameters fn))
      fn)
    (error 'not-found-in-dictionary
           :pddl-form `(,name)
           :interning-class 'pddl-function
           :name name)))

;;;; f-comp parser (not implemented)

@export
(defun parse-f-comp (f-comp)
  @ignore f-comp
  (not-implemented '(> < >= <= =)))


;;;; parse-numeric-effect and assign-op (ungrounded)

@export
(defun parse-numeric-effect (source)
  "This function is meant to be called while parsing the action effect.
*params* is bound to the action parameters."
  (ematch source
    ((list 'increase place increase)
     (pddl-assign-op
      :source source
      :place (parse-f-head place)
      :increase (or (parse-f-exp increase) (error "huh!?"))
      :value-form `(+ ,(parse-f-head place)
                      ,(parse-f-exp increase))))
    ((list* other _)
     (not-implemented other))
    ;; ((list 'scale-up place modifier)
    ;;  `(assign ,place (* ,place ,modifier)))
    ;; ((list 'scale-down place modifier)
    ;;  `(assign ,place (/ ,place ,modifier)))
    ;; ((list 'decrease place modifier)
    ;;  `(assign ,place (- ,place ,modifier)))
    ))

;;;; parse-f-exp parser

(defpattern binary-op (op) `(and ,op (qor - /)))
(defpattern multi-op (op) `(and ,op (qor + *)))
(defun parse-f-exp (e)
  (flet ((rec (e) (parse-f-exp e))) ;; rename
    (ematch e
      ((list (binary-op op) e1 e2)
       (list op (rec e1) (rec e2)))
      ((list* (multi-op op) es)
       (list* op (mapcar #'rec es)))
      ((list '- e) `(- ,(rec e)))
      ((type number) e)
      (_ (parse-f-head e)))))

;;;; parse-metric-f-exp

@export
(defun parse-metric-body (body)
  (ematch body
    ((list (and optimization (or 'maximize 'minimize)) metric-f-exp)
     (pddl-metric
      :optimization optimization
      :value-form (parse-metric-f-exp metric-f-exp)))))

@export
(defun parse-metric-f-exp (e)
  "Converts a form (* (head arg arg2) (- (head arg))) into actual forms.
Funcalls the second argument `getter' if it finds a head like (head arg
arg2)."
  (flet ((rec (e) (parse-f-exp e))) ;; rename
    (ematch e
      ((list (binary-op op) e1 e2)
       (list op (rec e1) (rec e2)))
      ((list* (multi-op op) es)
       (list* op (mapcar #'rec es)))
      ((list '- e) `(- ,(rec e)))
      ((type number) e)
      ('total-time (not-implemented 'total-time))
      (_ (parse-f-head e))))) ;; *params* is bound in bootstrap.lisp

