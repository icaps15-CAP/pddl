(in-package :pddl)
(use-syntax :annot)

;; This file contains methods for pretty printers. Note that these are not for
;; formatting PDDL files. For PDDL formatter, see output.lisp .

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
    (format s "(PRE ~a~{ ~a~})"
            (name o)
            (mapcar #'name (parameters o)))))

(defmethod print-object ((o pddl-function) s)
  (print-ignoring-unbound-slot
    (format s "(FUN ~a~{ ~a~})"
            (name o)
            (mapcar #'name (parameters o)))))

(defmethod print-object ((v pddl-variable) s)
  (print-ignoring-unbound-slot
    (if (eq (type v) *pddl-primitive-object-type*)
        (format s "(V ~A)" (name v))
        (format s "(V ~A ∈ ~A)" (name v) (if-let ((type (type v))) (name type) "\"not found\"")))))

(defmethod print-object ((v pddl-constant) s)
  (print-ignoring-unbound-slot
    (if (eq (type v) *pddl-primitive-object-type*)
        (format s "(CONST ~A)" (name v))
        (format s "(CONST ~A ∈ ~A)" (name v) (name (type v))))))

(defmethod print-object ((v pddl-type) s)
  (print-ignoring-unbound-slot
    (cond 
      ((or (eq v *pddl-primitive-object-type*)
           (eq v *pddl-primitive-number-type*))
       (format s "(PRIMITIVE-TYPE ~A)" (name v)))
      ((eq (type v) *pddl-primitive-object-type*)
       (format s "(TYPE ~A)" (name v)))
      (t
       (format s "(TYPE ~A << ~A)" (name v) (name (type v)))))))

(defmethod print-object ((o pddl-action) s)
  (print-ignoring-unbound-slot
    (format s "~@<(ACT ~;~a ~_~a ~_~a~;)~:>"
            (name o)
            (mapcar #'name (parameters o))
            (precondition o))))

(defmethod print-object ((o pddl-assign-op) s)
  (print-ignoring-unbound-slot
    (format s "~@<(ASSIGN ~; ~a ~_~a~;)~:>"
            (place o)
            (value-form o))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; instances under problems

(defmethod print-object ((o pddl-ground-action) s)
  (print-ignoring-unbound-slot
    (format s "~@<(AC* ~;~a ~_~a~;)~:>"
            (name o)
            (mapcar #'name (parameters o)))))

(defmethod print-object ((o pddl-atomic-state) s)
  (print-ignoring-unbound-slot
    (format s "~@<(STT ~;~a ~_~a~;)~:>" (name o) (parameters o))))

(defmethod print-object ((v pddl-object) s)
  (print-ignoring-unbound-slot
    (if (eq (type v) t)
        (format s "(O ~A)" (name v))
        (format s "(O ~A ∈ ~A)" (name v) (name (type v))))))

(defmethod print-object ((o pddl-function-state) s)
  (print-ignoring-unbound-slot
    (format s "(FST ~a = ~a~{ ~a~})"
            (value o)
            (name o)
            (mapcar #'name (parameters o)))))
