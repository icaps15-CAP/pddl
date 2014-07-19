
(in-package :pddl)
(use-syntax :annot)

@export
@doc "Returns a plist 
  (<pddl-variable> <pddl-object> <pddl-variable> <pddl-object> ...)
meaning it is a valid assignment of an object to a variable in an action."
(defgeneric match-set (ground-action))
(defmethod match-set ((aa pddl-ground-action))
  (let ((set nil)
        (a (action (domain aa) aa)))
    (iter (for obj in (parameters aa))
          (for var in (parameters a))
          (setf (getf set var) obj))
    set))
(defmethod match-set ((aa pddl-initial-action))
  (let ((set nil))
    (iter (for obj in (parameters aa))
          (setf (getf set obj) obj))
    set))
(defmethod match-set ((aa pddl-goal-action))
  (let ((set nil))
    (iter (for obj in (parameters aa))
          (setf (getf set obj) obj))
    set))
