; woodworking task with 110 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 853670

(define (problem wood-prob-sat-81)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black white green mauve blue red - acolour
    cherry teak beech mahogany pine oak walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 green)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer1 black)
    (has-colour glazer2 green)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour glazer2 natural)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 red)
    (wood p0 mahogany)
    (surface-condition p0 smooth)
    (treatment p0 glazed)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 blue)
    (wood p9 walnut)
    (surface-condition p9 rough)
    (treatment p9 colourfragments)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (available p14)
    (colour p14 blue)
    (wood p14 pine)
    (surface-condition p14 rough)
    (treatment p14 colourfragments)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 black)
    (wood p19 beech)
    (surface-condition p19 smooth)
    (treatment p19 colourfragments)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (available p22)
    (colour p22 white)
    (wood p22 mahogany)
    (surface-condition p22 rough)
    (treatment p22 colourfragments)
    (goalsize p22 medium)
    
    
    
    
    (available p23)
    (colour p23 mauve)
    (wood p23 teak)
    (surface-condition p23 verysmooth)
    (treatment p23 glazed)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 white)
    (wood p24 teak)
    (surface-condition p24 rough)
    (treatment p24 colourfragments)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 blue)
    (wood p26 mahogany)
    (surface-condition p26 smooth)
    (treatment p26 colourfragments)
    (goalsize p26 large)
    
    
    
    
    (available p27)
    (colour p27 green)
    (wood p27 teak)
    (surface-condition p27 verysmooth)
    (treatment p27 varnished)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 natural)
    (wood p29 cherry)
    (surface-condition p29 verysmooth)
    (treatment p29 colourfragments)
    (goalsize p29 small)
    
    
    
    
    (available p30)
    (colour p30 natural)
    (wood p30 mahogany)
    (surface-condition p30 smooth)
    (treatment p30 colourfragments)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 white)
    (wood p31 oak)
    (surface-condition p31 rough)
    (treatment p31 glazed)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 white)
    (wood p33 mahogany)
    (surface-condition p33 smooth)
    (treatment p33 varnished)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (available p42)
    (colour p42 blue)
    (wood p42 beech)
    (surface-condition p42 smooth)
    (treatment p42 colourfragments)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (available p48)
    (colour p48 white)
    (wood p48 mahogany)
    (surface-condition p48 verysmooth)
    (treatment p48 glazed)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (available p50)
    (colour p50 red)
    (wood p50 walnut)
    (surface-condition p50 rough)
    (treatment p50 glazed)
    (goalsize p50 small)
    
    
    
    
    (available p51)
    (colour p51 white)
    (wood p51 pine)
    (surface-condition p51 smooth)
    (treatment p51 colourfragments)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (available p57)
    (colour p57 blue)
    (wood p57 walnut)
    (surface-condition p57 verysmooth)
    (treatment p57 colourfragments)
    (goalsize p57 large)
    
    
    
    
    (available p58)
    (colour p58 blue)
    (wood p58 mahogany)
    (surface-condition p58 rough)
    (treatment p58 colourfragments)
    (goalsize p58 small)
    
    
    
    
    (available p59)
    (colour p59 black)
    (wood p59 cherry)
    (surface-condition p59 smooth)
    (treatment p59 varnished)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (available p64)
    (colour p64 mauve)
    (wood p64 beech)
    (surface-condition p64 rough)
    (treatment p64 colourfragments)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (available p67)
    (colour p67 natural)
    (wood p67 mahogany)
    (surface-condition p67 rough)
    (treatment p67 colourfragments)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (available p75)
    (colour p75 green)
    (wood p75 oak)
    (surface-condition p75 smooth)
    (treatment p75 glazed)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (available p97)
    (colour p97 white)
    (wood p97 pine)
    (surface-condition p97 smooth)
    (treatment p97 varnished)
    (goalsize p97 medium)
    
    
    
    
    (available p98)
    (colour p98 red)
    (wood p98 beech)
    (surface-condition p98 smooth)
    (treatment p98 glazed)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s1)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 mahogany)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s11)
    (wood b7 mahogany)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s8)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s10)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s5)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 oak)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s4)
    (wood b13 oak)
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
    (boardsize b16 s5)
    (wood b16 pine)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 pine)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s5)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s6)
    (wood b20 walnut)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 walnut)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s10)
    (wood b22 walnut)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s5)
    (wood b23 walnut)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s4)
    (wood b24 walnut)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s9)
    (wood b25 teak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s9)
    (wood b26 teak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 teak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s9)
    (wood b28 teak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 beech)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 beech)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 beech)
    (surface-condition b31 smooth)
    (available b31)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 natural)
      (wood p2 pine)
      (available p3)
      (wood p3 beech)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 green)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 black)
      (wood p5 oak)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 mauve)
      (wood p6 pine)
      (surface-condition p6 smooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 mauve)
      (treatment p7 varnished)
      (available p8)
      (wood p8 beech)
      (treatment p8 glazed)
      (available p9)
      (wood p9 walnut)
      (treatment p9 varnished)
      (available p10)
      (colour p10 black)
      (wood p10 mahogany)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 black)
      (wood p11 cherry)
      (available p12)
      (surface-condition p12 smooth)
      (treatment p12 glazed)
      (available p13)
      (wood p13 cherry)
      (treatment p13 glazed)
      (available p14)
      (colour p14 white)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (wood p15 mahogany)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 black)
      (wood p16 beech)
      (treatment p16 glazed)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 black)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 mauve)
      (wood p19 beech)
      (available p20)
      (wood p20 walnut)
      (treatment p20 glazed)
      (available p21)
      (colour p21 natural)
      (wood p21 teak)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (wood p22 mahogany)
      (treatment p22 glazed)
      (available p23)
      (colour p23 green)
      (wood p23 teak)
      (surface-condition p23 smooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 black)
      (wood p24 teak)
      (available p25)
      (colour p25 red)
      (treatment p25 varnished)
      (available p26)
      (colour p26 black)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 mauve)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 mauve)
      (treatment p28 varnished)
      (available p29)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 mauve)
      (wood p30 mahogany)
      (available p31)
      (colour p31 green)
      (wood p31 oak)
      (surface-condition p31 verysmooth)
      (treatment p31 varnished)
      (available p32)
      (wood p32 mahogany)
      (treatment p32 varnished)
      (available p33)
      (wood p33 mahogany)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 green)
      (wood p34 mahogany)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 natural)
      (wood p35 oak)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 blue)
      (treatment p36 varnished)
      (available p37)
      (colour p37 green)
      (treatment p37 varnished)
      (available p38)
      (wood p38 cherry)
      (surface-condition p38 verysmooth)
      (available p39)
      (colour p39 mauve)
      (wood p39 walnut)
      (available p40)
      (colour p40 black)
      (surface-condition p40 verysmooth)
      (available p41)
      (wood p41 oak)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 mauve)
      (wood p43 walnut)
      (surface-condition p43 smooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 red)
      (wood p44 teak)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 blue)
      (surface-condition p45 smooth)
      (available p46)
      (colour p46 green)
      (surface-condition p46 verysmooth)
      (available p47)
      (colour p47 black)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 mauve)
      (wood p48 mahogany)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 black)
      (treatment p49 varnished)
      (available p50)
      (colour p50 mauve)
      (surface-condition p50 smooth)
      (available p51)
      (colour p51 natural)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (wood p52 pine)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 black)
      (wood p53 walnut)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (wood p54 beech)
      (surface-condition p54 verysmooth)
      (available p55)
      (wood p55 mahogany)
      (surface-condition p55 smooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 blue)
      (wood p56 walnut)
      (surface-condition p56 verysmooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 white)
      (wood p57 walnut)
      (available p58)
      (colour p58 mauve)
      (wood p58 mahogany)
      (available p59)
      (colour p59 red)
      (wood p59 cherry)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (wood p60 pine)
      (treatment p60 varnished)
      (available p61)
      (colour p61 natural)
      (surface-condition p61 smooth)
      (available p62)
      (colour p62 green)
      (wood p62 teak)
      (available p63)
      (colour p63 green)
      (wood p63 cherry)
      (treatment p63 glazed)
      (available p64)
      (wood p64 beech)
      (surface-condition p64 smooth)
      (available p65)
      (colour p65 black)
      (treatment p65 varnished)
      (available p66)
      (wood p66 cherry)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 blue)
      (surface-condition p67 verysmooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 natural)
      (surface-condition p68 verysmooth)
      (available p69)
      (wood p69 pine)
      (surface-condition p69 verysmooth)
      (treatment p69 varnished)
      (available p70)
      (colour p70 mauve)
      (wood p70 oak)
      (available p71)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (wood p72 mahogany)
      (treatment p72 glazed)
      (available p73)
      (colour p73 white)
      (wood p73 walnut)
      (surface-condition p73 smooth)
      (treatment p73 glazed)
      (available p74)
      (colour p74 white)
      (surface-condition p74 verysmooth)
      (available p75)
      (colour p75 red)
      (wood p75 oak)
      (treatment p75 glazed)
      (available p76)
      (colour p76 black)
      (surface-condition p76 smooth)
      (available p77)
      (colour p77 natural)
      (wood p77 cherry)
      (treatment p77 varnished)
      (available p78)
      (wood p78 oak)
      (treatment p78 varnished)
      (available p79)
      (colour p79 natural)
      (wood p79 pine)
      (treatment p79 glazed)
      (available p80)
      (wood p80 oak)
      (surface-condition p80 smooth)
      (available p81)
      (colour p81 natural)
      (wood p81 mahogany)
      (available p82)
      (colour p82 red)
      (wood p82 pine)
      (available p83)
      (colour p83 white)
      (wood p83 walnut)
      (surface-condition p83 verysmooth)
      (available p84)
      (colour p84 black)
      (wood p84 walnut)
      (surface-condition p84 verysmooth)
      (available p85)
      (colour p85 green)
      (surface-condition p85 verysmooth)
      (available p86)
      (colour p86 white)
      (wood p86 pine)
      (available p87)
      (colour p87 white)
      (treatment p87 varnished)
      (available p88)
      (colour p88 black)
      (surface-condition p88 smooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 white)
      (wood p89 walnut)
      (surface-condition p89 smooth)
      (treatment p89 varnished)
      (available p90)
      (wood p90 beech)
      (treatment p90 glazed)
      (available p91)
      (colour p91 blue)
      (wood p91 walnut)
      (surface-condition p91 smooth)
      (available p92)
      (wood p92 teak)
      (surface-condition p92 verysmooth)
      (available p93)
      (colour p93 white)
      (surface-condition p93 verysmooth)
      (available p94)
      (wood p94 oak)
      (treatment p94 varnished)
      (available p95)
      (wood p95 cherry)
      (surface-condition p95 smooth)
      (available p96)
      (colour p96 green)
      (wood p96 teak)
      (available p97)
      (colour p97 blue)
      (wood p97 pine)
      (surface-condition p97 smooth)
      (available p98)
      (colour p98 blue)
      (wood p98 beech)
      (surface-condition p98 verysmooth)
      (available p99)
      (wood p99 cherry)
      (treatment p99 varnished)
      (available p100)
      (wood p100 walnut)
      (surface-condition p100 smooth)
      (available p101)
      (surface-condition p101 smooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 black)
      (wood p102 teak)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 mauve)
      (wood p103 oak)
      (surface-condition p103 verysmooth)
      (available p104)
      (wood p104 pine)
      (treatment p104 glazed)
      (available p105)
      (colour p105 mauve)
      (wood p105 mahogany)
      (available p106)
      (colour p106 mauve)
      (wood p106 teak)
      (surface-condition p106 verysmooth)
      (available p107)
      (colour p107 mauve)
      (treatment p107 glazed)
      (available p108)
      (colour p108 blue)
      (wood p108 oak)
      (surface-condition p108 verysmooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 natural)
      (wood p109 oak)
      (surface-condition p109 verysmooth)
      (treatment p109 varnished)
    )
  )
  
)
