; woodworking task with 95 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 898696

(define (problem wood-prob-sat-76)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green red black white mauve blue - acolour
    mahogany walnut pine beech cherry oak teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 - part
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (available p1)
    (colour p1 black)
    (wood p1 pine)
    (surface-condition p1 smooth)
    (treatment p1 glazed)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 black)
    (wood p6 mahogany)
    (surface-condition p6 rough)
    (treatment p6 colourfragments)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (available p11)
    (colour p11 red)
    (wood p11 mahogany)
    (surface-condition p11 smooth)
    (treatment p11 varnished)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 red)
    (wood p12 oak)
    (surface-condition p12 smooth)
    (treatment p12 glazed)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (available p16)
    (colour p16 green)
    (wood p16 teak)
    (surface-condition p16 rough)
    (treatment p16 colourfragments)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (available p19)
    (colour p19 white)
    (wood p19 walnut)
    (surface-condition p19 smooth)
    (treatment p19 glazed)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 mauve)
    (wood p20 pine)
    (surface-condition p20 rough)
    (treatment p20 varnished)
    (goalsize p20 small)
    
    
    
    
    (available p21)
    (colour p21 red)
    (wood p21 cherry)
    (surface-condition p21 smooth)
    (treatment p21 glazed)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 red)
    (wood p28 mahogany)
    (surface-condition p28 rough)
    (treatment p28 varnished)
    (goalsize p28 small)
    
    
    
    
    (available p29)
    (colour p29 white)
    (wood p29 walnut)
    (surface-condition p29 smooth)
    (treatment p29 glazed)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (available p42)
    (colour p42 white)
    (wood p42 oak)
    (surface-condition p42 verysmooth)
    (treatment p42 glazed)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (available p44)
    (colour p44 black)
    (wood p44 walnut)
    (surface-condition p44 smooth)
    (treatment p44 varnished)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (available p51)
    (colour p51 black)
    (wood p51 oak)
    (surface-condition p51 smooth)
    (treatment p51 colourfragments)
    (goalsize p51 medium)
    
    
    
    
    (available p52)
    (colour p52 red)
    (wood p52 beech)
    (surface-condition p52 smooth)
    (treatment p52 glazed)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (available p56)
    (colour p56 black)
    (wood p56 walnut)
    (surface-condition p56 verysmooth)
    (treatment p56 colourfragments)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (available p58)
    (colour p58 white)
    (wood p58 teak)
    (surface-condition p58 rough)
    (treatment p58 glazed)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (available p61)
    (colour p61 blue)
    (wood p61 beech)
    (surface-condition p61 verysmooth)
    (treatment p61 colourfragments)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (available p72)
    (colour p72 mauve)
    (wood p72 beech)
    (surface-condition p72 verysmooth)
    (treatment p72 colourfragments)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (available p77)
    (colour p77 red)
    (wood p77 pine)
    (surface-condition p77 smooth)
    (treatment p77 colourfragments)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (available p79)
    (colour p79 blue)
    (wood p79 oak)
    (surface-condition p79 smooth)
    (treatment p79 colourfragments)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (available p81)
    (colour p81 mauve)
    (wood p81 walnut)
    (surface-condition p81 rough)
    (treatment p81 glazed)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (available p92)
    (colour p92 green)
    (wood p92 oak)
    (surface-condition p92 verysmooth)
    (treatment p92 colourfragments)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s5)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s3)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 mahogany)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s9)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s4)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s6)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 pine)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s9)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 pine)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s5)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s6)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s11)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s10)
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
    (boardsize b22 s7)
    (wood b22 teak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s6)
    (wood b23 teak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s7)
    (wood b25 beech)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s6)
    (wood b26 beech)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s10)
    (wood b27 beech)
    (surface-condition b27 rough)
    (available b27)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 white)
      (wood p1 pine)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 red)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 natural)
      (treatment p3 varnished)
      (available p4)
      (colour p4 black)
      (wood p4 oak)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 white)
      (wood p5 oak)
      (available p6)
      (colour p6 natural)
      (wood p6 mahogany)
      (available p7)
      (wood p7 mahogany)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 natural)
      (treatment p8 varnished)
      (available p9)
      (colour p9 natural)
      (wood p9 beech)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 red)
      (surface-condition p10 verysmooth)
      (available p11)
      (colour p11 white)
      (wood p11 mahogany)
      (available p12)
      (colour p12 white)
      (surface-condition p12 smooth)
      (available p13)
      (colour p13 mauve)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 mauve)
      (treatment p14 varnished)
      (available p15)
      (colour p15 white)
      (wood p15 beech)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 white)
      (wood p16 teak)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 white)
      (wood p17 teak)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 black)
      (wood p18 pine)
      (available p19)
      (surface-condition p19 smooth)
      (treatment p19 varnished)
      (available p20)
      (wood p20 pine)
      (surface-condition p20 smooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 natural)
      (wood p21 cherry)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (surface-condition p22 verysmooth)
      (treatment p22 varnished)
      (available p23)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 black)
      (wood p24 beech)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 red)
      (wood p25 cherry)
      (surface-condition p25 smooth)
      (treatment p25 glazed)
      (available p26)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 white)
      (wood p27 beech)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 mauve)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 black)
      (wood p29 walnut)
      (available p30)
      (wood p30 mahogany)
      (treatment p30 glazed)
      (available p31)
      (wood p31 pine)
      (treatment p31 glazed)
      (available p32)
      (colour p32 red)
      (wood p32 cherry)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (wood p33 teak)
      (treatment p33 varnished)
      (available p34)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 green)
      (wood p35 pine)
      (surface-condition p35 smooth)
      (available p36)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 black)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 natural)
      (wood p38 oak)
      (treatment p38 varnished)
      (available p39)
      (colour p39 white)
      (wood p39 mahogany)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 mauve)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 black)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 natural)
      (wood p43 walnut)
      (available p44)
      (wood p44 walnut)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 black)
      (wood p45 walnut)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (wood p46 cherry)
      (treatment p46 varnished)
      (available p47)
      (wood p47 walnut)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 mauve)
      (wood p48 teak)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (wood p49 teak)
      (treatment p49 glazed)
      (available p50)
      (wood p50 walnut)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 red)
      (wood p51 oak)
      (treatment p51 varnished)
      (available p52)
      (colour p52 mauve)
      (wood p52 beech)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 white)
      (surface-condition p53 verysmooth)
      (available p54)
      (colour p54 red)
      (wood p54 cherry)
      (treatment p54 varnished)
      (available p55)
      (wood p55 teak)
      (treatment p55 glazed)
      (available p56)
      (colour p56 natural)
      (treatment p56 glazed)
      (available p57)
      (colour p57 white)
      (treatment p57 varnished)
      (available p58)
      (colour p58 red)
      (wood p58 teak)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 green)
      (wood p59 walnut)
      (surface-condition p59 verysmooth)
      (available p60)
      (colour p60 black)
      (treatment p60 glazed)
      (available p61)
      (wood p61 beech)
      (treatment p61 varnished)
      (available p62)
      (colour p62 red)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (wood p63 teak)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 mauve)
      (wood p64 beech)
      (surface-condition p64 smooth)
      (treatment p64 varnished)
      (available p65)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 green)
      (wood p66 oak)
      (treatment p66 varnished)
      (available p67)
      (colour p67 red)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (wood p68 oak)
      (surface-condition p68 verysmooth)
      (treatment p68 varnished)
      (available p69)
      (wood p69 teak)
      (treatment p69 glazed)
      (available p70)
      (colour p70 white)
      (wood p70 pine)
      (surface-condition p70 smooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 white)
      (treatment p71 glazed)
      (available p72)
      (surface-condition p72 smooth)
      (treatment p72 varnished)
      (available p73)
      (surface-condition p73 smooth)
      (treatment p73 glazed)
      (available p74)
      (wood p74 oak)
      (treatment p74 glazed)
      (available p75)
      (wood p75 walnut)
      (surface-condition p75 verysmooth)
      (available p76)
      (colour p76 mauve)
      (wood p76 mahogany)
      (surface-condition p76 smooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 white)
      (wood p77 pine)
      (available p78)
      (surface-condition p78 smooth)
      (treatment p78 glazed)
      (available p79)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 blue)
      (treatment p80 varnished)
      (available p81)
      (colour p81 blue)
      (surface-condition p81 smooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 blue)
      (wood p82 mahogany)
      (surface-condition p82 verysmooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 natural)
      (treatment p83 glazed)
      (available p84)
      (colour p84 white)
      (wood p84 pine)
      (surface-condition p84 smooth)
      (treatment p84 glazed)
      (available p85)
      (wood p85 beech)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (wood p87 walnut)
      (treatment p87 varnished)
      (available p88)
      (wood p88 mahogany)
      (treatment p88 varnished)
      (available p89)
      (wood p89 mahogany)
      (surface-condition p89 smooth)
      (available p90)
      (wood p90 teak)
      (surface-condition p90 smooth)
      (available p91)
      (colour p91 natural)
      (wood p91 mahogany)
      (available p92)
      (wood p92 oak)
      (treatment p92 glazed)
      (available p93)
      (colour p93 black)
      (wood p93 pine)
      (surface-condition p93 verysmooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 red)
      (wood p94 walnut)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
    )
  )
  
)
