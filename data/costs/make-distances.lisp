
(require :iterate)
(require :alexandria)
(require :guicho-utilities)
(defpackage pddl.builder
  (:use :cl
	:guicho-utilities
	:iterate
	:alexandria))
(in-package :pddl.builder)

(defun print-list (lst)
  (dolist (r lst lst)
    (print r)))
(defun make-reachable (arms positions)
  (print-list
   (map-product (lambda (arm position)
		  `(reachable ,arm ,position))
		(ensure-list arms)
		(ensure-list positions))))

(defun make-dists2 (position-tree randomness)
  (%add-many-costs
   (%get-adjacency position-tree)
   (remove-duplicates (flatten position-tree))
   randomness))

(defun %get-adjacency (position-tree)
  (let ((acc nil))
    (walk-tree
     (let ((prev nil))
       (lambda (branch cont)
	 (if prev
	     (typecase branch
	       (list
		(push (list (first prev) (car branch)) acc)
		(push (car branch) prev)
		(funcall cont (cdr branch))
		(pop prev))
	       (symbol
		(push (list (first prev) branch) acc)
		(setf (car prev) branch)))
	     ;; first layer
	     (typecase branch
	       (list
		(prog2
		    (push (car branch) prev)
		    (funcall cont (cdr branch))
		  (pop prev)))
	       (symbol (error "illegal argument"))))))
     position-tree)
    acc))

(defun %add-many-costs (adjacencies positions randomness)
  (let ((acc-yes nil)
	(acc-no nil))
    (map-combinations
     (lambda (rest)
       (if (or (find rest adjacencies :test #'equalp)
	       (find (reverse rest) adjacencies :test #'equalp))
	   (appendf acc-yes (make-adjacency 
			     (first rest)
			     (second rest)
			     randomness))
	   (appendf acc-no
		    (apply #'make-non-adjacency rest)
		    (apply #'make-non-adjacency (reverse rest)))))
     positions :length 2)
    (dolist (p positions (append acc-yes acc-no))
      (appendf acc-no (make-non-adjacency p p)))))

(defun make-adjacency (a b randomness)
  (let ((dist (if (plusp randomness)
		  (1+ (random randomness)) 1)))
    (list `(= (move-cost ,a ,b) ,dist)
	  `(= (move-cost ,b ,a) ,dist)
	  `(adjacent ,a ,b)
	  `(adjacent ,b ,a))))

(defun make-non-adjacency (a b)
  (list `(= (move-cost ,a ,b) 1000)))

(defun make-linear-jobs (jobspecs &optional
			 (lower-limit 1)
			 (upper-limit 3))
  (let ((acc '((= (job-cost nothing-done) 0))))
    (let ((prev 'nothing-done))
      (dolist (job jobspecs acc)
	 (destructuring-bind
	       (name place &optional component tray)
	     job
	   (push `(job-available-at ,name ,place) acc)
	   (push `(depends ,prev ,name) acc)
	   (push `(= (job-cost ,name)
		     ,(+ lower-limit
			 (let ((d (- upper-limit lower-limit)))
			   (if (plusp d) (random d) 0)))) acc)
	   (when component
	     (push `(uses ,name ,component) acc)
	     (unless tray
	       (error "which is the tray for ~a ?" component))
	     (push `(at ,component ,tray) acc))
	   (setf prev name))))))

(defun make-initial-arms (arms positions)
  (mappend
   (lambda (arm pos)
     `((free ,arm) (at ,arm ,pos) (arm-present ,pos)))
   (ensure-list arms)
   (ensure-list positions)))

(defun make-initial-bases (base-names)
  (let ((acc nil))
    (print-list
     (dolist (base (ensure-list base-names) (nreverse acc))
       (push `(at ,base carry-in) acc)
       (push `(finished nothing-done ,base) acc)))))

(defun make-goal-bases (base-names last-job)
  (let ((acc nil))
    (print-list
     (dolist (base (ensure-list base-names) (nreverse acc))
       (push `(at ,base carry-out) acc)
       (push `(finished ,last-job ,base) acc)))))


;; ;; preserve tree structure
;; (defun make-dists (position-tree)
;;   (walk-tree
;;    (let ((prev nil))
;;      (lambda (branch cont)
;;        (if prev
;; 	   (typecase branch
;; 	     (list
;; 	      (list*
;; 	       (make-adjacency (first prev) (car branch))
;; 	       (prog2
;; 		   (push (car branch) prev)
;; 		   (funcall cont (cdr branch))
;; 		 (pop prev))))
;; 	     (symbol
;; 	      (prog1 
;; 		  (make-adjacency (first prev) branch)
;; 		(setf (car prev) branch))))
;; 	   ;; first layer
;; 	   (typecase branch
;; 	     (list
;; 	      (prog2
;; 		  (push (car branch) prev)
;; 		  (funcall cont (cdr branch))
;; 		(pop prev)))
;; 	     (symbol (error "illegal argument"))))))
;;    position-tree))

