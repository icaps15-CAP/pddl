(in-package :pddl)
(use-syntax :annot)

(defvar *parsing-filename* nil)
(defvar *compiled-files-logfile*
  (asdf:system-relative-pathname :pddl ".compiled-pddlfasl-files"))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defun delete-file-verbose (path)
    (format t "~&Deleting : ~a~%" path)
    (delete-file path))
  (defun cleanup-pddlfasl ()
    (with-open-file (s *compiled-files-logfile*
                       :if-does-not-exist :create)
      (iter (for path = (read s nil))
            (while path)
            (delete-file-verbose path)))
    (delete-file-verbose *compiled-files-logfile*)))

(export '(domain problem
          pddl-definition
          pddl-domain-definition
          pddl-problem-definition))

(progn
  ;; if this file is re-compiled, then the pddlfasls are invalidated, so run a cleanup
  (eval-when (:compile-toplevel :execute)
    (cleanup-pddlfasl))
  @export
  (defun parse-file (pddl-pathname)
    (let ((*parsing-filename* pddl-pathname)
          (*compile-verbose* t)
          (*compile-print* t))
      (do-restart ((retry-reading-file (lambda () )))
        (let ((fasl (make-pathname :type "pddlfasl" :defaults pddl-pathname)))
          (when (or (not (probe-file fasl))
                    (< (file-write-date fasl)
                       (file-write-date pddl-pathname)))
            (compile-file pddl-pathname :output-file fasl)
            (with-open-file (s *compiled-files-logfile*
                               :direction :output
                               :if-does-not-exist :create
                               :if-exists :append)
              (print fasl s)))
          (handler-case
              (load fasl)
            (pddl-definition (c)
              (values (name c) (value c))))))))

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
          (in-package :pddl.universe)
          (defparameter ,name (parse-domain-def ',name ',body))
          (signal 'pddl-domain-definition :name ',name :value ,name)))
      ((list 'problem name)
       `(progn
          (in-package :pddl.universe)
          (defparameter ,name (parse-problem-def ',name ',body))
          (signal 'pddl-problem-definition :name ',name :value ,name))))))

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
