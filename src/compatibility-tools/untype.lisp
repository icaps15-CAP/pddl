#|
  This file is a part of pddl project.
  Copyright (c) 2015 Masataro Asai (guicho2.71828@gmail.com)
|#

;; (in-package :cl-user)
;; (defpackage pddl.untype
;;   (:use :cl :optima :alexandria :iterate :pddl :guicho-utilities)
;;   (:shadow :pddl :maximize :minimize)
;;   (:export
;;    #:untype-domain
;;    #:untype-problem))
;; (in-package :pddl.untype)

(in-package :pddl)
;;; public interface

(declaim (ftype (function (pddl-domain) pddl-domain) untype-domain))
(defun untype-domain (domain)
  (ematch domain
    ((pddl-domain name types)
     (shallow-copy
      (reduce #'%untype-domain
              (cons domain
                    (sort (copy-list types) #'pddl-supertype-p)))
      :name (symbolicate name '-untyped)))))


(declaim (ftype (function (pddl-problem pddl-domain) pddl-problem) untype-problem))
(defun untype-problem (problem new-domain)
  (ematch problem
    ((pddl-problem :name name :domain (pddl-domain :types types))
     (shallow-copy
      (reduce #'%untype-problem
              (cons problem
                    (sort (copy-list types) #'pddl-supertype-p)))
      :domain new-domain
      :name  (symbolicate name '-untyped)))))

;;; fundamental function: stores inferred types

(defun type->predicate (type &optional (param (pddl-variable :name (gensym "OBJ"))))
  (pddl-predicate
   :name       (name type)
   :parameters (list param)))

(defvar *inferred-types*)
(defun add-inferred-type (type parameter)
  (when (boundp '*inferred-types*)
    ;; (print (type->predicate type parameter))
    ;; (print (and (find (type->predicate type parameter) *inferred-types* :test #'eqstate) t))
    (pushnew (type->predicate type parameter)
             *inferred-types*
             :test #'eqstate)))

(defun %untype-variable (type variable)
  (if (pddl-typep variable type)
      (progn
        (add-inferred-type type variable)
        (pddl-variable :name (name variable)))
      variable))

;;; 2nd layer

(defun %untype-domain (domain type)
  (if (eq type *pddl-primitive-object-type*)
      domain
      (ematch domain
        ((pddl-domain name predicates actions requirements types functions)
         (shallow-copy domain
                       :requirements (remove :typing requirements)
                       :types (remove type types)
                       :functions (mapcar (curry #'%untype-parametrized type) functions)
                       :predicates (cons (type->predicate type)
                                         (mapcar (curry #'%untype-parametrized type)
                                                 predicates))
                       :actions (mapcar (curry #'%untype-action type)
                                        actions))))))

(defun %untype-problem (problem type)
  (if (eq type *pddl-primitive-object-type*)
      problem
      (ematch problem
        ((pddl-problem objects init positive-goals)
         (let ((*inferred-types* nil))
           (shallow-copy problem
                         :objects (mapcar (curry #'%untype-variable type) objects)
                         :goal `(and ,@(mapcar (curry #'%untype-parametrized type) positive-goals))
                         :init (append (mapcar (curry #'%untype-parametrized type) init)
                                       *inferred-types*)))))))

;;; 3rd layer

(defun %untype-parametrized (type parametrized)
  (ematch parametrized
    ((and (pddl-parametrized-object parameters)
          (namable name))
     (shallow-copy
      parametrized
      :name name
      :parameters (mapcar (curry #'%untype-variable type)
                          parameters)))))

(defun %untype-action (type action)
  (ematch action
    ((pddl-action name parameters positive-preconditions add-list delete-list assign-ops)
     (let ((*inferred-types* nil))
       (pddl-action
        :name name
        :parameters (mapcar (curry #'%untype-variable type) parameters)
        :effect `(and ,@(mapcar (curry #'%untype-parametrized type) add-list)
                      ,@(mapcar (lambda (x) `(not ,x))
                                (mapcar (curry #'%untype-parametrized type) delete-list))
                      ,@(mapcar (curry #'%untype-increase-op type) assign-ops))
        :precondition `(and ,@(mapcar (curry #'%untype-parametrized type) positive-preconditions)
                            ,@*inferred-types*))))))

(defun %untype-increase-op (type increase-op)
  (ematch increase-op
    ((pddl-assign-op value-form place (increase (and increase (pddl-function))))
     (pddl-assign-op :value-form value-form
                     :place place
                     :increase (%untype-parametrized type increase)))
    ((pddl-assign-op value-form place (increase (and increase (number))))
     (pddl-assign-op :value-form value-form
                     :place place
                     :increase increase))))




