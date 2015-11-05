

(in-package :pddl)
(cl-syntax:use-syntax :annot)

;; @export
;; (defgeneric ground (parametrized parameters &optional (*problem* *problem*)))
;; (defmethod ground ((action pddl-action) (list objects) &optional (*problem* *problem*))
;;   (ground-action action objects *problem*))
;; (defmethod ground ((predicate pddl-predicate) (list objects) &optional (*problem* *problem*))
;;   (ground-predicate predicate objects *problem*))

;;;; ground elements in an action

@export
(defun ground-action (action objects &optional
                                       (*problem* *problem*)
                                       (*domain* *domain*))
  (ematch action
    ((pddl-action :name name
                  :parameters params
                  :precondition pre
                  :effect eff)
     (pddl-ground-action
      :name name
      :parameters objects
      :precondition (ground-ctree pre params objects)
      :effect (ground-ctree eff params objects)))))

(define-condition unspecified-parameter (simple-error)
  ((parameter :reader parameter :initarg :parameter)))

(defun %ground-parameter (parameters objects p &optional ctx)
  (or (when-let ((pos (position p parameters)))
        (elt objects pos))
      (when (typep p 'pddl-constant) p)
      (find p (constants *domain*))
      (restart-case
          (error 'unspecified-parameter
                 :format-control
                 "~@[In context ~a,~]
parameter ~a in the precond/effect of an action was not found,
neither in the constant list of the domain ~a
nor in the original parameter list ~a.

Another possibility might be that
the object specified for grounding is invalid:
~a"
                 :format-arguments
                 (list ctx p (constants *domain*)
                       parameters objects)
                 :parameter p)
        (use-value (object-or-constant)
          object-or-constant))))

(defun ground-ctree (ctree
                     params
                     objects
                     &optional
                       (*domain* *domain*) (*problem* *problem*))
  "Grounds each precondition/effect in a condition tree. CTREE is a cons tree of
symbol AND, NOT and OR, or instances of pddl-predicate or pddl-assign-op."
  (labels ((value (p) (%ground-parameter params objects p ctree))
           (rec (e)
             (ematch e
               ((list* op predicates)
                (list* op
                       (iter (for p in predicates)
                             (restart-case
                                 (collect (rec p))
                               (ignore ())))))
               ((pddl-predicate parameters)
                (ground-predicate e (mapcar #'value parameters)))
               ((pddl-assign-op)
                (ground-assign-op e params objects)))))
    (rec ctree)))

(define-condition undefined-predicate (simple-error)
  ((name :reader name :initarg :name))
  (:report (lambda (c s) (format s "undefined predicate ~A" (name c)))))
(define-condition undefined-pddl-function (simple-error)
  ((name :reader name :initarg :name))
  (:report (lambda (c s) (format s "undefined function ~A" (name c)))))

@export
(defun ground-predicate (predicate objects &optional (*problem* *problem*))
  (ematch predicate
    ((pddl-predicate :name name :domain *domain*)
     (assert (= (arity predicate) (length objects)))
     (assert (predicate *domain* name) nil 'undefined-predicate :name name)
     (pddl-atomic-state :name name :parameters objects))))

@export
(defun ground-function (function objects value &optional (*problem* *problem*))
  (ematch function
    ((pddl-function :name name :domain *domain*)
     (assert (= (arity function) (length objects)))
     (assert (query-function *domain* name) nil 'undefined-pddl-function :name name)
     (pddl-function-state :name name :parameters objects :value value))))

@export
(defun ground-assign-op (op
                         params ;; parameters of the ungrounded action
                         objects ;; objects corresponding to `params'
                         &optional (*domain* *domain*) (*problem* *problem*))
  (labels ((value (p) (%ground-parameter params objects p op))
           (eqfunc (x y)
             (and (eqname x y)
                  (equal (mapcar #'value (parameters x))
                         (parameters y)))))
    (ematch op
      ;;; when increase is a number
      ((pddl-assign-op place increase value-form)
       (pddl-ground-assign-op
        :place (or (find-if (curry #'eqfunc place) (init *problem*))
                   (error "the corresponding function state not defined:~%~s"
                          `(:place ,place
                            :init ,(init *problem*)
                            :problem ,*problem*)))
        :increase (etypecase increase
                    (number increase)
                    (pddl-function ;; -state : incorrect
                     (or (find-if (curry #'eqfunc increase) (init *problem*))
                         (error "the corresponding function state is not defined:~%~s"
                                `(:increase ,increase
                                  :params ,params 
                                  :objects ,objects
                                  :init ,(init *problem*)
                                  :problem ,*problem*)))))
        :value-form (ground-f-exp value-form params objects))))))

(defun ground-f-exp (f-exp params objects
                     &optional
                       (*domain* *domain*) (*problem* *problem*))
  "Grounds each f-head in a f-exp tree."
  (labels ((value (p) (%ground-parameter params objects p f-exp))
           (rec (e)
             (ematch e
               ((list* (and op (or '+ '- '* '/)) fexps)
                (list* op (mapcar #'rec fexps)))
               ((type number) e)
               ((pddl-function name parameters)
                (find-if (lambda-match
                           ((pddl-function-state ;; (TRAVEL-SLOW N6 N8)
                             :name (guard n2 (string= n2 name)) ; TRAVEL-SLOW
                             :parameters ; N6 N8
                             (guard params2
                                    (every #'eqname
                                           params2
                                           (mapcar #'value parameters))))
                            t))
                         (init *problem*))))))
    (rec f-exp)))

;;;; ground all possible actions and predicates

(defun possible-arguments (parametrized problem)
  "returns a list of lists of objects. for (pred ?x ?y) and objects a,b and c,
   returns ((a b c) (a b c))."
  (let ((objects (objects problem)))
    (iter (for p in (parameters parametrized))
          (collect
              (remove-if-not
               (rcurry #'pddl-supertype-p (type p))
               objects :key #'type)))))

@export
(defun ground-actions (action *problem* &aux (*domain* (domain action)))
  "returns a list of all possible grounded actions. The problem slots of the
returned grounded actions are set to *problem*."
  (ematch action
    ((pddl-action)
     (apply #'map-product
            (lambda (&rest objects)
              (ground-action action objects))
            (possible-arguments action *problem*)))))

@export
(defun ground-predicates (predicate *problem*)
  "returns a list of all possible grounded predicates"
    (ematch predicate
      ((pddl-predicate)
       (apply #'map-product
              (lambda (&rest objects)
                (ground-predicate predicate objects))
              (possible-arguments predicate *problem*)))))

@export
(defun ground-functions (function *problem* &key (initial-value 0))
  "returns a list of all possible grounded functions"
  (ematch function
    ((pddl-function)
     (apply #'map-product
            (lambda (&rest objects)
              (ground-function function objects initial-value))
            (possible-arguments function *problem*)))))
