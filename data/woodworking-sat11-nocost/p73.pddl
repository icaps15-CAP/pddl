; woodworking task with 86 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 455800

(define (problem wood-prob-sat-73)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red black green white blue mauve - acolour
    pine teak walnut cherry mahogany oak beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 mauve)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (available p2)
    (colour p2 white)
    (wood p2 oak)
    (surface-condition p2 verysmooth)
    (treatment p2 colourfragments)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (available p5)
    (colour p5 black)
    (wood p5 mahogany)
    (surface-condition p5 rough)
    (treatment p5 varnished)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 blue)
    (wood p6 pine)
    (surface-condition p6 rough)
    (treatment p6 varnished)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (available p11)
    (colour p11 green)
    (wood p11 oak)
    (surface-condition p11 verysmooth)
    (treatment p11 colourfragments)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 green)
    (wood p14 walnut)
    (surface-condition p14 verysmooth)
    (treatment p14 colourfragments)
    (goalsize p14 large)
    
    
    
    
    (available p15)
    (colour p15 red)
    (wood p15 oak)
    (surface-condition p15 smooth)
    (treatment p15 varnished)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (available p17)
    (colour p17 red)
    (wood p17 oak)
    (surface-condition p17 smooth)
    (treatment p17 colourfragments)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 blue)
    (wood p20 mahogany)
    (surface-condition p20 smooth)
    (treatment p20 colourfragments)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 blue)
    (wood p22 teak)
    (surface-condition p22 smooth)
    (treatment p22 varnished)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 natural)
    (wood p24 teak)
    (surface-condition p24 verysmooth)
    (treatment p24 varnished)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (available p32)
    (colour p32 blue)
    (wood p32 cherry)
    (surface-condition p32 verysmooth)
    (treatment p32 glazed)
    (goalsize p32 medium)
    
    
    
    
    (available p33)
    (colour p33 green)
    (wood p33 beech)
    (surface-condition p33 rough)
    (treatment p33 glazed)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 white)
    (wood p35 cherry)
    (surface-condition p35 verysmooth)
    (treatment p35 varnished)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (available p52)
    (colour p52 blue)
    (wood p52 oak)
    (surface-condition p52 rough)
    (treatment p52 varnished)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (available p68)
    (colour p68 black)
    (wood p68 mahogany)
    (surface-condition p68 verysmooth)
    (treatment p68 colourfragments)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (available p70)
    (colour p70 black)
    (wood p70 walnut)
    (surface-condition p70 rough)
    (treatment p70 colourfragments)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (available p81)
    (colour p81 green)
    (wood p81 teak)
    (surface-condition p81 verysmooth)
    (treatment p81 varnished)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (available p85)
    (colour p85 green)
    (wood p85 pine)
    (surface-condition p85 verysmooth)
    (treatment p85 glazed)
    (goalsize p85 large)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s9)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 mahogany)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s12)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
    (wood b8 pine)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s10)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 walnut)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s11)
    (wood b11 walnut)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s8)
    (wood b12 walnut)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s4)
    (wood b13 walnut)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 teak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s9)
    (wood b15 teak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 teak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s2)
    (wood b17 teak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s6)
    (wood b18 beech)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 beech)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s12)
    (wood b20 beech)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s7)
    (wood b21 beech)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s7)
    (wood b22 beech)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s8)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 blue)
      (wood p1 pine)
      (treatment p1 glazed)
      (available p2)
      (colour p2 blue)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 red)
      (wood p3 walnut)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (wood p4 cherry)
      (treatment p4 glazed)
      (available p5)
      (colour p5 red)
      (wood p5 mahogany)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 mauve)
      (wood p6 pine)
      (available p7)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (wood p8 mahogany)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 mauve)
      (wood p9 oak)
      (available p10)
      (wood p10 teak)
      (surface-condition p10 verysmooth)
      (available p11)
      (colour p11 black)
      (wood p11 oak)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 natural)
      (wood p12 walnut)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 white)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 red)
      (wood p14 walnut)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 natural)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 white)
      (wood p16 mahogany)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 red)
      (wood p19 mahogany)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 red)
      (treatment p21 glazed)
      (available p22)
      (colour p22 red)
      (wood p22 teak)
      (available p23)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 white)
      (wood p24 teak)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 white)
      (wood p25 cherry)
      (available p26)
      (colour p26 blue)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 red)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 white)
      (wood p28 walnut)
      (available p29)
      (colour p29 mauve)
      (wood p29 teak)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 black)
      (wood p30 beech)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (wood p31 teak)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 red)
      (wood p32 cherry)
      (treatment p32 glazed)
      (available p33)
      (surface-condition p33 smooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 green)
      (wood p34 walnut)
      (treatment p34 glazed)
      (available p35)
      (colour p35 green)
      (wood p35 cherry)
      (available p36)
      (wood p36 cherry)
      (surface-condition p36 smooth)
      (available p37)
      (colour p37 natural)
      (treatment p37 glazed)
      (available p38)
      (wood p38 teak)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 black)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 mauve)
      (wood p40 cherry)
      (surface-condition p40 verysmooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 blue)
      (surface-condition p41 smooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 white)
      (wood p42 beech)
      (available p43)
      (wood p43 oak)
      (surface-condition p43 verysmooth)
      (available p44)
      (colour p44 natural)
      (wood p44 oak)
      (treatment p44 glazed)
      (available p45)
      (wood p45 cherry)
      (surface-condition p45 smooth)
      (available p46)
      (colour p46 mauve)
      (wood p46 oak)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 blue)
      (wood p47 teak)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 blue)
      (wood p48 walnut)
      (available p49)
      (colour p49 white)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 black)
      (treatment p50 varnished)
      (available p51)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (wood p52 oak)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 red)
      (wood p53 cherry)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 natural)
      (treatment p54 glazed)
      (available p55)
      (wood p55 beech)
      (surface-condition p55 verysmooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 white)
      (wood p56 walnut)
      (available p57)
      (wood p57 beech)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 black)
      (surface-condition p58 smooth)
      (available p59)
      (wood p59 cherry)
      (surface-condition p59 smooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 black)
      (wood p60 pine)
      (treatment p60 glazed)
      (available p61)
      (colour p61 blue)
      (treatment p61 varnished)
      (available p62)
      (wood p62 teak)
      (treatment p62 varnished)
      (available p63)
      (colour p63 green)
      (wood p63 beech)
      (surface-condition p63 verysmooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 white)
      (wood p64 beech)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (wood p65 cherry)
      (surface-condition p65 verysmooth)
      (available p66)
      (wood p66 beech)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 white)
      (wood p67 oak)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 green)
      (wood p68 mahogany)
      (available p69)
      (wood p69 pine)
      (treatment p69 varnished)
      (available p70)
      (colour p70 green)
      (wood p70 walnut)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (wood p71 walnut)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 red)
      (surface-condition p72 verysmooth)
      (treatment p72 glazed)
      (available p73)
      (colour p73 red)
      (surface-condition p73 smooth)
      (available p74)
      (wood p74 pine)
      (surface-condition p74 smooth)
      (available p75)
      (colour p75 white)
      (wood p75 teak)
      (surface-condition p75 smooth)
      (treatment p75 varnished)
      (available p76)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (wood p77 walnut)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 white)
      (surface-condition p78 verysmooth)
      (available p79)
      (surface-condition p79 smooth)
      (treatment p79 varnished)
      (available p80)
      (colour p80 black)
      (treatment p80 glazed)
      (available p81)
      (colour p81 blue)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 natural)
      (wood p82 pine)
      (available p83)
      (wood p83 mahogany)
      (treatment p83 glazed)
      (available p84)
      (wood p84 teak)
      (surface-condition p84 verysmooth)
      (available p85)
      (wood p85 pine)
      (treatment p85 varnished)
    )
  )
  
)
