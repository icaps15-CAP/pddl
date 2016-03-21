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
               :trivia
               :function-cache
               :iterate
               :alexandria
               :cl-syntax-annot)
  :components ((:module "src"
		:serial t
                :components
                ((:file :pddl)
		 (:file :specials)
		 (:file :generics)
		 (:file :helper)
		 
		 (:file :domain-class)
		 (:file :problem-class)
		 (:file :equality)
		 (:file :parsers)
                 (:file :grounds)
		 
		 (:file :domain-parser)
		 (:file :problem-parser)
		 (:file :bootstrap)

		 (:file :numbers)
		 (:file :fluent-compiler)
                 (:module "compatibility-tools"
                          :components
                          ((:file :remove-costs)
                           (:file :add-costs)
                           (:file :untype)))
                 
		 (:file :plan-reader)
                 (:file :simulator)

                 (:file :ground-cost) ;; depends on plan-reader
		 
		 (:file :applicability)
		 (:file :apply-action)

		 (:file :printers)
		 (:file :output)
                 
                 (:file :write-pddl)
                 (:file :write-plan))))
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
  :in-order-to ((test-op (load-op :pddl.test))))


(defmethod asdf:perform ((op asdf:test-op)
			 (system (eql (asdf:find-system :pddl))))
  (funcall (find-symbol "RUN!" (find-package :fiveam)) :pddl)
  t)
