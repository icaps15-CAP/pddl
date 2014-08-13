; woodworking task with 47 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 586534

(define (problem wood-prob-sat-120)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green black white red blue mauve - acolour
    pine mahogany teak oak walnut beech cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 - aboardsize
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
    (boardsize-successor s10 s11)
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer1 natural)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 green)
    (wood p1 beech)
    (surface-condition p1 rough)
    (treatment p1 glazed)
    (goalsize p1 medium)
    
    
    
    
    (available p2)
    (colour p2 blue)
    (wood p2 beech)
    (surface-condition p2 smooth)
    (treatment p2 colourfragments)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 black)
    (wood p3 walnut)
    (surface-condition p3 rough)
    (treatment p3 glazed)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 mauve)
    (wood p6 pine)
    (surface-condition p6 verysmooth)
    (treatment p6 colourfragments)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (available p8)
    (colour p8 white)
    (wood p8 oak)
    (surface-condition p8 verysmooth)
    (treatment p8 colourfragments)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 natural)
    (wood p10 cherry)
    (surface-condition p10 verysmooth)
    (treatment p10 glazed)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (available p17)
    (colour p17 black)
    (wood p17 mahogany)
    (surface-condition p17 rough)
    (treatment p17 colourfragments)
    (goalsize p17 large)
    
    
    
    
    (available p18)
    (colour p18 natural)
    (wood p18 teak)
    (surface-condition p18 smooth)
    (treatment p18 varnished)
    (goalsize p18 large)
    
    
    
    
    (available p19)
    (colour p19 green)
    (wood p19 oak)
    (surface-condition p19 rough)
    (treatment p19 varnished)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (available p21)
    (colour p21 mauve)
    (wood p21 pine)
    (surface-condition p21 verysmooth)
    (treatment p21 glazed)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 white)
    (wood p22 beech)
    (surface-condition p22 verysmooth)
    (treatment p22 glazed)
    (goalsize p22 small)
    
    
    
    
    (available p23)
    (colour p23 white)
    (wood p23 mahogany)
    (surface-condition p23 smooth)
    (treatment p23 colourfragments)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 blue)
    (wood p25 beech)
    (surface-condition p25 smooth)
    (treatment p25 glazed)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (available p34)
    (colour p34 black)
    (wood p34 cherry)
    (surface-condition p34 smooth)
    (treatment p34 glazed)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 mahogany)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s4)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 oak)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s4)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 pine)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 walnut)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s10)
    (wood b7 walnut)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s2)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 teak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s1)
    (wood b10 teak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s11)
    (wood b11 beech)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 beech)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 beech)
    (surface-condition b13 rough)
    (available b13)
  )
  (:goal
    (and
      (available p0)
      (colour p0 white)
      (wood p0 oak)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 white)
      (treatment p1 varnished)
      (available p2)
      (colour p2 red)
      (wood p2 beech)
      (available p3)
      (wood p3 walnut)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 red)
      (wood p4 teak)
      (available p5)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 green)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (wood p7 cherry)
      (treatment p7 varnished)
      (available p8)
      (colour p8 natural)
      (wood p8 oak)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 mauve)
      (wood p10 cherry)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 black)
      (wood p11 beech)
      (surface-condition p11 smooth)
      (available p12)
      (colour p12 natural)
      (wood p12 walnut)
      (available p13)
      (colour p13 green)
      (wood p13 walnut)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 green)
      (wood p14 cherry)
      (surface-condition p14 verysmooth)
      (available p15)
      (colour p15 red)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 white)
      (wood p16 walnut)
      (treatment p16 glazed)
      (available p17)
      (colour p17 natural)
      (wood p17 mahogany)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 red)
      (wood p18 teak)
      (available p19)
      (wood p19 oak)
      (surface-condition p19 smooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 blue)
      (wood p20 mahogany)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 green)
      (treatment p21 varnished)
      (available p22)
      (wood p22 beech)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 blue)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 white)
      (wood p24 oak)
      (available p25)
      (colour p25 green)
      (wood p25 beech)
      (available p26)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (wood p27 beech)
      (treatment p27 glazed)
      (available p28)
      (wood p28 oak)
      (surface-condition p28 verysmooth)
      (available p29)
      (wood p29 walnut)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 mauve)
      (wood p30 beech)
      (surface-condition p30 verysmooth)
      (available p31)
      (colour p31 white)
      (wood p31 beech)
      (surface-condition p31 smooth)
      (available p32)
      (colour p32 mauve)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (wood p33 beech)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 mauve)
      (wood p34 cherry)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (wood p35 beech)
      (surface-condition p35 smooth)
      (available p36)
      (colour p36 mauve)
      (wood p36 teak)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (wood p37 mahogany)
      (treatment p37 varnished)
      (available p38)
      (colour p38 natural)
      (wood p38 pine)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 white)
      (wood p39 cherry)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 white)
      (wood p43 beech)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 black)
      (wood p44 teak)
      (surface-condition p44 verysmooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 green)
      (treatment p45 glazed)
      (available p46)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
    )
  )
  
)
