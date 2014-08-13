; woodworking task with 92 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 150767

(define (problem wood-prob-sat-75)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black red blue green mauve white - acolour
    pine walnut mahogany beech oak cherry teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 natural)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 mauve)
    (wood p3 cherry)
    (surface-condition p3 rough)
    (treatment p3 colourfragments)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 mauve)
    (wood p6 teak)
    (surface-condition p6 smooth)
    (treatment p6 glazed)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (available p30)
    (colour p30 black)
    (wood p30 teak)
    (surface-condition p30 rough)
    (treatment p30 glazed)
    (goalsize p30 small)
    
    
    
    
    (available p31)
    (colour p31 black)
    (wood p31 teak)
    (surface-condition p31 rough)
    (treatment p31 colourfragments)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 mauve)
    (wood p36 oak)
    (surface-condition p36 rough)
    (treatment p36 colourfragments)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (available p38)
    (colour p38 black)
    (wood p38 oak)
    (surface-condition p38 verysmooth)
    (treatment p38 glazed)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (available p40)
    (colour p40 natural)
    (wood p40 cherry)
    (surface-condition p40 verysmooth)
    (treatment p40 varnished)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (available p44)
    (colour p44 red)
    (wood p44 beech)
    (surface-condition p44 rough)
    (treatment p44 colourfragments)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (available p46)
    (colour p46 black)
    (wood p46 cherry)
    (surface-condition p46 rough)
    (treatment p46 glazed)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (available p48)
    (colour p48 mauve)
    (wood p48 teak)
    (surface-condition p48 verysmooth)
    (treatment p48 colourfragments)
    (goalsize p48 large)
    
    
    
    
    (available p49)
    (colour p49 mauve)
    (wood p49 teak)
    (surface-condition p49 verysmooth)
    (treatment p49 glazed)
    (goalsize p49 large)
    
    
    
    
    (available p50)
    (colour p50 black)
    (wood p50 teak)
    (surface-condition p50 smooth)
    (treatment p50 colourfragments)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (available p71)
    (colour p71 white)
    (wood p71 cherry)
    (surface-condition p71 smooth)
    (treatment p71 varnished)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (available p73)
    (colour p73 white)
    (wood p73 mahogany)
    (surface-condition p73 verysmooth)
    (treatment p73 glazed)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (available p76)
    (colour p76 mauve)
    (wood p76 teak)
    (surface-condition p76 smooth)
    (treatment p76 glazed)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (available p82)
    (colour p82 natural)
    (wood p82 cherry)
    (surface-condition p82 rough)
    (treatment p82 colourfragments)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (available p85)
    (colour p85 white)
    (wood p85 oak)
    (surface-condition p85 smooth)
    (treatment p85 colourfragments)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
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
    (boardsize b3 s5)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s5)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s6)
    (wood b6 mahogany)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s6)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s11)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s10)
    (wood b9 oak)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s7)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s10)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 walnut)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s8)
    (wood b16 walnut)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s6)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 teak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 teak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s10)
    (wood b21 teak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s1)
    (wood b22 teak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s6)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s10)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 beech)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s8)
    (wood b26 beech)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s6)
    (wood b27 beech)
    (surface-condition b27 smooth)
    (available b27)
  )
  (:goal
    (and
      (available p0)
      (wood p0 walnut)
      (treatment p0 glazed)
      (available p1)
      (wood p1 walnut)
      (treatment p1 varnished)
      (available p2)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (wood p3 cherry)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 mauve)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 black)
      (wood p5 teak)
      (surface-condition p5 smooth)
      (available p6)
      (wood p6 teak)
      (surface-condition p6 verysmooth)
      (available p7)
      (colour p7 natural)
      (wood p7 beech)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 green)
      (wood p9 pine)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 natural)
      (wood p10 beech)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (wood p11 teak)
      (treatment p11 glazed)
      (available p12)
      (colour p12 green)
      (wood p12 pine)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 teak)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 natural)
      (wood p16 oak)
      (surface-condition p16 verysmooth)
      (treatment p16 glazed)
      (available p17)
      (wood p17 pine)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 natural)
      (wood p18 walnut)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 green)
      (wood p19 cherry)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 green)
      (wood p20 oak)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 blue)
      (wood p22 walnut)
      (available p23)
      (colour p23 green)
      (wood p23 beech)
      (available p24)
      (colour p24 blue)
      (wood p24 mahogany)
      (surface-condition p24 smooth)
      (treatment p24 varnished)
      (available p25)
      (wood p25 mahogany)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 mauve)
      (wood p26 teak)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 blue)
      (wood p28 walnut)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 green)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 natural)
      (treatment p31 glazed)
      (available p32)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (wood p33 teak)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 white)
      (wood p34 cherry)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (wood p35 cherry)
      (treatment p35 glazed)
      (available p36)
      (colour p36 black)
      (wood p36 oak)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 white)
      (treatment p37 glazed)
      (available p38)
      (colour p38 blue)
      (surface-condition p38 smooth)
      (available p39)
      (wood p39 cherry)
      (treatment p39 glazed)
      (available p40)
      (colour p40 mauve)
      (treatment p40 glazed)
      (available p41)
      (wood p41 cherry)
      (treatment p41 varnished)
      (available p42)
      (colour p42 green)
      (treatment p42 glazed)
      (available p43)
      (colour p43 red)
      (surface-condition p43 verysmooth)
      (available p44)
      (colour p44 mauve)
      (wood p44 beech)
      (surface-condition p44 verysmooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 green)
      (wood p45 cherry)
      (treatment p45 varnished)
      (available p46)
      (wood p46 cherry)
      (surface-condition p46 verysmooth)
      (available p47)
      (colour p47 natural)
      (wood p47 teak)
      (treatment p47 varnished)
      (available p48)
      (colour p48 white)
      (wood p48 teak)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 natural)
      (treatment p49 glazed)
      (available p50)
      (colour p50 natural)
      (surface-condition p50 smooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 natural)
      (wood p51 beech)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 white)
      (wood p52 pine)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 red)
      (wood p53 beech)
      (surface-condition p53 smooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 natural)
      (surface-condition p54 verysmooth)
      (available p55)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (wood p56 pine)
      (surface-condition p56 smooth)
      (treatment p56 varnished)
      (available p57)
      (wood p57 walnut)
      (treatment p57 varnished)
      (available p58)
      (colour p58 red)
      (surface-condition p58 verysmooth)
      (available p59)
      (colour p59 mauve)
      (treatment p59 varnished)
      (available p60)
      (colour p60 green)
      (wood p60 mahogany)
      (surface-condition p60 verysmooth)
      (treatment p60 glazed)
      (available p61)
      (wood p61 oak)
      (surface-condition p61 smooth)
      (treatment p61 glazed)
      (available p62)
      (colour p62 natural)
      (wood p62 walnut)
      (surface-condition p62 verysmooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 red)
      (wood p63 beech)
      (available p64)
      (colour p64 green)
      (wood p64 teak)
      (surface-condition p64 smooth)
      (available p65)
      (wood p65 beech)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 black)
      (wood p66 oak)
      (surface-condition p66 verysmooth)
      (treatment p66 glazed)
      (available p67)
      (wood p67 beech)
      (treatment p67 glazed)
      (available p68)
      (colour p68 green)
      (treatment p68 glazed)
      (available p69)
      (wood p69 pine)
      (surface-condition p69 smooth)
      (treatment p69 varnished)
      (available p70)
      (colour p70 red)
      (wood p70 oak)
      (available p71)
      (colour p71 natural)
      (wood p71 cherry)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 white)
      (wood p72 beech)
      (available p73)
      (colour p73 green)
      (surface-condition p73 verysmooth)
      (available p74)
      (colour p74 natural)
      (wood p74 mahogany)
      (treatment p74 varnished)
      (available p75)
      (colour p75 red)
      (wood p75 cherry)
      (surface-condition p75 verysmooth)
      (available p76)
      (wood p76 teak)
      (treatment p76 varnished)
      (available p77)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (wood p78 teak)
      (surface-condition p78 smooth)
      (available p79)
      (colour p79 mauve)
      (treatment p79 glazed)
      (available p80)
      (wood p80 mahogany)
      (surface-condition p80 smooth)
      (treatment p80 glazed)
      (available p81)
      (colour p81 white)
      (wood p81 teak)
      (surface-condition p81 smooth)
      (treatment p81 glazed)
      (available p82)
      (surface-condition p82 verysmooth)
      (treatment p82 glazed)
      (available p83)
      (wood p83 pine)
      (treatment p83 varnished)
      (available p84)
      (colour p84 natural)
      (wood p84 mahogany)
      (treatment p84 glazed)
      (available p85)
      (colour p85 red)
      (treatment p85 glazed)
      (available p86)
      (colour p86 natural)
      (wood p86 oak)
      (surface-condition p86 smooth)
      (treatment p86 glazed)
      (available p87)
      (colour p87 mauve)
      (wood p87 beech)
      (surface-condition p87 verysmooth)
      (treatment p87 varnished)
      (available p88)
      (wood p88 pine)
      (treatment p88 varnished)
      (available p89)
      (surface-condition p89 verysmooth)
      (treatment p89 varnished)
      (available p90)
      (colour p90 white)
      (treatment p90 glazed)
      (available p91)
      (colour p91 white)
      (surface-condition p91 verysmooth)
    )
  )
  
)
