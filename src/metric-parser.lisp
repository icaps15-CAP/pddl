
(in-package :pddl)
(use-syntax :annot)

;; <term>        <name>							    
;; <term>	      <variable>						    
;; <f-exp>	      <number>						    
;; <f-exp>	      (<binary-op> <f-exp> <f-exp>)				    
;; <f-exp>	      (- <f-exp>)						    
;; <f-exp>	      <f-head>						    
;; <f-head>      (<function-symbol> <term>∗ )				    
;; <f-head>      <function-symbol>					    
;; <binary-op>   <multi-op>						    
;; <binary-op>   −							    
;; <binary-op>   /							    
;; <multi-op>    ∗							    
;; <multi-op>    +							    
;; <binary-comp> >							    
;; <binary-comp> <							    
;; <binary-comp> =							    
;; <binary-comp> >=							    
;; <binary-comp> <=							    
;; <number>      Any numeric literal (integers and floats of form n.n).	    

;; <con-GD>         (at-most-once <GD>)				
;; <con-GD>	 (sometime-after <GD> <GD>)			
;; <con-GD>	 (sometime-before <GD> <GD>)			
;; <con-GD>	 (always-within <number> <GD> <GD>)		
;; <con-GD>	 (hold-during <number> <number> <GD>)		
;; <con-GD>	 (hold-after <number> <GD>)			
;; <metric-spec>	 (:metric <optimization> <metric-f-exp>)		
;; <optimization>	 minimize					
;; <optimization>	 maximize					
;; <metric-f-exp>	 (<binary-op> <metric-f-exp> <metric-f-exp>)	
;; <metric-f-exp>	 (<multi-op> <metric-f-exp> <metric-f-exp>+ )	
;; <metric-f-exp>	 (- <metric-f-exp>)				
;; <metric-f-exp>	 <number>					
;; <metric-f-exp>	 (<function-symbol> <name>∗ )			
;; <metric-f-exp>	 <function-symbol>				
;; <metric-f-exp>	 total-time					
;; --------- <metric-f-exp>	 (is-violated <pref-name>)

(defun parse-metric-spec (body)
  (match body
    ((op (and op (qor minimize maximize)) fexps)
     ((parse-f-exp fexps))))

;; どう実装する????
(defun parse-f-exp (body)
  (match body
    ((op (and bin-op (qor - /)) fexp1 fexp2)
     )
    ((op (and multi-op (qor + *)) fexps)
     )
    ((op '- fexp)
     )
    ((type number)
     )
    ('total-time
     (not-implemented 'total-time))))












 