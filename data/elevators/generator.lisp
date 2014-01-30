(require :pddl.builder)

(in-package :pddl.builder)

(defun elevator-form (pname
                      counts passengers fasts slows
                      init
                      passenger-goal)

  `(define (problem ,pname)
       (:domain elevators-sequencedstrips)
     (:objects ,@counts - count
               ,@passengers - passenger
               ,@fasts  - fast-elevator
               ,@slows - slow-elevator)

     (:init ,@init
            (= (total-cost) 0))
     (:goal (and ,@passenger-goal))
     (:metric minimize (total-cost))))

(defun numbered (prefix max)
  (mapcar (curry #'concatenate-symbols prefix) (iota max)))
(defun counts     (max) (numbered 'n max))
(defun passengers (max) (numbered 'p max))
(defun fasts      (max) (numbered 'fast max))
(defun slows      (max) (numbered 'slow max))

;; BUILDER> (numbered 'n 5)
;; (N-0 N-1 N-2 N-3 N-4)
;; BUILDER> (counts 5)
;; (N-0 N-1 N-2 N-3 N-4)
;; BUILDER> (passengers 5)
;; (P-0 P-1 P-2 P-3 P-4)

(defun nexts (counts)
  (iter (for n2 in counts)
        (for n1 previous n2)
        (when n1
          (collect `(next ,n1 ,n2)))))

;; BUILDER> (nexts (counts 5))
;; ((NEXT N-0 N-1) (NEXT N-1 N-2) (NEXT N-2 N-3) (NEXT N-3 N-4))

(defun above (counts)
  (iter outer
        (for (n1 . rest) on counts)
        (iter (for n2 in rest)
              (in outer (collect `(above ,n1 ,n2))))))

(defun floors-to-stop (floors
                       floor-index-min ;; number
                       floor-index-max ;; number
                       floor-index-step)
  (iter (for i
             from floor-index-min
             below floor-index-max
             by floor-index-step)
        (collect (elt floors i))))

(defun per-lift (numbers floors-to-stop name capacity)
  `(,@(mapcar (lambda (floor) `(reachable-floor ,name ,floor))
              floors-to-stop)
    (lift-at ,name ,(random-elt floors-to-stop))
    (passengers ,name ,(first numbers))
    ,@(iter (for i from 1 to capacity)
            (collect `(can-hold ,name ,(elt numbers i))))))

(defun per-passenger (floors name)
  `(passenger-at ,name ,(random-elt floors)))

(defun distances (floors kind initial-cost per-floor)
  (iter outer
        (for (n1 . rest) on floors)
        (iter (for n2 in rest)
              (for diff from 1)
              (in outer
                  (collect `(= (,kind ,n1 ,n2)
                               ,(+ initial-cost
                                   (* per-floor diff))))))))

(defun elevator (floors passengers area-size)
  (assert (evenp area-size))
  (let* ((floors (1+ floors))
         (numbers (counts floors)))
    (elevator-form (concatenate-symbols 'elevators floors passengers)
                   numbers
                   (passengers passengers)
                   (fasts 4)
                   (slows 4)
                   (append
                    (nexts numbers)
                    (above numbers)
                    ;; slow elevators
                    (mappend (lambda (name i)
                               (let ((area (subseq numbers
                                                   (* (floor floors 4) i)
                                                   (1+ (* (floor floors 4) (1+ i))))))
                                 (append (distances area 'travel-slow 5 1)
                                         (per-lift numbers area name 4))))
                             (slows 4) (iota 4))
                    ;; fast elevators
                    (let ((stop (floors-to-stop numbers 0 floors (/ area-size 2))))
                      (append
                       (mappend (lambda (name)
                                  (per-lift numbers stop name 6))
                                (fasts 4))
                       (distances stop 'travel-fast 1 (* 3 (/ area-size 2)))))
                    ;; passengers' initial positions
                    (mapcar (curry #'per-passenger numbers)
                            (passengers passengers)))
                   (mapcar (curry #'per-passenger numbers)
                           (passengers passengers)))))

(defun elevator-filename (prefix floors passengers area-size num)
  (format nil "~a-~a-~a-~a-~a.pddl"
          prefix floors passengers area-size num))

(let ((floors 40) (area-size 10))
  (iter (for passengers from 70 to 150 by 10)
        (for i from 1)
        (for path = (elevator-filename "large" floors passengers area-size i))
        (print path)
        (with-open-file (s path
                           :direction :output
                           :if-does-not-exist :create
                           :if-exists :supersede)
          (print (elevator floors passengers area-size) s))))

(let ((floors 40) (area-size 10))
  (iter (for passengers from 70 to 150 by 5)
        (for i from 1)
        (for path = (elevator-filename "large2" floors passengers area-size i))
        (print path)
        (with-open-file (s path
                           :direction :output
                           :if-does-not-exist :create
                           :if-exists :supersede)
          (print (elevator floors passengers area-size) s))))

(let ((floors 40) (area-size 10))
  (iter (for passengers from 70 to 150 by 2)
        (for i from 1)
        (for path = (elevator-filename "large3" floors passengers area-size i))
        (print path)
        (with-open-file (s path
                           :direction :output
                           :if-does-not-exist :create
                           :if-exists :supersede)
          (print (elevator floors passengers area-size) s))))

(let ((floors 40) (area-size 10))
  (iter (for passengers from 70 to 150 by 1)
        (for i from 1)
        (for path = (elevator-filename "large3" floors passengers area-size i))
        (print path)
        (with-open-file (s path
                           :direction :output
                           :if-does-not-exist :create
                           :if-exists :supersede)
          (print (elevator floors passengers area-size) s))))

(exit)