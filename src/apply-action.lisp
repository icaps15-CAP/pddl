(in-package :pddl)
(use-syntax :annot)

@export
(defun apply-ground-action (ground-action states)
  (let ((match-set (match-set ground-action)))
    (labels ((rec (e states)
               (ematch e
                 ((list* 'and e rest)
                  (rec (list* 'and rest) (rec e states)))
                 ((list 'not op)
                  (remove-if (curry #'eqstate op) states))
                 ((pddl-atomic-state)
                  (cons e states))
                 ((pddl-assign-op)
                  (apply-assign-op e match-set states)))))
      (rec (effect ground-action) states))))

