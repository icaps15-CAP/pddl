(in-package :pddl)
(use-syntax :annot)

@export
(defun apply-actual-action (actual-action states)
  (let ((*problem* (problem actual-action)))
    (apply-action
     (action (domain actual-action) actual-action)
     (match-set actual-action)
     states)))

@export
(defun apply-action (action match-set states)
  (assert (= (arity action) (/ (length match-set) 2)))
  (assert (domain action))
  (assert (action (domain action) action))
  (assert (iter (for var in (parameters action))
		(always (getf match-set var)))
	  nil "the parameters ~a~%~
               ~a~%~
               didnt matched~:_ ~a~%~
               ~a"
	  (parameters action)
	  (mapcar #'sxhash (parameters action))
	  match-set
	  (mapcar #'sxhash match-set))
  (let ((new-states (copy-list states))
	(*domain* (domain action)))
    (setf new-states (%apply-delete-effect action match-set new-states))
    (setf new-states (%apply-add-effect action match-set new-states))
    (setf new-states (%apply-assign-ops action match-set new-states))
    ;; (format t
    ;; 	  "~%~@<APPLY-ACTION: ~@;~
    ;;          action:~:@_~a~:@_~
    ;;          match:~:@_~a~:@_~
    ;;          eff+:~:@_~a~:@_~
    ;;          eff-:~:@_~a~:@_~
    ;;          numeric:~:@_~a~:@_~
    ;;       ~;~:@>~%"
    ;; 	  ;; states(old):~:@_~a~:@_~
    ;; 	  action
    ;; 	  match-set
    ;; 	  (add-list action)
    ;; 	  (delete-list action)
    ;; 	  (assign-ops action))
    new-states))

@doc "deletes all states that matches an object in the delete-list"
(defun %apply-delete-effect (action match-set states)
  (dolist (effect-pred (delete-list action) states)
    (setf states
	  (delete-if
	   (lambda-match
	     ((pddl-atomic-state
	       :name (eq (name effect-pred))
	       :parameters
	       (equalp (mapcar (curry #'getf match-set)
			       (parameters effect-pred))))
	      t))
	   states))))

@doc "adds all states that matches an object in the add-list"
(defun %apply-add-effect (action match-set states)
  (dolist (effect-pred (add-list action) states)
    (push (pddl-atomic-state
	   :name (name effect-pred)
	   :parameters
	   (iter (for param in (parameters effect-pred))
		 (collecting
		  (or (getf match-set param)
		      (error "failed to find a parameter in match-set!~%~
                              match:~a~%~
                              parameter:~a" match-set param)))))
	  states)))

@doc "apply all assign operators to the current states"
(defun %apply-assign-ops (action match-set states)
  (dolist (effect-pred (assign-ops action) states)
    (apply-assign-op effect-pred match-set states)))