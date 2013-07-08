
(in-package :pddl)
(use-syntax :annot)

@export
(defun parse-plan (pathname *domain* *problem*)
  (with-open-file (s pathname)
    (mapcar (lambda (plan-description)
	      (ematch plan-description
		((list* action-name arguments)
		 (assert (action *domain* action-name) nil
			 "action-name ~A not found in ~A"
			 action-name *domain*)
		 (pddl-actual-action
		  :name action-name
		  :domain *domain*
		  :problem *problem*
		  :parameters
		  (mapcar (curry #'object *problem*)
			  arguments)))))
	    (%parse-plan-rec s nil))))

(defun %parse-plan-rec (s acc)
  (if-let ((read (read s nil)))
    (%parse-plan-rec s (cons read acc))
    (nreverse acc)))

(define-pddl-class pddl-actual-action (pddl-problem-slot pddl-action)
  ())

(defmethod action ((dom pddl-domain) (aa pddl-actual-action))
  (action dom (name aa)))

@export
(defgeneric match-set (source))
(defmethod match-set ((aa pddl-actual-action))
  (let ((set nil)
	(a (action (domain aa) aa)))
    (iter (for obj in (parameters aa))
	  (for var in (parameters a))
	  (setf (getf set var) obj))
    set))