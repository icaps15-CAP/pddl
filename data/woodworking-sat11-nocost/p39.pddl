; woodworking task with 86 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 474614

(define (problem wood-prob-sat-39)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green black white red mauve blue - acolour
    cherry pine oak mahogany beech walnut teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 - part
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
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
    (has-colour spray-varnisher2 green)
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
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (available p15)
    (colour p15 blue)
    (wood p15 cherry)
    (surface-condition p15 verysmooth)
    (treatment p15 varnished)
    (goalsize p15 medium)
    
    
    
    
    (available p16)
    (colour p16 red)
    (wood p16 teak)
    (surface-condition p16 rough)
    (treatment p16 varnished)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (available p18)
    (colour p18 white)
    (wood p18 beech)
    (surface-condition p18 rough)
    (treatment p18 varnished)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 black)
    (wood p22 pine)
    (surface-condition p22 verysmooth)
    (treatment p22 colourfragments)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (available p24)
    (colour p24 white)
    (wood p24 beech)
    (surface-condition p24 verysmooth)
    (treatment p24 varnished)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (available p28)
    (colour p28 blue)
    (wood p28 cherry)
    (surface-condition p28 rough)
    (treatment p28 colourfragments)
    (goalsize p28 small)
    
    
    
    
    (available p29)
    (colour p29 green)
    (wood p29 pine)
    (surface-condition p29 smooth)
    (treatment p29 colourfragments)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 green)
    (wood p36 mahogany)
    (surface-condition p36 smooth)
    (treatment p36 varnished)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 white)
    (wood p37 teak)
    (surface-condition p37 verysmooth)
    (treatment p37 glazed)
    (goalsize p37 medium)
    
    
    
    
    (available p38)
    (colour p38 green)
    (wood p38 pine)
    (surface-condition p38 verysmooth)
    (treatment p38 glazed)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (available p51)
    (colour p51 black)
    (wood p51 oak)
    (surface-condition p51 verysmooth)
    (treatment p51 varnished)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (available p65)
    (colour p65 blue)
    (wood p65 beech)
    (surface-condition p65 smooth)
    (treatment p65 varnished)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (available p72)
    (colour p72 red)
    (wood p72 cherry)
    (surface-condition p72 smooth)
    (treatment p72 colourfragments)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (available p74)
    (colour p74 red)
    (wood p74 cherry)
    (surface-condition p74 rough)
    (treatment p74 varnished)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (available p78)
    (colour p78 natural)
    (wood p78 oak)
    (surface-condition p78 rough)
    (treatment p78 colourfragments)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (available p81)
    (colour p81 blue)
    (wood p81 pine)
    (surface-condition p81 rough)
    (treatment p81 varnished)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s3)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s6)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s3)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s9)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 oak)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s5)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 pine)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s8)
    (wood b14 pine)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s1)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s10)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s2)
    (wood b17 walnut)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s10)
    (wood b18 teak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s6)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s11)
    (wood b20 teak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s7)
    (wood b21 teak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s6)
    (wood b22 beech)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s10)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s5)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (surface-condition p0 smooth)
      (available p1)
      (colour p1 green)
      (wood p1 oak)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 natural)
      (wood p2 walnut)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 green)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 black)
      (wood p4 teak)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 natural)
      (wood p5 teak)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (wood p6 teak)
      (treatment p6 glazed)
      (available p7)
      (colour p7 blue)
      (surface-condition p7 verysmooth)
      (available p8)
      (wood p8 teak)
      (surface-condition p8 verysmooth)
      (available p9)
      (colour p9 black)
      (surface-condition p9 smooth)
      (available p10)
      (wood p10 oak)
      (treatment p10 glazed)
      (available p11)
      (wood p11 mahogany)
      (treatment p11 varnished)
      (available p12)
      (wood p12 mahogany)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 mauve)
      (wood p13 cherry)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 natural)
      (surface-condition p14 smooth)
      (treatment p14 varnished)
      (available p15)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 blue)
      (wood p16 teak)
      (available p17)
      (colour p17 green)
      (wood p17 beech)
      (treatment p17 glazed)
      (available p18)
      (colour p18 mauve)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 white)
      (wood p19 walnut)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 white)
      (wood p20 oak)
      (available p21)
      (colour p21 natural)
      (wood p21 beech)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 blue)
      (wood p22 pine)
      (surface-condition p22 verysmooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 blue)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 black)
      (wood p24 beech)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 mauve)
      (surface-condition p25 verysmooth)
      (available p26)
      (wood p26 mahogany)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 mauve)
      (wood p27 mahogany)
      (available p28)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 natural)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 red)
      (wood p30 cherry)
      (treatment p30 varnished)
      (available p31)
      (colour p31 mauve)
      (surface-condition p31 smooth)
      (available p32)
      (wood p32 cherry)
      (treatment p32 varnished)
      (available p33)
      (wood p33 teak)
      (surface-condition p33 smooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 blue)
      (surface-condition p34 verysmooth)
      (available p35)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (wood p36 mahogany)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 blue)
      (surface-condition p37 smooth)
      (available p38)
      (colour p38 natural)
      (wood p38 pine)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 natural)
      (wood p39 teak)
      (available p40)
      (colour p40 green)
      (wood p40 mahogany)
      (available p41)
      (colour p41 mauve)
      (surface-condition p41 verysmooth)
      (available p42)
      (wood p42 teak)
      (treatment p42 glazed)
      (available p43)
      (colour p43 white)
      (wood p43 teak)
      (surface-condition p43 smooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 green)
      (wood p44 oak)
      (treatment p44 glazed)
      (available p45)
      (colour p45 natural)
      (surface-condition p45 smooth)
      (available p46)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 red)
      (wood p47 walnut)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 white)
      (wood p48 pine)
      (available p49)
      (wood p49 cherry)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 black)
      (wood p50 pine)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (wood p51 oak)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 black)
      (wood p52 teak)
      (available p53)
      (wood p53 beech)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 natural)
      (wood p54 oak)
      (available p55)
      (colour p55 natural)
      (wood p55 pine)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (surface-condition p56 verysmooth)
      (treatment p56 glazed)
      (available p57)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 green)
      (wood p58 oak)
      (surface-condition p58 smooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 white)
      (wood p59 cherry)
      (treatment p59 varnished)
      (available p60)
      (colour p60 green)
      (wood p60 teak)
      (treatment p60 glazed)
      (available p61)
      (wood p61 oak)
      (treatment p61 glazed)
      (available p62)
      (colour p62 red)
      (wood p62 cherry)
      (available p63)
      (colour p63 blue)
      (surface-condition p63 verysmooth)
      (available p64)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 white)
      (wood p65 beech)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 green)
      (treatment p66 varnished)
      (available p67)
      (wood p67 teak)
      (treatment p67 glazed)
      (available p68)
      (wood p68 mahogany)
      (surface-condition p68 verysmooth)
      (available p69)
      (colour p69 natural)
      (wood p69 oak)
      (available p70)
      (surface-condition p70 smooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 black)
      (wood p71 mahogany)
      (available p72)
      (wood p72 cherry)
      (surface-condition p72 verysmooth)
      (treatment p72 glazed)
      (available p73)
      (colour p73 red)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 mauve)
      (wood p74 cherry)
      (available p75)
      (wood p75 cherry)
      (treatment p75 varnished)
      (available p76)
      (colour p76 black)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 natural)
      (wood p77 cherry)
      (surface-condition p77 verysmooth)
      (treatment p77 varnished)
      (available p78)
      (wood p78 oak)
      (treatment p78 glazed)
      (available p79)
      (wood p79 mahogany)
      (treatment p79 glazed)
      (available p80)
      (colour p80 mauve)
      (wood p80 beech)
      (surface-condition p80 verysmooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 mauve)
      (wood p81 pine)
      (available p82)
      (wood p82 teak)
      (surface-condition p82 verysmooth)
      (available p83)
      (colour p83 natural)
      (wood p83 mahogany)
      (available p84)
      (colour p84 mauve)
      (treatment p84 glazed)
      (available p85)
      (surface-condition p85 smooth)
      (treatment p85 varnished)
    )
  )
  
)
