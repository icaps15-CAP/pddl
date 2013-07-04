(in-package :pddl)
(use-syntax :annot)

@export
@doc "the domain currently parsing now. only used during the parsing,
do not use it to store a specific variable.
The consequence is undefined after setf operation."
(defvar *domain* nil)

@export
@doc "the problem currently parsing. only used during the parsing,
do not use it to store a specific variable.
The consequence is undefined after setf operation."
(defvar *problem* nil)

@export
@doc "the parameters in the action currently parsing.
only used during the parsing, do not use it to store a specific variable.
The consequence is undefined after setf operation."
(defvar *params* nil)