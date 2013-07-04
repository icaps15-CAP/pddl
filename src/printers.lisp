(in-package :pddl)
(use-syntax :annot)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; instances under domains

(defmethod print-object ((o namable) s)
  (print-unreadable-object (o s :type t)
    (princ (name o) s)))


(defmethod print-object ((o pddl-predicate) s)
  (format s "*(PRE ~a ~{~a~^ ~})"
	  (name o)
	  (mapcar #'name (parameters o))))

(defmethod print-object ((v pddl-variable) s)
  (if (eq (type v) t)
      (format s "*(V ~A)" (name v))
      (format s "*(V ~A ∈ ~A)" (name v) (type v))))

(defmethod print-object ((o pddl-action) s)
  (format s "*(ACT (~{~A~^ ~}) ~a)"
	  (mapcar #'name (parameters o))
	  (precondition o)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; instances under problems

(defmethod print-object ((o pddl-atomic-state) s)
  (format s "*(STT ~a ~{~a~^ ~})" (name o) (parameters o)))

(defmethod print-object ((v pddl-object) s)
  (if (eq (type v) t)
      (format s "*(O ~A)" (name v))
      (format s "*(O ~A - ~A)" (name v) (type v))))

