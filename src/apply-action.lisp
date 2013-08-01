(in-package :pddl)
(use-syntax :annot)

@export
(defun apply-action (action match-set states)
  (assert (= (arity action) (/ (length match-set) 2)))
  (assert (iter (for var in (parameters action))
		(always (getf match-set var))))

  (format t
	  "~%~@<APPLY-ACTION: ~@;~
             match:~:@_~a~:@_~
             action:~:@_~a~:@_~
             eff+:~:@_~a~:@_~
             eff-:~:@_~a~:@_~
             states:~:@_~a~:@_~
          ~;~:@>"
	  match-set
	  action
	  (add-list action)
	  (delete-list action)
	  states)

  (let ((new-states (copy-seq states)))
    ;; deletes all states that matches an object in the delete-list
    (dolist (effect-pred (delete-list action))
      (setf new-states
	    (delete-if
	     (lambda-match
	       ((pddl-atomic-state
		 :name (eq (name effect-pred))
		 :parameters
		 (equalp (mapcar (curry #'getf match-set)
				 (parameters effect-pred))))
		t))
	     new-states)))
    ;; adds all states that matches an object in the add-list
    (dolist (effect-pred (add-list action))
      (push (pddl-atomic-state
	     :name (name effect-pred)
	     :parameters
	     (iter (for param in (parameters effect-pred))
		   (collecting (getf match-set param))))
	    new-states))

    ;; apply all assign operators to the current states
    (dolist (effect-pred (assign-ops action))
      (apply-assign-op effect-pred match-set new-states))
    new-states))
