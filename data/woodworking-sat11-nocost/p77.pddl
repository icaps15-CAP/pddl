; woodworking task with 98 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 284912

(define (problem wood-prob-sat-77)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red green white mauve black blue - acolour
    oak cherry walnut teak mahogany beech pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 - part
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
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 black)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 blue)
    (wood p4 pine)
    (surface-condition p4 smooth)
    (treatment p4 glazed)
    (goalsize p4 medium)
    
    
    
    
    (available p5)
    (colour p5 natural)
    (wood p5 pine)
    (surface-condition p5 verysmooth)
    (treatment p5 varnished)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 natural)
    (wood p15 teak)
    (surface-condition p15 smooth)
    (treatment p15 varnished)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (available p30)
    (colour p30 natural)
    (wood p30 walnut)
    (surface-condition p30 verysmooth)
    (treatment p30 colourfragments)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 natural)
    (wood p31 teak)
    (surface-condition p31 smooth)
    (treatment p31 varnished)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (available p33)
    (colour p33 white)
    (wood p33 pine)
    (surface-condition p33 verysmooth)
    (treatment p33 varnished)
    (goalsize p33 large)
    
    
    
    
    (available p34)
    (colour p34 red)
    (wood p34 oak)
    (surface-condition p34 smooth)
    (treatment p34 glazed)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 mauve)
    (wood p36 teak)
    (surface-condition p36 smooth)
    (treatment p36 colourfragments)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (available p41)
    (colour p41 black)
    (wood p41 beech)
    (surface-condition p41 rough)
    (treatment p41 varnished)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (available p50)
    (colour p50 green)
    (wood p50 walnut)
    (surface-condition p50 smooth)
    (treatment p50 glazed)
    (goalsize p50 medium)
    
    
    
    
    (available p51)
    (colour p51 blue)
    (wood p51 pine)
    (surface-condition p51 rough)
    (treatment p51 glazed)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (available p57)
    (colour p57 red)
    (wood p57 mahogany)
    (surface-condition p57 verysmooth)
    (treatment p57 glazed)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (available p63)
    (colour p63 blue)
    (wood p63 walnut)
    (surface-condition p63 rough)
    (treatment p63 varnished)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 black)
    (wood p67 oak)
    (surface-condition p67 rough)
    (treatment p67 colourfragments)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (available p71)
    (colour p71 natural)
    (wood p71 teak)
    (surface-condition p71 rough)
    (treatment p71 colourfragments)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (available p73)
    (colour p73 green)
    (wood p73 teak)
    (surface-condition p73 rough)
    (treatment p73 varnished)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (available p82)
    (colour p82 red)
    (wood p82 teak)
    (surface-condition p82 smooth)
    (treatment p82 varnished)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (available p87)
    (colour p87 white)
    (wood p87 walnut)
    (surface-condition p87 rough)
    (treatment p87 colourfragments)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (available p94)
    (colour p94 black)
    (wood p94 oak)
    (surface-condition p94 verysmooth)
    (treatment p94 glazed)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (available p96)
    (colour p96 black)
    (wood p96 cherry)
    (surface-condition p96 smooth)
    (treatment p96 colourfragments)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s11)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s10)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s11)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s3)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s10)
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
    (boardsize b15 s9)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 pine)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s2)
    (wood b17 pine)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 walnut)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s8)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 walnut)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s7)
    (wood b21 walnut)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s2)
    (wood b22 walnut)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s7)
    (wood b23 teak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 teak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s11)
    (wood b25 teak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s7)
    (wood b26 teak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 beech)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s10)
    (wood b28 beech)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 beech)
    (surface-condition b29 rough)
    (available b29)
  )
  (:goal
    (and
      (available p0)
      (colour p0 red)
      (wood p0 teak)
      (treatment p0 varnished)
      (available p1)
      (wood p1 mahogany)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 white)
      (treatment p2 glazed)
      (available p3)
      (wood p3 pine)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 white)
      (wood p4 pine)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (wood p5 pine)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (wood p6 oak)
      (surface-condition p6 smooth)
      (available p7)
      (wood p7 cherry)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 mauve)
      (wood p8 mahogany)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 mauve)
      (surface-condition p9 smooth)
      (available p10)
      (wood p10 walnut)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 blue)
      (wood p12 cherry)
      (available p13)
      (colour p13 green)
      (treatment p13 glazed)
      (available p14)
      (colour p14 natural)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 red)
      (wood p15 teak)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 black)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 blue)
      (wood p17 beech)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 blue)
      (wood p18 walnut)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 blue)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 black)
      (wood p20 beech)
      (available p21)
      (colour p21 blue)
      (wood p21 walnut)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (wood p22 mahogany)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 black)
      (wood p23 pine)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 blue)
      (wood p24 teak)
      (available p25)
      (colour p25 natural)
      (wood p25 mahogany)
      (treatment p25 glazed)
      (available p26)
      (wood p26 mahogany)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 white)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 red)
      (wood p29 pine)
      (available p30)
      (wood p30 walnut)
      (treatment p30 glazed)
      (available p31)
      (colour p31 mauve)
      (surface-condition p31 smooth)
      (available p32)
      (colour p32 red)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 mauve)
      (wood p33 pine)
      (treatment p33 varnished)
      (available p34)
      (colour p34 black)
      (wood p34 oak)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (wood p35 pine)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (wood p36 teak)
      (treatment p36 glazed)
      (available p37)
      (colour p37 mauve)
      (wood p37 walnut)
      (surface-condition p37 verysmooth)
      (available p38)
      (wood p38 teak)
      (treatment p38 glazed)
      (available p39)
      (wood p39 mahogany)
      (treatment p39 varnished)
      (available p40)
      (colour p40 natural)
      (wood p40 teak)
      (available p41)
      (wood p41 beech)
      (treatment p41 glazed)
      (available p42)
      (wood p42 oak)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 mauve)
      (wood p43 oak)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 white)
      (wood p44 cherry)
      (available p45)
      (colour p45 red)
      (surface-condition p45 verysmooth)
      (available p46)
      (wood p46 beech)
      (treatment p46 varnished)
      (available p47)
      (colour p47 red)
      (wood p47 mahogany)
      (available p48)
      (colour p48 mauve)
      (wood p48 teak)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 black)
      (wood p49 pine)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (wood p50 walnut)
      (surface-condition p50 verysmooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 red)
      (wood p51 pine)
      (surface-condition p51 smooth)
      (available p52)
      (wood p52 oak)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 blue)
      (wood p53 pine)
      (surface-condition p53 smooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 blue)
      (surface-condition p54 smooth)
      (available p55)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (wood p56 oak)
      (surface-condition p56 verysmooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 black)
      (surface-condition p57 verysmooth)
      (available p58)
      (colour p58 natural)
      (wood p58 oak)
      (surface-condition p58 smooth)
      (available p59)
      (wood p59 mahogany)
      (treatment p59 varnished)
      (available p60)
      (wood p60 oak)
      (treatment p60 glazed)
      (available p61)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 white)
      (wood p62 cherry)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 red)
      (wood p63 walnut)
      (treatment p63 glazed)
      (available p64)
      (colour p64 green)
      (wood p64 teak)
      (surface-condition p64 smooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 green)
      (wood p65 pine)
      (surface-condition p65 smooth)
      (available p66)
      (colour p66 green)
      (surface-condition p66 smooth)
      (available p67)
      (surface-condition p67 smooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 white)
      (surface-condition p68 verysmooth)
      (available p69)
      (colour p69 blue)
      (wood p69 teak)
      (available p70)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (wood p71 teak)
      (treatment p71 glazed)
      (available p72)
      (colour p72 black)
      (wood p72 walnut)
      (surface-condition p72 smooth)
      (treatment p72 varnished)
      (available p73)
      (wood p73 teak)
      (surface-condition p73 verysmooth)
      (treatment p73 varnished)
      (available p74)
      (wood p74 walnut)
      (surface-condition p74 smooth)
      (available p75)
      (wood p75 cherry)
      (treatment p75 glazed)
      (available p76)
      (wood p76 teak)
      (surface-condition p76 verysmooth)
      (treatment p76 varnished)
      (available p77)
      (colour p77 black)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (wood p78 walnut)
      (surface-condition p78 verysmooth)
      (available p79)
      (colour p79 green)
      (wood p79 beech)
      (available p80)
      (colour p80 black)
      (wood p80 cherry)
      (surface-condition p80 verysmooth)
      (available p81)
      (surface-condition p81 smooth)
      (treatment p81 varnished)
      (available p82)
      (wood p82 teak)
      (surface-condition p82 verysmooth)
      (available p83)
      (colour p83 green)
      (surface-condition p83 verysmooth)
      (treatment p83 glazed)
      (available p84)
      (colour p84 blue)
      (wood p84 pine)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (wood p85 pine)
      (treatment p85 glazed)
      (available p86)
      (colour p86 red)
      (wood p86 walnut)
      (available p87)
      (colour p87 black)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 green)
      (wood p88 pine)
      (surface-condition p88 verysmooth)
      (treatment p88 glazed)
      (available p89)
      (wood p89 teak)
      (treatment p89 varnished)
      (available p90)
      (wood p90 pine)
      (surface-condition p90 verysmooth)
      (available p91)
      (colour p91 blue)
      (treatment p91 glazed)
      (available p92)
      (colour p92 natural)
      (wood p92 walnut)
      (surface-condition p92 smooth)
      (treatment p92 varnished)
      (available p93)
      (colour p93 white)
      (wood p93 beech)
      (surface-condition p93 verysmooth)
      (treatment p93 varnished)
      (available p94)
      (wood p94 oak)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 natural)
      (wood p95 walnut)
      (treatment p95 varnished)
      (available p96)
      (colour p96 blue)
      (wood p96 cherry)
      (surface-condition p96 verysmooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 mauve)
      (surface-condition p97 verysmooth)
    )
  )
  
)
