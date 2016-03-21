(in-package :pddl)
(cl-syntax:use-syntax :annot)

(defvar *parsing-filename* nil)

;; These file compilations are unsafe on multiprocess environment.  on
;; multiprocess environment, turn on :interpret-pddl *feature* to force
;; interpreting the pddl file instead of saving fasl file.  Similarly,
;; *compiled-files-logfile* is unsafe under multiprocess environment.

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defvar *compiled-files-logfile*
    (asdf:system-relative-pathname :pddl ".compiled-pddlfasl-files"))
  (defun delete-file-verbose (path)
    (format t "~&Deleting : ~a" path)
    (handler-case
        (delete-file path)
      (file-error ()
        (format t "~%File not Deleted : ~s not found" path))
      (type-error ()
        (format t "~%File not Deleted : ~s is not a pathname" path))))
  (defun cleanup-pddlfasl ()
    (unwind-protect
        (with-open-file (s *compiled-files-logfile*
                           :if-does-not-exist :create)
          (iter (for path = (read s nil))
                (while path)
                (delete-file-verbose path)))
      (delete-file-verbose *compiled-files-logfile*))))

(export '(domain problem
          cleanup-pddlfasl
          pddl-definition
          pddl-domain-definition
          pddl-problem-definition))

(defun pddlfasl-pathname (path)
  (let ((fasl (make-pathname
               :type "pddlfasl" :defaults
               (format nil "/tmp/pddl~a" (truename path)))))
    (ensure-directories-exist fasl)
    fasl))



(progn
  ;; if this file is re-compiled, then the pddlfasls are invalidated
  (eval-when (:compile-toplevel :execute)
    (cleanup-pddlfasl))
  #-interpret-pddl
  (defun parse-file (pddl-pathname &optional export remove-fasl)
    (let ((*parsing-filename* pddl-pathname)
          (*compile-verbose* t)
          (*compile-print* t)
          (fasl (pddlfasl-pathname pddl-pathname)))
      (do-restart
          ((recompile
            (lambda ()
              (compile-file pddl-pathname :output-file fasl)
              (with-open-file (s *compiled-files-logfile*
                                 :direction :output
                                 :if-does-not-exist :create
                                 :if-exists :append)
                (print fasl s)))))
        (when (or (not (probe-file fasl))
                  (< (file-write-date fasl)
                     (file-write-date pddl-pathname)))
          (invoke-restart 'recompile))
        (handler-case
            (unwind-protect
                 (load fasl)
              (when remove-fasl
                (delete-file fasl)))
          (pddl-definition (c)
            (when export (export (name c)))
            (values (name c) (value c)))))))
  #+interpret-pddl
  (defun parse-file (pddl-pathname &optional export remove-fasl)
    @ignorable remove-fasl
    (handler-case
        (load pddl-pathname)
      (pddl-definition (c)
        (when export (export (name c)))
        (values (name c) (value c)))))

  (define-condition pddl-definition (condition)
    ((name :initarg :name :accessor name)
     (value :initarg :value :accessor value)))
  (define-condition pddl-domain-definition (pddl-definition) ())
  (define-condition pddl-problem-definition (pddl-definition) ())

  @export
  (defmacro define (type &body body)
    (ematch type
      ((list 'domain name)
       `(progn
          (defparameter ,name (parse-domain-def ',name ',body))
          ;; signalled in load time
          (if (boundp ',name)
              (signal 'pddl-domain-definition :name ',name :value (symbol-value ',name))
              (signal 'pddl-domain-definition :name ',name))))
      ((list 'problem name)
       `(progn
          (defparameter ,name (parse-problem-def ',name ',body))
          (if (boundp ',name)
              (signal 'pddl-problem-definition :name ',name :value (symbol-value ',name))
              (signal 'pddl-problem-definition :name ',name)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; bare parser

(defun parse-domain-def (name body)
  ;; special variable, used in 
  ;; the initialization of subclause objects.
  (let ((*domain* (pddl-domain :name name)))
    (macrolet ((body-domain (accessor)
                 `(setf (,accessor *domain*)
                        (,(concatenate-symbols 'parse accessor) body))))
      (body-domain requirements)
      (body-domain types)
      (body-domain predicates)
      (body-domain constants)
      (body-domain functions)
      (body-domain actions)
      (body-domain durative-actions)
      (body-domain derived-predicates))
    (setf (path *domain*) *parsing-filename*)
    *domain*))

(defun parse-problem-def (name body)
  (let* (;; these special variables are used in
         ;; the initialization of subclause objects.
         (*domain* (parse-domain body))
         (*problem* (pddl-problem :name name :domain *domain*)))
    (macrolet ((body-problem (accessor)
                 `(setf (,accessor *problem*)
                        (,(concatenate-symbols 'parse accessor) body))))
      (body-problem objects)
      (let ((*params* (objects *problem*)))
        (handler-bind ((found-in-dictionary #'muffle-warning))
          (body-problem init)
          (body-problem goal)
          (body-problem metric))))
    (setf (path *problem*) *parsing-filename*)
    *problem*))
