
(in-package :woodworking-template)
(cl-syntax:use-syntax :annot)

(defun satellite (howmany)
  (let ((name (concatenate-symbols 'satellite-typed-loop howmany))
        (directions   (many-objects howmany 'direction))
        (modes        (many-objects 9 'mode))
        (instruments
         (list (many-objects 3 's0-instrument)
               (many-objects 3 's1-instrument)
               (many-objects 3 's2-instrument)))
        (satellites   (many-objects 3 'satellite)))
  `(define (problem ,name)
       (:domain satellite-typed)
     (:objects ,@directions - direction
               ,@modes - mode
               ,@(reduce #'append instruments) - instrument
               ,@satellites - satellite)
     (:init ,@(iter outer
                    (for s in satellites)
                    (collecting `(pointing ,s ,(first directions)))
                    (collecting `(power_avail ,s))
                    (for is in instruments)
                    (iter (for i in is)
                          (in outer
                              (collecting `(on_board ,i ,s))
                              (collecting `(calibration_target ,i ,(first directions))))))
            ,@(iter outer
                    (for i in (reduce #'append instruments))
                    (for m in modes)
                    (collecting `(supports ,i ,m))))
     (:goal
      (and ,@(iter outer
                   (for d in directions)
                   (iter (for m in modes)
                         (in outer (collecting `(have_image ,d ,m))))))))))

;; execution

(iter (for n in '(1 2 4 16 64 256 1024))
      (write-it "satellite-loop" #'satellite n))