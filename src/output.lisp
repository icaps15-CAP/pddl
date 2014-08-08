(in-package :pddl)
(use-syntax :annot)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; turn pddl objects into a cons so that it can be
;;;; a valid pddl problem, domain etc.
;;;;

(defvar *print-type* t)

@export
(defgeneric print-pddl-object (o &optional s))

(defun pprint-pddl (tree s)
  (labels 
      ((rec (branch s)
         (match branch
           (nil ;; do nothing
            nil)
           ((list* (and key (or :functions
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
    (rec tree s)))

(defmethod print-pddl-object :around ((o pddl-domain) &optional s)
  (if s
      (pprint-pddl (call-next-method) s)
      (call-next-method)))

(defun %output-when (keyword list)
  (when list `((,keyword ,@list))))

(defmethod print-pddl-object ((o pddl-domain) &optional s)
  @ignore s
  `(define (domain ,(print-pddl-object (name o)))
     ,@(%output-when :requirements (requirements o))
     ,@(%output-when :types (mappend #'print-pddl-object (types o)))
     ,@(%output-when :constants (mappend #'print-pddl-object (constants o)))
     ,@(%output-when :predicates (print-pddl-object (predicates o)))
     ,@(%output-when :functions (mapcar #'print-pddl-object (functions o)))
     ;; (:functions ,@(print-pddl-object (functions o)))
     ,@(mapcar #'print-pddl-object (actions o))
     ,@(mapcar #'print-pddl-object (durative-actions o))
     ,@(mapcar #'print-pddl-object (derived-predicates o))))

(defmethod print-pddl-object :around ((o pddl-problem) &optional s)
  (if s
      (pprint-pddl (call-next-method) s)
      (call-next-method)))

(defmethod print-pddl-object ((o pddl-problem) &optional s)
  @ignore s
  `(define (problem ,(print-pddl-object (name o)))
     (:domain ,(print-pddl-object (name (domain o))))
     (:objects ,@(mappend #'print-pddl-object (objects/const o)))
     (:init ,@(print-pddl-object (init o)))
     (:goal ,(print-pddl-object (goal o)))
     ,@(when-let ((m (metric o)))
                 `(,(print-pddl-object m)))
     ))

(defmethod print-pddl-object ((o pddl-plan) &optional s)
  (let ((*print-escape* nil))
    (format s "~{~a~%~}"
            (ematch o
              ((pddl-plan actions)
               (let ((*print-type* nil))
                 (reduce #'cons actions
                         :key #'print-pddl-object
                         :from-end t
                         :start 1
                         :end (1- (length actions))
                         :initial-value nil)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; clauses

(defmethod print-pddl-object ((o symbol) &optional s)
  @ignore s
  (symbol-name o))
(defmethod print-pddl-object ((o number) &optional s)
  @ignore s
  o)

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
  (let ((*print-type* nil))
    (call-next-method)))

(defmethod print-pddl-object ((o pddl-function-state) &optional s)
  @ignore s
  (let ((*print-type* nil))
    `(= (,(print-pddl-object (name o))
          ,@(mappend #'print-pddl-object (parameters o)))
        ,(value o))))


(defmethod print-pddl-object ((o pddl-variable) &optional s)
  @ignore s
  `(,(print-pddl-object (name o))
     ;; corner case: (at obj - object pos - position)
     ;;In this case, it is not reasonable to omit "- object"
     ,@(when *print-type*
             `(- ,(print-pddl-object (name (type o)))))))

(defmethod print-pddl-object ((o pddl-assign-op) &optional s)
  @ignore s
  (mapcar #'print-pddl-object (source o)))

(defmethod print-pddl-object ((o pddl-action) &optional s)
  @ignore s
  `(:action ,(print-pddl-object (name o))
            :parameters ,(mappend #'print-pddl-object (parameters o))
            :precondition ,(let ((*print-type* nil))
                             (print-pddl-object (precondition o)))
            :effect ,(let ((*print-type* nil))
                        (print-pddl-object (effect o)))))

(defmethod print-pddl-object ((o pddl-ground-action) &optional s)
  @ignore s
  `(,(print-pddl-object (name o))
     ,@(mappend #'print-pddl-object (parameters o))))

(defmethod print-pddl-object ((o pddl-metric) &optional s)
  @ignore s
  `(:metric
    ,(print-pddl-object (optimization o))
    ,(print-pddl-object (value-form o))))

