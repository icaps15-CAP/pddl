(DEFINE (PROBLEM WOOD-LOOP2-TEMPO-CONVERTED-1)
 (:DOMAIN WOODWORKING-LOOP-TEMPO-CONVERTED)
 (:OBJECTS GRINDER-0 - GRINDER GLAZER-0 - GLAZER IMMERSION-VARNISHER-0 -
  IMMERSION-VARNISHER PLANER-0 - PLANER HIGHSPEED-SAW-0 - HIGHSPEED-SAW
  SPRAY-VARNISHER-0 - SPRAY-VARNISHER SAW-0 - SAW COLOR-0 COLOR-1 COLOR-2 -
  ACOLOUR WOOD-0 WOOD-1 WOOD-2 - AWOOD PART-0 - PART BOARD-0 BOARD-1 BOARD-2 -
  BOARD)
 (:INIT (GRIND-TREATMENT-CHANGE VARNISHED COLOURFRAGMENTS)
  (GRIND-TREATMENT-CHANGE GLAZED UNTREATED)
  (GRIND-TREATMENT-CHANGE UNTREATED UNTREATED)
  (GRIND-TREATMENT-CHANGE COLOURFRAGMENTS UNTREATED) (IS-SMOOTH SMOOTH)
  (IS-SMOOTH VERYSMOOTH) (= (TOTAL-COST) 0) (IDLE GRINDER-0) (IDLE GLAZER-0)
  (IDLE IMMERSION-VARNISHER-0) (IDLE PLANER-0) (IDLE HIGHSPEED-SAW-0)
  (IDLE SPRAY-VARNISHER-0) (IDLE SAW-0)
  (HAS-COLOUR IMMERSION-VARNISHER-0 COLOR-0)
  (HAS-COLOUR SPRAY-VARNISHER-0 COLOR-1) (HAS-COLOUR GLAZER-0 COLOR-2)
  (EMPTY HIGHSPEED-SAW-0) (AVAILABLE PART-0) (COLOUR PART-0 COLOR-1)
  (WOOD PART-0 WOOD-0) (SURFACE-CONDITION PART-0 ROUGH)
  (TREATMENT PART-0 VARNISHED) (GOALSIZE PART-0 SMALL)
  (= (SPRAY-VARNISH-COST PART-0) 5) (= (GLAZE-COST PART-0) 10)
  (= (GRIND-COST PART-0) 15) (= (PLANE-COST PART-0) 10) (WOOD BOARD-0 WOOD-0)
  (SURFACE-CONDITION BOARD-0 ROUGH) (AVAILABLE BOARD-0) (WOOD BOARD-1 WOOD-1)
  (SURFACE-CONDITION BOARD-1 ROUGH) (AVAILABLE BOARD-1) (WOOD BOARD-2 WOOD-2)
  (SURFACE-CONDITION BOARD-2 ROUGH) (AVAILABLE BOARD-2))
 (:GOAL
  (AND (COLOUR PART-0 COLOR-0) (AVAILABLE PART-0)
       (SURFACE-CONDITION PART-0 VERYSMOOTH)))
 (:METRIC MINIMIZE (TOTAL-COST)))