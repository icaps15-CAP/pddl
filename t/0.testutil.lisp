(in-package :pddl.test)

(defun data (name)
  (merge-pathnames
   name (asdf:system-relative-pathname :pddl "t/")))

(defparameter +problem+ (data "depot/pfile1"))
(defparameter +domain+ (data "depot/domain.pddl"))
(defparameter +plan+ (data "depot/pfile1.plan.1"))

(def-suite :pddl)

(defvar *domain-sym*)
(defvar *problem-sym*)
(defvar *actions*)
(defvar *depot-actions*)
(defvar *plan*)
(defvar *env*)
