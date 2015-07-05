(in-package :pddl.test)

(in-suite :pddl)

(test parse-typed-list

  (let ((*domain* (pddl-domain)))
    (signals not-found-in-dictionary
      (parse-typed-list '(a b c)))
    
    (setf (types *domain*)
	  (list *pddl-primitive-object-type*
		*pddl-primitive-number-type*))
    (handler-bind ((not-found-in-dictionary
		    #'intern-variable))
      (ematch (parse-typed-list '(a - object b - number c))
	((list (pddl-variable :name 'a
			      :type (eq *pddl-primitive-object-type*))
	       (pddl-variable :name 'b
			      :type (eq *pddl-primitive-number-type*))
	       (pddl-variable :name 'c
			      :type (eq *pddl-primitive-object-type*)))
	 (pass))))))

(test parse-domain
  (finishes
    (handler-bind ((found-in-dictionary #'muffle-warning))
      (let ((*domain* nil))
        (multiple-value-setq
            (*domain-sym* *domain*)
          (parse-file +domain+))
        (is (typep *domain* 'pddl-domain))))))

;; (test (parse-domain-airport :depends-on parse-domain)
;;   ;; airport-adl
;;   (handler-bind ((found-in-dictionary #'muffle-warning))
;;     (finishes (parse-file (data "airport-adl/domain.pddl")))))

(test (parse-problem :depends-on parse-domain)
  (finishes
    (handler-bind ((found-in-dictionary #'muffle-warning))
      (let ((*problem* nil))
        (multiple-value-setq
            (*problem-sym* *problem*)
          (parse-file +problem+))
        (is (typep *problem* 'pddl-problem))))))

;; (test (parse-problem-airport :depends-on parse-problem)
;;   ;; airport 
;;   (handler-bind ((found-in-dictionary #'muffle-warning))
;;     (finishes (parse-file (data "airport-adl/p01-airport1-p1.pddl")))))

(test (parse-plan :depends-on parse-problem)
  (handler-bind ((found-in-dictionary #'muffle-warning))
    (finishes
      (setf *depot-actions*
            (parse-plan +plan+
                        (symbol-value *domain-sym*)
                        (symbol-value *problem-sym*))))))
