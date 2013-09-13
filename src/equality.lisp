
(in-package :pddl)
(use-syntax :annot)
@export
(defun eqname (a b)
  (eq (name a) (name b)))

@export
(defun eqstate (s1 s2)
  (and (eqname s1 s2)
       (equalp (parameters s1)
	       (parameters s2))))