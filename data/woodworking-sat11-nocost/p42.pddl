; woodworking task with 95 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 357744

(define (problem wood-prob-sat-42)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black green blue mauve white red - acolour
    cherry beech oak pine walnut mahogany teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 - aboardsize
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
    (has-colour glazer0 blue)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 white)
    (wood p1 cherry)
    (surface-condition p1 verysmooth)
    (treatment p1 varnished)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (available p4)
    (colour p4 blue)
    (wood p4 oak)
    (surface-condition p4 rough)
    (treatment p4 glazed)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (available p8)
    (colour p8 red)
    (wood p8 cherry)
    (surface-condition p8 rough)
    (treatment p8 varnished)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 white)
    (wood p11 walnut)
    (surface-condition p11 verysmooth)
    (treatment p11 varnished)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (available p13)
    (colour p13 red)
    (wood p13 teak)
    (surface-condition p13 verysmooth)
    (treatment p13 varnished)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (available p23)
    (colour p23 mauve)
    (wood p23 cherry)
    (surface-condition p23 verysmooth)
    (treatment p23 glazed)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (available p25)
    (colour p25 red)
    (wood p25 mahogany)
    (surface-condition p25 smooth)
    (treatment p25 colourfragments)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (available p42)
    (colour p42 mauve)
    (wood p42 cherry)
    (surface-condition p42 smooth)
    (treatment p42 colourfragments)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (available p59)
    (colour p59 green)
    (wood p59 mahogany)
    (surface-condition p59 rough)
    (treatment p59 glazed)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (available p68)
    (colour p68 red)
    (wood p68 cherry)
    (surface-condition p68 verysmooth)
    (treatment p68 colourfragments)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (available p78)
    (colour p78 black)
    (wood p78 mahogany)
    (surface-condition p78 rough)
    (treatment p78 varnished)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (available p80)
    (colour p80 red)
    (wood p80 beech)
    (surface-condition p80 smooth)
    (treatment p80 glazed)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s9)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s1)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 oak)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s4)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 pine)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s7)
    (wood b12 pine)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s9)
    (wood b13 pine)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s9)
    (wood b14 pine)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s9)
    (wood b19 teak)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s7)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 teak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s2)
    (wood b22 teak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s4)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 beech)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s6)
    (wood b26 beech)
    (surface-condition b26 rough)
    (available b26)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 cherry)
      (treatment p1 glazed)
      (available p2)
      (colour p2 blue)
      (surface-condition p2 smooth)
      (available p3)
      (wood p3 walnut)
      (surface-condition p3 verysmooth)
      (available p4)
      (wood p4 oak)
      (treatment p4 varnished)
      (available p5)
      (wood p5 beech)
      (treatment p5 glazed)
      (available p6)
      (colour p6 red)
      (treatment p6 varnished)
      (available p7)
      (colour p7 white)
      (wood p7 walnut)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (wood p8 cherry)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (wood p9 walnut)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 natural)
      (treatment p10 glazed)
      (available p11)
      (colour p11 red)
      (wood p11 walnut)
      (available p12)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (wood p14 pine)
      (treatment p14 varnished)
      (available p15)
      (colour p15 blue)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 white)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 natural)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 natural)
      (wood p18 pine)
      (available p19)
      (colour p19 red)
      (wood p19 teak)
      (available p20)
      (wood p20 pine)
      (surface-condition p20 smooth)
      (available p21)
      (colour p21 green)
      (wood p21 beech)
      (available p22)
      (colour p22 red)
      (treatment p22 glazed)
      (available p23)
      (wood p23 cherry)
      (surface-condition p23 smooth)
      (available p24)
      (colour p24 white)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 white)
      (wood p26 beech)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (wood p27 cherry)
      (treatment p27 varnished)
      (available p28)
      (colour p28 white)
      (wood p28 oak)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 red)
      (wood p29 mahogany)
      (surface-condition p29 verysmooth)
      (available p30)
      (wood p30 pine)
      (treatment p30 varnished)
      (available p31)
      (wood p31 mahogany)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (wood p32 pine)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 red)
      (wood p33 pine)
      (surface-condition p33 verysmooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 natural)
      (wood p34 teak)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 mauve)
      (wood p35 mahogany)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (wood p36 walnut)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 white)
      (wood p37 cherry)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 red)
      (wood p38 cherry)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (wood p39 pine)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 mauve)
      (wood p40 beech)
      (surface-condition p40 verysmooth)
      (treatment p40 glazed)
      (available p41)
      (wood p41 pine)
      (treatment p41 glazed)
      (available p42)
      (colour p42 white)
      (treatment p42 glazed)
      (available p43)
      (colour p43 blue)
      (treatment p43 varnished)
      (available p44)
      (colour p44 blue)
      (treatment p44 varnished)
      (available p45)
      (colour p45 natural)
      (wood p45 oak)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 mauve)
      (wood p46 mahogany)
      (surface-condition p46 smooth)
      (available p47)
      (colour p47 green)
      (wood p47 oak)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (colour p48 red)
      (wood p48 beech)
      (available p49)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 black)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 green)
      (wood p51 mahogany)
      (available p52)
      (colour p52 green)
      (wood p52 beech)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 green)
      (wood p53 oak)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 blue)
      (wood p54 beech)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 white)
      (wood p55 cherry)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (wood p56 teak)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 black)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 green)
      (wood p58 pine)
      (surface-condition p58 verysmooth)
      (available p59)
      (colour p59 natural)
      (wood p59 mahogany)
      (available p60)
      (colour p60 red)
      (treatment p60 glazed)
      (available p61)
      (wood p61 cherry)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 green)
      (wood p62 pine)
      (available p63)
      (colour p63 natural)
      (wood p63 pine)
      (treatment p63 varnished)
      (available p64)
      (colour p64 green)
      (wood p64 mahogany)
      (surface-condition p64 smooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 red)
      (wood p65 beech)
      (treatment p65 glazed)
      (available p66)
      (wood p66 teak)
      (surface-condition p66 smooth)
      (available p67)
      (wood p67 pine)
      (surface-condition p67 smooth)
      (available p68)
      (colour p68 black)
      (treatment p68 glazed)
      (available p69)
      (wood p69 cherry)
      (treatment p69 varnished)
      (available p70)
      (colour p70 blue)
      (wood p70 mahogany)
      (surface-condition p70 smooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 blue)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 natural)
      (surface-condition p72 smooth)
      (available p73)
      (colour p73 black)
      (wood p73 walnut)
      (available p74)
      (colour p74 natural)
      (surface-condition p74 smooth)
      (available p75)
      (colour p75 mauve)
      (wood p75 beech)
      (surface-condition p75 smooth)
      (treatment p75 glazed)
      (available p76)
      (colour p76 white)
      (wood p76 mahogany)
      (available p77)
      (colour p77 red)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 red)
      (surface-condition p78 smooth)
      (available p79)
      (wood p79 cherry)
      (treatment p79 glazed)
      (available p80)
      (colour p80 mauve)
      (treatment p80 varnished)
      (available p81)
      (colour p81 blue)
      (surface-condition p81 verysmooth)
      (available p82)
      (wood p82 cherry)
      (surface-condition p82 verysmooth)
      (treatment p82 glazed)
      (available p83)
      (colour p83 black)
      (wood p83 pine)
      (surface-condition p83 verysmooth)
      (treatment p83 varnished)
      (available p84)
      (wood p84 teak)
      (surface-condition p84 verysmooth)
      (available p85)
      (colour p85 natural)
      (wood p85 cherry)
      (available p86)
      (colour p86 black)
      (wood p86 pine)
      (surface-condition p86 verysmooth)
      (available p87)
      (colour p87 blue)
      (wood p87 teak)
      (treatment p87 glazed)
      (available p88)
      (colour p88 black)
      (wood p88 beech)
      (surface-condition p88 smooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 black)
      (wood p89 beech)
      (treatment p89 varnished)
      (available p90)
      (colour p90 blue)
      (treatment p90 glazed)
      (available p91)
      (colour p91 blue)
      (surface-condition p91 smooth)
      (available p92)
      (wood p92 teak)
      (surface-condition p92 smooth)
      (available p93)
      (colour p93 green)
      (surface-condition p93 smooth)
      (available p94)
      (colour p94 white)
      (wood p94 oak)
      (treatment p94 glazed)
    )
  )
  
)
