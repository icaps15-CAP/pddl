; woodworking task with 29 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 922617

(define (problem wood-prob-sat-54)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black mauve red white blue green - acolour
    mahogany walnut oak teak pine beech cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    
    (boardsize-successor s0 s1)
    (boardsize-successor s1 s2)
    (boardsize-successor s2 s3)
    (boardsize-successor s3 s4)
    (boardsize-successor s4 s5)
    (boardsize-successor s5 s6)
    (boardsize-successor s6 s7)
    (boardsize-successor s7 s8)
    (boardsize-successor s8 s9)
    (boardsize-successor s9 s10)
    (has-colour glazer0 blue)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer1 blue)
    (has-colour glazer1 green)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer1 mauve)
    (has-colour glazer2 blue)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (available p3)
    (colour p3 mauve)
    (wood p3 teak)
    (surface-condition p3 rough)
    (treatment p3 colourfragments)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 green)
    (wood p5 walnut)
    (surface-condition p5 verysmooth)
    (treatment p5 colourfragments)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 green)
    (wood p7 beech)
    (surface-condition p7 smooth)
    (treatment p7 glazed)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (available p9)
    (colour p9 red)
    (wood p9 walnut)
    (surface-condition p9 smooth)
    (treatment p9 glazed)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (available p11)
    (colour p11 green)
    (wood p11 beech)
    (surface-condition p11 verysmooth)
    (treatment p11 glazed)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (available p19)
    (colour p19 green)
    (wood p19 oak)
    (surface-condition p19 verysmooth)
    (treatment p19 glazed)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (available p25)
    (colour p25 white)
    (wood p25 beech)
    (surface-condition p25 smooth)
    (treatment p25 varnished)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 blue)
    (wood p28 beech)
    (surface-condition p28 smooth)
    (treatment p28 colourfragments)
    (goalsize p28 small)
    
    
    
    
    (boardsize b0 s2)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 mahogany)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s1)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 pine)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s2)
    (wood b4 pine)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 walnut)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s3)
    (wood b6 walnut)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s2)
    (wood b7 teak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
    (wood b8 beech)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 beech)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s2)
    (wood b10 beech)
    (surface-condition b10 smooth)
    (available b10)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (surface-condition p0 verysmooth)
      (available p1)
      (colour p1 red)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 white)
      (surface-condition p2 verysmooth)
      (available p3)
      (wood p3 teak)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 mauve)
      (wood p4 pine)
      (available p5)
      (wood p5 walnut)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (surface-condition p6 verysmooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 white)
      (wood p7 beech)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 green)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 natural)
      (wood p9 walnut)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 black)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 black)
      (wood p11 beech)
      (treatment p11 varnished)
      (available p12)
      (colour p12 green)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 blue)
      (treatment p13 glazed)
      (available p14)
      (colour p14 green)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 blue)
      (treatment p15 varnished)
      (available p16)
      (colour p16 natural)
      (wood p16 walnut)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (wood p17 walnut)
      (treatment p17 glazed)
      (available p18)
      (colour p18 black)
      (wood p18 teak)
      (treatment p18 glazed)
      (available p19)
      (wood p19 oak)
      (treatment p19 varnished)
      (available p20)
      (wood p20 beech)
      (treatment p20 varnished)
      (available p21)
      (wood p21 pine)
      (treatment p21 varnished)
      (available p22)
      (colour p22 blue)
      (wood p22 beech)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 natural)
      (wood p23 mahogany)
      (available p24)
      (colour p24 blue)
      (wood p24 beech)
      (surface-condition p24 smooth)
      (available p25)
      (surface-condition p25 smooth)
      (treatment p25 glazed)
      (available p26)
      (wood p26 beech)
      (treatment p26 varnished)
      (available p27)
      (wood p27 walnut)
      (treatment p27 varnished)
      (available p28)
      (colour p28 natural)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
    )
  )
  
)
