
(in-package :pddl)
(cl-syntax:use-syntax :annot)


@export
(defun write-pddl (thing name
                   &optional
                     (basedir (user-homedir-pathname))
                     verbose)
  (let ((path (merge-pathnames name (truename basedir))))
    (ensure-directories-exist path :verbose verbose)
    (when verbose
      (format t "~&Writing ~a~&" path))
    (with-open-file (s path
                       :direction :output
                       :if-exists :supersede
                       :if-does-not-exist :create)
      (let ((*package* (find-package :pddl)))
        (print-pddl-object thing s)))
    path))
