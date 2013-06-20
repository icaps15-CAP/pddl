#|
  This file is a part of pddl project.
  Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage pddl-test
  (:use :cl
	:iterate
        :pddl
        :fiveam))
(in-package :pddl-test)

(defun data (name)
  (merge-pathnames
   name
   (asdf:system-relative-pathname :pddl "data/")))

(defvar +eight02+ "eight02.pddl")
(defvar +domain+ "domain.pddl")
(print (data +eight02+))
(print (data +domain+))

(def-suite :pddl)
(in-suite :pddl)

(defvar domain)

(test parse-stream-success
  (finishes
    (with-open-file (s (data +eight02+))
       (parse-stream s))))

(test parse-success
  (finishes (setf domain (parse-file (data +domain+)))))

(test (accessors :depends-on parse-success)
  (is (null (requirements domain)))
  (is (null (types domain)))
  (is (not (null (predicates domain))))
  (is (null (constants domain)))
  (is (null (functions domain)))
  (is (= 5 (length (actions domain)))))

(test (actions :depends-on accessors)
  (is (= 5 (length (actions domain))))
  (let ((a (action domain :drive)))
    (is (eq '(:action drive
	      :parameters ( ?x ?y ?z)
	      :precondition
	      (and (truck ?x) (place ?y) (place ?z)  (at ?x ?y))
	      :effect
	      (and (at ?x ?z) (not (at ?x ?y))))
	    a))
    (is (= 3 (arity a)))
    (is (eql '(?x ?y ?z)
	     (parameters a)))
    (is (eql '(and (truck ?x) (place ?y) (place ?z)  (at ?x ?y))
	     (precondition a)))
    (is (eql '(and (at ?x ?z) (not (at ?x ?y)))
	     (effect a)))
    (is (eql '((at ?x ?y))
	     (delete-list a)))
    (is (eql '((at ?x ?z))
	     (add-list a)))
    (is-true (valid a))))


(run! :pddl)