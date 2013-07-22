#|
  This file is a part of pddl project.
  Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage pddl-test-asd
  (:use :cl :asdf))
(in-package :pddl-test-asd)

(defsystem pddl-test
  :author "guicho"
  :license "LLGPL"
  :depends-on (:pddl
               :fiveam)
  :components ((:module "t"
		:serial t
                :components
                ((:file :pddl)
		 (:file :accessors)
		 (:file :matcher)
		 (:file :writer)
		 (:file :run-test))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
