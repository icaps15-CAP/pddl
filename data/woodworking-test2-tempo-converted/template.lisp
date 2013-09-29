(in-package :woodworking-template)
(cl-syntax:use-syntax :annot)

(defun make-it2-tempo (howmany)
  (template-by-number-tempo
   (concatenate-symbols 'wood-loop2-tempo-converted howmany)
   1 1 1
   1 1 1 1
   3 3
   howmany 3 (* 5 howmany)
   (lambda (immersion spray glazer colors)
     (labels ((pick-color (machines pair)
                (destructuring-bind (n m) pair
                  (list (nth (1- n) machines) (nth (1- m) colors))))
              (machine (machine pairs)
                (mapcar (curry #'pick-color machine) pairs)))
       (append
        (machine immersion
                 '((1 1)))
        (machine spray
                 '((1 2)))
        (machine glazer
                 '((1 3))))))
   (lambda (parts colors woods)
     @ignorable parts
     @ignorable colors
     @ignorable woods
     (iter (for p in parts)
           (appending
            `((available ,p)
              (colour ,p ,(second colors))
              (wood ,p ,(first woods))
              (surface-condition ,p rough)
              (treatment ,p varnished)
              (goalsize ,p small)
              (= (spray-varnish-cost ,p) 5)
              (= (glaze-cost ,p) 10)
              (= (grind-cost ,p) 15)
              (= (plane-cost ,p) 10)))))
   (lambda (parts colors woods)
     @ignorable parts
     @ignorable colors
     @ignorable woods
     (iter (for p in parts)
           (appending
            `((colour ,p ,(first colors))
              (available ,p)
              (surface-condition ,p verysmooth)))))
   (lambda (boards woods boardsizes)
     @ignorable boards
     @ignorable woods
     @ignorable boardsizes
     (iter (for b in boards)
           (for i from 0)
           (appending
            `((wood ,b ,(nth i woods))
              (surface-condition ,b rough)
              (available ,b)))))))

(iter (for n in '(1 4 16 64 256 1024))
      (write-it "wood-test-tempo" #'make-it2-tempo n))