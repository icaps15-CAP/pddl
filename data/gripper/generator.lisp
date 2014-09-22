;(require :pddl.builder)

(in-package :pddl.builder)

(defun gripper-form (i)
  `(define (problem ,(gripper-probname i))
      (:domain gripper-strips)
    (:objects rooma - room
              roomb - room
              ,@(object-balls i)
              left - gripper
              right - gripper)
    (:init
     (at-robby rooma)
     (free left)
     (free right)
     ,@(init-balls i))
    (:goal
     (and ,@(goal-balls i)))))

(defun gripper-probname (i)
  (concatenate-symbols 'gripper i))
(defun ball (i)
  (concatenate-symbols 'ball i))

(defun object-balls (i)
  (iter (for j from 0 to i)
        (appending
         `(,(ball j) - ball))))
(defun init-balls (i)
  (iter (for j from 0 to i)
        (collecting
         `(at ,(ball j) rooma))))
(defun goal-balls (i)
  (iter (for j from 0 to i)
        (collecting
         `(at ,(ball j) roomb))))

(defun write-gripper ()
  (iter (for i from 500 to 10000 by 500)
        (for path = (format nil "p~2,,,'0@a.pddl" i))
        (print path)
        (with-open-file (s path
                           :direction :output
                           :if-does-not-exist :create
                           :if-exists :supersede)
          (pprint-pddl (gripper-form i) s))))


