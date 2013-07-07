(in-package :pddl)
(use-syntax :annot)

@export
(defun apply-action (action match-set state)
  (assert (= (arity action) (/ (length match-set) 2)))
  (assert (iter (for var in (parameters action))
		(always (getf match-set var))))
  (iter (for effect-pred in (add-list action))
	(push (pddl-predicate
	       :name (name effect-pred)
	       :parameters
	       (iter (for param in (parameters effect-pred))
		     (collecting (getf match-set param))))
	      state))
  state)

