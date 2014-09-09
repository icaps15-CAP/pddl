(in-package :pddl)
(use-syntax :annot)

@export
(defun apply-ground-action (ground-action states)
  (labels ((rec (states e)
             (ematch e
               ((list* 'and rest)
                (reduce #'rec rest :initial-value states))
               ((list 'not op)
                (remove-if (curry #'eqstate op) states))
               ((pddl-atomic-state)
                (if (member e states :test #'eqstate)
                    states (cons e states)))
               ((pddl-assign-op)
                (apply-assign-op e states)))))
    (if (applicable states ground-action) 
        (rec states (effect ground-action))
        (error "not applicable!"))))

;; +deprecated, to be removed+ ... maybe not
@export
@doc "Returns a plist 
  (<pddl-variable> <pddl-object> <pddl-variable> <pddl-object> ...)
meaning it is a valid assignment of an object to a variable in an action."
(defun match-set (ground-action)
  (make-match-set (parameters (action (domain ground-action) ground-action))
                  (parameters ground-action)))

(defun make-match-set (keys values)
  (iter (for x in keys)
        (for y in values)
        (collecting x)
        (collecting y)))

