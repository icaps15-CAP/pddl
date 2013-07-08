
(in-package :pddl)
(use-syntax :annot)

@export
(defun goal-p (problem states)
  (walk-tree
   (lambda (branch cont)
     (match branch
       ((type pddl-atomic-state) (%match-state branch states))
       ((andp check-states) (every cont check-states))
       ((orp check-states) (some cont check-states))
       ((notp check-state) (not (funcall cont check-state)))))
   (goal problem)))


(defun eqstate (s1 s2)
  @type pddl-atomic-state s1
  @type pddl-atomic-state s2
  (and (eqname s1 s2)
       (equalp (parameters s1)
	       (parameters s2))))

(defun %match-state (atomic-state states)
  (some (curry #'eqstate atomic-state) states))