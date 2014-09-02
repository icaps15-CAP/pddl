;(require :pddl.builder)

(in-package :pddl.builder)

(defun elevator-nocost-form (pname
                      counts passengers fasts slows
                      init
                      passenger-goal)

  `(define (problem ,pname)
       (:domain elevators-sequencedstrips)
     (:objects ,@counts - count
               ,@passengers - passenger
               ,@fasts  - fast-elevator
               ,@slows - slow-elevator)
     (:init ,@init)
     (:goal (and ,@passenger-goal))))

(defun elevator-nocost (floors passengers area-size)
  (assert (evenp area-size))
  (let* ((floors (1+ floors))
         (numbers (counts floors)))
    (elevator-nocost-form
     (concatenate-symbols 'elevators floors passengers)
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
                   (append ;; (distances area 'travel-slow 5 1)
                    (per-lift numbers area name 4))))
               (slows 4) (iota 4))
      ;; fast elevators
      (let ((stop (floors-to-stop numbers 0 floors (/ area-size 2))))
        (append
         (mappend (lambda (name)
                    (per-lift numbers stop name 6))
                  (fasts 4))
         #+nil
         (distances stop 'travel-fast 1 (* 3 (/ area-size 2)))))
      ;; passengers' initial positions
      (mapcar (curry #'per-passenger numbers)
              (passengers passengers)))
     (mapcar (curry #'per-passenger numbers)
             (passengers passengers)))))

;; for

(defun elevator-for-component-planner ()
  (let ((floors 40) (area-size 10))
    (iter (for passengers from 70 by 20)
          (for i from 1 to 20)
          (for path = (format nil "p~2,,,'0@a.pddl" i))
          (print path)
          (with-open-file (s path
                             :direction :output
                             :if-does-not-exist :create
                             :if-exists :supersede)
            (pprint-pddl (elevator-nocost floors passengers area-size) s)))))


;; old garbage

;; (let ((floors 40) (area-size 10))
;;   (iter (for passengers from 180 to 400 by 30)
;;         (for i from 1)
;;         (for path = (elevator-filename "xlarge" floors passengers area-size i))
;;         (print path)
;;         (with-open-file (s path
;;                            :direction :output
;;                            :if-does-not-exist :create
;;                            :if-exists :supersede)
;;           (print (elevator floors passengers area-size) s))))

;; (let ((floors 40) (area-size 10))
;;   (iter (for passengers from 70 to 150 by 5)
;;         (for i from 1)
;;         (for path = (elevator-filename "large2" floors passengers area-size i))
;;         (print path)
;;         (with-open-file (s path
;;                            :direction :output
;;                            :if-does-not-exist :create
;;                            :if-exists :supersede)
;;           (print (elevator floors passengers area-size) s))))

;; (let ((floors 40) (area-size 10))
;;   (iter (for passengers from 70 to 150 by 2)
;;         (for i from 1)
;;         (for path = (elevator-filename "large3" floors passengers area-size i))
;;         (print path)
;;         (with-open-file (s path
;;                            :direction :output
;;                            :if-does-not-exist :create
;;                            :if-exists :supersede)
;;           (print (elevator floors passengers area-size) s))))

;; (let ((floors 40) (area-size 10))
;;   (iter (for passengers from 70 to 150 by 1)
;;         (for i from 1)
;;         (for path = (elevator-filename "large3" floors passengers area-size i))
;;         (print path)
;;         (with-open-file (s path
;;                            :direction :output
;;                            :if-does-not-exist :create
;;                            :if-exists :supersede)
;;           (print (elevator floors passengers area-size) s))))

;; (exit)
