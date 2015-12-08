(in-package :pddl)
(cl-syntax:use-syntax :annot)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; turn pddl objects into a cons so that it can be
;;;; a valid pddl problem, domain etc.
;;;;

(defvar *action-definition-environment* nil
  "A local special variable that determines either the current branch should
  be printed as an action, or as an init definition. In the action
  definitions it should be true. for example, a function-state is printed
  like (increase (distance a b) 5). When NIL, the same function-state is
  printed like (= 5 (distance a b)). ")

(defvar *variable-definition-environment* nil
  "A local special variable that determines if a variable should be printed
  with a type e.g. `` ?X - depot ''.")

(defgeneric print-pddl-object (o &optional s))

(defun pprint-pddl (tree s)
  (labels 
      ((rec (branch s)
         (match branch
           (nil ;; do nothing
            (princ "()" s))
           ((list* (and key (or :functions
                                :predicates 
                                :init)) rest)
            (pprint-newline :mandatory s)
            (if rest
                (pprint-logical-block (s rest :prefix "(" :suffix ")")
                  (rec key s)
                  (pprint-newline :mandatory s)
                  (pprint-indent :block 0 s)
                  (do () (nil)
                    (rec (pprint-pop) s)
                    (pprint-exit-if-list-exhausted)
                    (write-char #\Space s)
                    (pprint-newline :mandatory s)))
                (format s "(:~a)" key)))
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
                   (prev nil a)) ;; prev
                  (nil)
                (when a (rec a s)) ;; do not print nil
                (pprint-exit-if-list-exhausted)
                (write-char #\Space s)
                (when (eq prev '-)
                  (pprint-newline :linear s)))))
           ((list* (and key :action) name rest)
            (pprint-newline :mandatory s)
            (pprint-logical-block (s rest :prefix "(" :suffix ")")
              (rec key s)
              (write-char #\Space s)
              (rec name s)
              (write-char #\Space s)
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
              (do ((a (pprint-pop) (pprint-pop))) (nil)
                (when a (rec a s)) ;; do not print nil
                (pprint-exit-if-list-exhausted)
                (write-char #\Space s)
                (pprint-newline :mandatory s))))
           ((list* (type atom) _)
            (pprint-logical-block (s branch :prefix "(" :suffix ")")
              (do ((popped (pprint-pop) (pprint-pop))
                   (prev nil popped))
                  (nil)
                (unless (or (eq '- popped) (eq '- prev))
                  (pprint-newline :fill s))
                (rec popped s)
                (pprint-exit-if-list-exhausted)
                (write-char #\Space s))))
           ((type string) (princ branch s))
           (_ (write branch :stream s)))))
    (rec tree s)))

(defmethod print-pddl-object :around ((o pddl-domain) &optional s)
  (if s
      (progn (pprint-pddl (call-next-method) s)
             (terpri s))
      (call-next-method)))

(defun %output-when (keyword list)
  (when list `((,keyword ,@list))))

(defmacro with-variable-definition-environment (&body body)
  `(let ((*variable-definition-environment* t))
     ,@body))

(defmethod print-pddl-object ((o pddl-domain) &optional s)
  @ignore s
  `(define (domain ,(print-pddl-object (name o)))
     ,@(%output-when :requirements (requirements o))
     ,@(%output-when :types (when-let ((it (remove *pddl-primitive-object-type* (types o))))
                              (with-variable-definition-environment
                                (mappend #'print-pddl-object it))))
     ,@(%output-when :constants (when-let ((it (constants o)))
                                  (with-variable-definition-environment
                                    (mappend #'print-pddl-object it))))
     ,@(%output-when :predicates (when-let ((it (predicates o)))
                                   (with-variable-definition-environment
                                     (print-pddl-object it))))
     ,@(%output-when :functions (when-let ((it (functions o)))
                                  (with-variable-definition-environment
                                    (mapcar #'print-pddl-object it))))
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
     (:objects ,@(when-let ((it (objects/const o)))
                   (with-variable-definition-environment
                     (mappend #'print-pddl-object it))))
     (:init ,@(when-let ((it (init o)))
                (print-pddl-object it)))
     (:goal ,(print-pddl-object (goal o)))
     ,@(when-let ((m (metric o)))
                 `(,(print-pddl-object m)))
     ))

(defmethod print-pddl-object ((o pddl-plan) &optional s)
  (let ((*print-escape* nil))
    (format s "~{~a~%~}"
            (ematch o
              ((pddl-plan actions)
               (reduce #'cons actions
                       :key #'print-pddl-object
                       :from-end t
                       :start 1
                       :end (1- (length actions))
                       :initial-value nil))))))

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
  (call-next-method))

(defmethod print-pddl-object ((o pddl-function-state) &optional s)
  @ignore s
  (if *action-definition-environment*
      ;; in the action definition it should be true
      ;; e.g. (and (increase (distance ?a ?b) 5)...)
      `(,(print-pddl-object (name o))
         ,@(mappend #'print-pddl-object (parameters o)))
      `(= (,(print-pddl-object (name o))
            ,@(mappend #'print-pddl-object (parameters o)))
          ,(value o))))


(defmethod print-pddl-object ((o pddl-variable) &optional s)
  @ignore s
  `(,(print-pddl-object (name o))
     ;; corner case: (at obj - object pos - position)
     ;;In this case, it is not reasonable to omit "- object"
     ,@(when *variable-definition-environment*
         `(- ,(print-pddl-object (name (type o)))))))

(defmethod print-pddl-object ((o pddl-assign-op) &optional s)
  @ignore s
  `(increase ,(print-pddl-object (place o))
             ,(print-pddl-object (increase o))))

(defmethod print-pddl-object ((o pddl-action) &optional s)
  @ignore s
  `(:action ,(print-pddl-object (name o))
            :parameters ,(with-variable-definition-environment
                           (mappend #'print-pddl-object (parameters o)))
            :precondition ,(print-pddl-object (precondition o))
            :effect ,(let ((*action-definition-environment* t))
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

