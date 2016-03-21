#|
  This file is a part of pddl project.
  Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage pddl.test
  (:use :cl
	:guicho-utilities
	:alexandria
	:iterate
	:trivia
        :pddl
        :fiveam)
  (:shadow :place)
  (:shadowing-import-from :pddl :maximize :minimize))
