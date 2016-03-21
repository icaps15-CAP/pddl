(in-package :pddl)
(cl-syntax:use-syntax :annot)

;; compilers

(defun fluent-value (fluent atomic-states)
  (funcall (value-function fluent) atomic-states))

(defmethod value-function ((op pddl-ground-fluent))
  (with-memoising-slot (value-function op)
    (let ((*domain* (domain op)))
      (compile-fluent (value-form op)))))

(defun compile-fluent (form)
  (with-gensyms (states-var)
    (compile nil `(lambda (,states-var)
                    ,(convert-fss-to-query-var form states-var)))))

(defun convert-fss-to-query-var (form var)
  "Assuming form is a cons tree where the leafs are function-states,
then replace fs's to the form that query the current value of the fss."
  (labels ((rec (e)
             (ematch e
               ((list* (and op (or '+ '- '* '/)) fexps)
                (list* op (mapcar #'rec fexps)))
               ((type number) e)
               ((pddl-function)
                `(value (query-function-state ,e ,var))))))
    (rec form)))

(defun query-function-state (function-state atomic-states)
  (or (find-if (lambda (fs)
                 (and (typep fs 'pddl-function-state)
                      (eqstate function-state fs)))
               atomic-states)
      (error "~%The function-state was not found!~%
atomic-states: ~a~%The function queried: ~a"
             atomic-states
             function-state)))

@export
(defun apply-assign-op (op atomic-states)
  (let ((fs (query-function-state (place op) atomic-states)))
    (substitute
     (shallow-copy fs :value (fluent-value op atomic-states))
     fs atomic-states)))

