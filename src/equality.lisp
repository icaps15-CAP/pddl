
(in-package :pddl)
(use-syntax :annot)
@export
(defun eqname (a b)
  (eq (name a) (name b)))

@export
(defun eqstate (s1 s2)
  @type pddl-predicate s1
  @type pddl-predicate s2
  (and (eqname s1 s2)
       (equal (parameters s1)
              (parameters s2))))