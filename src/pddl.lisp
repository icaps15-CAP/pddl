#|
This file is a part of pddl project.
Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage pddl
  (:use :cl :cl-syntax :optima :alexandria :guicho-utilities
        :annot.doc :annot.eval-when
        :iterate)
  (:import-from :metatilities :defclass*)
  (:shadow :minimize :maximize))

(defpackage :pddl.universe)

(in-package :pddl)
(use-syntax :annot)
;; blah blah blah.
(package-optimize-setting 0 3 3 3)
(optimize*)

