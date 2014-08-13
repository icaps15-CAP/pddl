; woodworking task with 98 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 621216

(define (problem wood-prob-sat-137)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve green red blue black white - acolour
    mahogany oak pine cherry walnut teak beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 - part
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
    (has-colour glazer0 blue)
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 black)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer1 mauve)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
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
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (available p11)
    (colour p11 black)
    (wood p11 beech)
    (surface-condition p11 rough)
    (treatment p11 varnished)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 green)
    (wood p12 cherry)
    (surface-condition p12 smooth)
    (treatment p12 colourfragments)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 green)
    (wood p17 teak)
    (surface-condition p17 rough)
    (treatment p17 colourfragments)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 red)
    (wood p21 teak)
    (surface-condition p21 rough)
    (treatment p21 colourfragments)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (available p23)
    (colour p23 natural)
    (wood p23 pine)
    (surface-condition p23 rough)
    (treatment p23 varnished)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (available p25)
    (colour p25 red)
    (wood p25 pine)
    (surface-condition p25 rough)
    (treatment p25 glazed)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 blue)
    (wood p26 walnut)
    (surface-condition p26 verysmooth)
    (treatment p26 glazed)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (available p39)
    (colour p39 black)
    (wood p39 teak)
    (surface-condition p39 rough)
    (treatment p39 varnished)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (available p43)
    (colour p43 blue)
    (wood p43 walnut)
    (surface-condition p43 smooth)
    (treatment p43 colourfragments)
    (goalsize p43 medium)
    
    
    
    
    (available p44)
    (colour p44 mauve)
    (wood p44 cherry)
    (surface-condition p44 smooth)
    (treatment p44 colourfragments)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (available p46)
    (colour p46 green)
    (wood p46 cherry)
    (surface-condition p46 smooth)
    (treatment p46 glazed)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (available p50)
    (colour p50 blue)
    (wood p50 mahogany)
    (surface-condition p50 smooth)
    (treatment p50 glazed)
    (goalsize p50 small)
    
    
    
    
    (available p51)
    (colour p51 mauve)
    (wood p51 pine)
    (surface-condition p51 smooth)
    (treatment p51 glazed)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (available p69)
    (colour p69 white)
    (wood p69 beech)
    (surface-condition p69 smooth)
    (treatment p69 varnished)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (available p71)
    (colour p71 blue)
    (wood p71 beech)
    (surface-condition p71 rough)
    (treatment p71 colourfragments)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (available p73)
    (colour p73 blue)
    (wood p73 cherry)
    (surface-condition p73 verysmooth)
    (treatment p73 glazed)
    (goalsize p73 medium)
    
    
    
    
    (available p74)
    (colour p74 natural)
    (wood p74 cherry)
    (surface-condition p74 rough)
    (treatment p74 varnished)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (available p80)
    (colour p80 blue)
    (wood p80 pine)
    (surface-condition p80 smooth)
    (treatment p80 varnished)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (available p84)
    (colour p84 white)
    (wood p84 mahogany)
    (surface-condition p84 smooth)
    (treatment p84 colourfragments)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (available p92)
    (colour p92 natural)
    (wood p92 cherry)
    (surface-condition p92 smooth)
    (treatment p92 colourfragments)
    (goalsize p92 small)
    
    
    
    
    (available p93)
    (colour p93 natural)
    (wood p93 beech)
    (surface-condition p93 smooth)
    (treatment p93 glazed)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (available p96)
    (colour p96 red)
    (wood p96 oak)
    (surface-condition p96 rough)
    (treatment p96 colourfragments)
    (goalsize p96 large)
    
    
    
    
    (available p97)
    (colour p97 mauve)
    (wood p97 pine)
    (surface-condition p97 verysmooth)
    (treatment p97 glazed)
    (goalsize p97 medium)
    
    
    
    
    (boardsize b0 s5)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s6)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s5)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s6)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 oak)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s9)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 oak)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s10)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s6)
    (wood b14 pine)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s5)
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
    (boardsize b19 s11)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 teak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 teak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 teak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 beech)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s7)
    (wood b26 beech)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s4)
    (wood b27 beech)
    (surface-condition b27 rough)
    (available b27)
  )
  (:goal
    (and
      (available p0)
      (colour p0 white)
      (treatment p0 varnished)
      (available p1)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 black)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 natural)
      (wood p4 cherry)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 white)
      (wood p5 beech)
      (available p6)
      (colour p6 natural)
      (wood p6 teak)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (wood p8 walnut)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 black)
      (wood p9 cherry)
      (treatment p9 glazed)
      (available p10)
      (wood p10 beech)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 natural)
      (wood p11 beech)
      (treatment p11 varnished)
      (available p12)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (wood p13 walnut)
      (treatment p13 glazed)
      (available p14)
      (colour p14 green)
      (wood p14 teak)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (wood p17 teak)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 black)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 white)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 red)
      (wood p20 walnut)
      (available p21)
      (colour p21 mauve)
      (wood p21 teak)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 white)
      (surface-condition p22 verysmooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 green)
      (wood p23 pine)
      (surface-condition p23 smooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 green)
      (wood p24 oak)
      (available p25)
      (colour p25 green)
      (wood p25 pine)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 green)
      (wood p26 walnut)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 blue)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 white)
      (wood p28 cherry)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (wood p29 teak)
      (treatment p29 glazed)
      (available p30)
      (colour p30 mauve)
      (wood p30 cherry)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 natural)
      (wood p31 walnut)
      (surface-condition p31 smooth)
      (available p32)
      (colour p32 black)
      (wood p32 teak)
      (available p33)
      (colour p33 white)
      (wood p33 pine)
      (treatment p33 varnished)
      (available p34)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 red)
      (wood p35 mahogany)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 mauve)
      (wood p37 cherry)
      (treatment p37 glazed)
      (available p38)
      (colour p38 red)
      (surface-condition p38 verysmooth)
      (available p39)
      (wood p39 teak)
      (surface-condition p39 smooth)
      (available p40)
      (colour p40 green)
      (treatment p40 varnished)
      (available p41)
      (colour p41 white)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 green)
      (surface-condition p42 smooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 black)
      (surface-condition p43 verysmooth)
      (available p44)
      (colour p44 white)
      (treatment p44 varnished)
      (available p45)
      (wood p45 walnut)
      (surface-condition p45 verysmooth)
      (available p46)
      (colour p46 blue)
      (treatment p46 varnished)
      (available p47)
      (colour p47 mauve)
      (wood p47 oak)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 red)
      (wood p48 mahogany)
      (treatment p48 glazed)
      (available p49)
      (colour p49 white)
      (wood p49 beech)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 white)
      (wood p50 mahogany)
      (surface-condition p50 smooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 white)
      (wood p51 pine)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (surface-condition p52 verysmooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 green)
      (wood p53 mahogany)
      (treatment p53 varnished)
      (available p54)
      (colour p54 blue)
      (surface-condition p54 smooth)
      (available p55)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (wood p56 beech)
      (treatment p56 glazed)
      (available p57)
      (colour p57 natural)
      (treatment p57 glazed)
      (available p58)
      (colour p58 blue)
      (wood p58 beech)
      (surface-condition p58 verysmooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 green)
      (treatment p59 varnished)
      (available p60)
      (colour p60 green)
      (wood p60 teak)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 blue)
      (surface-condition p61 smooth)
      (available p62)
      (colour p62 natural)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 mauve)
      (wood p63 teak)
      (surface-condition p63 verysmooth)
      (treatment p63 glazed)
      (available p64)
      (wood p64 walnut)
      (surface-condition p64 smooth)
      (available p65)
      (colour p65 red)
      (surface-condition p65 smooth)
      (available p66)
      (colour p66 mauve)
      (treatment p66 glazed)
      (available p67)
      (colour p67 black)
      (surface-condition p67 smooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 white)
      (surface-condition p68 smooth)
      (available p69)
      (colour p69 black)
      (wood p69 beech)
      (available p70)
      (colour p70 blue)
      (wood p70 cherry)
      (surface-condition p70 smooth)
      (treatment p70 glazed)
      (available p71)
      (wood p71 beech)
      (surface-condition p71 smooth)
      (available p72)
      (surface-condition p72 verysmooth)
      (treatment p72 varnished)
      (available p73)
      (colour p73 black)
      (treatment p73 varnished)
      (available p74)
      (colour p74 red)
      (wood p74 cherry)
      (surface-condition p74 verysmooth)
      (available p75)
      (wood p75 pine)
      (treatment p75 varnished)
      (available p76)
      (colour p76 mauve)
      (wood p76 cherry)
      (available p77)
      (colour p77 natural)
      (wood p77 walnut)
      (treatment p77 glazed)
      (available p78)
      (colour p78 white)
      (treatment p78 varnished)
      (available p79)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 white)
      (wood p80 pine)
      (treatment p80 glazed)
      (available p81)
      (wood p81 beech)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 white)
      (wood p82 pine)
      (treatment p82 glazed)
      (available p83)
      (colour p83 natural)
      (wood p83 pine)
      (treatment p83 varnished)
      (available p84)
      (colour p84 mauve)
      (wood p84 mahogany)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 mauve)
      (wood p85 teak)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 green)
      (wood p86 oak)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 blue)
      (surface-condition p87 verysmooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 black)
      (surface-condition p88 verysmooth)
      (available p89)
      (surface-condition p89 verysmooth)
      (treatment p89 glazed)
      (available p90)
      (wood p90 beech)
      (surface-condition p90 verysmooth)
      (available p91)
      (wood p91 pine)
      (surface-condition p91 smooth)
      (treatment p91 varnished)
      (available p92)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (colour p93 green)
      (wood p93 beech)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (colour p94 white)
      (wood p94 walnut)
      (surface-condition p94 verysmooth)
      (available p95)
      (colour p95 black)
      (wood p95 oak)
      (surface-condition p95 smooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 natural)
      (wood p96 oak)
      (available p97)
      (colour p97 green)
      (wood p97 pine)
      (surface-condition p97 smooth)
    )
  )
  
)
