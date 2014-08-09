(in-package :pddl)
(cl-syntax:use-syntax :annot)

@export
(defun write-actions-as-plan (actions name
                              &optional
                                (basedir (user-homedir-pathname))
                                verbose)
  (let ((path 
         (merge-pathnames
          name (pathname-as-directory basedir))))
    (ensure-directories-exist path :verbose verbose)
    (when verbose
      (format t "~&Writing ~a~&" path))
    (with-open-file (s path
                       :direction :output
                       :if-exists :supersede
                       :if-does-not-exist :create)
      (iter (for a in-sequence actions)
            (write `(,(name a) ,@(mapcar #'name (parameters a)))
                   :stream s
                   :escape nil)
            (terpri s)))
    path))

@export
(defun write-plan (pddl-plan name
                   &optional
                     (basedir (user-homedir-pathname))
                     verbose)
  (write-actions-as-plan (actions pddl-plan) name
                         basedir verbose))
