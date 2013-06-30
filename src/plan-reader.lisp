
(in-package :pddl)
(use-syntax :annot)

@export
(defun parse-plan (pathname)
  (with-open-file (s pathname)
    (%parse-plan-rec s nil)))

(defun %parse-plan-rec (s acc)
  (if-let ((read (read s nil)))
    (%parse-plan-rec s (cons read acc))
    (nreverse acc)))