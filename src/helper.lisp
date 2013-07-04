(in-package :pddl)
(use-syntax :annot)

@export
(defun not-implemented (what)
  (warn "~A not implemented yet." what))


(defpattern qor (&rest syms)
  `(or ,(mapcar (lambda (sym) `(quote ,sym)) syms)))

(defpattern op (operater &rest arguments)
  `(list* ,operater ,@arguments))
(defpattern andp (&rest rest)
  `(op 'and ,@rest))
(defpattern orp (&rest rest)
  `(op 'or ,@rest))
(defpattern notp (pred)
  `(op 'not ,pred _))

(defpattern impliesp (p1 p2)
  `(op 'implies ,p1 ,p2 _))

(defpattern forallp (typed-list ps)
  `(op 'forall (and ,typed-list (type list)) ,ps _))
(defpattern existsp (typed-list ps)
  `(op 'exists (and ,typed-list (type list)) ,ps _))

(defpattern whenp (cond cond-effect)
  `(op 'when ,cond ,cond-effect _))


(defpattern predicate (name &rest rest)
  `(pddl-predicate
    :name ,name
    :parameters
    (list ,@(mapcar (lambda (varspec)
		      (match varspec
			((list (and name (not 'quote)) type)
			 `(pddl-variable :name ,name :type ,type))
			(_ `(pddl-variable :name ,varspec))))
		    rest))))

(defpattern state (name &rest rest)
  `(pddl-atomic-state
    :name ,name
    :parameters
    (list ,@(mapcar (lambda (varspec)
		      (match varspec
			((list (and name (not 'quote)) type)
			 `(pddl-object :name ,name :type ,type))
			(_ `(pddl-object :name ,varspec))))
		    rest))))



(export '(orp andp notp op impliesp forallp existsp whenp predicate state))

@export
(defun intern-variable-handler (c)
  @ignore c
  (invoke-restart 'intern-variable))