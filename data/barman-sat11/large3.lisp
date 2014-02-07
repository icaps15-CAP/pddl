(ql:quickload :iterate)
(ql:quickload :inferior-shell)
(use-package :iterate)
(use-package :inferior-shell)
(iter (for cocktail from 60 to 100 by 5)
      (for ingredients = 4)
      (for shots = (floor (* 1.3 cocktail)))
      (for path = (format nil "python barman-generator.py ~a ~a ~a > large3-~a-~a-~a.pddl"
                          cocktail
                          ingredients
                          shots
                          cocktail
                          ingredients
                          shots))
      (run path :show t))

(exit)

