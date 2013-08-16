
(defsystem pddl.builder
  :version "0.1"
  :author "guicho"
  :license "LLGPL"
  :depends-on (:aflab1
	       :guicho-utilities
               :iterate
               :alexandria)
  :components ((:module "data/costs"
		:serial t
                :components
                ((:file :make-distances)
		 (:file :model2a)
		 (:file :model2b))))
  :description "PDDL writer")
