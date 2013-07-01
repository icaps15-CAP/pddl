(in-package :pddl-test)
(in-suite :pddl)

(test (accessors :depends-on parse-success)
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
	((list 'and
	       (type pddl-predicate)
	       (list 'not (type pddl-predicate)))
	 nil)))
    (is (= 1 (length (delete-list a))))
    (is (= 1 (length (add-list a))))))

;; (test (appliable :depends-on (and actions predicate))
;;   (let ((a (action depot :drive)))
;;     (is (appliable 
