;; (require :pddl.builder)

(in-package :pddl.builder)


(defun satellites-form (pname
                       satellites instruments modes
                       stations directions)

  `(define (problem ,pname)
       (:domain satellite-typed)
     (:objects ,@satellites - satellite
               ,@instruments - instrument
               ,@modes  - mode
               ,@stations ,@directions - direction)

     (:init ,@(iter (for s in satellites)
                    (collect `(power_avail ,s))
                    (collect `(pointing ,s ,(random-elt directions))))
            ,@(iter (for i in instruments)
                    (collect `(on_board ,i ,(random-elt satellites)))
                    (collect `(calibration_target ,i ,(random-elt stations))))
            ,@(iter (for m in modes)
                    (collect `(supports ,(random-elt instruments) ,m))))
     (:goal (and ,@(iter (for d in directions)
                         (collect `(have_image ,d ,(random-elt modes))))
                 ,@(iter (for s in (safe-shuffle satellites))
                         (for n below (random (length satellites)))
                         (collect `(pointing ,s ,(random-elt directions))))))))

(defun safe-shuffle (list &rest rest &key (start 0) end)
  (declare (ignorable start end))
  (apply #'shuffle (copy-list list) rest))

(defun satellites (satellites instruments modes
                   stations directions)
  (satellites-form (concatenate-symbols 'satellite-typed
                                        's satellites
                                        'i instruments
                                        'm modes
                                        's stations
                                        'd directions)
                   (numbered 'satellite satellites)
                   (numbered 'instrument instruments)
                   (numbered 'mode modes)
                   (numbered 'station stations)
                   (numbered 'direction directions)))

(defun read-file (path)
  (with-open-file (s path)
    (read s)))

(defun analyze-problem (lst)
  (match lst
    ((list* 'define (list 'problem _)
            (alist (:objects . objects)))
     (let ((plist nil))
       (labels ((rec (objdef acc)
                  (match objdef
                    (nil plist)
                    ((list* '- type rest)
                     (appendf (getf plist type) acc)
                     (rec rest nil))
                    ((list* obj rest)
                     (rec rest (cons obj acc))))))
         (rec objects nil))))))

(defun analyze2 (path)
  (analyze-problem (read-file path)))

(defun analyze-all (dirpath)
  (iter (for p in (sort (osicat:list-directory dirpath)
                        #'string<
                        :key #'pathname-name))
        (when (and (equal "pddl" (pathname-type p))
                   (not (equal "domain" (pathname-name p))))
          (collect
              (iter (for (key . val) in (plist-alist (analyze2 p)))
                    (collect (length val)))))))

(defun write-satellites (&optional (prefix "large"))
  (iter (for n from 1 to 20)
        (for satellites from 5)
        (for instruments = (floor (* satellites (+ 2 (random 1.0)))))
        (for modes = (+ 10 (floor (* 0.3 n))))
        (for stations = 5)
        (for directions = (+ 150 (floor (* 10 (expt 2 (/ (1- n) 3))))))
        (for path = (format nil "~a-~a-~a-~a-~a-~a-~a.pddl"
                            prefix
                            satellites
                            instruments
                            modes
                            stations
                            directions
                            n))
        (print path)
        (with-open-file (s path
                           :direction :output
                           :if-does-not-exist :create
                           :if-exists :supersede)
          (print (satellites satellites
                             instruments
                             modes
                             stations
                             directions)
                 s))))