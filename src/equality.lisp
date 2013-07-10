
(in-package :pddl)

@export
(defun eqname (a b)
  (eq (name a) (name b)))

@export
(defun eqstate (a b)
  (and (eqname a b)
       (tree-equal (parameters a)
		   (parameters b))))