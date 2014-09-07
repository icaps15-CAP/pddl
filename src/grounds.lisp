

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

(defun ground-ctree (ctree
                     params
                     objects
                     &optional
                       (*domain* *domain*) (*problem* *problem*))
  "Grounds each precondition/effect in a condition tree. CTREE is a cons tree of
symbol AND, NOT and OR, or instances of pddl-predicate or pddl-assign-op."
  (labels ((value (p) (or (when-let ((pos (position p params)))
                            (elt objects pos))
                          (when (typep p 'pddl-constant) p)
                          (find p (constants *domain*))
                          (error "Parameter ~a not found" p)))
           (rec (e)
             (ematch e
               ((list* op rest)
                (list* op (mapcar #'rec rest)))
               ((pddl-predicate parameters)
                (ground-predicate e (mapcar #'value parameters)))
               ((pddl-assign-op)
                (ground-assign-op e params objects)))))
    (rec ctree)))

@export
(defun ground-predicate (predicate objects &optional (*problem* *problem*))
  (ematch predicate
    ((pddl-predicate :name name :domain *domain*)
     (assert (= (arity predicate) (length objects)))
     (assert (predicate *domain* name) nil "undefined predicate ~A" name)
     (pddl-atomic-state :name name :parameters objects))))

@export
(defun ground-function (function objects value &optional (*problem* *problem*))
  (ematch function
    ((pddl-function :name name :domain *domain*)
     (assert (= (arity function) (length objects)))
     (assert (query-function *domain* name) nil "undefined function ~A" name)
     (pddl-function-state :name name :parameters objects :value value))))

@export
(defun ground-assign-op (op
                         params ;; parameters of the ungrounded action
                         objects ;; objects corresponding to `params'
                         &optional (*problem* *problem*))
  (labels ((value (p) (or (when-let ((pos (position p params)))
                            (elt objects pos))
                          (when (typep p 'pddl-constant) p)
                          (error "Parameter ~a not found in the problem" p))))
    (ematch op
      ((pddl-assign-op domain (place (pddl-function name parameters)) value-form)
       (let ((*domain* domain))
         (pddl-ground-assign-op
          :place
          (find-if (lambda-match ((pddl-function-state
                                   :name (eq name)
                                   :parameters (equal (mapcar #'value parameters)))
                                  t))
                   (init *problem*))
          :value-form 
          (ground-f-exp value-form params objects)))))))

(defun ground-f-exp (f-exp params objects
                     &optional
                       (*domain* *domain*) (*problem* *problem*))
  "Grounds each f-head in a f-exp tree."
  (labels ((value (p) (or (when-let ((pos (position p params)))
                            (elt objects pos))
                          (when (typep p 'pddl-constant) p)
                          (error "Parameter ~a not found" p)))
           (rec (e)
             (ematch e
               ((list* (and op (or '+ '- '* '/)) fexps)
                (list* op (mapcar #'rec fexps)))
               ((type number) e)
               ((pddl-function name parameters)
                (find-if (lambda-match ((pddl-function-state
                                         :name (eq name)
                                         :parameters (equal (mapcar #'value parameters)))
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
(defun ground-actions (action problem)
  "returns a list of all possible grounded actions"
  (ematch action
    ((pddl-action)
     (apply #'map-product
            (lambda (&rest objects)
              (ground-action action objects))
            (possible-arguments action problem)))))

@export
(defun ground-predicates (predicate problem)
  "returns a list of all possible grounded predicates"
    (ematch predicate
      ((pddl-predicate)
       (apply #'map-product
              (lambda (&rest objects)
                (ground-predicate predicate objects))
              (possible-arguments predicate problem)))))

@export
(defun ground-functions (function problem &key (initial-value 0))
  "returns a list of all possible grounded functions"
  (ematch function
    ((pddl-function)
     (apply #'map-product
            (lambda (&rest objects)
              (ground-function function objects initial-value))
            (possible-arguments function problem)))))
