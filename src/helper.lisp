(in-package :pddl)
(cl-syntax:use-syntax :annot)

@export
(defun not-implemented (what)
  (error "~A not implemented yet." what))


(defpattern qor (&rest syms)
  `(or ,@(mapcar (lambda (sym) `(quote ,sym)) syms)))

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


(defpattern var (name type)
  `(pddl-variable
    :name ,name
    :type ,type))

(defpattern predicate (name &rest rest)
  `(pddl-predicate
    :name ,name
    :parameters
    (list ,@(mapcar (lambda (varspec)
                      (match varspec
                        ((list* (and obj (not 'quote)) args)
                         `(and ,obj (pddl-variable ,@args)))
                        (_ `(pddl-variable :name ,varspec))))
                    rest))))

(defpattern state (name &rest rest)
  `(pddl-atomic-state
    :name ,name
    :parameters
    (list ,@(mapcar (lambda (varspec)
                      (match varspec
                        ((list* (and obj (not 'quote)) args)
                         `(and ,obj (pddl-object ,@args)))
                        (_ `(pddl-object :name ,varspec))))
                    rest))))



(export '(op orp andp notp
          qor
          impliesp forallp existsp whenp
          var predicate state))


(export '(forall exists implies))
(export '(maximize minimize))

@export
(defun intern-variable (&optional c)
  (invoke-restart 'intern-variable))

