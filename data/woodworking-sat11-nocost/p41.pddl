; woodworking task with 92 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 567385

(define (problem wood-prob-sat-41)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red white black mauve green blue - acolour
    walnut oak teak cherry mahogany pine beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 - aboardsize
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
    (boardsize-successor s11 s12)
    (has-colour glazer0 blue)
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 black)
    (has-colour glazer0 red)
    (has-colour glazer1 green)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
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
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 mauve)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (available p2)
    (colour p2 black)
    (wood p2 teak)
    (surface-condition p2 verysmooth)
    (treatment p2 glazed)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (available p4)
    (colour p4 green)
    (wood p4 teak)
    (surface-condition p4 smooth)
    (treatment p4 glazed)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (available p9)
    (colour p9 black)
    (wood p9 cherry)
    (surface-condition p9 rough)
    (treatment p9 glazed)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 black)
    (wood p11 teak)
    (surface-condition p11 rough)
    (treatment p11 varnished)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 mauve)
    (wood p13 mahogany)
    (surface-condition p13 smooth)
    (treatment p13 glazed)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (available p17)
    (colour p17 blue)
    (wood p17 mahogany)
    (surface-condition p17 smooth)
    (treatment p17 glazed)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 natural)
    (wood p25 mahogany)
    (surface-condition p25 smooth)
    (treatment p25 colourfragments)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 natural)
    (wood p31 mahogany)
    (surface-condition p31 verysmooth)
    (treatment p31 glazed)
    (goalsize p31 medium)
    
    
    
    
    (available p32)
    (colour p32 mauve)
    (wood p32 mahogany)
    (surface-condition p32 verysmooth)
    (treatment p32 glazed)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (available p38)
    (colour p38 white)
    (wood p38 oak)
    (surface-condition p38 smooth)
    (treatment p38 colourfragments)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (available p40)
    (colour p40 mauve)
    (wood p40 pine)
    (surface-condition p40 verysmooth)
    (treatment p40 glazed)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (available p52)
    (colour p52 red)
    (wood p52 pine)
    (surface-condition p52 smooth)
    (treatment p52 varnished)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (available p57)
    (colour p57 red)
    (wood p57 pine)
    (surface-condition p57 smooth)
    (treatment p57 colourfragments)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (available p71)
    (colour p71 black)
    (wood p71 cherry)
    (surface-condition p71 rough)
    (treatment p71 glazed)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (available p73)
    (colour p73 black)
    (wood p73 oak)
    (surface-condition p73 verysmooth)
    (treatment p73 glazed)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (available p75)
    (colour p75 black)
    (wood p75 pine)
    (surface-condition p75 verysmooth)
    (treatment p75 glazed)
    (goalsize p75 small)
    
    
    
    
    (available p76)
    (colour p76 mauve)
    (wood p76 mahogany)
    (surface-condition p76 smooth)
    (treatment p76 colourfragments)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (available p83)
    (colour p83 green)
    (wood p83 teak)
    (surface-condition p83 verysmooth)
    (treatment p83 colourfragments)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (boardsize b0 s7)
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
    (boardsize b3 s1)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 mahogany)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s12)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s1)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 oak)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s5)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 pine)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s8)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s3)
    (wood b14 pine)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s11)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 walnut)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s8)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s5)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s2)
    (wood b19 walnut)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s8)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 teak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s3)
    (wood b22 teak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s2)
    (wood b25 beech)
    (surface-condition b25 rough)
    (available b25)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 white)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 green)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 white)
      (treatment p4 glazed)
      (available p5)
      (wood p5 oak)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (wood p6 mahogany)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 mauve)
      (wood p8 walnut)
      (surface-condition p8 verysmooth)
      (available p9)
      (colour p9 blue)
      (wood p9 cherry)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (wood p10 mahogany)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 blue)
      (wood p11 teak)
      (available p12)
      (wood p12 beech)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 natural)
      (treatment p13 glazed)
      (available p14)
      (colour p14 green)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 mauve)
      (wood p15 walnut)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 white)
      (treatment p16 varnished)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (surface-condition p19 smooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 white)
      (wood p20 pine)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (wood p21 walnut)
      (treatment p21 varnished)
      (available p22)
      (colour p22 blue)
      (wood p22 oak)
      (available p23)
      (colour p23 red)
      (treatment p23 varnished)
      (available p24)
      (colour p24 red)
      (wood p24 pine)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 white)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 white)
      (treatment p27 glazed)
      (available p28)
      (colour p28 black)
      (wood p28 mahogany)
      (surface-condition p28 verysmooth)
      (treatment p28 glazed)
      (available p29)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 black)
      (wood p30 walnut)
      (available p31)
      (colour p31 black)
      (wood p31 mahogany)
      (available p32)
      (colour p32 red)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 black)
      (wood p33 pine)
      (available p34)
      (colour p34 white)
      (wood p34 cherry)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (wood p35 beech)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 black)
      (wood p36 mahogany)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 natural)
      (wood p38 oak)
      (surface-condition p38 smooth)
      (available p39)
      (colour p39 natural)
      (wood p39 pine)
      (available p40)
      (colour p40 white)
      (wood p40 pine)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 natural)
      (wood p41 teak)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 red)
      (wood p42 walnut)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 blue)
      (wood p43 walnut)
      (treatment p43 glazed)
      (available p44)
      (colour p44 red)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 red)
      (treatment p45 glazed)
      (available p46)
      (colour p46 black)
      (surface-condition p46 smooth)
      (available p47)
      (wood p47 teak)
      (treatment p47 varnished)
      (available p48)
      (wood p48 oak)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 natural)
      (wood p49 cherry)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (wood p50 mahogany)
      (surface-condition p50 smooth)
      (treatment p50 varnished)
      (available p51)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 blue)
      (wood p52 pine)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (wood p53 mahogany)
      (surface-condition p53 smooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 mauve)
      (treatment p54 glazed)
      (available p55)
      (colour p55 black)
      (wood p55 teak)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (wood p56 teak)
      (treatment p56 glazed)
      (available p57)
      (colour p57 blue)
      (wood p57 pine)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 white)
      (wood p58 walnut)
      (surface-condition p58 smooth)
      (treatment p58 glazed)
      (available p59)
      (wood p59 pine)
      (treatment p59 varnished)
      (available p60)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 mauve)
      (wood p61 beech)
      (available p62)
      (wood p62 walnut)
      (treatment p62 varnished)
      (available p63)
      (wood p63 teak)
      (surface-condition p63 smooth)
      (available p64)
      (colour p64 green)
      (wood p64 walnut)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 green)
      (surface-condition p65 verysmooth)
      (available p66)
      (colour p66 black)
      (wood p66 pine)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (surface-condition p67 smooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 black)
      (treatment p68 varnished)
      (available p69)
      (colour p69 black)
      (wood p69 pine)
      (available p70)
      (colour p70 white)
      (wood p70 mahogany)
      (available p71)
      (wood p71 cherry)
      (surface-condition p71 verysmooth)
      (available p72)
      (wood p72 pine)
      (surface-condition p72 smooth)
      (available p73)
      (wood p73 oak)
      (treatment p73 varnished)
      (available p74)
      (wood p74 oak)
      (surface-condition p74 verysmooth)
      (available p75)
      (colour p75 blue)
      (wood p75 pine)
      (available p76)
      (colour p76 black)
      (wood p76 mahogany)
      (treatment p76 glazed)
      (available p77)
      (colour p77 green)
      (wood p77 cherry)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 mauve)
      (wood p78 teak)
      (available p79)
      (wood p79 oak)
      (surface-condition p79 smooth)
      (available p80)
      (colour p80 red)
      (wood p80 walnut)
      (surface-condition p80 verysmooth)
      (available p81)
      (colour p81 black)
      (surface-condition p81 smooth)
      (available p82)
      (colour p82 mauve)
      (treatment p82 varnished)
      (available p83)
      (wood p83 teak)
      (surface-condition p83 smooth)
      (available p84)
      (colour p84 natural)
      (surface-condition p84 verysmooth)
      (available p85)
      (colour p85 white)
      (treatment p85 glazed)
      (available p86)
      (colour p86 white)
      (treatment p86 varnished)
      (available p87)
      (colour p87 blue)
      (wood p87 cherry)
      (available p88)
      (surface-condition p88 smooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 black)
      (wood p89 beech)
      (available p90)
      (colour p90 green)
      (wood p90 oak)
      (surface-condition p90 verysmooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 blue)
      (wood p91 pine)
      (surface-condition p91 verysmooth)
    )
  )
  
)
