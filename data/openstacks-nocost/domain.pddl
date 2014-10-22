(define (domain openstacks)
    (:requirements :typing)
  (:types order product count)
  (:predicates 
   (howmany-orders-not-started ?p - product ?o-count - count)
   (howmany-products-not-made ?o - order ?p-count - count)
   (required-order-not-checked ?o - order ?p - product)
   (required-product-not-checked ?o - order ?p - product)
   
   (includes ?o - order ?p - product)
   (waiting ?o - order)
   (started ?o - order)
   (shipped ?o - order)
   (made ?p - product)
   (not-made ?p - product)
   (stacks-avail ?s - count)
   (next-count ?s ?ns - count) ;; ?s + 1 = ?ns e.g. (next-count n0 n1)
   )
  (:action open-new-stack
           :parameters (?open ?more-open - count)
           :precondition
           (and (stacks-avail ?open)
                (next-count ?open ?more-open))
           :effect
           (and (not (stacks-avail ?open))
                (stacks-avail ?more-open)))

  (:action start-order
           :parameters (?o - order ?avail ?less-avail)
           :precondition (and (waiting ?o)
                              (stacks-avail ?avail)
                              (next-count ?less-avail ?avail))
           :effect (and (not (waiting ?o))
                        (started ?o)
                        (not (stacks-avail ?avail))
                        (stacks-avail ?less-avail)))

  (:action check-remaining-order
           :parameters (?o - order ?p - product
                           ?o-count ?o-less - count)
           :precondition (and (includes ?o ?p)
                              (started ?o)
                              (required-order-not-checked ?o ?p)
                              (next-count ?o-less ?o-count)
                              (howmany-orders-not-started ?p ?o-count))
                              
           :effect (and (not (howmany-orders-not-started ?p ?o-count))
                        (not (required-order-not-checked ?o ?p))
                        (howmany-orders-not-started ?p ?o-less)))

  (:action check-remaining-product
           :parameters (?o - order ?p - product
                           ?p-count ?p-less - count)
           :precondition (and (includes ?o ?p)
                              (started ?o)
                              (made ?p)
                              (required-product-not-checked ?o ?p)
                              (next-count ?p-less ?p-count)
                              (howmany-products-not-made ?o ?p-count))
                              
           :effect (and (not (howmany-products-not-made ?o ?p-count))
                        (not (required-product-not-checked ?o ?p))
                        (howmany-products-not-made ?o ?p-less)))
  
  (:action make-product
           :parameters (?p - product)
           :precondition (and (not-made ?p)
                              (howmany-orders-not-started ?p n0))
           :effect (and (not (not-made ?p))
                        (made ?p)))

  (:action ship-order
           :parameters (?avail ?more-avail - count ?o - order)
           :precondition (and (started ?o)
                              (howmany-products-not-made ?o n0)
                              (stacks-avail ?avail)
                              (next-count ?avail ?more-avail))
           :effect (and (not (started ?o))
                        (shipped ?o)
                        (not (stacks-avail ?avail))
                        (stacks-avail ?more-avail))))

