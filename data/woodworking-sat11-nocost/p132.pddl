; woodworking task with 83 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 284531

(define (problem wood-prob-sat-132)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue green white red mauve black - acolour
    pine oak walnut beech mahogany cherry teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 - board
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
    (has-colour glazer0 blue)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (available p2)
    (colour p2 red)
    (wood p2 cherry)
    (surface-condition p2 verysmooth)
    (treatment p2 varnished)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 blue)
    (wood p4 walnut)
    (surface-condition p4 rough)
    (treatment p4 colourfragments)
    (goalsize p4 medium)
    
    
    
    
    (available p5)
    (colour p5 mauve)
    (wood p5 mahogany)
    (surface-condition p5 rough)
    (treatment p5 glazed)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (available p13)
    (colour p13 green)
    (wood p13 beech)
    (surface-condition p13 smooth)
    (treatment p13 colourfragments)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 blue)
    (wood p16 teak)
    (surface-condition p16 smooth)
    (treatment p16 colourfragments)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (available p23)
    (colour p23 white)
    (wood p23 beech)
    (surface-condition p23 rough)
    (treatment p23 varnished)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 blue)
    (wood p24 pine)
    (surface-condition p24 verysmooth)
    (treatment p24 glazed)
    (goalsize p24 small)
    
    
    
    
    (available p25)
    (colour p25 natural)
    (wood p25 teak)
    (surface-condition p25 verysmooth)
    (treatment p25 glazed)
    (goalsize p25 small)
    
    
    
    
    (available p26)
    (colour p26 natural)
    (wood p26 oak)
    (surface-condition p26 verysmooth)
    (treatment p26 colourfragments)
    (goalsize p26 large)
    
    
    
    
    (available p27)
    (colour p27 mauve)
    (wood p27 cherry)
    (surface-condition p27 verysmooth)
    (treatment p27 varnished)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (available p34)
    (colour p34 blue)
    (wood p34 pine)
    (surface-condition p34 smooth)
    (treatment p34 colourfragments)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 white)
    (wood p36 teak)
    (surface-condition p36 verysmooth)
    (treatment p36 colourfragments)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (available p39)
    (colour p39 red)
    (wood p39 mahogany)
    (surface-condition p39 smooth)
    (treatment p39 glazed)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (available p54)
    (colour p54 white)
    (wood p54 pine)
    (surface-condition p54 smooth)
    (treatment p54 glazed)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (available p56)
    (colour p56 black)
    (wood p56 pine)
    (surface-condition p56 smooth)
    (treatment p56 varnished)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (available p60)
    (colour p60 red)
    (wood p60 oak)
    (surface-condition p60 rough)
    (treatment p60 varnished)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 white)
    (wood p66 pine)
    (surface-condition p66 smooth)
    (treatment p66 colourfragments)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 mauve)
    (wood p67 pine)
    (surface-condition p67 smooth)
    (treatment p67 glazed)
    (goalsize p67 large)
    
    
    
    
    (available p68)
    (colour p68 natural)
    (wood p68 beech)
    (surface-condition p68 verysmooth)
    (treatment p68 varnished)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (available p74)
    (colour p74 black)
    (wood p74 walnut)
    (surface-condition p74 smooth)
    (treatment p74 varnished)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (available p82)
    (colour p82 black)
    (wood p82 oak)
    (surface-condition p82 smooth)
    (treatment p82 colourfragments)
    (goalsize p82 small)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s3)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
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
    (boardsize b9 s8)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s3)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s11)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s5)
    (wood b14 pine)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s6)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s10)
    (wood b16 walnut)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s3)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 teak)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s8)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s5)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s6)
    (wood b21 teak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s10)
    (wood b22 beech)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s6)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 white)
      (wood p2 cherry)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 cherry)
      (treatment p3 varnished)
      (available p4)
      (colour p4 black)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 red)
      (wood p5 mahogany)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 natural)
      (wood p6 beech)
      (available p7)
      (wood p7 pine)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 black)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (wood p9 beech)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 white)
      (treatment p10 glazed)
      (available p11)
      (colour p11 green)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 black)
      (wood p12 pine)
      (surface-condition p12 smooth)
      (available p13)
      (colour p13 black)
      (wood p13 beech)
      (surface-condition p13 verysmooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 mauve)
      (wood p14 beech)
      (surface-condition p14 smooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 white)
      (wood p15 oak)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 mauve)
      (surface-condition p16 smooth)
      (available p17)
      (colour p17 natural)
      (wood p17 teak)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 cherry)
      (surface-condition p18 smooth)
      (available p19)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (surface-condition p20 smooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 green)
      (wood p21 beech)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 blue)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 natural)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 green)
      (treatment p24 glazed)
      (available p25)
      (colour p25 black)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 red)
      (surface-condition p26 smooth)
      (available p27)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 black)
      (surface-condition p28 verysmooth)
      (available p29)
      (wood p29 cherry)
      (treatment p29 varnished)
      (available p30)
      (colour p30 natural)
      (wood p30 cherry)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 white)
      (surface-condition p31 smooth)
      (available p32)
      (colour p32 green)
      (treatment p32 glazed)
      (available p33)
      (colour p33 mauve)
      (wood p33 oak)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 natural)
      (wood p34 pine)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 red)
      (wood p35 beech)
      (available p36)
      (colour p36 green)
      (surface-condition p36 smooth)
      (available p37)
      (colour p37 natural)
      (wood p37 walnut)
      (treatment p37 glazed)
      (available p38)
      (wood p38 teak)
      (treatment p38 glazed)
      (available p39)
      (colour p39 mauve)
      (surface-condition p39 smooth)
      (available p40)
      (wood p40 walnut)
      (treatment p40 varnished)
      (available p41)
      (colour p41 white)
      (wood p41 pine)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 green)
      (surface-condition p42 verysmooth)
      (available p43)
      (colour p43 red)
      (surface-condition p43 verysmooth)
      (available p44)
      (colour p44 red)
      (treatment p44 varnished)
      (available p45)
      (colour p45 red)
      (wood p45 teak)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 mauve)
      (wood p46 walnut)
      (surface-condition p46 verysmooth)
      (treatment p46 glazed)
      (available p47)
      (wood p47 cherry)
      (surface-condition p47 verysmooth)
      (available p48)
      (colour p48 black)
      (treatment p48 varnished)
      (available p49)
      (wood p49 cherry)
      (treatment p49 varnished)
      (available p50)
      (wood p50 beech)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 blue)
      (wood p51 oak)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 white)
      (surface-condition p52 smooth)
      (available p53)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (wood p54 pine)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (wood p55 walnut)
      (treatment p55 varnished)
      (available p56)
      (colour p56 natural)
      (treatment p56 glazed)
      (available p57)
      (wood p57 teak)
      (treatment p57 varnished)
      (available p58)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (wood p59 mahogany)
      (treatment p59 glazed)
      (available p60)
      (wood p60 oak)
      (surface-condition p60 smooth)
      (available p61)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (wood p62 mahogany)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (wood p63 beech)
      (surface-condition p63 verysmooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 black)
      (wood p64 mahogany)
      (surface-condition p64 smooth)
      (treatment p64 varnished)
      (available p65)
      (wood p65 teak)
      (surface-condition p65 verysmooth)
      (available p66)
      (colour p66 natural)
      (wood p66 pine)
      (surface-condition p66 smooth)
      (treatment p66 glazed)
      (available p67)
      (colour p67 natural)
      (treatment p67 varnished)
      (available p68)
      (wood p68 beech)
      (surface-condition p68 smooth)
      (available p69)
      (wood p69 teak)
      (treatment p69 varnished)
      (available p70)
      (colour p70 mauve)
      (surface-condition p70 smooth)
      (available p71)
      (wood p71 mahogany)
      (surface-condition p71 verysmooth)
      (treatment p71 varnished)
      (available p72)
      (colour p72 white)
      (wood p72 mahogany)
      (surface-condition p72 smooth)
      (treatment p72 glazed)
      (available p73)
      (colour p73 blue)
      (wood p73 mahogany)
      (surface-condition p73 smooth)
      (treatment p73 glazed)
      (available p74)
      (colour p74 white)
      (wood p74 walnut)
      (surface-condition p74 smooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 natural)
      (surface-condition p75 smooth)
      (available p76)
      (surface-condition p76 verysmooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 green)
      (surface-condition p77 smooth)
      (available p78)
      (colour p78 white)
      (wood p78 pine)
      (available p79)
      (colour p79 black)
      (wood p79 oak)
      (surface-condition p79 verysmooth)
      (treatment p79 varnished)
      (available p80)
      (colour p80 natural)
      (treatment p80 varnished)
      (available p81)
      (colour p81 green)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 natural)
      (treatment p82 glazed)
    )
  )
  
)
