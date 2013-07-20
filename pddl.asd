#|
  This file is a part of pddl project.
  Copyright (c) 2013 guicho (guicho2.71828@gmail.com)
|#

#|
  PDDL parser

  Author: guicho (guicho2.71828@gmail.com)
|#

(in-package :cl-user)
(defpackage pddl-asd
  (:use :cl :asdf))
(in-package :pddl-asd)

(defsystem pddl
  :version "0.1"
  :author "guicho"
  :license "LLGPL"
  :depends-on (:guicho-utilities
	       :metatilities
               :fiveam
               :optima
               :iterate
               :alexandria
               :cl-syntax-annot
               :anaphora)
  :components ((:module "src"
		:serial t
                :components
                ((:file :pddl)
		 (:file :specials)
		 (:file :generics)
		 (:file :helper)
		 (:file :equality)
		 (:file :parsers)
		 (:file :numbers)
		 
		 (:file :domain-class)
		 (:file :problem-class)
		 (:file :domain-parser)
		 (:file :problem-parser)
		 (:file :bootstrap)
		 
		 (:file :plan-reader)
		 
		 (:file :appliability)
		 (:file :apply-action)
		 (:file :goal-check)

		 (:file :printers)
		 (:file :output))))
  :description "PDDL parser"
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.markdown"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (load-op pddl-test))))
