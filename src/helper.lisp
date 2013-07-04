(in-package :pddl)
(use-syntax :annot)

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


(export '(orp andp notp op impliesp forallp existsp whenp))
