; woodworking task with 80 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 129222

(define (problem wood-prob-sat-71)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve green black blue red white - acolour
    cherry teak walnut mahogany oak beech pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 black)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (available p6)
    (colour p6 mauve)
    (wood p6 mahogany)
    (surface-condition p6 verysmooth)
    (treatment p6 colourfragments)
    (goalsize p6 large)
    
    
    
    
    (available p7)
    (colour p7 blue)
    (wood p7 mahogany)
    (surface-condition p7 verysmooth)
    (treatment p7 varnished)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 white)
    (wood p10 teak)
    (surface-condition p10 smooth)
    (treatment p10 colourfragments)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (available p15)
    (colour p15 natural)
    (wood p15 beech)
    (surface-condition p15 rough)
    (treatment p15 varnished)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (available p23)
    (colour p23 mauve)
    (wood p23 pine)
    (surface-condition p23 verysmooth)
    (treatment p23 colourfragments)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 red)
    (wood p26 oak)
    (surface-condition p26 rough)
    (treatment p26 glazed)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (available p30)
    (colour p30 black)
    (wood p30 teak)
    (surface-condition p30 smooth)
    (treatment p30 glazed)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (available p33)
    (colour p33 blue)
    (wood p33 teak)
    (surface-condition p33 smooth)
    (treatment p33 colourfragments)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 black)
    (wood p36 beech)
    (surface-condition p36 smooth)
    (treatment p36 colourfragments)
    (goalsize p36 large)
    
    
    
    
    (available p37)
    (colour p37 mauve)
    (wood p37 oak)
    (surface-condition p37 rough)
    (treatment p37 glazed)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (available p44)
    (colour p44 white)
    (wood p44 cherry)
    (surface-condition p44 smooth)
    (treatment p44 glazed)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (available p51)
    (colour p51 natural)
    (wood p51 mahogany)
    (surface-condition p51 smooth)
    (treatment p51 glazed)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (available p54)
    (colour p54 white)
    (wood p54 mahogany)
    (surface-condition p54 rough)
    (treatment p54 glazed)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (available p60)
    (colour p60 white)
    (wood p60 beech)
    (surface-condition p60 smooth)
    (treatment p60 glazed)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (available p63)
    (colour p63 green)
    (wood p63 mahogany)
    (surface-condition p63 smooth)
    (treatment p63 varnished)
    (goalsize p63 small)
    
    
    
    
    (available p64)
    (colour p64 green)
    (wood p64 mahogany)
    (surface-condition p64 smooth)
    (treatment p64 glazed)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (available p69)
    (colour p69 natural)
    (wood p69 oak)
    (surface-condition p69 verysmooth)
    (treatment p69 colourfragments)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (available p76)
    (colour p76 red)
    (wood p76 beech)
    (surface-condition p76 smooth)
    (treatment p76 glazed)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s6)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s2)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 oak)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s10)
    (wood b9 oak)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s5)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s3)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s10)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s2)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 teak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s4)
    (wood b21 teak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 beech)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s6)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s6)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
  )
  (:goal
    (and
      (available p0)
      (wood p0 oak)
      (surface-condition p0 smooth)
      (available p1)
      (wood p1 teak)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 green)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 white)
      (wood p3 teak)
      (available p4)
      (colour p4 black)
      (treatment p4 glazed)
      (available p5)
      (colour p5 green)
      (wood p5 beech)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 green)
      (wood p6 mahogany)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 black)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (wood p8 mahogany)
      (surface-condition p8 verysmooth)
      (available p9)
      (colour p9 mauve)
      (wood p9 cherry)
      (treatment p9 glazed)
      (available p10)
      (wood p10 teak)
      (treatment p10 varnished)
      (available p11)
      (colour p11 red)
      (treatment p11 glazed)
      (available p12)
      (colour p12 natural)
      (wood p12 mahogany)
      (surface-condition p12 smooth)
      (treatment p12 glazed)
      (available p13)
      (wood p13 teak)
      (surface-condition p13 verysmooth)
      (available p14)
      (wood p14 walnut)
      (surface-condition p14 verysmooth)
      (available p15)
      (wood p15 beech)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 black)
      (wood p16 pine)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (wood p17 mahogany)
      (treatment p17 varnished)
      (available p18)
      (colour p18 blue)
      (surface-condition p18 smooth)
      (available p19)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 green)
      (treatment p20 varnished)
      (available p21)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 mauve)
      (wood p22 oak)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 green)
      (wood p23 pine)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (wood p24 walnut)
      (treatment p24 glazed)
      (available p25)
      (colour p25 natural)
      (wood p25 cherry)
      (surface-condition p25 smooth)
      (available p26)
      (wood p26 oak)
      (treatment p26 varnished)
      (available p27)
      (colour p27 red)
      (wood p27 oak)
      (available p28)
      (wood p28 beech)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 white)
      (wood p30 teak)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 black)
      (wood p31 teak)
      (available p32)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 red)
      (wood p33 teak)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 white)
      (wood p34 cherry)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (wood p35 beech)
      (surface-condition p35 smooth)
      (available p36)
      (colour p36 green)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 blue)
      (wood p37 oak)
      (surface-condition p37 verysmooth)
      (available p38)
      (colour p38 red)
      (wood p38 beech)
      (surface-condition p38 verysmooth)
      (treatment p38 varnished)
      (available p39)
      (surface-condition p39 verysmooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 red)
      (wood p40 pine)
      (surface-condition p40 verysmooth)
      (treatment p40 glazed)
      (available p41)
      (wood p41 cherry)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 black)
      (treatment p42 varnished)
      (available p43)
      (colour p43 white)
      (wood p43 mahogany)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 mauve)
      (surface-condition p44 smooth)
      (available p45)
      (wood p45 walnut)
      (surface-condition p45 smooth)
      (treatment p45 varnished)
      (available p46)
      (wood p46 cherry)
      (treatment p46 glazed)
      (available p47)
      (colour p47 mauve)
      (surface-condition p47 smooth)
      (available p48)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (wood p49 beech)
      (treatment p49 varnished)
      (available p50)
      (colour p50 mauve)
      (wood p50 mahogany)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 green)
      (wood p51 mahogany)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 red)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 black)
      (wood p53 mahogany)
      (surface-condition p53 verysmooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 red)
      (surface-condition p54 smooth)
      (available p55)
      (wood p55 beech)
      (surface-condition p55 smooth)
      (available p56)
      (wood p56 walnut)
      (surface-condition p56 smooth)
      (treatment p56 varnished)
      (available p57)
      (wood p57 cherry)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (surface-condition p58 smooth)
      (treatment p58 varnished)
      (available p59)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 green)
      (wood p60 beech)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 green)
      (wood p61 beech)
      (available p62)
      (colour p62 green)
      (wood p62 oak)
      (surface-condition p62 verysmooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 natural)
      (wood p63 mahogany)
      (surface-condition p63 verysmooth)
      (available p64)
      (surface-condition p64 smooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 white)
      (wood p65 walnut)
      (surface-condition p65 verysmooth)
      (available p66)
      (wood p66 walnut)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 red)
      (wood p67 walnut)
      (surface-condition p67 smooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 red)
      (treatment p68 glazed)
      (available p69)
      (colour p69 red)
      (wood p69 oak)
      (surface-condition p69 smooth)
      (available p70)
      (colour p70 red)
      (wood p70 oak)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 black)
      (treatment p71 varnished)
      (available p72)
      (colour p72 natural)
      (wood p72 beech)
      (surface-condition p72 verysmooth)
      (treatment p72 glazed)
      (available p73)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 green)
      (treatment p74 varnished)
      (available p75)
      (colour p75 mauve)
      (wood p75 cherry)
      (surface-condition p75 smooth)
      (treatment p75 glazed)
      (available p76)
      (colour p76 black)
      (wood p76 beech)
      (surface-condition p76 smooth)
      (treatment p76 glazed)
      (available p77)
      (wood p77 oak)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 green)
      (wood p78 walnut)
      (available p79)
      (colour p79 natural)
      (wood p79 oak)
      (surface-condition p79 verysmooth)
      (treatment p79 varnished)
    )
  )
  
)
