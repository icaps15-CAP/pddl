(in-package :pddl.test)
(in-suite :pddl)

(test (accessors :depends-on parse-domain)
  (is (null (requirements depot)))
  (is (null (types depot)))
  (is (= 15 (length (predicates depot))))
  (is (null (constants depot)))
  (is (null (functions depot)))
  (is (= 5 (length (actions depot)))))

(test (predicate :depends-on accessors)
  (let ((p (predicate depot :at)))
    (is (typep p 'pddl-predicate))
    (is (= 2 (arity p)))))

(test (actions :depends-on accessors)
  (let ((a (action depot :drive)))
    (is (typep a 'pddl-action))
    (is (= 3 (arity a)))
    (finishes
      (ematch (effect a)
	((pddl::andp
	  (type pddl-predicate)
	  (pddl::notp (type pddl-predicate)) _)
	 nil)))
    (is (= 1 (length (delete-list a)))
	"(length (delete-list a)) should be 1,~%~
         but (delete-list a) was ~a ." (delete-list a))
    (is (= 1 (length (add-list a)))
	"(length (add-list a)) should be 1,~%~
         but (add-list a) was ~a ." (add-list a))))


(test (accessors-prob :depends-on parse-problem)
  (dolist (o (objects depotprob1818))
    (is (domain o) depot)
    (when (typep o 'pddl-object)
      (is (problem o) depotprob1818))))

(test (states :depends-on accessors-prob)
  (dolist (o (init depotprob1818))
    (is (domain o) depot)
    (is (problem o) depotprob1818)))
