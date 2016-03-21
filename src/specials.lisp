(in-package :pddl)
(cl-syntax:use-syntax :annot)

@export
(defvar *domain*)
(setf (documentation '*domain* 'variable)
      "the domain currently parsing now. only used during the parsing,
do not use it to store a specific variable.
The consequence is undefined if the value changes during the parsing.")

@export
(defvar *problem*)
(setf (documentation '*problem* 'variable)
      "the problem currently parsing. only used during the parsing,
do not use it to store a specific variable.
The consequence is undefined if the value changes during the parsing.")

@export
@doc "the parameters in the action currently parsing.
only used during the parsing, do not use it to store a specific variable.
The consequence is undefined if the value changes during the parsing."
(defvar *params* nil)
