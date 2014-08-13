; woodworking task with 89 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 753656

(define (problem wood-prob-sat-40)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black blue mauve red green white - acolour
    cherry teak pine beech walnut mahogany oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 - board
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
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
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
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 white)
    (wood p1 mahogany)
    (surface-condition p1 verysmooth)
    (treatment p1 varnished)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 blue)
    (wood p5 pine)
    (surface-condition p5 rough)
    (treatment p5 colourfragments)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 green)
    (wood p11 mahogany)
    (surface-condition p11 rough)
    (treatment p11 colourfragments)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 natural)
    (wood p12 cherry)
    (surface-condition p12 smooth)
    (treatment p12 glazed)
    (goalsize p12 medium)
    
    
    
    
    (available p13)
    (colour p13 mauve)
    (wood p13 walnut)
    (surface-condition p13 rough)
    (treatment p13 glazed)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (available p16)
    (colour p16 green)
    (wood p16 walnut)
    (surface-condition p16 smooth)
    (treatment p16 varnished)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 natural)
    (wood p29 pine)
    (surface-condition p29 verysmooth)
    (treatment p29 colourfragments)
    (goalsize p29 large)
    
    
    
    
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
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (available p41)
    (colour p41 red)
    (wood p41 mahogany)
    (surface-condition p41 smooth)
    (treatment p41 colourfragments)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (available p49)
    (colour p49 natural)
    (wood p49 teak)
    (surface-condition p49 rough)
    (treatment p49 colourfragments)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (available p53)
    (colour p53 mauve)
    (wood p53 cherry)
    (surface-condition p53 verysmooth)
    (treatment p53 glazed)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (available p61)
    (colour p61 natural)
    (wood p61 mahogany)
    (surface-condition p61 verysmooth)
    (treatment p61 glazed)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 blue)
    (wood p65 oak)
    (surface-condition p65 rough)
    (treatment p65 colourfragments)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (available p69)
    (colour p69 red)
    (wood p69 mahogany)
    (surface-condition p69 rough)
    (treatment p69 colourfragments)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (available p71)
    (colour p71 mauve)
    (wood p71 cherry)
    (surface-condition p71 rough)
    (treatment p71 glazed)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (available p77)
    (colour p77 natural)
    (wood p77 oak)
    (surface-condition p77 rough)
    (treatment p77 varnished)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (available p80)
    (colour p80 red)
    (wood p80 pine)
    (surface-condition p80 verysmooth)
    (treatment p80 varnished)
    (goalsize p80 medium)
    
    
    
    
    (available p81)
    (colour p81 red)
    (wood p81 beech)
    (surface-condition p81 smooth)
    (treatment p81 varnished)
    (goalsize p81 medium)
    
    
    
    
    (available p82)
    (colour p82 mauve)
    (wood p82 beech)
    (surface-condition p82 smooth)
    (treatment p82 glazed)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (available p84)
    (colour p84 blue)
    (wood p84 walnut)
    (surface-condition p84 smooth)
    (treatment p84 colourfragments)
    (goalsize p84 small)
    
    
    
    
    (available p85)
    (colour p85 red)
    (wood p85 oak)
    (surface-condition p85 smooth)
    (treatment p85 varnished)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s10)
    (wood b4 mahogany)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s11)
    (wood b5 mahogany)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s1)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 oak)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s9)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s4)
    (wood b12 pine)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s9)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 pine)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s3)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 walnut)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s8)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 teak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s6)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 beech)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s7)
    (wood b21 beech)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 beech)
    (surface-condition b22 rough)
    (available b22)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (surface-condition p0 verysmooth)
      (available p1)
      (colour p1 natural)
      (wood p1 mahogany)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 red)
      (wood p2 walnut)
      (available p3)
      (colour p3 black)
      (wood p3 oak)
      (treatment p3 glazed)
      (available p4)
      (wood p4 oak)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 red)
      (wood p5 pine)
      (treatment p5 varnished)
      (available p6)
      (colour p6 white)
      (surface-condition p6 verysmooth)
      (available p7)
      (colour p7 natural)
      (wood p7 walnut)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 natural)
      (treatment p8 varnished)
      (available p9)
      (colour p9 black)
      (wood p9 pine)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (wood p10 pine)
      (treatment p10 glazed)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 black)
      (wood p12 cherry)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 white)
      (wood p13 walnut)
      (available p14)
      (colour p14 white)
      (wood p14 cherry)
      (available p15)
      (wood p15 cherry)
      (treatment p15 varnished)
      (available p16)
      (colour p16 red)
      (treatment p16 varnished)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 black)
      (surface-condition p18 smooth)
      (available p19)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 blue)
      (wood p21 mahogany)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (wood p22 oak)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 mauve)
      (wood p23 mahogany)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 white)
      (wood p24 teak)
      (treatment p24 glazed)
      (available p25)
      (colour p25 white)
      (wood p25 pine)
      (surface-condition p25 smooth)
      (available p26)
      (wood p26 teak)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 black)
      (wood p27 beech)
      (available p28)
      (wood p28 cherry)
      (treatment p28 varnished)
      (available p29)
      (colour p29 blue)
      (wood p29 pine)
      (available p30)
      (colour p30 blue)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 white)
      (wood p31 pine)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (colour p32 red)
      (surface-condition p32 verysmooth)
      (available p33)
      (colour p33 white)
      (wood p33 pine)
      (surface-condition p33 smooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 black)
      (wood p34 pine)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (wood p35 cherry)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (wood p36 oak)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 green)
      (wood p37 walnut)
      (treatment p37 varnished)
      (available p38)
      (colour p38 green)
      (wood p38 oak)
      (available p39)
      (wood p39 oak)
      (surface-condition p39 verysmooth)
      (available p40)
      (wood p40 beech)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 natural)
      (surface-condition p41 smooth)
      (available p42)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 mauve)
      (wood p43 mahogany)
      (treatment p43 glazed)
      (available p44)
      (colour p44 white)
      (wood p44 walnut)
      (available p45)
      (colour p45 natural)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 blue)
      (wood p46 teak)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 black)
      (wood p47 walnut)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (wood p48 pine)
      (surface-condition p48 verysmooth)
      (available p49)
      (colour p49 white)
      (wood p49 teak)
      (surface-condition p49 smooth)
      (available p50)
      (wood p50 pine)
      (surface-condition p50 smooth)
      (available p51)
      (colour p51 black)
      (wood p51 cherry)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (wood p52 mahogany)
      (treatment p52 varnished)
      (available p53)
      (colour p53 natural)
      (wood p53 cherry)
      (available p54)
      (surface-condition p54 smooth)
      (treatment p54 glazed)
      (available p55)
      (surface-condition p55 smooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 red)
      (surface-condition p56 smooth)
      (available p57)
      (wood p57 beech)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 blue)
      (wood p58 oak)
      (surface-condition p58 verysmooth)
      (available p59)
      (surface-condition p59 smooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 natural)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 red)
      (treatment p61 glazed)
      (available p62)
      (wood p62 mahogany)
      (surface-condition p62 smooth)
      (available p63)
      (colour p63 red)
      (treatment p63 varnished)
      (available p64)
      (colour p64 mauve)
      (surface-condition p64 verysmooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 white)
      (treatment p65 varnished)
      (available p66)
      (wood p66 walnut)
      (surface-condition p66 verysmooth)
      (available p67)
      (wood p67 oak)
      (treatment p67 glazed)
      (available p68)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (wood p69 mahogany)
      (surface-condition p69 verysmooth)
      (available p70)
      (colour p70 mauve)
      (wood p70 mahogany)
      (available p71)
      (colour p71 natural)
      (surface-condition p71 smooth)
      (available p72)
      (wood p72 beech)
      (surface-condition p72 verysmooth)
      (treatment p72 varnished)
      (available p73)
      (colour p73 natural)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 mauve)
      (surface-condition p74 verysmooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 green)
      (treatment p75 glazed)
      (available p76)
      (colour p76 black)
      (wood p76 teak)
      (surface-condition p76 verysmooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 red)
      (wood p77 oak)
      (available p78)
      (colour p78 red)
      (wood p78 pine)
      (treatment p78 glazed)
      (available p79)
      (colour p79 black)
      (wood p79 oak)
      (surface-condition p79 verysmooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 black)
      (wood p80 pine)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 black)
      (treatment p81 glazed)
      (available p82)
      (colour p82 black)
      (wood p82 beech)
      (surface-condition p82 smooth)
      (available p83)
      (colour p83 mauve)
      (treatment p83 varnished)
      (available p84)
      (colour p84 red)
      (wood p84 walnut)
      (surface-condition p84 verysmooth)
      (treatment p84 glazed)
      (available p85)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 blue)
      (wood p86 pine)
      (available p87)
      (colour p87 red)
      (wood p87 walnut)
      (surface-condition p87 smooth)
      (treatment p87 glazed)
      (available p88)
      (colour p88 black)
      (treatment p88 glazed)
    )
  )
  
)
