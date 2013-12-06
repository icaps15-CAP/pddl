(define (problem openstacks)
    (:domain openstacks)
  (:objects 
   n1 n2 n3 n4 n5 n6 n7 n8 n9 n10
   n11 n12 n13 n14 n15 n16 n17 n18 n19 n20
   n21 n22 n23 n24 n25 n26 n27 n28 n29 n30
   n31 n32 n33 n34 n35 n36 n37 n38 n39 n40
   n41 n42 n43 n44 n45 n46 n47 n48 n49 n50 - count
   o1 o2 - order
   p1 p2 - product
   )

  (:init
   (next-count n0 n1)
   (next-count n1 n2)
   (next-count n2 n3)
   (next-count n3 n4)
   (next-count n4 n5)
   (next-count n5 n6)
   (next-count n6 n7)
   (next-count n7 n8)
   (next-count n8 n9)
   (next-count n9 n10)
   (next-count n10 n11)
   (next-count n11 n12)
   (next-count n12 n13)
   (next-count n13 n14)
   (next-count n14 n15)
   (next-count n15 n16)
   (next-count n16 n17)
   (next-count n17 n18)
   (next-count n18 n19)
   (next-count n19 n20)
   (next-count n20 n21)
   (next-count n21 n22)
   (next-count n22 n23)
   (next-count n23 n24)
   (next-count n24 n25)
   (next-count n25 n26)
   (next-count n26 n27)
   (next-count n27 n28)
   (next-count n28 n29)
   (next-count n29 n30)
   (next-count n30 n31)
   (next-count n31 n32)
   (next-count n32 n33)
   (next-count n33 n34)
   (next-count n34 n35)
   (next-count n35 n36)
   (next-count n36 n37)
   (next-count n37 n38)
   (next-count n38 n39)
   (next-count n39 n40)
   (next-count n40 n41)
   (next-count n41 n42)
   (next-count n42 n43)
   (next-count n43 n44)
   (next-count n44 n45)
   (next-count n45 n46)
   (next-count n46 n47)
   (next-count n47 n48)
   (next-count n48 n49)
   (next-count n49 n50) 

   (stacks-avail n0)

   (waiting o1)
   (waiting o2)
   (not-made p1)
   (not-made p2)

   (includes o1 p1)(includes o1 p2)
   (required-order-not-checked o1 p1)
   (required-product-not-checked o1 p1)
   (required-order-not-checked o1 p2)
   (required-product-not-checked o1 p2)


   (includes o2 p1)(includes o2 p2)
   (required-order-not-checked o2 p1)
   (required-product-not-checked o2 p1)
   (required-order-not-checked o2 p2)
   (required-product-not-checked o2 p2)

   (howmany-orders-not-started p1 n2)
   (howmany-orders-not-started p2 n2)
   (howmany-products-not-made o1 n2)
   (howmany-products-not-made o2 n2)

   (= (total-cost) 0)

   )

  (:goal
   (and
    (shipped o1)
    (shipped o2)
    ))

  (:metric minimize (total-cost)))

