
(in-package :pddl)
(use-syntax :annot)

(define-clause-getter domain :domain
  (lambda (clause-body)
    (let ((domain-symbol (first clause-body)))
      (if (boundp domain-symbol)
          (symbol-value domain-symbol)
          (warn "the domain ~A is not loaded yet!" domain-symbol)))))

;; these need to accept additional arguments `params'

(define-clause-getter objects :objects
  (lambda (objects)
    (handler-bind ((not-found-in-dictionary
                    #'intern-variable))
      (parse-typed-list
       objects
       nil
       (lambda (name &optional typesym)
         (pddl-object
          :name name
          :type (if typesym
                    (find-if (curry #'%eqname1 typesym) (types *domain*))
                    *pddl-primitive-object-type*)))))))

(define-clause-getter init :init
  (lambda (init-descriptions)
    (let ((inits (mapcar #'parse-init-el init-descriptions)))
      (let ((fss (remove-if-not (rcurry #'typep 'pddl-function-state) inits)))
        (assert (= (length fss)
                   (reduce #'+ (functions *domain*) :key
                           (lambda (f)
                             (reduce #'* (possible-arguments f *problem*)
                                     :key #'length))))
                nil
                "~&The initial value of a function is not fully defined! ~%~
                 Missing definition:~%~
                 ~{~a~%~}"
                (missing-definitions fss *domain*)))
      inits)))

(defun missing-definitions (fss *domain*)
  (iter (for f in (functions *domain*))
        (for sets = (possible-arguments f *problem*))
        (if sets
            (apply #'map-product
                   (lambda (&rest objects)
                     (unless (member objects
                                     (remove-if-not (curry #'eqname f) fss)
                                     :key #'parameters
                                     :test #'equal)
                       (collect (mapcar #'name (list* f objects)))))
                   sets)
            ;; total-cost, total-time, or any 0-arg functions
            (unless (member f fss :test #'eqname)
              (collect (list (name f)))))))

(defun parse-init-el (desc)
  (match desc
    ((list '= (and head (list* name params)) (and n (type number)))
     (let ((head (parse-f-head head)))
       (pddl-function-state
        :name name
        :parameters (parse-typed-list params) ;; *params* = objects 
        :type (type head)
        :body head
        :value n)))
    ((list '= _ (type symbol))
     (not-implemented 'object-fluents))
    (_ (parse-atomic-state desc))))

(define-clause-getter goal :goal
  (lambda (goal-clause)
    (walk-tree
     (lambda (branch cont)
       (etypecase branch
         (cons (funcall cont branch))
         (pddl-predicate (change-class branch 'pddl-atomic-state
                                       :problem *problem*))
         (symbol branch)))
     (parse-GD (car goal-clause)))))

(define-clause-getter metric :metric
  #'parse-metric-body)

