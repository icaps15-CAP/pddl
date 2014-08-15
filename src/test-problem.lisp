(in-package :pddl)
(cl-syntax:use-syntax :annot)

;;;; wrapper functions

(defun ulimit (rlimit)
  (case rlimit
    ((:infinity) "unlimited")
    (t rlimit)))

@export
(defun wrap-option (string)
  (format nil "~{\"~a\" ~}" (split " " string)))

;;;; parameters

(defparameter *fd-dir* (pathname-as-directory #p"~/repos/downward"))
@export
(defparameter *opt-options* (wrap-option "--search astar(lmcut())"))
@export
(defparameter *lama-options* (wrap-option "ipc seq-sat-lama-2011"))
@export
(defparameter *fd-options* *lama-options*)
(defvar *translate* (merge-pathnames "src/translate/translate.py" *fd-dir*))
(defvar *preprocess* (merge-pathnames "src/preprocess/preprocess" *fd-dir*))
(defvar *search* (merge-pathnames "src/search/downward" *fd-dir*))
(defvar *system*
  (pathname-as-directory 
   (asdf:system-source-directory :pddl)))
(defparameter *test-problem*
  (merge-pathnames "planner-scripts/test-problem.sh" *system*))

;; in order to make it work on 32bit systems
@export
(defparameter *memory-limit*
  #+X86
  :infinity ;MOST-POSITIVE-FIXNUM
  #+X86-64
  (rlimit +rlimit-address-space+))
@export
(defparameter *soft-time-limit*
  #+X86
    :infinity ;MOST-POSITIVE-FIXNUM
  #+X86-64
  (rlimit +rlimit-cpu-time+))
@export
(defparameter *hard-time-limit*
  #+X86
  :infinity ;MOST-POSITIVE-FIXNUM
  #+X86-64
  (rlimit +rlimit-cpu-time+))

;;;; helpers

@export
(define-condition plan-not-found (warning)
  ((problem-path :initarg :problem-path)
   (domain-path :initarg :domain-path))
  (:report (lambda (c s)
             (with-slots (problem-path domain-path) c
                (format s "Failed to find a plan! ~a ~a"
                        problem-path domain-path)))))

;; http://www.ymeme.com/slurping-a-file-common-lisp-83.html
(defun slurp (stream)
  (let ((seq (make-array (file-length stream)
                         :element-type 'character
                         :fill-pointer t)))
    (setf (fill-pointer seq) (read-sequence seq stream))
    seq))

(defun read-file (path)
  (with-input-from-file (s path)
    (slurp s)))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defun pathname-p (path)
    "defined for optima matcher"
    (pathnamep path)))

(declaim (ftype (function ((or pathname string) string) real)
                elapsed-time max-memory))

(defun elapsed-time (problem kind)
  "Parse the log file and extract the elapsed time in seconds"
  (ematch (pathname problem)
    ((pathname- name directory)
     (handler-case
         (or (register-groups-bind (user-in-seconds)
                 ("user ([.0-9]*)"
                  (read-file
                   (make-pathname
                    :type "log"
                    :directory directory
                    :name (concatenate 'string name "." kind))))
               (if user-in-seconds
                   (read-from-string user-in-seconds)
                   -1))
             -1)
       (error (c)
         (declare (ignore c))
         -1)))))

(defun max-memory (problem kind)
  "Parse the log file and extract the elapsed time in kB"
  (ematch (pathname problem)
    ((pathname- name directory)
     (handler-case
         (or (register-groups-bind (user-in-seconds)
                 ("maxmem ([.0-9]*)"
                  (read-file
                   (make-pathname
                    :type "log"
                    :directory directory
                    :name (concatenate 'string name "." kind))))
               (if user-in-seconds
                   (read-from-string user-in-seconds)
                   -1))
             -1)
       (error (c)
         (declare (ignore c))
         -1)))))

(defun no-solution (problem)
  "Parse the log file and extract if there is no solution"
  (ematch (pathname problem)
    ((pathname- name directory)
     (let ((log (make-pathname
                 :type "log"
                 :directory directory
                 :name (concatenate 'string name "." "search"))))
       (if (probe-file log)
           (values (scan "Completely explored state space -- no solution"
                         (read-file log)) t)
           (values nil nil))))))

;;;; main function

(declaim (ftype (function ((or string pathname)
                           (or string pathname)
                           &key
                           (:stream stream)
                           (:error stream)
                           (:options string)
                           (:verbose boolean)
                           (:memory (or integer keyword))
                           (:time-limit (or integer keyword))
                           (:hard-time-limit (or integer keyword)))
                          (values list real real real real real real
                                  boolean))
                test-problem))

@export
(defun test-problem (problem
                     domain
                     &key
                       (stream *standard-output*)
                       (error *error-output*)
                       (options *fd-options*)
                       verbose
                       (memory *memory-limit*)
                       (time-limit *soft-time-limit*)
                       (hard-time-limit *hard-time-limit*))
  "Runs test-problem.sh with the following arguments.

  problem, domain : the pathnames of pddl files.
  options : a string which will be the search and heuristic options to downward.
  memory : number[kByte], given to ulimit -m
  time-limit : number[sec.], given to ulimit -t

returns:
  a list of pathnames of plan files
  elapsed-times of translate, preprocess, search
  max-memory of translate, preprocess, search,
  and finally a boolean, which tells if the problem is negatively proven.
"
  (let ((problem (pathname problem))
        (domain (pathname domain)))
    (when verbose (fresh-line))
    (let ((process
           (sb-ext:run-program
            *test-problem*
            (let ((*print-case* :downcase))
              (mapcar #'princ-to-string
                      `(,@(when verbose `(-v))
                          -m ,(ulimit memory)
                          -t ,(ulimit time-limit)
                          "-T" ,(ulimit hard-time-limit)
                          -o ,options
                          ,problem ,domain)))
            :wait nil :output stream :error error)))
      (unwind-protect
           (sb-ext:process-wait process t)
        (when (sb-ext:process-alive-p process)
          (sb-ext:process-kill process 15)
          (when verbose
            (format t "~&Sending signal 15 to the test-problem process...")))))
    (handler-case
      (values
       (sort (block nil
               (run `(pipe (find ,(pathname-directory-pathname problem)
                                 -maxdepth 1
                                 -mindepth 1)
                           (grep (,(pathname-name problem) .plan)))
                    :show verbose
                    :output :lines
                    :on-error (lambda (c)
                                (declare (ignore c))
                                (warn 'plan-not-found
                                      :problem-path problem
                                      :domain-path domain)
                                (return nil))))
             #'string>) ; best one first
       (elapsed-time problem "translate")
       (elapsed-time problem "preprocess")
       (elapsed-time problem "search")
       (max-memory problem "translate")
       (max-memory problem "preprocess")
       (max-memory problem "search")
       (multiple-value-bind (no-solution find-log)
           (no-solution problem)
         (and no-solution find-log)))
    (file-error (c)
      (format error " Planning failed, File ~a not found!"
              (file-error-pathname c))
      (values nil 0 0 0 0 0 0 nil)))))

