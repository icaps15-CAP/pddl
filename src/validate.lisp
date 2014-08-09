(in-package :pddl)
(cl-syntax:use-syntax :annot)

(defvar *validate* (merge-pathnames #p"src/validate" *fd-dir*))

@export
(defun validate-plan (domain-pathname
                      problem-pathname
                      plan-pathname
                      &key
                        verbose
                        (stream *standard-output*))
  (handler-return ((error (constantly nil)))
    (run `(,*validate* ,@(when verbose '(-v))
                       ,(merge-pathnames domain-pathname)
                       ,(merge-pathnames problem-pathname)
                       ,(merge-pathnames plan-pathname))
         :show verbose
         :output (when verbose stream))
    t))

