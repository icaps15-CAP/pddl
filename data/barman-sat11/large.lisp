(ql:quickload :iterate)
(ql:quickload :inferior-shell)
(use-package :iterate)
(use-package :inferior-shell)
(iter (for cocktail from 61 to 200 by 5)
      (for ingredients = 4)
      (for shots = cocktail)
      (for num from 41)
      (run
       (format nil "python barman-generator.py ~a ~a ~a > large-~a-~a-~a-~a.pddl"
               cocktail
               ingredients
               shots
               cocktail
               ingredients
               shots
               num)
       :show t))

(exit)

