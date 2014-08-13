; woodworking task with 92 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 350545

(define (problem wood-prob-sat-135)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white blue green red mauve black - acolour
    oak pine walnut teak cherry beech mahogany - awood
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 black)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 black)
    (has-colour glazer1 natural)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (available p2)
    (colour p2 blue)
    (wood p2 pine)
    (surface-condition p2 verysmooth)
    (treatment p2 colourfragments)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 mauve)
    (wood p7 walnut)
    (surface-condition p7 rough)
    (treatment p7 glazed)
    (goalsize p7 medium)
    
    
    
    
    (available p8)
    (colour p8 black)
    (wood p8 walnut)
    (surface-condition p8 verysmooth)
    (treatment p8 colourfragments)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 natural)
    (wood p11 teak)
    (surface-condition p11 verysmooth)
    (treatment p11 colourfragments)
    (goalsize p11 small)
    
    
    
    
    (available p12)
    (colour p12 mauve)
    (wood p12 teak)
    (surface-condition p12 verysmooth)
    (treatment p12 colourfragments)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (available p23)
    (colour p23 red)
    (wood p23 oak)
    (surface-condition p23 smooth)
    (treatment p23 glazed)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (available p25)
    (colour p25 red)
    (wood p25 teak)
    (surface-condition p25 rough)
    (treatment p25 varnished)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 black)
    (wood p35 teak)
    (surface-condition p35 rough)
    (treatment p35 varnished)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 natural)
    (wood p36 cherry)
    (surface-condition p36 rough)
    (treatment p36 varnished)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (available p50)
    (colour p50 green)
    (wood p50 cherry)
    (surface-condition p50 rough)
    (treatment p50 varnished)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (available p52)
    (colour p52 black)
    (wood p52 mahogany)
    (surface-condition p52 verysmooth)
    (treatment p52 varnished)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (available p54)
    (colour p54 red)
    (wood p54 teak)
    (surface-condition p54 verysmooth)
    (treatment p54 varnished)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (available p56)
    (colour p56 black)
    (wood p56 cherry)
    (surface-condition p56 verysmooth)
    (treatment p56 colourfragments)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (available p58)
    (colour p58 natural)
    (wood p58 pine)
    (surface-condition p58 rough)
    (treatment p58 colourfragments)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (available p60)
    (colour p60 green)
    (wood p60 mahogany)
    (surface-condition p60 verysmooth)
    (treatment p60 varnished)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (available p63)
    (colour p63 mauve)
    (wood p63 beech)
    (surface-condition p63 smooth)
    (treatment p63 glazed)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (available p75)
    (colour p75 blue)
    (wood p75 pine)
    (surface-condition p75 rough)
    (treatment p75 colourfragments)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (available p80)
    (colour p80 green)
    (wood p80 teak)
    (surface-condition p80 verysmooth)
    (treatment p80 colourfragments)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (available p90)
    (colour p90 green)
    (wood p90 walnut)
    (surface-condition p90 smooth)
    (treatment p90 varnished)
    (goalsize p90 large)
    
    
    
    
    (available p91)
    (colour p91 red)
    (wood p91 teak)
    (surface-condition p91 rough)
    (treatment p91 varnished)
    (goalsize p91 small)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s11)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 mahogany)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s5)
    (wood b6 mahogany)
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
    (boardsize b9 s5)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s2)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s11)
    (wood b14 pine)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s3)
    (wood b15 pine)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s8)
    (wood b16 walnut)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s4)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 teak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s11)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 teak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s10)
    (wood b22 teak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s2)
    (wood b23 teak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s9)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s7)
    (wood b25 beech)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s7)
    (wood b26 beech)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s5)
    (wood b27 beech)
    (surface-condition b27 smooth)
    (available b27)
  )
  (:goal
    (and
      (available p0)
      (colour p0 white)
      (wood p0 mahogany)
      (available p1)
      (wood p1 beech)
      (surface-condition p1 verysmooth)
      (available p2)
      (wood p2 pine)
      (treatment p2 glazed)
      (available p3)
      (wood p3 pine)
      (treatment p3 glazed)
      (available p4)
      (colour p4 black)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (wood p5 beech)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (wood p6 oak)
      (surface-condition p6 verysmooth)
      (available p7)
      (colour p7 white)
      (wood p7 walnut)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 mauve)
      (wood p8 walnut)
      (available p9)
      (colour p9 red)
      (treatment p9 varnished)
      (available p10)
      (colour p10 red)
      (wood p10 cherry)
      (available p11)
      (colour p11 green)
      (wood p11 teak)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 white)
      (surface-condition p12 smooth)
      (available p13)
      (colour p13 white)
      (wood p13 mahogany)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 blue)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 mauve)
      (treatment p15 glazed)
      (available p16)
      (colour p16 white)
      (wood p16 mahogany)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 blue)
      (wood p18 pine)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 red)
      (wood p19 teak)
      (treatment p19 glazed)
      (available p20)
      (colour p20 white)
      (wood p20 mahogany)
      (available p21)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 green)
      (wood p22 beech)
      (surface-condition p22 verysmooth)
      (treatment p22 varnished)
      (available p23)
      (wood p23 oak)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (wood p24 teak)
      (treatment p24 varnished)
      (available p25)
      (colour p25 green)
      (wood p25 teak)
      (surface-condition p25 smooth)
      (available p26)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 green)
      (wood p27 oak)
      (available p28)
      (colour p28 black)
      (wood p28 mahogany)
      (available p29)
      (colour p29 blue)
      (wood p29 oak)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 black)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 natural)
      (wood p31 cherry)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (colour p32 mauve)
      (wood p32 mahogany)
      (treatment p32 varnished)
      (available p33)
      (wood p33 beech)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 red)
      (wood p34 pine)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 mauve)
      (wood p36 cherry)
      (treatment p36 glazed)
      (available p37)
      (colour p37 natural)
      (surface-condition p37 verysmooth)
      (available p38)
      (wood p38 oak)
      (treatment p38 varnished)
      (available p39)
      (colour p39 white)
      (wood p39 teak)
      (surface-condition p39 smooth)
      (treatment p39 glazed)
      (available p40)
      (wood p40 teak)
      (surface-condition p40 verysmooth)
      (available p41)
      (colour p41 black)
      (wood p41 teak)
      (surface-condition p41 smooth)
      (available p42)
      (wood p42 oak)
      (treatment p42 glazed)
      (available p43)
      (colour p43 white)
      (treatment p43 glazed)
      (available p44)
      (colour p44 blue)
      (wood p44 oak)
      (available p45)
      (wood p45 teak)
      (treatment p45 varnished)
      (available p46)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 green)
      (surface-condition p47 verysmooth)
      (available p48)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 white)
      (treatment p49 varnished)
      (available p50)
      (colour p50 black)
      (surface-condition p50 verysmooth)
      (available p51)
      (wood p51 beech)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 green)
      (wood p52 mahogany)
      (available p53)
      (colour p53 green)
      (surface-condition p53 verysmooth)
      (available p54)
      (colour p54 natural)
      (wood p54 teak)
      (available p55)
      (colour p55 black)
      (wood p55 teak)
      (surface-condition p55 verysmooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 white)
      (treatment p56 glazed)
      (available p57)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (wood p58 pine)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 natural)
      (wood p59 mahogany)
      (surface-condition p59 verysmooth)
      (available p60)
      (colour p60 natural)
      (wood p60 mahogany)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 blue)
      (surface-condition p61 smooth)
      (available p62)
      (surface-condition p62 verysmooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 natural)
      (wood p63 beech)
      (surface-condition p63 verysmooth)
      (treatment p63 varnished)
      (available p64)
      (surface-condition p64 verysmooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 white)
      (surface-condition p65 smooth)
      (available p66)
      (colour p66 blue)
      (wood p66 teak)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (surface-condition p68 verysmooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 red)
      (treatment p69 glazed)
      (available p70)
      (colour p70 blue)
      (wood p70 pine)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 mauve)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 blue)
      (surface-condition p72 smooth)
      (available p73)
      (colour p73 black)
      (wood p73 mahogany)
      (surface-condition p73 verysmooth)
      (treatment p73 glazed)
      (available p74)
      (colour p74 green)
      (wood p74 oak)
      (surface-condition p74 smooth)
      (available p75)
      (wood p75 pine)
      (surface-condition p75 smooth)
      (treatment p75 varnished)
      (available p76)
      (colour p76 mauve)
      (wood p76 cherry)
      (available p77)
      (colour p77 mauve)
      (treatment p77 varnished)
      (available p78)
      (colour p78 black)
      (surface-condition p78 smooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 white)
      (wood p79 mahogany)
      (available p80)
      (colour p80 white)
      (wood p80 teak)
      (treatment p80 varnished)
      (available p81)
      (colour p81 natural)
      (treatment p81 glazed)
      (available p82)
      (colour p82 white)
      (wood p82 cherry)
      (surface-condition p82 verysmooth)
      (available p83)
      (wood p83 walnut)
      (treatment p83 glazed)
      (available p84)
      (wood p84 teak)
      (surface-condition p84 verysmooth)
      (treatment p84 glazed)
      (available p85)
      (colour p85 mauve)
      (wood p85 beech)
      (surface-condition p85 verysmooth)
      (treatment p85 varnished)
      (available p86)
      (wood p86 cherry)
      (treatment p86 glazed)
      (available p87)
      (wood p87 oak)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 blue)
      (wood p88 teak)
      (available p89)
      (colour p89 mauve)
      (treatment p89 glazed)
      (available p90)
      (colour p90 natural)
      (wood p90 walnut)
      (surface-condition p90 smooth)
      (treatment p90 varnished)
      (available p91)
      (surface-condition p91 verysmooth)
      (treatment p91 varnished)
    )
  )
  
)
