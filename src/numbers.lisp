
(in-package :pddl)
(use-syntax :annot)


@export
@doc "This function is meant to be called while parsing the :functions 
clause in the domain description.
*params* is bound to nil."
(defun parse-function-typed-list (body)
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

(export '(scale-up scale-down increase decrease assign))

(defun %getf-by-name (matches parameter)
  (match matches
    (nil nil)
    ((list* var obj rest)
     (if (and (eqname var parameter)
              (or (pddl-supertype-p (type var) (type parameter))
                  (pddl-supertype-p (type parameter) (type var))))
         obj
         (%getf-by-name rest parameter)))))

(defun wrap-eq (x)
  (with-gensyms (it)
    `(guard ,it (eqname ,it ,x))))
(defun params-matcher (matches params)
  (mapcar (lambda (p)
            (if (typep p 'pddl-constant) p
                `(%getf-by-name ,matches ,p)))
   params))

(defun %function-state-compiler (head matches states)
  (let* ((params-form (params-matcher matches (parameters head)))
         (matcher-form
          `(lambda-match
             ((pddl-function-state
               :name ',(name head)
               :parameters (list ,@(mapcar #'wrap-eq params-form))) t))))
    `(or (find-if ,matcher-form ,states)
         ,(%error-form head matches states matcher-form params-form))))

(defun %error-form (head matches states matcher-form params-form)
  `(error "~%The value is not initialized ~_~
               in the problem description! ~%~
               ~<match-set: ~@;~@{~a ~30,5:t~a~^~%~}~;~:>~%~
                 head:      ~a~%~
               add~%(= ~a 0)~%to the problem file.~%~
               match-test:~%~a~%~
               state:~%~a~%"
          ,matches ,head 
          (list* (name ,head) (mapcar #'name (list ,@params-form))) ; add
          ',matcher-form ; match-test
          ,states)) ; states

@export
@doc "This function is meant to be called while parsing the action effect.
*params* is bound to the action parameters."
(defun parse-numeric-effect (source)
  (ematch (transform-numeric-to-assign source)
    ((list 'assign place new-value)
     (pddl-assign-op
      :source source
      :place-function (compile-place-function place)
      :value-function (compile-value-function new-value)))))

@export
(defun transform-numeric-to-assign (source)
  (ematch source
    ((list 'scale-up place modifier)
     `(assign ,place (* ,place ,modifier)))
    ((list 'scale-down place modifier)
     `(assign ,place (/ ,place ,modifier)))
    ((list 'increase place modifier)
     `(assign ,place (+ ,place ,modifier)))
    ((list 'decrease place modifier)
     `(assign ,place (- ,place ,modifier)))))

@export
(defun compile-place-function (place)
  (with-gensyms (matches states)
    (compile 
     nil
     `(lambda (,matches ,states)
        (declare (ignorable ,matches))
        ,(%function-state-compiler
          (parse-f-head place) matches states)))))

@export
(defun compile-value-function (new-value-form)
  (with-gensyms (matches states)
    (compile 
     nil
     `(lambda (,matches ,states)
        (declare (ignorable ,matches))
        ,(compile-f-exp-body
          new-value-form
          (lambda (head)
            `(value
              ,(%function-state-compiler
                (parse-f-head head) matches states))))))))

@export
(defun assign-op-place (op matches atomic-states)
  (funcall (place-function op) matches atomic-states))
@export
(defun assign-op-new-value (op matches atomic-states)
  (funcall (value-function op) matches atomic-states))
@export
(defun apply-assign-op (op matches atomic-states)
  (let ((fs (assign-op-place op matches atomic-states)))
    (substitute
     (shallow-copy fs :value (assign-op-new-value op matches atomic-states))
     fs atomic-states)))

(export '(maximize minimize))

;;;; metric

@export
(defun parse-metric-body (body)
  (ematch body
    ((list (and optimization (or 'maximize 'minimize)) metric-f-exp)
     (pddl-metric
      :optimization optimization
      :metric-spec metric-f-exp
      :metric-function (compile-metric-function metric-f-exp)))))

@export
(defun compile-metric-function (metric-f-exp)
  (with-gensyms (states)
    (compile
     nil
     `(lambda (,states)
        (value ,(compile-metric-f-exp metric-f-exp states))))))

@export
(defun compile-metric-f-exp (body-form states)
  (compile-f-exp-body
   body-form
   (lambda (head)
     (let ((fn (parse-f-head head)))
       (dolist (p (parameters fn))
         (assert (typep p 'pddl-object)))
       (%function-state-compiler
        fn
        (iter (for o-name in (cdr head))
              (for p in (parameters fn))
              (collecting p)
              (collecting (object *problem* o-name)))
        states)))))

;; どう実装する????

(defpattern binary-op (op)
  `(and ,op (qor - /)))
(defpattern multi-op (op)
  `(and ,op (qor + *)))

@export
(defun compile-f-exp-body (body getter)
  "Converts a form (* (head arg arg2) (- (head arg))) into actual forms.
Funcalls the second argument `getter' if it finds a head like (head arg arg2)."
  (ematch body
    ((list (binary-op op) fexp1 fexp2)
     `(,op ,(compile-f-exp-body fexp1 getter)
           ,(compile-f-exp-body fexp2 getter)))
    ((op (multi-op op) fexps)
     `(,op ,@(mapcar (rcurry #'compile-f-exp-body getter) fexps)))
    ((list '- fexp)
     `(- ,(compile-f-exp-body fexp getter)))
    ((type number) body)
    (_ (funcall getter body))))

;;;; parse-f-head

@export
(defun parse-f-head (head)
  "parses a fluent form like (plane-cost ?plane) and returns a pddl-function object."
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
      (mapcar (lambda (sym) (pddl-variable :name sym))
              arguments)))
    (nil
     (error 'not-found-in-dictionary
            :pddl-form head
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


;;;; f-comp

@export
(defun parse-f-comp (f-comp)
  @ignore f-comp
  (not-implemented '(> < >= <= =)))

