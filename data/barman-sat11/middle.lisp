#! /usr/local/bin/sbcl --script

(load
 (merge-pathnames
             "quicklisp/setup"
             (user-homedir-pathname)))


(ql:quickload :asdf)
(ql:quickload :iterate)
(ql:quickload :inferior-shell)
(use-package :iterate)
(use-package :inferior-shell)

(defun f (start factor i)
  (floor (+ start (* factor i))))

(iter (for i from 1 to 20)
      (for cocktail = (f 46 1.25 i))
      (for ingredients = (f 4 0.3 i))
      (for shots = (f 46 (* 1.3 1.25) i))
      (for path = (format
                   nil
                   "python barman-generator.py ~a ~a ~a > p~2,,,'0@a.pddl"
                   cocktail ingredients shots i))
      (run path :show t))

(format t "~&parameters: ~{~&~a~}"
        '((for i from 1 to 20)
          (cocktail = (+ 46 (* 1.25 i)))
          (ingredients = (+ 4 (* 0.3 i)))
          (shots = (+ 46 (* 1.3 1.25 i)))))

(exit)

