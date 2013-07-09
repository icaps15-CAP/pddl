
(in-package :pddl-test)
(in-suite :pddl)


(test simulate-plan-many
  

(iter (for aa in plan)
	(for a = (action (domain aa) aa))
	(for states 
	     first (init depotprob1818)
	     then (apply-action a (match-set aa) states))
	(print states)
	(finally
	 (is (goal-p depotprob1818 states))))