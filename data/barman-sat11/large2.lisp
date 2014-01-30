(ql:quickload :iterate)
(ql:quickload :inferior-shell)
(use-package :iterate)
(use-package :inferior-shell)
(iter (for cocktail from 92 to 111 by 1)
      (for ingredients = 4)
      (for shots = cocktail)
      (for num from 47)
      (run
       (format nil "python barman-generator.py ~a ~a ~a > large2-~a-~a-~a-~a.pddl"
               cocktail
               ingredients
               shots
               cocktail
               ingredients
               shots
               num)
       :show t))

(exit)

