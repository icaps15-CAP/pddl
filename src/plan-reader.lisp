
(in-package :pddl)
(use-syntax :annot)

@export
(defun parse-plan (pathname domain)
  (with-open-file (s pathname)
    (mapcar (lambda (plan-description)
	      (ematch plan-description
		((list* predicate arguments)
		 (assert (predicate domain predicate))
		 (pddl-atomic-state :name predicate
				    :domain domain
				    :parameters arguments))))
	    (%parse-plan-rec s nil))))

(defun %parse-plan-rec (s acc)
  (if-let ((read (read s nil)))
    (%parse-plan-rec s (cons read acc))
    (nreverse acc)))