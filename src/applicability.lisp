
(in-package :pddl)
(use-syntax :annot)

@export
@doc "STATES : `list' of `pddl-atomic-state' .
ACTION: `pddl-action'.
supported requirements:
 (:DISJUNCTIVE-PRECONDITIONS :NEGATIVE-PRECONDITIONS)
returns a boolean."
(defun applicable (atomic-states action)
  (applicable-condition atomic-states (precondition action)))

@export
(defun applicable-condition (atomic-states condition-tree)
  "This can be improved so that it uses BDD-based tree pruning"
  (walk-tree
   (lambda (clause cont)
     (match clause
       ((andp args) (every #'identity (funcall cont args)))
       ((orp  args) (some  #'identity (funcall cont args)))
       ((notp condition) (not (%match-state condition atomic-states)))
       ((pddl-atomic-state)   (%match-state clause atomic-states))
       (_ (warn "numeric precondition is not supported") t)))
   condition-tree))

(defun %match-state (condition atomic-states)
  "atomic-states, (list atomic-states) -> boolean"
  (some (curry #'eqstate condition) atomic-states))

@export
(defun goal-p (problem atomic-states)
  (applicable-condition atomic-states (goal problem)))
