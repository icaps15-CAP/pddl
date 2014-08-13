; woodworking task with 59 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 70872

(define (problem wood-prob-sat-64)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red white black blue mauve green - acolour
    cherry oak beech walnut teak pine mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 - aboardsize
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
    (boardsize-successor s11 s12)
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (available p2)
    (colour p2 natural)
    (wood p2 oak)
    (surface-condition p2 verysmooth)
    (treatment p2 glazed)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (available p8)
    (colour p8 mauve)
    (wood p8 teak)
    (surface-condition p8 rough)
    (treatment p8 colourfragments)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (available p23)
    (colour p23 red)
    (wood p23 teak)
    (surface-condition p23 rough)
    (treatment p23 glazed)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 blue)
    (wood p27 teak)
    (surface-condition p27 verysmooth)
    (treatment p27 colourfragments)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (available p33)
    (colour p33 black)
    (wood p33 mahogany)
    (surface-condition p33 verysmooth)
    (treatment p33 colourfragments)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
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
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (available p41)
    (colour p41 blue)
    (wood p41 oak)
    (surface-condition p41 smooth)
    (treatment p41 varnished)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (available p44)
    (colour p44 red)
    (wood p44 walnut)
    (surface-condition p44 verysmooth)
    (treatment p44 colourfragments)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (available p47)
    (colour p47 black)
    (wood p47 beech)
    (surface-condition p47 rough)
    (treatment p47 varnished)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (available p54)
    (colour p54 white)
    (wood p54 pine)
    (surface-condition p54 verysmooth)
    (treatment p54 glazed)
    (goalsize p54 medium)
    
    
    
    
    (available p55)
    (colour p55 mauve)
    (wood p55 cherry)
    (surface-condition p55 rough)
    (treatment p55 varnished)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s12)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s3)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 oak)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s8)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s4)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 pine)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s7)
    (wood b11 walnut)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s9)
    (wood b12 walnut)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s4)
    (wood b13 walnut)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 teak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 teak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s3)
    (wood b16 teak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 beech)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s10)
    (wood b18 beech)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s2)
    (wood b19 beech)
    (surface-condition b19 rough)
    (available b19)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 beech)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 beech)
      (treatment p1 varnished)
      (available p2)
      (wood p2 oak)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 blue)
      (wood p3 walnut)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 natural)
      (wood p4 beech)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 mauve)
      (wood p5 cherry)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 blue)
      (wood p6 walnut)
      (treatment p6 varnished)
      (available p7)
      (colour p7 green)
      (wood p7 cherry)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (wood p8 teak)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 natural)
      (wood p9 mahogany)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 black)
      (wood p11 teak)
      (available p12)
      (colour p12 green)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (wood p14 pine)
      (surface-condition p14 smooth)
      (available p15)
      (wood p15 cherry)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (wood p16 mahogany)
      (treatment p16 glazed)
      (available p17)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 blue)
      (treatment p18 glazed)
      (available p19)
      (colour p19 natural)
      (wood p19 mahogany)
      (treatment p19 varnished)
      (available p20)
      (colour p20 white)
      (treatment p20 varnished)
      (available p21)
      (wood p21 mahogany)
      (treatment p21 varnished)
      (available p22)
      (wood p22 oak)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 white)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 white)
      (wood p24 beech)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 green)
      (surface-condition p25 smooth)
      (available p26)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 white)
      (wood p27 teak)
      (available p28)
      (colour p28 mauve)
      (surface-condition p28 verysmooth)
      (available p29)
      (wood p29 teak)
      (treatment p29 glazed)
      (available p30)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (wood p31 pine)
      (treatment p31 glazed)
      (available p32)
      (colour p32 green)
      (wood p32 teak)
      (available p33)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 natural)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (wood p35 oak)
      (surface-condition p35 smooth)
      (available p36)
      (colour p36 natural)
      (wood p36 oak)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 red)
      (surface-condition p37 verysmooth)
      (available p38)
      (wood p38 beech)
      (surface-condition p38 smooth)
      (available p39)
      (colour p39 blue)
      (treatment p39 varnished)
      (available p40)
      (wood p40 oak)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 natural)
      (treatment p41 varnished)
      (available p42)
      (colour p42 white)
      (wood p42 teak)
      (surface-condition p42 verysmooth)
      (available p43)
      (colour p43 red)
      (treatment p43 glazed)
      (available p44)
      (colour p44 black)
      (treatment p44 glazed)
      (available p45)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 natural)
      (wood p46 walnut)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 blue)
      (treatment p47 glazed)
      (available p48)
      (colour p48 red)
      (surface-condition p48 verysmooth)
      (available p49)
      (colour p49 green)
      (wood p49 cherry)
      (available p50)
      (wood p50 beech)
      (surface-condition p50 smooth)
      (available p51)
      (wood p51 pine)
      (surface-condition p51 smooth)
      (available p52)
      (colour p52 mauve)
      (wood p52 walnut)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 white)
      (wood p53 walnut)
      (available p54)
      (colour p54 green)
      (treatment p54 glazed)
      (available p55)
      (colour p55 black)
      (wood p55 cherry)
      (available p56)
      (colour p56 black)
      (wood p56 oak)
      (treatment p56 varnished)
      (available p57)
      (colour p57 mauve)
      (treatment p57 glazed)
      (available p58)
      (colour p58 mauve)
      (wood p58 beech)
    )
  )
  
)
