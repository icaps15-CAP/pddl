(in-package :pddl)
(use-syntax :annot)

(defvar *parsing-filename*)

@export
(defun parse-file (pddl-pathname)
  (let ((*parsing-filename* pddl-pathname))
    (tagbody
     parse-start
       (restart-case
           (with-open-file (s pddl-pathname)
             (return-from parse-file 
               (parse-stream s)))
         (retry-reading-file ()
           (go parse-start))))))

@export
(defun parse-stream (s)
  (let (results)
    (tagbody
     start
       (handler-bind ((end-of-file
                       (lambda (c)
                         @ignore c
                         (return-from parse-stream
                           (values-list results)))))
         (push (eval (read s)) results)
         (go start)))))

(export '(domain problem))

@export
(defmacro define (type &body body)
  (ematch type
    ((list 'domain name)
     `(eval-when (:compile-toplevel :load-toplevel :execute)
        (defparameter ,name (parse-domain-def ',name ',body))
        ',name))
    ((list 'problem name)
     `(eval-when (:compile-toplevel :load-toplevel :execute)
        (defparameter ,name (parse-problem-def ',name ',body))
        ',name))))

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
