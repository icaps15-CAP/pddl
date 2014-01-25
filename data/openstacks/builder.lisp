(require :pddl.builder)
(in-package :pddl.builder)

(defun make-prefixed-sym (prefix n)
  (intern (format nil "~a~a" prefix n)))
(defun make-prefixed-syms (prefix n)
  (mapcar (curry #'make-prefixed-sym prefix) (iota n)))

(defun ordering (nums)
  (iter (for n1 in nums)
        (for n0 previous n1)
        (when n0
          (collect `(next-count ,n0 ,n1)))))

(defun compute-inclusion (o-p-array orders products)
  (let (relations)
    (with-iter-array (bool i j) o-p-array
      (when bool
        (let ((o (nth i orders))
              (p (nth j products)))
          (push `(includes ,o ,p) relations)
          (push `(required-order-not-checked ,o ,p) relations)
          (push `(required-product-not-checked ,o ,p) relations))))
    (nreverse relations)))


(defun compute-counts (o-p-array orders products nums)
  (let ((o-count-for-each-p (make-list (length products) :initial-element 0))
        (p-count-for-each-o (make-list (length orders) :initial-element 0)))
    (with-iter-array (bool i j) o-p-array
      (when bool
        ;; ith order contains jth product
        (incf (nth i p-count-for-each-o))
        (incf (nth j o-count-for-each-p))))
    
    (append (mapcar (lambda (p c)
                      `(howmany-orders-not-started ,p ,(nth c nums)))
                    products o-count-for-each-p)
            (mapcar (lambda (p c)
                      `(howmany-products-not-made ,p ,(nth c nums)))
                    orders p-count-for-each-o))))


(defun openstacks-template (o-p-array)
  (ematch (array-dimensions o-p-array)
    ((list orders-num products-num)
     (let ((nums (make-prefixed-syms "N" (1+ orders-num))))
       (let ((orders (make-prefixed-syms "O" orders-num))
             (products (make-prefixed-syms "P" products-num)))
         `(define (problem openstacks)
              (:domain openstacks)
            (:objects ,@nums - count
                      ,@orders - order
                      ,@products - product)
            (:init
             (stacks-avail n0)
             ,@(ordering nums)
             ,@(mapcar (lambda (o) `(waiting ,o)) orders)
             ,@(mapcar (lambda (p) `(not-made ,p)) products)
             ,@(compute-inclusion o-p-array orders products)
             ,@(compute-counts o-p-array orders products nums)
             (= (total-cost) 0))
            (:goal
             (and
              ,@(mapcar (lambda (o) `(shipped ,o)) orders)))
            (:metric minimize (total-cost))))))))

(declaim (ftype (function (fixnum fixnum &optional (float 0.0 1.0))
                          (array boolean (* *)))
                o-p-array))
(defun o-p-array (orders products &optional (ratio 0.5))
  (assert (< 0.0 ratio 1.0))
  (let ((a (make-array (list orders products) :initial-element nil)))
    (with-iter-array (bool i j) a
      (when (< (random 1.0) ratio)
        (setf bool t)))
    a))

(defun model-openstacks (size)
  (let ((products (+ 20 (* 10 (1- size)))))
    (openstacks-template
     (o-p-array products products
                (float (* 1.5 (/ size products)))))))


(defun write-all-openstacks ()
  (write-models-many #'model-openstacks
                     :format-control "p~2,,,'0@a.pddl"
                     :size-list (iota 40 :start 1)))
