
(defsystem pddl.builder
  :version "0.1"
  :author "guicho"
  :license "LLGPL"
  :depends-on (:eazy-a-star
	       :guicho-utilities
               :iterate
               :cl-ppcre
               :pddl
               :osicat
               :alexandria)
  :serial t
  :components ((:file "data/costs/make-distances")
               (:file "data/model2a-loop/model")
               (:file "data/model2b-loop/model")
               (:file "data/model3a-loop/model")
               (:file "data/model3b-loop/model")
               (:file "data/model3c-loop/model")
               (:file "data/model2a-each/model")
               (:file "data/model2b-each/model")
               (:file "data/mixed-eachparts/model")
               (:file "data/mixed-eachparts-noneg-nocost/model")
               (:file "data/elevators/generator")
               (:file "data/elevators/generator-nocost")
               (:file "data/satellite-typed/generator"))
  :description "PDDL writer")
