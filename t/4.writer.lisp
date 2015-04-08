(in-package :pddl.test)
(in-suite :pddl)

(defun test-re-readability (pddl)
  (terpri)
  (finishes
    (print-pddl-object pddl *standard-output*)
    (eval
     (read-from-string
      (with-output-to-string (s)
        (let ((copied (shallow-copy pddl :name (symbolicate (name pddl) '-copied))))
          (print-pddl-object copied s)))))))


(test (write-back-pddl :depends-on (and parse-domain parse-problem costs logistics))
  (mapc #'test-re-readability
        (list depot
              depotprob1818
              logistics
              logistics-prob
              logistics-typed-cost
              logistics-typed-cost-prob)))
