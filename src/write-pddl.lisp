
(in-package :pddl)
(cl-syntax:use-syntax :annot)

(defun pathname-as-directory (path)
  (if (pathname-name path)
      (make-pathname :directory
                     `(,@(pathname-directory path)
                         ,(file-namestring path))
                     :name nil
                     :type nil
                     :defaults path)
      (pathname path)))

@export
(defun write-pddl (thing name
                   &optional
                     (basedir (user-homedir-pathname))
                     verbose)
  (let ((path (merge-pathnames name (pathname-as-directory basedir))))
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
