; woodworking task with 89 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 785859

(define (problem wood-prob-sat-74)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue mauve black green white red - acolour
    beech pine walnut cherry mahogany oak teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (available p8)
    (colour p8 black)
    (wood p8 pine)
    (surface-condition p8 smooth)
    (treatment p8 colourfragments)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
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
    (colour p15 green)
    (wood p15 teak)
    (surface-condition p15 verysmooth)
    (treatment p15 colourfragments)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 white)
    (wood p21 oak)
    (surface-condition p21 rough)
    (treatment p21 colourfragments)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 red)
    (wood p28 cherry)
    (surface-condition p28 verysmooth)
    (treatment p28 glazed)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 blue)
    (wood p31 cherry)
    (surface-condition p31 verysmooth)
    (treatment p31 colourfragments)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 green)
    (wood p37 mahogany)
    (surface-condition p37 rough)
    (treatment p37 colourfragments)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (available p43)
    (colour p43 mauve)
    (wood p43 oak)
    (surface-condition p43 smooth)
    (treatment p43 glazed)
    (goalsize p43 medium)
    
    
    
    
    (available p44)
    (colour p44 black)
    (wood p44 mahogany)
    (surface-condition p44 rough)
    (treatment p44 colourfragments)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (available p49)
    (colour p49 natural)
    (wood p49 oak)
    (surface-condition p49 smooth)
    (treatment p49 glazed)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (available p52)
    (colour p52 green)
    (wood p52 oak)
    (surface-condition p52 smooth)
    (treatment p52 varnished)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (available p54)
    (colour p54 blue)
    (wood p54 mahogany)
    (surface-condition p54 verysmooth)
    (treatment p54 glazed)
    (goalsize p54 medium)
    
    
    
    
    (available p55)
    (colour p55 natural)
    (wood p55 teak)
    (surface-condition p55 smooth)
    (treatment p55 varnished)
    (goalsize p55 large)
    
    
    
    
    (available p56)
    (colour p56 blue)
    (wood p56 teak)
    (surface-condition p56 verysmooth)
    (treatment p56 colourfragments)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (available p64)
    (colour p64 white)
    (wood p64 beech)
    (surface-condition p64 smooth)
    (treatment p64 varnished)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (available p67)
    (colour p67 blue)
    (wood p67 pine)
    (surface-condition p67 verysmooth)
    (treatment p67 varnished)
    (goalsize p67 small)
    
    
    
    
    (available p68)
    (colour p68 white)
    (wood p68 walnut)
    (surface-condition p68 rough)
    (treatment p68 varnished)
    (goalsize p68 small)
    
    
    
    
    (available p69)
    (colour p69 natural)
    (wood p69 mahogany)
    (surface-condition p69 rough)
    (treatment p69 colourfragments)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (available p81)
    (colour p81 blue)
    (wood p81 walnut)
    (surface-condition p81 verysmooth)
    (treatment p81 glazed)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (available p85)
    (colour p85 green)
    (wood p85 walnut)
    (surface-condition p85 verysmooth)
    (treatment p85 colourfragments)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (available p88)
    (colour p88 blue)
    (wood p88 beech)
    (surface-condition p88 verysmooth)
    (treatment p88 glazed)
    (goalsize p88 large)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s10)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 mahogany)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s7)
    (wood b7 mahogany)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s7)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s5)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 oak)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s8)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s10)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s1)
    (wood b13 oak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 pine)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s9)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s6)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s6)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s6)
    (wood b20 walnut)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 teak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s9)
    (wood b22 teak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s1)
    (wood b23 teak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s11)
    (wood b24 beech)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s8)
    (wood b25 beech)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s11)
    (wood b26 beech)
    (surface-condition b26 rough)
    (available b26)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 mahogany)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 green)
      (treatment p2 varnished)
      (available p3)
      (colour p3 green)
      (treatment p3 varnished)
      (available p4)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 green)
      (wood p5 pine)
      (available p6)
      (colour p6 blue)
      (wood p6 pine)
      (surface-condition p6 smooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 mauve)
      (treatment p7 varnished)
      (available p8)
      (colour p8 green)
      (treatment p8 glazed)
      (available p9)
      (wood p9 oak)
      (treatment p9 glazed)
      (available p10)
      (colour p10 blue)
      (wood p10 oak)
      (treatment p10 varnished)
      (available p11)
      (colour p11 natural)
      (wood p11 mahogany)
      (surface-condition p11 smooth)
      (available p12)
      (colour p12 blue)
      (wood p12 mahogany)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 natural)
      (wood p13 cherry)
      (available p14)
      (wood p14 oak)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 natural)
      (wood p15 teak)
      (surface-condition p15 verysmooth)
      (available p16)
      (wood p16 cherry)
      (treatment p16 glazed)
      (available p17)
      (colour p17 natural)
      (wood p17 beech)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 mauve)
      (wood p18 beech)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 green)
      (wood p19 cherry)
      (available p20)
      (colour p20 green)
      (wood p20 beech)
      (available p21)
      (colour p21 black)
      (surface-condition p21 smooth)
      (available p22)
      (colour p22 natural)
      (wood p22 cherry)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 green)
      (wood p23 cherry)
      (available p24)
      (wood p24 walnut)
      (treatment p24 varnished)
      (available p25)
      (colour p25 blue)
      (surface-condition p25 smooth)
      (available p26)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 mauve)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 white)
      (wood p28 cherry)
      (available p29)
      (colour p29 white)
      (wood p29 cherry)
      (treatment p29 glazed)
      (available p30)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 red)
      (wood p31 cherry)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 natural)
      (surface-condition p32 verysmooth)
      (available p33)
      (wood p33 cherry)
      (treatment p33 glazed)
      (available p34)
      (colour p34 natural)
      (wood p34 cherry)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 mauve)
      (wood p35 walnut)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 green)
      (treatment p36 varnished)
      (available p37)
      (colour p37 natural)
      (wood p37 mahogany)
      (treatment p37 varnished)
      (available p38)
      (colour p38 white)
      (treatment p38 varnished)
      (available p39)
      (wood p39 teak)
      (treatment p39 varnished)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (surface-condition p41 smooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 black)
      (wood p42 walnut)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 black)
      (surface-condition p43 smooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 natural)
      (wood p44 mahogany)
      (available p45)
      (colour p45 black)
      (wood p45 walnut)
      (treatment p45 glazed)
      (available p46)
      (wood p46 walnut)
      (surface-condition p46 smooth)
      (available p47)
      (colour p47 mauve)
      (wood p47 walnut)
      (treatment p47 varnished)
      (available p48)
      (colour p48 white)
      (wood p48 walnut)
      (treatment p48 varnished)
      (available p49)
      (colour p49 black)
      (wood p49 oak)
      (treatment p49 glazed)
      (available p50)
      (colour p50 red)
      (wood p50 cherry)
      (surface-condition p50 verysmooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 blue)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 black)
      (wood p52 oak)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (wood p53 walnut)
      (surface-condition p53 verysmooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 natural)
      (wood p54 mahogany)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 white)
      (wood p55 teak)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 green)
      (surface-condition p56 smooth)
      (treatment p56 varnished)
      (available p57)
      (wood p57 oak)
      (surface-condition p57 verysmooth)
      (available p58)
      (wood p58 cherry)
      (treatment p58 glazed)
      (available p59)
      (colour p59 green)
      (surface-condition p59 smooth)
      (available p60)
      (surface-condition p60 verysmooth)
      (treatment p60 glazed)
      (available p61)
      (wood p61 oak)
      (treatment p61 varnished)
      (available p62)
      (colour p62 mauve)
      (wood p62 walnut)
      (available p63)
      (colour p63 blue)
      (wood p63 walnut)
      (surface-condition p63 verysmooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 mauve)
      (wood p64 beech)
      (surface-condition p64 verysmooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 mauve)
      (wood p65 teak)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 mauve)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 red)
      (wood p67 pine)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 black)
      (wood p68 walnut)
      (available p69)
      (wood p69 mahogany)
      (treatment p69 glazed)
      (available p70)
      (colour p70 green)
      (wood p70 cherry)
      (surface-condition p70 verysmooth)
      (available p71)
      (surface-condition p71 smooth)
      (treatment p71 glazed)
      (available p72)
      (wood p72 pine)
      (treatment p72 glazed)
      (available p73)
      (wood p73 cherry)
      (treatment p73 glazed)
      (available p74)
      (colour p74 white)
      (surface-condition p74 verysmooth)
      (treatment p74 varnished)
      (available p75)
      (wood p75 oak)
      (surface-condition p75 verysmooth)
      (treatment p75 glazed)
      (available p76)
      (colour p76 mauve)
      (wood p76 mahogany)
      (treatment p76 varnished)
      (available p77)
      (colour p77 blue)
      (treatment p77 varnished)
      (available p78)
      (wood p78 pine)
      (surface-condition p78 verysmooth)
      (available p79)
      (colour p79 green)
      (surface-condition p79 verysmooth)
      (available p80)
      (colour p80 black)
      (wood p80 cherry)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 green)
      (wood p81 walnut)
      (treatment p81 glazed)
      (available p82)
      (surface-condition p82 smooth)
      (treatment p82 glazed)
      (available p83)
      (colour p83 green)
      (treatment p83 varnished)
      (available p84)
      (colour p84 black)
      (wood p84 walnut)
      (treatment p84 varnished)
      (available p85)
      (colour p85 white)
      (wood p85 walnut)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 white)
      (treatment p86 glazed)
      (available p87)
      (wood p87 teak)
      (treatment p87 varnished)
      (available p88)
      (colour p88 black)
      (surface-condition p88 smooth)
      (treatment p88 glazed)
    )
  )
  
)
