
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
    ((list* (guard key (and (eqname key parameter)
                            (or (pddl-supertype-p
                                 (type key)
                                 (type parameter))
                                (pddl-supertype-p
                                 (type parameter)
                                 (type key)))))
            value _)
     value)
    ((list* _ _ rest)
     (%getf-by-name rest parameter))))
     

(defun %function-state-compiler (head matches states)
  `(or (find-if 
        (lambda-match
          ((pddl-function-state
            :name ',(name head)
            :parameters
            (list 
             ,@(mapcar
                (lambda (p)
                  (if (typep p 'pddl-constant)
                      `(eq ,p)
                      `(eq (%getf-by-name ,matches ,p))))
                (parameters head))))
           t))
        ,states)
       (error "~%The value is not initialized ~_~
               in the problem description! ~%~
               ~<match-set: ~@;~@{~a ~30,5:t~a~^~%~}~;~:>~%~
                 head:      ~a~%~
               add~%~
               (= ~a 0)~%~
               to the problem file.~%~
               match-test:~%~
               ~a~%~
               parameters:~%~
               ~a~%~
               tested:~%~
               ~a~%~
               state:~%~
               ~a~%~
               "
              ,matches
              ,head 
              (print-pddl-object ,head)
              
              '(pddl-function-state
                :name ',(name head)
                :parameters
                (list 
                 ,@(mapcar
                    (lambda (p)
                      `(eq (%getf-by-name ,matches ,p)))
                    (parameters head))))
              (list 
               ,@(mapcar
                  (lambda (p)
                    `(%getf-by-name ,matches ,p))
                  (parameters head)))
              (list 
               ,@(mapcar
                  (lambda (p)
                    `(%getf-by-name ,matches ,p))
                  (parameters head)))
              ,states)))

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
(defun compile-value-function (new-value)
  (with-gensyms (matches states)
    (compile 
     nil
     `(lambda (,matches ,states)
        (declare (ignorable ,matches))
        ,(compile-f-exp-body
          new-value
          (lambda (head)
            `(value
              ,(%function-state-compiler
                (parse-f-head head) matches states))))))))

@export
(defun assign-op-place (op matches states)
  (funcall (place-function op) matches states))
@export
(defun assign-op-new-value (op matches states)
  (funcall (value-function op) matches states))
@export
(defun apply-assign-op (op matches states)
  (setf (value (assign-op-place op matches states))
        (assign-op-new-value op matches states)))

(export '(maximize minimize))

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
(defun compile-metric-f-exp (body states)
  (compile-f-exp-body
   body
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

@export
@doc "parses a fluent form like (plane-cost ?plane) and
returns a ppdl-function object like (plane-cost ?obj) which is
defined in the :functions clause of the domain description.

The secondary value is a plist which maps between arguments e.g. ?plane to ?obj."
(defun parse-f-head (head)
  (ematch head
    ((and name (type symbol)) ; unary variable is allowed according to PDDL3.0
     (if-let ((fn (find-if (curry #'%eqname1 name)
                           (functions *domain*))))
       (progn
         (assert (null (parameters fn)) nil
                 "Invalid number of arguments ~_~A, ~_~
                  expected to be ~A in ~A"
                 0 (length (parameters fn)) fn)
         fn)
       (error 'not-found-in-dictionary
              :pddl-form `(,name)
              :interning-class 'pddl-function
              :name name)))
    ((list* name arguments)
     (ematch (find-if (curry #'%eqname1 name)
                      (functions *domain*))
       ((and fn (pddl-function name parameters type))
        (assert (= (length arguments)
                   (length parameters))
                nil
                "Invalid number of arguments ~_~A, ~_~
                  expected to be ~A in ~A"
                (length arguments)
                (length parameters) fn)
        (pddl-function :name name
                       :parameters
                       (mapcar
                        (lambda (sym)
                          (pddl-variable :name sym :type *pddl-primitive-object-type*))
                        arguments)
                       :type type))
       (nil
        (error 'not-found-in-dictionary
               :pddl-form head
               :interning-class 'pddl-function
               :name name))))))

@export
(defun parse-f-comp (f-comp)
  @ignore f-comp
  (not-implemented '(> < >= <= =)))

  
