(ql:quickload :iterate)
(ql:quickload :inferior-shell)
(use-package :iterate)
(use-package :inferior-shell)
(iter (for times below 16)
      (for cocktail from 180 by 15)
      (for ingredients = 4)
      (for shots = (floor (* 1.3 cocktail)))
      (for i = (1+ (mod times 4)))
      (for path = (format
                   nil
                   "python barman-generator.py ~a ~a ~a > large3-~a-~a-~a-~a.pddl"
                   cocktail
                   ingredients
                   shots
                   cocktail
                   ingredients
                   shots
                   i))
      (run path :show t))

(exit)

