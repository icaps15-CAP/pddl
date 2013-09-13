
(in-package :pddl)
(use-syntax :annot)

@export
(defun goal-p (problem states)
  (walk-tree
   (lambda (branch cont)
     (match branch
       ((andp check-states) (every #'identity (funcall cont check-states)))
       ((orp check-states) (some #'identity (funcall cont check-states)))
       ((type pddl-atomic-state) (%match-state branch states))
       ((notp state) (not (%match-state state states)))))
   (goal problem)))

(defun %match-state (atomic-state states)
  (some (curry #'eqstate atomic-state) states))