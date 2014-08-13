; woodworking task with 95 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 131712

(define (problem wood-prob-sat-136)
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
    teak cherry walnut pine beech oak mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
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
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (available p2)
    (colour p2 red)
    (wood p2 mahogany)
    (surface-condition p2 rough)
    (treatment p2 colourfragments)
    (goalsize p2 medium)
    
    
    
    
    (available p3)
    (colour p3 natural)
    (wood p3 walnut)
    (surface-condition p3 rough)
    (treatment p3 glazed)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (available p9)
    (colour p9 natural)
    (wood p9 oak)
    (surface-condition p9 rough)
    (treatment p9 glazed)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 black)
    (wood p11 walnut)
    (surface-condition p11 rough)
    (treatment p11 glazed)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 green)
    (wood p13 pine)
    (surface-condition p13 verysmooth)
    (treatment p13 colourfragments)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (available p18)
    (colour p18 black)
    (wood p18 beech)
    (surface-condition p18 smooth)
    (treatment p18 colourfragments)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (available p41)
    (colour p41 red)
    (wood p41 oak)
    (surface-condition p41 verysmooth)
    (treatment p41 varnished)
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
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (available p52)
    (colour p52 blue)
    (wood p52 pine)
    (surface-condition p52 verysmooth)
    (treatment p52 varnished)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (available p56)
    (colour p56 black)
    (wood p56 beech)
    (surface-condition p56 rough)
    (treatment p56 varnished)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (available p60)
    (colour p60 mauve)
    (wood p60 cherry)
    (surface-condition p60 verysmooth)
    (treatment p60 varnished)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (available p63)
    (colour p63 white)
    (wood p63 beech)
    (surface-condition p63 verysmooth)
    (treatment p63 colourfragments)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (available p66)
    (colour p66 blue)
    (wood p66 cherry)
    (surface-condition p66 smooth)
    (treatment p66 varnished)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (available p71)
    (colour p71 natural)
    (wood p71 beech)
    (surface-condition p71 smooth)
    (treatment p71 colourfragments)
    (goalsize p71 medium)
    
    
    
    
    (available p72)
    (colour p72 red)
    (wood p72 walnut)
    (surface-condition p72 verysmooth)
    (treatment p72 varnished)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (available p77)
    (colour p77 green)
    (wood p77 oak)
    (surface-condition p77 rough)
    (treatment p77 varnished)
    (goalsize p77 medium)
    
    
    
    
    (available p78)
    (colour p78 natural)
    (wood p78 cherry)
    (surface-condition p78 verysmooth)
    (treatment p78 varnished)
    (goalsize p78 large)
    
    
    
    
    (available p79)
    (colour p79 blue)
    (wood p79 walnut)
    (surface-condition p79 verysmooth)
    (treatment p79 colourfragments)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (available p92)
    (colour p92 natural)
    (wood p92 cherry)
    (surface-condition p92 verysmooth)
    (treatment p92 glazed)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (boardsize b0 s5)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s6)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s11)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s4)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s10)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s3)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s11)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 pine)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s9)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s6)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s3)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 teak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s5)
    (wood b22 teak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 teak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s5)
    (wood b24 teak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s5)
    (wood b25 beech)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s8)
    (wood b26 beech)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 beech)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s7)
    (wood b28 beech)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s2)
    (wood b29 beech)
    (surface-condition b29 smooth)
    (available b29)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (wood p1 beech)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 green)
      (wood p3 walnut)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 mauve)
      (wood p4 mahogany)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 natural)
      (wood p5 beech)
      (available p6)
      (wood p6 beech)
      (treatment p6 varnished)
      (available p7)
      (wood p7 beech)
      (treatment p7 glazed)
      (available p8)
      (wood p8 pine)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 black)
      (wood p9 oak)
      (treatment p9 varnished)
      (available p10)
      (wood p10 cherry)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (wood p11 walnut)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (surface-condition p12 smooth)
      (treatment p12 glazed)
      (available p13)
      (wood p13 pine)
      (treatment p13 varnished)
      (available p14)
      (colour p14 red)
      (treatment p14 glazed)
      (available p15)
      (colour p15 blue)
      (wood p15 teak)
      (available p16)
      (wood p16 mahogany)
      (surface-condition p16 verysmooth)
      (available p17)
      (wood p17 teak)
      (surface-condition p17 smooth)
      (available p18)
      (wood p18 beech)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 blue)
      (treatment p19 varnished)
      (available p20)
      (colour p20 red)
      (treatment p20 glazed)
      (available p21)
      (wood p21 cherry)
      (treatment p21 varnished)
      (available p22)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 natural)
      (wood p23 cherry)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 green)
      (treatment p24 varnished)
      (available p25)
      (wood p25 beech)
      (treatment p25 glazed)
      (available p26)
      (colour p26 blue)
      (wood p26 beech)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 black)
      (surface-condition p28 verysmooth)
      (available p29)
      (wood p29 beech)
      (surface-condition p29 verysmooth)
      (available p30)
      (wood p30 beech)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 green)
      (treatment p31 varnished)
      (available p32)
      (wood p32 teak)
      (surface-condition p32 verysmooth)
      (available p33)
      (colour p33 white)
      (wood p33 walnut)
      (available p34)
      (wood p34 cherry)
      (treatment p34 glazed)
      (available p35)
      (colour p35 mauve)
      (wood p35 cherry)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 green)
      (wood p36 oak)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 blue)
      (wood p37 walnut)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 natural)
      (wood p38 oak)
      (surface-condition p38 verysmooth)
      (treatment p38 varnished)
      (available p39)
      (wood p39 teak)
      (treatment p39 glazed)
      (available p40)
      (colour p40 red)
      (wood p40 oak)
      (available p41)
      (colour p41 mauve)
      (treatment p41 varnished)
      (available p42)
      (wood p42 cherry)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 blue)
      (wood p43 mahogany)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 blue)
      (wood p44 walnut)
      (available p45)
      (colour p45 green)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 blue)
      (wood p46 oak)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 blue)
      (wood p47 teak)
      (available p48)
      (wood p48 walnut)
      (treatment p48 varnished)
      (available p49)
      (wood p49 mahogany)
      (treatment p49 varnished)
      (available p50)
      (wood p50 teak)
      (surface-condition p50 smooth)
      (available p51)
      (colour p51 mauve)
      (wood p51 pine)
      (surface-condition p51 smooth)
      (available p52)
      (colour p52 red)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 white)
      (surface-condition p53 smooth)
      (available p54)
      (wood p54 pine)
      (treatment p54 glazed)
      (available p55)
      (colour p55 white)
      (surface-condition p55 verysmooth)
      (available p56)
      (surface-condition p56 verysmooth)
      (treatment p56 varnished)
      (available p57)
      (wood p57 cherry)
      (treatment p57 glazed)
      (available p58)
      (colour p58 blue)
      (wood p58 mahogany)
      (treatment p58 glazed)
      (available p59)
      (colour p59 black)
      (wood p59 pine)
      (treatment p59 varnished)
      (available p60)
      (surface-condition p60 smooth)
      (treatment p60 glazed)
      (available p61)
      (wood p61 mahogany)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 black)
      (wood p62 pine)
      (surface-condition p62 verysmooth)
      (treatment p62 glazed)
      (available p63)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 mauve)
      (surface-condition p64 smooth)
      (available p65)
      (wood p65 cherry)
      (treatment p65 glazed)
      (available p66)
      (colour p66 white)
      (wood p66 cherry)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 red)
      (treatment p67 glazed)
      (available p68)
      (wood p68 walnut)
      (treatment p68 varnished)
      (available p69)
      (colour p69 blue)
      (wood p69 teak)
      (surface-condition p69 smooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 red)
      (wood p70 oak)
      (surface-condition p70 smooth)
      (treatment p70 glazed)
      (available p71)
      (wood p71 beech)
      (treatment p71 varnished)
      (available p72)
      (wood p72 walnut)
      (treatment p72 glazed)
      (available p73)
      (colour p73 mauve)
      (treatment p73 glazed)
      (available p74)
      (colour p74 green)
      (wood p74 walnut)
      (surface-condition p74 smooth)
      (treatment p74 varnished)
      (available p75)
      (surface-condition p75 verysmooth)
      (treatment p75 glazed)
      (available p76)
      (colour p76 black)
      (treatment p76 glazed)
      (available p77)
      (wood p77 oak)
      (surface-condition p77 verysmooth)
      (available p78)
      (colour p78 blue)
      (wood p78 cherry)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 green)
      (surface-condition p79 verysmooth)
      (available p80)
      (wood p80 walnut)
      (treatment p80 varnished)
      (available p81)
      (colour p81 white)
      (wood p81 cherry)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (colour p82 green)
      (surface-condition p82 verysmooth)
      (available p83)
      (colour p83 mauve)
      (wood p83 pine)
      (treatment p83 glazed)
      (available p84)
      (wood p84 pine)
      (surface-condition p84 verysmooth)
      (available p85)
      (wood p85 beech)
      (treatment p85 varnished)
      (available p86)
      (wood p86 mahogany)
      (treatment p86 varnished)
      (available p87)
      (colour p87 natural)
      (surface-condition p87 smooth)
      (available p88)
      (wood p88 oak)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 natural)
      (treatment p89 varnished)
      (available p90)
      (colour p90 white)
      (surface-condition p90 verysmooth)
      (available p91)
      (colour p91 green)
      (wood p91 cherry)
      (surface-condition p91 verysmooth)
      (treatment p91 glazed)
      (available p92)
      (wood p92 cherry)
      (surface-condition p92 smooth)
      (available p93)
      (surface-condition p93 verysmooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 black)
      (wood p94 mahogany)
      (surface-condition p94 smooth)
    )
  )
  
)
