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
    (if (eq (type v) *pddl-primitive-object-type*)
	(format s "*(V ~A)" (name v))
	(format s "*(V ~A ∈ ~A)" (name v) (name (type v))))))

(defmethod print-object ((v pddl-type) s)
  (print-ignoring-unbound-slot
    (cond 
      ((eq (type v) *pddl-primitive-object-type*)
       (format s "*(TYPE ~A)" (name v)))
      (;;(eq (name (type v)) 'number)
       t
       (format s "*(TYPE ~A << ~A)" (name v) (name (type v)))))))

(defmethod print-object ((o pddl-action) s)
  (print-ignoring-unbound-slot
    (format s "~@<*(ACT ~;~a ~_~a ~_~a~;)~:>"
	    (name o)
	    (mapcar #'name (parameters o))
	    (precondition o))))


(defmethod print-object ((o pddl-actual-action) s)
  (print-ignoring-unbound-slot
    (format s "~@<*(AC* ~;~a ~_~a~;)~:>"
	    (name o)
	    (mapcar #'name (parameters o)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; instances under problems

(defmethod print-object ((o pddl-atomic-state) s)
  (print-ignoring-unbound-slot
    (format s "~@<*(STT ~;~a ~_~a~;)~:>" (name o) (parameters o))))

(defmethod print-object ((v pddl-object) s)
  (print-ignoring-unbound-slot
    (if (eq (type v) t)
	(format s "*(O ~A)" (name v))
	(format s "*(O ~A ∈ ~A)" (name v) (name (type v))))))

