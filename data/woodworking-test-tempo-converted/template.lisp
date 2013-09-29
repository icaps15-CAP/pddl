(in-package :woodworking-template)
(cl-syntax:use-syntax :annot)

(defun make-it-tempo (howmany)
  (template-by-number-tempo
   (concatenate-symbols 'wood-loop-tempo-converted howmany)
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
            `((unused ,p)
              (goalsize ,p medium)
              (= (spray-varnish-cost ,p) 10)
              (= (glaze-cost ,p) 15)
              (= (grind-cost ,p) 30)
              (= (plane-cost ,p) 20)))))
   (lambda (parts colors woods)
     @ignorable parts
     @ignorable colors
     @ignorable woods
     (iter (for p in parts)
           (appending
            `((available ,p)
              (surface-condition ,p smooth)
              (treatment ,p varnished)
              (wood ,p ,(first woods))
              (colour ,p ,(first colors))))))
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

(defun template-by-number-tempo (name
                           ;; objects
                           glazer
                           immersion-varnisher
                           spray-varnisher
                           planer
                           grinder
                           highspeed-saw
                           saw
                           color
                           wood
                           part
                           board
                           boardsize
                           ;; predicate
                           has-colors-fn
                           part-init-fn
                           part-goal-fn
                           board-init-fn
                           )
  (macrolet ((many (name) `(many-objects ,name ',name)))
    (let ((im (many immersion-varnisher))
          (sp (many spray-varnisher))
          (gl (many glazer))
          (co (many color))
          (pa (many part))
          (bo (many board))
          (bs (many boardsize))
          (wo (many wood)))
      (template-tempo name
              gl
              im
              sp
              (many planer)
              (many grinder)
              (many highspeed-saw)
              (many saw)
              co
              wo
              pa
              bo
              bs
              (funcall has-colors-fn im sp gl co)
              (funcall part-init-fn pa co wo)
              (funcall part-goal-fn pa co wo)
              (funcall board-init-fn bo wo bs)))))
          
(defun template-tempo (name
                 ;; objects
                 glazers
                 immersion-varnishers
                 spray-varnishers
                 planers
                 grinders
                 highspeed-saws
                 saws
                 colors
                 woods
                 parts
                 boards
                 boardsizes
                 ;; predicates
                 has-colors ; pairs of objects e.g. '((m1 green) (m1 red))
                 part-inits
                 part-goals
                 board-inits
                 )
  `(define (problem ,name)
    (:domain woodworking-loop-tempo-converted)
    (:objects ,@grinders - grinder
              ,@glazers - glazer
              ,@immersion-varnishers - immersion-varnisher
              ,@planers - planer
              ,@highspeed-saws - highspeed-saw
              ,@spray-varnishers - spray-varnisher
              ,@saws - saw
              ,@colors - acolour
              ,@woods - awood
              ,@parts - part
              ,@boards - board)
    (:init
     (grind-treatment-change varnished colourfragments)
     (grind-treatment-change glazed untreated)
     (grind-treatment-change untreated untreated)
     (grind-treatment-change colourfragments untreated)
     (is-smooth smooth)
     (is-smooth verysmooth)
     (= (total-cost) 0)
     ,@(iter (for machine in (append grinders
                                     glazers
                                     immersion-varnishers
                                     planers
                                     highspeed-saws
                                     spray-varnishers
                                     saws))
             (collect `(idle ,machine)))
     
     ,@(iter (for pair in has-colors)
             (collect `(has-colour ,@pair)))
     ,@(iter (for hsaw in highspeed-saws)
             (collect `(empty ,hsaw)))
     ,@part-inits
     ,@board-inits
     )
    (:goal
     (and
      ,@part-goals
      )
     )
    (:metric minimize (total-cost))
    ))

(iter (for n in '(1 4 16 64 256 1024))
      (write-it "wood-test-tempo" #'make-it-tempo n))