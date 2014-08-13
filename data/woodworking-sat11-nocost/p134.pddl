; woodworking task with 89 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 970446

(define (problem wood-prob-sat-134)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve blue green white red black - acolour
    mahogany pine beech cherry walnut teak oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 blue)
    (wood p0 cherry)
    (surface-condition p0 verysmooth)
    (treatment p0 glazed)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 blue)
    (wood p4 pine)
    (surface-condition p4 rough)
    (treatment p4 glazed)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 green)
    (wood p7 beech)
    (surface-condition p7 smooth)
    (treatment p7 glazed)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (available p16)
    (colour p16 green)
    (wood p16 walnut)
    (surface-condition p16 rough)
    (treatment p16 glazed)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (available p18)
    (colour p18 natural)
    (wood p18 oak)
    (surface-condition p18 smooth)
    (treatment p18 varnished)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (available p29)
    (colour p29 green)
    (wood p29 pine)
    (surface-condition p29 verysmooth)
    (treatment p29 glazed)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 mauve)
    (wood p33 oak)
    (surface-condition p33 smooth)
    (treatment p33 colourfragments)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 red)
    (wood p38 teak)
    (surface-condition p38 smooth)
    (treatment p38 glazed)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (available p43)
    (colour p43 blue)
    (wood p43 teak)
    (surface-condition p43 smooth)
    (treatment p43 glazed)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (available p45)
    (colour p45 black)
    (wood p45 oak)
    (surface-condition p45 rough)
    (treatment p45 varnished)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (available p47)
    (colour p47 white)
    (wood p47 beech)
    (surface-condition p47 verysmooth)
    (treatment p47 colourfragments)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (available p49)
    (colour p49 white)
    (wood p49 pine)
    (surface-condition p49 verysmooth)
    (treatment p49 colourfragments)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (available p58)
    (colour p58 green)
    (wood p58 oak)
    (surface-condition p58 verysmooth)
    (treatment p58 glazed)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (available p62)
    (colour p62 black)
    (wood p62 teak)
    (surface-condition p62 smooth)
    (treatment p62 varnished)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (available p64)
    (colour p64 blue)
    (wood p64 cherry)
    (surface-condition p64 smooth)
    (treatment p64 glazed)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 mauve)
    (wood p65 teak)
    (surface-condition p65 verysmooth)
    (treatment p65 colourfragments)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 white)
    (wood p67 cherry)
    (surface-condition p67 smooth)
    (treatment p67 glazed)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (available p70)
    (colour p70 red)
    (wood p70 mahogany)
    (surface-condition p70 rough)
    (treatment p70 varnished)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (available p77)
    (colour p77 green)
    (wood p77 walnut)
    (surface-condition p77 rough)
    (treatment p77 glazed)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (available p79)
    (colour p79 blue)
    (wood p79 walnut)
    (surface-condition p79 rough)
    (treatment p79 glazed)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (available p87)
    (colour p87 blue)
    (wood p87 beech)
    (surface-condition p87 smooth)
    (treatment p87 glazed)
    (goalsize p87 small)
    
    
    
    
    (available p88)
    (colour p88 green)
    (wood p88 walnut)
    (surface-condition p88 verysmooth)
    (treatment p88 colourfragments)
    (goalsize p88 medium)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s3)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 mahogany)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s7)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s5)
    (wood b5 mahogany)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s8)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s4)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 pine)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s1)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s6)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
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
    (boardsize b19 s10)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 teak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s9)
    (wood b21 teak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s5)
    (wood b22 beech)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s11)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s3)
    (wood b25 beech)
    (surface-condition b25 rough)
    (available b25)
  )
  (:goal
    (and
      (available p0)
      (wood p0 cherry)
      (treatment p0 varnished)
      (available p1)
      (colour p1 red)
      (wood p1 beech)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 green)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 natural)
      (wood p4 pine)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 black)
      (wood p6 walnut)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 black)
      (treatment p7 varnished)
      (available p8)
      (wood p8 mahogany)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (wood p9 walnut)
      (surface-condition p9 verysmooth)
      (available p10)
      (colour p10 blue)
      (wood p10 walnut)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 red)
      (wood p11 teak)
      (treatment p11 varnished)
      (available p12)
      (colour p12 mauve)
      (treatment p12 varnished)
      (available p13)
      (colour p13 mauve)
      (wood p13 beech)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (wood p14 mahogany)
      (treatment p14 glazed)
      (available p15)
      (colour p15 green)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 mauve)
      (wood p16 walnut)
      (available p17)
      (colour p17 green)
      (wood p17 beech)
      (available p18)
      (colour p18 blue)
      (wood p18 oak)
      (available p19)
      (wood p19 oak)
      (treatment p19 varnished)
      (available p20)
      (colour p20 green)
      (wood p20 beech)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (wood p21 pine)
      (surface-condition p21 smooth)
      (available p22)
      (colour p22 red)
      (surface-condition p22 smooth)
      (available p23)
      (wood p23 cherry)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 natural)
      (wood p24 beech)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 mauve)
      (wood p25 oak)
      (available p26)
      (colour p26 mauve)
      (wood p26 pine)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (wood p27 oak)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 white)
      (treatment p28 varnished)
      (available p29)
      (colour p29 red)
      (wood p29 pine)
      (available p30)
      (wood p30 walnut)
      (treatment p30 glazed)
      (available p31)
      (wood p31 pine)
      (treatment p31 glazed)
      (available p32)
      (colour p32 red)
      (wood p32 walnut)
      (available p33)
      (colour p33 green)
      (treatment p33 glazed)
      (available p34)
      (colour p34 mauve)
      (treatment p34 glazed)
      (available p35)
      (colour p35 black)
      (wood p35 beech)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 red)
      (wood p36 oak)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 black)
      (treatment p37 glazed)
      (available p38)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 natural)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 natural)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 white)
      (surface-condition p41 smooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 blue)
      (treatment p42 glazed)
      (available p43)
      (colour p43 black)
      (wood p43 teak)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 green)
      (wood p44 walnut)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 white)
      (wood p45 oak)
      (available p46)
      (colour p46 white)
      (treatment p46 glazed)
      (available p47)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 green)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (wood p49 pine)
      (treatment p49 varnished)
      (available p50)
      (colour p50 black)
      (treatment p50 varnished)
      (available p51)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 mauve)
      (surface-condition p52 smooth)
      (available p53)
      (colour p53 natural)
      (treatment p53 glazed)
      (available p54)
      (colour p54 natural)
      (wood p54 beech)
      (available p55)
      (surface-condition p55 smooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 green)
      (wood p56 walnut)
      (available p57)
      (wood p57 cherry)
      (surface-condition p57 verysmooth)
      (available p58)
      (colour p58 blue)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 red)
      (wood p59 pine)
      (available p60)
      (colour p60 red)
      (treatment p60 varnished)
      (available p61)
      (wood p61 pine)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 natural)
      (wood p62 teak)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (wood p63 mahogany)
      (surface-condition p63 smooth)
      (available p64)
      (colour p64 white)
      (surface-condition p64 verysmooth)
      (available p65)
      (wood p65 teak)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (wood p66 beech)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 red)
      (wood p67 cherry)
      (treatment p67 varnished)
      (available p68)
      (colour p68 white)
      (surface-condition p68 verysmooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 white)
      (wood p69 walnut)
      (surface-condition p69 smooth)
      (treatment p69 glazed)
      (available p70)
      (wood p70 mahogany)
      (surface-condition p70 verysmooth)
      (available p71)
      (colour p71 white)
      (wood p71 pine)
      (available p72)
      (colour p72 natural)
      (wood p72 walnut)
      (surface-condition p72 verysmooth)
      (treatment p72 varnished)
      (available p73)
      (colour p73 red)
      (wood p73 beech)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (wood p74 teak)
      (surface-condition p74 verysmooth)
      (available p75)
      (surface-condition p75 verysmooth)
      (treatment p75 glazed)
      (available p76)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (surface-condition p77 verysmooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 blue)
      (surface-condition p78 smooth)
      (available p79)
      (colour p79 natural)
      (wood p79 walnut)
      (surface-condition p79 verysmooth)
      (available p80)
      (wood p80 oak)
      (treatment p80 varnished)
      (available p81)
      (colour p81 natural)
      (treatment p81 glazed)
      (available p82)
      (wood p82 teak)
      (surface-condition p82 smooth)
      (available p83)
      (colour p83 black)
      (wood p83 mahogany)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (wood p84 oak)
      (surface-condition p84 smooth)
      (available p85)
      (colour p85 mauve)
      (surface-condition p85 verysmooth)
      (available p86)
      (surface-condition p86 verysmooth)
      (treatment p86 glazed)
      (available p87)
      (surface-condition p87 smooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 black)
      (wood p88 walnut)
    )
  )
  
)
