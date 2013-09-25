(ql:quickload :alexandria)
(ql:quickload :optima)
(ql:quickload :guicho-utilities)
(ql:quickload :iterate)
(ql:quickload :osicat)
(ql:quickload :repl-utilities)


(defpackage satellite-add-type
  (:use :cl
        :alexandria
        :optima
        :optima.extra
        :guicho-utilities
        :repl-utilities
        :iterate
        :osicat))

(in-package :satellite-add-type)

(defun read-file (path)
  (with-open-file (s path)
    (read s)))

(defun rewrite-problem (lst n)
  (match lst
    ((list* 'define (list 'problem _)
            (alist (:domain . (list domain))
                   (:objects . objects)
                   (:init . init)
                   (:goal . goal)))
     (multiple-value-bind (new-init typed-objs)
         (process-satellite-init init)
       `(define (problem ,(concatenate-symbols 'satellite 'typed n))
            (:domain ,(concatenate-symbols domain 'typed))
          (:objects ,@(process-satellite-objects objects typed-objs))
          (:init ,@new-init)
          (:goal ,@goal))))))
    
(defun process-satellite-init (init)
  (init-rec init nil nil))

          
(defun init-rec (old new objects)
  (match old
    ((list* (list (and type
                       (or 'satellite
                           'instrument
                           'mode
                           'direction)) obj) rest)
     (init-rec rest new
               (cons (cons obj type) objects)))
    ((list* pred rest)
     (init-rec rest (cons pred new) objects))
    (nil (values new objects))))

(defun process-satellite-objects (objs alist)
  (objects-rec objs alist nil))
(defun objects-rec (objs alist acc)
  (match objs
    (nil acc)
    ((list* obj rest)
     (objects-rec
      rest alist
      `(,obj - ,(if-let ((type (cdr (assoc obj alist))))
                        type
                        'object)
             ,@acc)))))

(defun pathname-p (path)
  (pathnamep path))

(defun write-problem (path lst)
  (match lst
    ((list* 'define (list 'problem name) _)
     (format t "~&writing problem ~a to ~a ..." name path)
     (with-open-file (s path
                        :direction :output
                        :if-exists :supersede
                        :if-does-not-exist :create)
       (write lst :stream s)))))

(let* ((paths (sort (remove-if-not
                     (lambda (path)
                       (match path
                         ((pathname- name type)
                          (and (string= type "pddl")
                               (not (string= name "domain"))))))
                     (list-directory "./"))
                    #'string< :key #'pathname-name))
       (nums (iota (length paths) :start 1)))
  (mapcar #'write-problem
          (mapcar (lambda (n) (format nil "p~2,,,'0@a.pddl" n))
                  nums)
          (mapcar #'rewrite-problem
                  (mapcar #'read-file paths)
                  nums)))
