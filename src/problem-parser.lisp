
(in-package :pddl)
(use-syntax :annot)

(defun find-clause (domain key)
  (cdr (find-if (lambda (clause) (eq (car clause) key))
		domain)))

(macrolet ((define-clause-getter (name key initializer)
	     `(progn
		(defmethod ,name ((domain list))
		  (find-clause domain ,key)))))
  (define-clause-getter init :init)
  (define-clause-getter goal :goal)
  (define-clause-getter metric :metric))

(defmethod domain ((problem list))
  (first (find-clause problem :domain)))

(defmethod objects ((problem list))
  (mapcar (lambda (variable)
	    (change-class variable 'pddl-object
			  :problem (name problem)))
	  (parse-typed-list (find-clause problem :objects))))
   