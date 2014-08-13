; woodworking task with 32 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 459034

(define (problem wood-prob-sat-55)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red white green blue mauve black - acolour
    teak walnut beech pine cherry oak mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
    (has-colour glazer0 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 white)
    (wood p0 beech)
    (surface-condition p0 rough)
    (treatment p0 glazed)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (available p2)
    (colour p2 white)
    (wood p2 walnut)
    (surface-condition p2 rough)
    (treatment p2 varnished)
    (goalsize p2 medium)
    
    
    
    
    (available p3)
    (colour p3 blue)
    (wood p3 beech)
    (surface-condition p3 rough)
    (treatment p3 colourfragments)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 green)
    (wood p6 pine)
    (surface-condition p6 smooth)
    (treatment p6 colourfragments)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 white)
    (wood p7 cherry)
    (surface-condition p7 smooth)
    (treatment p7 colourfragments)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (available p15)
    (colour p15 red)
    (wood p15 oak)
    (surface-condition p15 verysmooth)
    (treatment p15 glazed)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (available p19)
    (colour p19 blue)
    (wood p19 teak)
    (surface-condition p19 verysmooth)
    (treatment p19 glazed)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 natural)
    (wood p21 pine)
    (surface-condition p21 verysmooth)
    (treatment p21 glazed)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (available p28)
    (colour p28 black)
    (wood p28 cherry)
    (surface-condition p28 rough)
    (treatment p28 colourfragments)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 mahogany)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s5)
    (wood b2 mahogany)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s7)
    (wood b3 oak)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s5)
    (wood b4 pine)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 walnut)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s4)
    (wood b6 walnut)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s8)
    (wood b7 teak)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s4)
    (wood b8 teak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 beech)
    (surface-condition b9 rough)
    (available b9)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 beech)
      (treatment p0 glazed)
      (available p1)
      (colour p1 green)
      (wood p1 cherry)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 mauve)
      (wood p2 walnut)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 green)
      (surface-condition p3 smooth)
      (available p4)
      (wood p4 pine)
      (surface-condition p4 verysmooth)
      (available p5)
      (colour p5 red)
      (wood p5 cherry)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 black)
      (treatment p6 glazed)
      (available p7)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 white)
      (wood p8 mahogany)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (wood p9 teak)
      (treatment p9 varnished)
      (available p10)
      (colour p10 natural)
      (wood p10 mahogany)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 black)
      (wood p11 oak)
      (available p12)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (wood p13 walnut)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 black)
      (treatment p14 glazed)
      (available p15)
      (colour p15 natural)
      (wood p15 oak)
      (available p16)
      (wood p16 mahogany)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 blue)
      (wood p17 mahogany)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (wood p18 oak)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 mauve)
      (wood p19 teak)
      (available p20)
      (wood p20 walnut)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 green)
      (wood p21 pine)
      (available p22)
      (colour p22 natural)
      (wood p22 beech)
      (treatment p22 varnished)
      (available p23)
      (colour p23 red)
      (wood p23 beech)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (wood p24 teak)
      (surface-condition p24 verysmooth)
      (available p25)
      (wood p25 walnut)
      (treatment p25 varnished)
      (available p26)
      (colour p26 natural)
      (surface-condition p26 verysmooth)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 green)
      (wood p29 cherry)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 natural)
      (wood p30 teak)
      (surface-condition p30 verysmooth)
      (available p31)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
    )
  )
  
)
