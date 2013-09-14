(in-package :pddl)
(use-syntax :annot)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; turn pddl objects into a cons so that it can be
;;;; a valid pddl problem, domain etc.
;;;;

(defvar *print-type-p* t)

@export
(defgeneric print-pddl-object (o &optional s))

(defmethod print-pddl-object :around (o &optional s)
  (if s
      (labels 
          ((rec (branch s)
             (match branch
               ((list* (and key (or :function
                                    :predicates 
                                    :init)) rest)
                (pprint-newline :mandatory s)
                (pprint-logical-block (s rest :prefix "(" :suffix ")")
                  (rec key s)
                  (pprint-newline :mandatory s)
                  (pprint-indent :block 0 s)
                  (do () (nil)
                    (rec (pprint-pop) s)
                    (pprint-exit-if-list-exhausted)
                    (write-char #\Space s)
                    (pprint-newline :mandatory s))))
               
               ((list* (and key (or :objects
                                    :constants
                                    :types
                                    :requirements
                                    :domain)) rest)
                (pprint-newline :mandatory s)
                (pprint-logical-block (s rest :prefix "(" :suffix ")")
                  (rec key s)
                  (write-char #\Space s)
                  (pprint-indent :current 0 s)
                  (do ((a (pprint-pop) (pprint-pop))
                       (p nil a)) (nil)
                    (rec a s)
                    (pprint-exit-if-list-exhausted)
                    (write-char #\Space s)
                    (when (eq p '-)
                      (pprint-newline :linear s)))))

               ((list* (and key :action) name rest)
                (pprint-newline :mandatory s)
                (pprint-logical-block (s rest :prefix "(" :suffix ")")
                  (rec key s)
                  (write-char #\Space s)
                  (rec name s)
                  (pprint-indent :block 0)
                  (pprint-newline :mandatory s)
                  (do () (nil)
                    (rec (pprint-pop) s)
                    (pprint-exit-if-list-exhausted)
                    (write-char #\Space s)
                    (rec (pprint-pop) s)
                    (pprint-exit-if-list-exhausted)
                    (write-char #\Space s)
                    (pprint-newline :mandatory s))))
               
               ((list* (and op (or "AND" "ASSIGN" "OR" "NOT")) rest)
                (pprint-logical-block (s rest :prefix "(" :suffix ")")
                  (rec op s)
                  (write-char #\Space s)
                  (pprint-indent :current 0 s)
                  (do () (nil)
                    (rec (pprint-pop) s)
                    (pprint-exit-if-list-exhausted)
                    (write-char #\Space s)
                    (pprint-newline :mandatory s))))
               
               ((list* (type atom) _)
                (pprint-logical-block (s branch :prefix "(" :suffix ")")
                  (do () (nil)
                    (rec (pprint-pop) s)
                    (pprint-exit-if-list-exhausted)
                    (write-char #\Space s)
                    (pprint-newline :fill s))))
               ((type string) (princ branch s))
               (_ (write branch :stream s)))))
        (rec (call-next-method) s))
      (call-next-method)))


(defmethod print-pddl-object ((o pddl-domain) &optional s)
  @ignore s
  `(define (domain ,(print-pddl-object (name o)))
     (:requirements ,@(requirements o))
     (:types ,@(mappend #'print-pddl-object (types o)))
     (:predicates ,@(print-pddl-object (predicates o)))
     (:constants ,@(mappend #'print-pddl-object (constants o)))
     ;; (:functions ,@(print-pddl-object (functions o)))
     ,@(mapcar #'print-pddl-object (actions o))
     ,@(mapcar #'print-pddl-object (durative-actions o))
     ,@(mapcar #'print-pddl-object (derived-predicates o))))

(defmethod print-pddl-object ((o pddl-problem) &optional s)
  @ignore s
  `(define (problem ,(print-pddl-object (name o)))
     (:domain ,(print-pddl-object (name (domain o))))
     (:objects ,@(mappend #'print-pddl-object (objects/const o)))
     (:init ,@(print-pddl-object (init o)))
     (:goal ,(print-pddl-object (goal o)))
     ,(print-pddl-object (metric o))
     ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; clauses

(defmethod print-pddl-object ((o symbol) &optional s)
  @ignore s
  (symbol-name o))

(defmethod print-pddl-object ((o list) &optional s)
  @ignore s
  (mapcar #'print-pddl-object o))

(defmethod print-pddl-object ((o namable) &optional s)
  @ignore s
  (print-pddl-object (name o)))

(defmethod print-pddl-object ((o pddl-predicate) &optional s)
  @ignore s
  `(,(print-pddl-object (name o))
     ,@(mappend #'print-pddl-object (parameters o))))

(defmethod print-pddl-object ((o pddl-atomic-state) &optional s)
  @ignore s
  (let ((*print-type-p* nil))
    (call-next-method)))

(defmethod print-pddl-object ((o pddl-function-state) &optional s)
  @ignore s
  (let ((*print-type-p* nil))
    `(= (,(print-pddl-object (name o))
          ,@(mappend #'print-pddl-object (parameters o)))
        ,(value o))))


(defmethod print-pddl-object ((o pddl-variable) &optional s)
  @ignore s
  `(,(print-pddl-object (name o))
     ,@(when (and (not (eq (type o) *pddl-primitive-object-type*))
                  *print-type-p*)
             `(- ,(print-pddl-object (name (type o)))))))

(defmethod print-pddl-object ((o pddl-assign-op) &optional s)
  @ignore s
  (%source o))

(defmethod print-pddl-object ((o pddl-action) &optional s)
  @ignore s
  `(:action ,(print-pddl-object (name o))
            :parameters ,(mappend #'print-pddl-object (parameters o))
            :precondition ,(print-pddl-object (precondition o))
            :effect ,(print-pddl-object (effect o))))

(defmethod print-pddl-object ((o pddl-actual-action) &optional s)
  @ignore s
  `(,(print-pddl-object (name o))
     ,@(mappend #'print-pddl-object (parameters o))))

(defmethod print-pddl-object ((o pddl-metric) &optional s)
  @ignore s
  `(:metric
    ,(print-pddl-object (optimization o))
    ,(print-pddl-object (metric-spec o))))

