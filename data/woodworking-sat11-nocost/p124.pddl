; woodworking task with 59 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 90769

(define (problem wood-prob-sat-124)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black red green blue white mauve - acolour
    teak beech oak mahogany pine cherry walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 natural)
    (wood p11 cherry)
    (surface-condition p11 rough)
    (treatment p11 varnished)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (available p14)
    (colour p14 blue)
    (wood p14 cherry)
    (surface-condition p14 smooth)
    (treatment p14 glazed)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (available p19)
    (colour p19 black)
    (wood p19 mahogany)
    (surface-condition p19 rough)
    (treatment p19 varnished)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (available p22)
    (colour p22 mauve)
    (wood p22 walnut)
    (surface-condition p22 rough)
    (treatment p22 glazed)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 black)
    (wood p24 teak)
    (surface-condition p24 smooth)
    (treatment p24 varnished)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (available p26)
    (colour p26 black)
    (wood p26 mahogany)
    (surface-condition p26 rough)
    (treatment p26 glazed)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (available p32)
    (colour p32 natural)
    (wood p32 beech)
    (surface-condition p32 rough)
    (treatment p32 glazed)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 red)
    (wood p38 beech)
    (surface-condition p38 rough)
    (treatment p38 varnished)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (available p42)
    (colour p42 red)
    (wood p42 teak)
    (surface-condition p42 rough)
    (treatment p42 varnished)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (available p47)
    (colour p47 blue)
    (wood p47 walnut)
    (surface-condition p47 verysmooth)
    (treatment p47 varnished)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (available p54)
    (colour p54 black)
    (wood p54 cherry)
    (surface-condition p54 smooth)
    (treatment p54 glazed)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (available p58)
    (colour p58 mauve)
    (wood p58 pine)
    (surface-condition p58 smooth)
    (treatment p58 colourfragments)
    (goalsize p58 small)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s6)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s8)
    (wood b4 oak)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s6)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s6)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 pine)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s6)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s5)
    (wood b10 walnut)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s8)
    (wood b11 walnut)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 teak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 teak)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s8)
    (wood b14 beech)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 beech)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s5)
    (wood b16 beech)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 beech)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s1)
    (wood b18 beech)
    (surface-condition b18 rough)
    (available b18)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (wood p0 beech)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 green)
      (wood p1 walnut)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 green)
      (wood p2 mahogany)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (wood p5 beech)
      (treatment p5 glazed)
      (available p6)
      (colour p6 black)
      (wood p6 pine)
      (available p7)
      (wood p7 beech)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 natural)
      (wood p8 cherry)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 white)
      (treatment p9 varnished)
      (available p10)
      (colour p10 blue)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 black)
      (wood p11 cherry)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 white)
      (surface-condition p12 smooth)
      (available p13)
      (surface-condition p13 verysmooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 mauve)
      (wood p14 cherry)
      (available p15)
      (wood p15 cherry)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 green)
      (wood p16 mahogany)
      (treatment p16 varnished)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 green)
      (wood p18 beech)
      (available p19)
      (colour p19 green)
      (wood p19 mahogany)
      (treatment p19 varnished)
      (available p20)
      (colour p20 white)
      (wood p20 oak)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 red)
      (wood p22 walnut)
      (surface-condition p22 verysmooth)
      (treatment p22 varnished)
      (available p23)
      (wood p23 cherry)
      (surface-condition p23 smooth)
      (available p24)
      (wood p24 teak)
      (surface-condition p24 verysmooth)
      (treatment p24 varnished)
      (available p25)
      (wood p25 beech)
      (surface-condition p25 verysmooth)
      (available p26)
      (colour p26 blue)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 black)
      (wood p27 mahogany)
      (treatment p27 varnished)
      (available p28)
      (colour p28 white)
      (treatment p28 glazed)
      (available p29)
      (wood p29 teak)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 red)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 white)
      (wood p31 beech)
      (treatment p31 glazed)
      (available p32)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 white)
      (wood p33 pine)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 red)
      (wood p34 teak)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 mauve)
      (wood p35 oak)
      (treatment p35 glazed)
      (available p36)
      (colour p36 blue)
      (wood p36 oak)
      (surface-condition p36 smooth)
      (available p37)
      (colour p37 mauve)
      (surface-condition p37 smooth)
      (available p38)
      (colour p38 mauve)
      (wood p38 beech)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (wood p39 pine)
      (surface-condition p39 verysmooth)
      (treatment p39 varnished)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 blue)
      (treatment p41 varnished)
      (available p42)
      (wood p42 teak)
      (surface-condition p42 smooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 green)
      (wood p43 pine)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 green)
      (treatment p44 varnished)
      (available p45)
      (colour p45 green)
      (wood p45 pine)
      (surface-condition p45 smooth)
      (available p46)
      (colour p46 mauve)
      (wood p46 mahogany)
      (available p47)
      (wood p47 walnut)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 mauve)
      (wood p48 cherry)
      (treatment p48 glazed)
      (available p49)
      (wood p49 walnut)
      (treatment p49 varnished)
      (available p50)
      (colour p50 blue)
      (wood p50 oak)
      (surface-condition p50 smooth)
      (treatment p50 varnished)
      (available p51)
      (wood p51 cherry)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 mauve)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 white)
      (wood p54 cherry)
      (available p55)
      (colour p55 mauve)
      (surface-condition p55 verysmooth)
      (available p56)
      (colour p56 white)
      (wood p56 mahogany)
      (available p57)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 natural)
      (treatment p58 glazed)
    )
  )
  
)
