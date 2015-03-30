#|
  This file is a part of pddl project.
  Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage pddl.test-asd
  (:use :cl :asdf))
(in-package :pddl.test-asd)

(defsystem pddl.test
  :author "guicho"
  :license "LLGPL"
  :depends-on (:pddl
               :fiveam)
  :pathname "t/"
  :serial t
  :components
  ((:file :0.package)
   (:file :0.testutil)
   (:file :1.parse)
   (:file :2.accessors)
   (:file :3.matcher)
   (:file :4.writer)
   (:file :5.costs)
   (:file :6.ground-actions)
   (:module "compatibility-tools"
            :components
            ((:file :remove-costs)
             (:file :untype)))))
