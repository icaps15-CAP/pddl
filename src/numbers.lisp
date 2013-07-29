
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

@export
@doc "This function is meant to be called while parsing the action effect.
*params* is bound to the action parameters."
(defun parse-numeric-effect (effect)
  (ematch effect
    ((list 'scale-up place modifier)
     (parse-numeric-effect `(assign ,place (* ,place ,modifier))))
    ((list 'scale-down place modifier)
     (parse-numeric-effect `(assign ,place (/ ,place ,modifier))))
    ((list 'increase place modifier)
     (parse-numeric-effect `(assign ,place (+ ,place ,modifier))))
    ((list 'decrease place modifier)
     (parse-numeric-effect `(assign ,place (- ,place ,modifier))))
    ((list 'assign place new-value)
     (flet ((%function-state (head matches states)
	      (ematch head
		;; get the function object and
		;; ensures the arity, etc.
		((pddl-function :name name)
		 `(find-if 
		   (lambda (state)
		     (match state
		       ((pddl-function-state
			 :name (eq ',name)
			 :parameters
			 (list
			  ,@(iter
			     (for p in *params*)
			     ;; *params* and (parameter action)
			     ;;  is identical
			     (collecting
			      `(eq (getf ,matches ,p))))))
			t)
		       (_ (error "The value is not initialized~_~
                                  in the problem description!~_~
                                  ~a~_~
                                  add (= ~a 0)~_ to the problem file."
				 ,head ,head))))
		   ,states)))))
       (pddl-assign-op
	:place place
	:value new-value
	:state-transition-function
	(compile
	 nil
	 (with-gensyms (matches states)
	   `(lambda (,matches ,states)
	      ;; matches: (<var> <obj>) plist. came from action parameters
	      ;; states: list of states.
	      (setf (value 
		     ,(%function-state (parse-f-head place)
				       matches states))
		    ,(parse-f-exp-body
		      new-value states
		      (lambda (head)
			(%function-state head matches states))))))))))))

@export
(defun parse-metric-body (body)
  (ematch body
    ((list (and optimization (or 'maximize 'minimize)) metric-f-exp)
     (pddl-metric
      :optimization optimization
      :metric-function (parse-metric-f-exp metric-f-exp)))))

@export
(defun parse-metric-f-exp (body)
  (not-implemented 'parse-metric-f-exp)
  body)

;; どう実装する????

(defpattern binary-op (op)
  `(and ,op (qor - /)))
(defpattern multi-op (op)
  `(and ,op (qor + *)))

@export
(defun parse-f-exp-body (body state-name getter)
  (ematch body
    ((list (binary-op op) fexp1 fexp2)
     `(,op ,(parse-f-exp-body fexp1 state-name getter)
	   ,(parse-f-exp-body fexp2 state-name getter)))
    ((op (multi-op op) fexps)
     `(,op ,@(mapcar (rcurry #'parse-f-exp-body state-name getter) fexps)))
    ((op '- fexp)
     `(- ,(parse-f-exp-body fexp state-name getter)))
    ((type number) body)
    (_ (funcall getter (parse-f-head body)))))

@export
(defun parse-f-head (head)
  (ematch head
    ((and name (type symbol))
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
     (if-let ((fn (find-if (curry #'%eqname1 name)
			   (functions *domain*))))
       (progn
	 (assert (= (length arguments)
		    (length (parameters fn)))
		 nil
		 "Invalid number of arguments ~_~A, ~_~
                  expected to be ~A in ~A"
		 (length arguments)
		 (length (parameters fn)) fn)
	 fn)
       (error 'not-found-in-dictionary
	      :pddl-form head
	      :interning-class 'pddl-function
	      :name name)))))

@export
(defun parse-f-comp (f-comp)
  @ignore f-comp
  (not-implemented '(> < >= <= =)))

  
