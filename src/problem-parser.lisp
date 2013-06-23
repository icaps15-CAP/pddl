
(in-package :pddl)
(use-syntax :annot)

(macrolet ((define-clause-getter (name key initializer)
	     `(progn
		(defmethod ,name ((domain list))
		  (funcall ,initializer
			   (find-clause domain ,key))))))
  (define-clause-getter domain :domain 
    (lambda (clause-body)
      (symbol-value (first clause-body))))
  (define-clause-getter init :init
    (curry #'mapcar #'pddl-predicate))
  (define-clause-getter goal :goal
    #'pddl-compound-predicate)
  (define-clause-getter metric :metric
    #'pddl-metric))

(defmethod objects ((problem list))
  (mapcar (lambda (variable)
	    (change-class variable 'pddl-object
			  :problem (name problem)))
	  (parse-typed-list (find-clause problem :objects))))
   