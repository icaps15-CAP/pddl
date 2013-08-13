
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

;; preserve tree structure
(defun make-dists (position-tree)
  (walk-tree
   (let ((prev nil))
     (lambda (branch cont)
       (if prev
	   (typecase branch
	     (list
	      (list*
	       (make-adjacency (first prev) (car branch))
	       (prog2
		   (push (car branch) prev)
		   (funcall cont (cdr branch))
		 (pop prev))))
	     (symbol
	      (prog1 
		  (make-adjacency (first prev) branch)
		(setf (car prev) branch))))
	   ;; first layer
	   (typecase branch
	     (list
	      (prog2
		  (push (car branch) prev)
		  (funcall cont (cdr branch))
		(pop prev)))
	     (symbol (error "illegal argument"))))))
   position-tree))

(defun make-dists2 (position-tree)
  (print-list
    (%add-many-costs
     (%get-adjacency position-tree)
     (remove-duplicates (flatten position-tree)))))

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



(defun %add-many-costs (adjacencies positions)
  (let ((acc-yes nil)
	(acc-no nil))
    (map-combinations
     (lambda (rest)
       (if (or (find rest adjacencies :test #'equalp)
	       (find (reverse rest) adjacencies :test #'equalp))
	   (appendf acc-yes (apply #'make-adjacency rest))
	   (appendf acc-no
		    (apply #'make-non-adjacency rest)
		    (apply #'make-non-adjacency (reverse rest)))))
     positions :length 2)
    (dolist (p positions (append acc-yes acc-no))
      (appendf acc-no (make-non-adjacency p p)))))

(defun make-adjacency (a b)
  (let ((dist (1+ (random 4))))
    (list `(= (move-cost ,a ,b) ,dist)
	  `(= (move-cost ,b ,a) ,dist)
	  `(adjacent ,a ,b)
	  `(adjacent ,b ,a))))

(defun make-non-adjacency (a b)
  (list `(= (move-cost ,a ,b) 1000)))

(defun make-linear-jobs (jobspecs)
  (let ((acc '((= (job-cost nothing-done) 0))))
    (print-list
     (let ((prev 'nothing-done))
       (dolist (job jobspecs (nreverse acc))
	 (destructuring-bind
	       (name place &optional component tray)
	     job
	   (push `(job-available-at ,name ,place) acc)
	   (push `(depends ,prev ,name) acc)
	   (push `(= (job-cost ,name) ,(+ 10 (random 30))) acc)
	   (when component
	     (push `(uses ,name ,component) acc)
	     (when tray
	       (push `(at ,component ,tray) acc)))
	   (setf prev name)))))))

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