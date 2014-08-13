; woodworking task with 59 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 389167

(define (problem wood-prob-sat-30)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve white black red blue green - acolour
    oak pine teak beech cherry walnut mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 - aboardsize
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
    (has-colour glazer0 blue)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 black)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour glazer2 mauve)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 black)
    (wood p0 walnut)
    (surface-condition p0 verysmooth)
    (treatment p0 varnished)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 blue)
    (wood p1 oak)
    (surface-condition p1 verysmooth)
    (treatment p1 varnished)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 mauve)
    (wood p7 walnut)
    (surface-condition p7 verysmooth)
    (treatment p7 colourfragments)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 natural)
    (wood p12 pine)
    (surface-condition p12 verysmooth)
    (treatment p12 colourfragments)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 natural)
    (wood p16 walnut)
    (surface-condition p16 verysmooth)
    (treatment p16 varnished)
    (goalsize p16 small)
    
    
    
    
    (available p17)
    (colour p17 red)
    (wood p17 mahogany)
    (surface-condition p17 smooth)
    (treatment p17 varnished)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 green)
    (wood p20 beech)
    (surface-condition p20 verysmooth)
    (treatment p20 colourfragments)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 black)
    (wood p21 cherry)
    (surface-condition p21 smooth)
    (treatment p21 varnished)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 blue)
    (wood p22 beech)
    (surface-condition p22 rough)
    (treatment p22 glazed)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (available p29)
    (colour p29 mauve)
    (wood p29 pine)
    (surface-condition p29 verysmooth)
    (treatment p29 glazed)
    (goalsize p29 medium)
    
    
    
    
    (available p30)
    (colour p30 black)
    (wood p30 beech)
    (surface-condition p30 smooth)
    (treatment p30 colourfragments)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 natural)
    (wood p31 mahogany)
    (surface-condition p31 smooth)
    (treatment p31 colourfragments)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 red)
    (wood p35 pine)
    (surface-condition p35 verysmooth)
    (treatment p35 glazed)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (available p41)
    (colour p41 mauve)
    (wood p41 beech)
    (surface-condition p41 verysmooth)
    (treatment p41 colourfragments)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (available p54)
    (colour p54 white)
    (wood p54 teak)
    (surface-condition p54 rough)
    (treatment p54 colourfragments)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s6)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s3)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 walnut)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s3)
    (wood b10 walnut)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s7)
    (wood b11 teak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s5)
    (wood b12 teak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 beech)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s1)
    (wood b14 beech)
    (surface-condition b14 rough)
    (available b14)
  )
  (:goal
    (and
      (available p0)
      (wood p0 walnut)
      (treatment p0 glazed)
      (available p1)
      (colour p1 black)
      (surface-condition p1 smooth)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 black)
      (wood p3 oak)
      (treatment p3 varnished)
      (available p4)
      (colour p4 green)
      (wood p4 oak)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 black)
      (wood p5 cherry)
      (treatment p5 glazed)
      (available p6)
      (colour p6 blue)
      (treatment p6 glazed)
      (available p7)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 black)
      (surface-condition p8 verysmooth)
      (available p9)
      (wood p9 oak)
      (surface-condition p9 smooth)
      (available p10)
      (wood p10 mahogany)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 natural)
      (wood p11 mahogany)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (wood p12 pine)
      (treatment p12 glazed)
      (available p13)
      (colour p13 black)
      (treatment p13 varnished)
      (available p14)
      (colour p14 red)
      (wood p14 mahogany)
      (available p15)
      (wood p15 oak)
      (surface-condition p15 verysmooth)
      (available p16)
      (wood p16 walnut)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 natural)
      (surface-condition p17 verysmooth)
      (available p18)
      (colour p18 mauve)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (wood p20 beech)
      (treatment p20 varnished)
      (available p21)
      (colour p21 natural)
      (wood p21 cherry)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 black)
      (wood p22 beech)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 black)
      (treatment p24 glazed)
      (available p25)
      (colour p25 mauve)
      (wood p25 teak)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 white)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 natural)
      (wood p27 teak)
      (available p28)
      (colour p28 green)
      (treatment p28 varnished)
      (available p29)
      (wood p29 pine)
      (treatment p29 varnished)
      (available p30)
      (colour p30 blue)
      (wood p30 beech)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 blue)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (wood p33 beech)
      (surface-condition p33 verysmooth)
      (treatment p33 glazed)
      (available p34)
      (wood p34 beech)
      (treatment p34 varnished)
      (available p35)
      (colour p35 green)
      (wood p35 pine)
      (available p36)
      (wood p36 walnut)
      (surface-condition p36 verysmooth)
      (available p37)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 mauve)
      (surface-condition p38 verysmooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 black)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (wood p41 beech)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (wood p42 mahogany)
      (surface-condition p42 verysmooth)
      (available p43)
      (colour p43 red)
      (treatment p43 varnished)
      (available p44)
      (wood p44 cherry)
      (treatment p44 glazed)
      (available p45)
      (colour p45 black)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (wood p46 beech)
      (treatment p46 varnished)
      (available p47)
      (colour p47 blue)
      (wood p47 walnut)
      (surface-condition p47 verysmooth)
      (treatment p47 glazed)
      (available p48)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (surface-condition p49 verysmooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 black)
      (wood p50 oak)
      (treatment p50 varnished)
      (available p51)
      (wood p51 walnut)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (wood p52 teak)
      (treatment p52 varnished)
      (available p53)
      (colour p53 red)
      (treatment p53 glazed)
      (available p54)
      (colour p54 black)
      (wood p54 teak)
      (treatment p54 varnished)
      (available p55)
      (colour p55 natural)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 mauve)
      (wood p56 walnut)
      (treatment p56 varnished)
      (available p57)
      (colour p57 natural)
      (wood p57 oak)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 blue)
      (wood p58 oak)
      (surface-condition p58 smooth)
    )
  )
  
)
