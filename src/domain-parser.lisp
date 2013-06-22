
(in-package :pddl)
(use-syntax :annot)
;; metatilities:defclass*

(macrolet ((define-clause-getter (name key)
	     `(progn
		(defmethod ,name ((domain list))
		  (cdr (find-if (lambda (clause) (eq (car clause) ,key))
				domain))))))
  (define-clause-getter requirements :requirements)
  (define-clause-getter types :types)
  (define-clause-getter predicates :predicates)
  (define-clause-getter constants :constants)
  (define-clause-getter functions :functions))

(macrolet ((define-action-getter (name key)
	     `(progn
		(defmethod ,name ((domain list))
		  (mapcar #'cdr
			  (remove-if-not
			   (lambda (clause) (eq (car clause) ,key))
			   domain))))))
  (define-action-getter actions :action)
  (define-action-getter durative-actions :durative-action)
  (define-action-getter derived-predicates :derived))


(defun parse-typed-list (domain lst)
  (%getting-vars domain lst nil nil))

(defun %getting-vars (domain lst vars acc)
  (ematch lst
    ((list* '- type rest)
     (%getting-vars domain
		    rest
		    nil 
		    (append (mapcar (lambda (name)
				      (pddl-variable domain name type))
				    vars)
			    acc)))
    ((list* name rest)
     (%getting-vars domain
		    rest
		    (cons name vars)
		    acc))
    (nil acc)))
