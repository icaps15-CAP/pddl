(define (domain cell-assembly-eachparts)
  (:requirements :strips :typing)
  (:types arm position - object
          reachable - position ; Where the arms are potentially able to go.
	  table - reachable    ; The place to attach components with arms.
	  )
  (:predicates 
   ;; arm attributes
   (reachable ?arm - arm ?to - reachable)
   ;; state description
   (at ?obj - object ?pos - position))
  (:action move-arm
	   :parameters (?arm - arm ?from ?to - reachable)
	   :precondition (and (at ?arm ?from)
			      (reachable ?arm ?to))
	   :effect (and (at ?arm ?to)
			(not (at ?arm ?from)))))

