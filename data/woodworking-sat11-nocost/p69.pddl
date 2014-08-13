; woodworking task with 74 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 989336

(define (problem wood-prob-sat-69)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green blue white black mauve red - acolour
    teak beech mahogany pine oak cherry walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 mauve)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (available p0)
    (colour p0 green)
    (wood p0 walnut)
    (surface-condition p0 smooth)
    (treatment p0 varnished)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 red)
    (wood p5 teak)
    (surface-condition p5 rough)
    (treatment p5 glazed)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (available p7)
    (colour p7 natural)
    (wood p7 mahogany)
    (surface-condition p7 rough)
    (treatment p7 colourfragments)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (available p16)
    (colour p16 white)
    (wood p16 mahogany)
    (surface-condition p16 rough)
    (treatment p16 varnished)
    (goalsize p16 small)
    
    
    
    
    (available p17)
    (colour p17 red)
    (wood p17 mahogany)
    (surface-condition p17 verysmooth)
    (treatment p17 varnished)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 red)
    (wood p25 teak)
    (surface-condition p25 verysmooth)
    (treatment p25 colourfragments)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 natural)
    (wood p31 cherry)
    (surface-condition p31 verysmooth)
    (treatment p31 varnished)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (available p36)
    (colour p36 natural)
    (wood p36 pine)
    (surface-condition p36 smooth)
    (treatment p36 glazed)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 red)
    (wood p38 oak)
    (surface-condition p38 smooth)
    (treatment p38 colourfragments)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (available p42)
    (colour p42 white)
    (wood p42 mahogany)
    (surface-condition p42 rough)
    (treatment p42 glazed)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (available p45)
    (colour p45 red)
    (wood p45 walnut)
    (surface-condition p45 smooth)
    (treatment p45 colourfragments)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (available p49)
    (colour p49 red)
    (wood p49 walnut)
    (surface-condition p49 verysmooth)
    (treatment p49 varnished)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (available p58)
    (colour p58 blue)
    (wood p58 walnut)
    (surface-condition p58 rough)
    (treatment p58 colourfragments)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (available p71)
    (colour p71 mauve)
    (wood p71 teak)
    (surface-condition p71 rough)
    (treatment p71 varnished)
    (goalsize p71 large)
    
    
    
    
    (available p72)
    (colour p72 red)
    (wood p72 teak)
    (surface-condition p72 smooth)
    (treatment p72 colourfragments)
    (goalsize p72 small)
    
    
    
    
    (available p73)
    (colour p73 white)
    (wood p73 walnut)
    (surface-condition p73 verysmooth)
    (treatment p73 glazed)
    (goalsize p73 small)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s4)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s8)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s5)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 oak)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s6)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 pine)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s3)
    (wood b9 pine)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s8)
    (wood b10 walnut)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 walnut)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 walnut)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 teak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 teak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s6)
    (wood b15 teak)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s7)
    (wood b16 teak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 teak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 beech)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 beech)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s6)
    (wood b20 beech)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 beech)
    (surface-condition b21 smooth)
    (available b21)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (treatment p0 varnished)
      (available p1)
      (colour p1 white)
      (surface-condition p1 smooth)
      (available p2)
      (wood p2 teak)
      (treatment p2 glazed)
      (available p3)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 black)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (wood p5 teak)
      (available p6)
      (colour p6 natural)
      (wood p6 oak)
      (available p7)
      (colour p7 red)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 natural)
      (wood p8 mahogany)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 black)
      (wood p9 teak)
      (available p10)
      (colour p10 natural)
      (wood p10 beech)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (wood p11 teak)
      (surface-condition p11 smooth)
      (available p12)
      (wood p12 pine)
      (surface-condition p12 smooth)
      (available p13)
      (colour p13 black)
      (treatment p13 varnished)
      (available p14)
      (wood p14 beech)
      (surface-condition p14 verysmooth)
      (available p15)
      (wood p15 teak)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 mauve)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 mauve)
      (wood p17 mahogany)
      (available p18)
      (colour p18 mauve)
      (wood p18 beech)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 mauve)
      (wood p19 walnut)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 blue)
      (wood p20 teak)
      (surface-condition p20 smooth)
      (treatment p20 glazed)
      (available p21)
      (wood p21 pine)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 red)
      (wood p22 teak)
      (available p23)
      (colour p23 red)
      (wood p23 oak)
      (available p24)
      (colour p24 natural)
      (wood p24 oak)
      (available p25)
      (colour p25 green)
      (surface-condition p25 verysmooth)
      (available p26)
      (colour p26 natural)
      (wood p26 mahogany)
      (available p27)
      (colour p27 red)
      (wood p27 beech)
      (available p28)
      (colour p28 mauve)
      (treatment p28 varnished)
      (available p29)
      (colour p29 red)
      (wood p29 oak)
      (treatment p29 glazed)
      (available p30)
      (wood p30 walnut)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 mauve)
      (wood p31 cherry)
      (treatment p31 varnished)
      (available p32)
      (wood p32 cherry)
      (treatment p32 varnished)
      (available p33)
      (colour p33 green)
      (wood p33 walnut)
      (available p34)
      (colour p34 mauve)
      (wood p34 oak)
      (surface-condition p34 smooth)
      (available p35)
      (wood p35 oak)
      (treatment p35 varnished)
      (available p36)
      (colour p36 green)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 natural)
      (surface-condition p37 smooth)
      (available p38)
      (wood p38 oak)
      (treatment p38 varnished)
      (available p39)
      (colour p39 red)
      (wood p39 beech)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 green)
      (treatment p40 glazed)
      (available p41)
      (colour p41 blue)
      (treatment p41 glazed)
      (available p42)
      (wood p42 mahogany)
      (surface-condition p42 smooth)
      (available p43)
      (wood p43 cherry)
      (surface-condition p43 smooth)
      (available p44)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 white)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 white)
      (surface-condition p46 verysmooth)
      (treatment p46 glazed)
      (available p47)
      (wood p47 mahogany)
      (treatment p47 glazed)
      (available p48)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 blue)
      (wood p49 walnut)
      (available p50)
      (colour p50 green)
      (wood p50 cherry)
      (surface-condition p50 verysmooth)
      (treatment p50 glazed)
      (available p51)
      (wood p51 beech)
      (surface-condition p51 verysmooth)
      (available p52)
      (wood p52 teak)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 black)
      (treatment p53 glazed)
      (available p54)
      (colour p54 black)
      (wood p54 pine)
      (available p55)
      (colour p55 green)
      (wood p55 cherry)
      (available p56)
      (colour p56 red)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 green)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 green)
      (wood p58 walnut)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 red)
      (treatment p59 glazed)
      (available p60)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (wood p61 pine)
      (treatment p61 varnished)
      (available p62)
      (wood p62 mahogany)
      (treatment p62 glazed)
      (available p63)
      (wood p63 beech)
      (treatment p63 glazed)
      (available p64)
      (colour p64 natural)
      (surface-condition p64 verysmooth)
      (available p65)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (wood p66 walnut)
      (treatment p66 glazed)
      (available p67)
      (colour p67 green)
      (wood p67 cherry)
      (available p68)
      (wood p68 mahogany)
      (treatment p68 glazed)
      (available p69)
      (surface-condition p69 smooth)
      (treatment p69 varnished)
      (available p70)
      (wood p70 beech)
      (surface-condition p70 smooth)
      (available p71)
      (colour p71 green)
      (wood p71 teak)
      (surface-condition p71 smooth)
      (treatment p71 glazed)
      (available p72)
      (colour p72 mauve)
      (wood p72 teak)
      (surface-condition p72 smooth)
      (treatment p72 varnished)
      (available p73)
      (wood p73 walnut)
      (treatment p73 varnished)
    )
  )
  
)
