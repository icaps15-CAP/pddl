(in-package :pddl)
(use-syntax :annot)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; instances under domains

(defmacro print-ignoring-unbound-slot (&body body)
  `(handler-bind ((unbound-slot
		   (lambda (c)
		     (declare (ignore c))
		     (use-value "\"unbound\""))))
     ,@body))

(defmethod print-object ((o namable) s)
  (print-ignoring-unbound-slot
    (print-unreadable-object (o s :type t)
      (princ (name o) s))))


(defmethod print-object ((o pddl-predicate) s)
  (print-ignoring-unbound-slot
    (format s "*(PRE ~a ~{~a~^ ~})"
	    (name o)
	    (mapcar #'name (parameters o)))))

(defmethod print-object ((v pddl-variable) s)
  (print-ignoring-unbound-slot
    (if (eq (type v) t)
	(format s "*(V ~A)" (name v))
	(format s "*(V ~A ∈ ~A)" (name v) (type v)))))

(defmethod print-object ((v pddl-type) s)
  (print-ignoring-unbound-slot
    (if (eq (type v) t)
	(format s "*(TYPE ~A)" (name v))
	(format s "*(TYPE ~A << ~A)" (name v) (type v)))))

(defmethod print-object ((o pddl-action) s)
  (print-ignoring-unbound-slot
    (format s "*(ACT (~{~A~^ ~}) ~a)"
	    (mapcar #'name (parameters o))
	    (precondition o))))

(defmethod print-object ((o pddl-actual-action) s)
  (print-ignoring-unbound-slot
    (format s "*(ACT (~{~A~^ ~}))"
	    (mapcar #'name (parameters o)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; instances under problems

(defmethod print-object ((o pddl-atomic-state) s)
  (print-ignoring-unbound-slot
    (format s "*(STT ~a ~{~a~^ ~})" (name o) (parameters o))))

(defmethod print-object ((v pddl-object) s)
  (print-ignoring-unbound-slot
    (if (eq (type v) t)
	(format s "*(O ~A)" (name v))
	(format s "*(O ~A - ~A)" (name v) (type v)))))

