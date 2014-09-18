
(in-package :pddl.builder)

(defun make-bases (basenum)
  (iter (for i below basenum)
        (collect
            (concatenate-symbols 'b i))))

(defun print-list (lst)
  (dolist (r lst lst)
    (print r)))
(defun make-reachable (arms positions)
  (map-product (lambda (arm position)
		 `(is-reachable ,arm ,position))
	       (ensure-list arms)
	       (ensure-list positions)))

(defun make-dists (position-tree)
  (multiple-value-bind (a index-hash)
      (%get-costs
       (%get-adjacency position-tree)
       (remove-duplicates (flatten position-tree)))
    (%build-dists a index-hash)))

(defclass symbol-node (unit-cost-node)
  ((sym :type symbol :initarg :sym :accessor sym)))

(defmethod print-object ((n symbol-node) s)
  (print-unreadable-object (n s :type t)
    (format s "~w ~w" :sym (sym n))))

(defmethod generic-eq ((s1 symbol-node) (s2 symbol-node))
  (eq (sym s1) (sym s2)))

(defmethod heuristic-cost-between ((s1 symbol-node) (s2 symbol-node))
  0 ;; dijkstra search
  )

(defmethod generate-nodes ((s symbol-node))
  nil)

(defun %get-costs (adjacencies positions)
  (let ((a (make-array (list (length positions)
			     (length positions))
		       :element-type 'fixnum))
	(index-hash (make-hash-table)))
    (iter (for p in positions)
	  (for i from 0)
	  (setf (gethash p index-hash) i))
    (dolist (p1 positions)
      (dolist (p2 positions)
        (let ((node-hash (make-hash-table)))
          (dolist (p positions)
            (setf (gethash p node-hash)
                  (make-instance 'symbol-node :sym p)))
          (dolist (pair adjacencies)
            (destructuring-bind (p q) pair
              (connect (gethash p node-hash)
                       (gethash q node-hash))))
          (setf (aref a
                      (gethash p1 index-hash)
                      (gethash p2 index-hash))
                (multiple-value-bind (node cost)
                    (a*-search-clos (gethash p1 node-hash)
                                    (gethash p2 node-hash)
                                    :verbose nil)
                  (declare (ignore node))
                  (if cost cost
                      (progn
                        (error "Path from ~a to ~a not found!" p1 p2)
                        MOST-POSITIVE-FIXNUM)))))))
    (values a
	    index-hash
	    (sort (hash-table-alist index-hash) #'< :key #'cdr))))

(defun %build-dists (a index-hash)
  (iter
    outer
    (for (p i) in-hashtable index-hash)
    (iter (for (q j) in-hashtable index-hash)
	  (in outer
	      (collect
		  `(= (move-cost ,p ,q)
		      ,(if (= i j)
			   1000
			   (1+ (aref a i j)))))))))

(defun %get-adjacency (position-tree)
  (let ((acc nil)
        (stack nil)
        (prev nil))
    (labels ((rec (tree)
               (match tree
                 ((list* (and branch (list* first _)) rest)
                  (push first stack)
                  (rec branch)
                  (rec rest))
                 ((list* (and first (type symbol)) rest)
                  (connect first)
                  (rec rest))
                 (nil (setf prev (pop stack)))))
             (connect (now)
               (when prev
                 (push (list prev now) acc))
               (setf prev now)))
      (rec position-tree))
    acc))

(defun make-linear-jobs (jobspecs &optional
			 (lower-limit 1)
			 (upper-limit 3)
                         exclude-nothing-done)
  (let ((acc (unless exclude-nothing-done
               '((= (job-cost nothing-done) 0)))))
    (let ((prev 'nothing-done))
      (dolist (job jobspecs acc)
	 (destructuring-bind
	       (name place &optional component/s tray)
	     job
	   (push `(job-available-at ,name ,place) acc)
	   (push `(depends ,prev ,name) acc)
	   (push `(= (job-cost ,name)
		     ,(+ lower-limit
			 (let ((d (- upper-limit lower-limit)))
			   (if (plusp d) (random d) 0)))) acc)
	   (when component/s
	     (unless tray
	       (error "which is the tray for ~a ?" component/s))
             (iter (for component in (ensure-list component/s))
                   (push `(uses ,name ,component) acc)
                   (push `(at ,component ,tray) acc)))
	   (setf prev name))))))

(defun make-initial-arms (arms positions)
  (mappend
   (lambda (arm pos)
     `((free ,arm) (at ,arm ,pos) (arm-present ,pos)))
   (ensure-list arms)
   (ensure-list positions)))

(defun make-initial-bases (base-names)
  (let ((acc nil))
    (dolist (base (ensure-list base-names) (nreverse acc))
      (push `(at ,base carry-in) acc)
      (push `(finished nothing-done ,base) acc))))

(defun make-goal-bases (base-names last-job)
  (let ((acc nil))
    (dolist (base (ensure-list base-names) (nreverse acc))
      (push `(at ,base carry-out) acc)
      (push `(finished ,last-job ,base) acc))))

(defun write-models-many (fn
                          &key
                            (format-control "p~4,,,'0@a.pddl")
                            (size-list '(1 2 4 16 64 256 1024)))
  (let ((rs (make-random-state)))
    (dolist (i size-list)
      (let ((*random-state* (make-random-state rs)))
        (write-model fn
                     #'(lambda (i)
                         (format nil format-control i))
                     i)))))

(defun write-model (modelfn pathnamefn basenum)
  (with-open-file (s (merge-pathnames
                      (funcall pathnamefn basenum))
		     :direction :output
		     :if-exists :supersede
		     :if-does-not-exist :create)
    (let ((*package* (find-package :pddl.builder)))
      (pprint-pddl (funcall modelfn basenum) s))))
