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
  (handler-return ((uiop/run-program:subprocess-error (constantly nil)))
    (let ((string (with-output-to-string (string-stream)
                    (let ((broadcast (if verbose
                                         (make-broadcast-stream stream string-stream)
                                         string-stream)))
                      (run `(,*validate* ,@(when verbose '(-v))
                                         ,(merge-pathnames domain-pathname)
                                         ,(merge-pathnames problem-pathname)
                                         ,(merge-pathnames plan-pathname))
                           :show verbose
                           :output broadcast)))))
      (scan "Plan valid" string))))
