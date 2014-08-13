; woodworking task with 110 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 570988

(define (problem wood-prob-sat-141)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green blue mauve black red white - acolour
    oak mahogany pine beech walnut teak cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 - board
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
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer2 mauve)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
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
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 green)
    (wood p3 cherry)
    (surface-condition p3 verysmooth)
    (treatment p3 varnished)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 natural)
    (wood p4 mahogany)
    (surface-condition p4 smooth)
    (treatment p4 colourfragments)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 black)
    (wood p13 mahogany)
    (surface-condition p13 smooth)
    (treatment p13 glazed)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (available p21)
    (colour p21 white)
    (wood p21 walnut)
    (surface-condition p21 smooth)
    (treatment p21 glazed)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (available p29)
    (colour p29 mauve)
    (wood p29 oak)
    (surface-condition p29 smooth)
    (treatment p29 colourfragments)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 white)
    (wood p36 beech)
    (surface-condition p36 verysmooth)
    (treatment p36 glazed)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (available p51)
    (colour p51 white)
    (wood p51 pine)
    (surface-condition p51 smooth)
    (treatment p51 colourfragments)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (available p61)
    (colour p61 red)
    (wood p61 walnut)
    (surface-condition p61 smooth)
    (treatment p61 colourfragments)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (available p64)
    (colour p64 mauve)
    (wood p64 cherry)
    (surface-condition p64 rough)
    (treatment p64 colourfragments)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (available p70)
    (colour p70 blue)
    (wood p70 beech)
    (surface-condition p70 verysmooth)
    (treatment p70 colourfragments)
    (goalsize p70 large)
    
    
    
    
    (available p71)
    (colour p71 natural)
    (wood p71 beech)
    (surface-condition p71 smooth)
    (treatment p71 colourfragments)
    (goalsize p71 medium)
    
    
    
    
    (available p72)
    (colour p72 mauve)
    (wood p72 pine)
    (surface-condition p72 rough)
    (treatment p72 varnished)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (available p76)
    (colour p76 black)
    (wood p76 cherry)
    (surface-condition p76 rough)
    (treatment p76 colourfragments)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (available p79)
    (colour p79 green)
    (wood p79 beech)
    (surface-condition p79 smooth)
    (treatment p79 varnished)
    (goalsize p79 large)
    
    
    
    
    (available p80)
    (colour p80 white)
    (wood p80 walnut)
    (surface-condition p80 smooth)
    (treatment p80 glazed)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (available p83)
    (colour p83 red)
    (wood p83 teak)
    (surface-condition p83 verysmooth)
    (treatment p83 glazed)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (available p89)
    (colour p89 black)
    (wood p89 beech)
    (surface-condition p89 verysmooth)
    (treatment p89 glazed)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (available p94)
    (colour p94 mauve)
    (wood p94 beech)
    (surface-condition p94 verysmooth)
    (treatment p94 glazed)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (available p97)
    (colour p97 black)
    (wood p97 walnut)
    (surface-condition p97 smooth)
    (treatment p97 colourfragments)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (available p100)
    (colour p100 green)
    (wood p100 cherry)
    (surface-condition p100 verysmooth)
    (treatment p100 varnished)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (available p104)
    (colour p104 black)
    (wood p104 pine)
    (surface-condition p104 verysmooth)
    (treatment p104 varnished)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (available p106)
    (colour p106 red)
    (wood p106 pine)
    (surface-condition p106 rough)
    (treatment p106 varnished)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (available p109)
    (colour p109 mauve)
    (wood p109 cherry)
    (surface-condition p109 smooth)
    (treatment p109 varnished)
    (goalsize p109 medium)
    
    
    
    
    (boardsize b0 s5)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s3)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s7)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s2)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s3)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 pine)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 pine)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s11)
    (wood b16 pine)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 pine)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s12)
    (wood b20 walnut)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s3)
    (wood b21 walnut)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 teak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s6)
    (wood b23 teak)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s9)
    (wood b24 teak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 teak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s5)
    (wood b26 teak)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s8)
    (wood b27 beech)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s7)
    (wood b28 beech)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 beech)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s6)
    (wood b30 beech)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s5)
    (wood b31 beech)
    (surface-condition b31 rough)
    (available b31)
  )
  (:goal
    (and
      (available p0)
      (wood p0 pine)
      (surface-condition p0 verysmooth)
      (available p1)
      (colour p1 red)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 red)
      (wood p2 walnut)
      (treatment p2 glazed)
      (available p3)
      (colour p3 red)
      (wood p3 cherry)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (wood p5 mahogany)
      (treatment p5 varnished)
      (available p6)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (wood p7 oak)
      (treatment p7 varnished)
      (available p8)
      (colour p8 mauve)
      (wood p8 teak)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (wood p9 walnut)
      (surface-condition p9 verysmooth)
      (available p10)
      (colour p10 white)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 natural)
      (wood p11 beech)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (wood p12 teak)
      (treatment p12 glazed)
      (available p13)
      (colour p13 green)
      (wood p13 mahogany)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 blue)
      (treatment p14 glazed)
      (available p15)
      (wood p15 walnut)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 natural)
      (wood p17 mahogany)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 blue)
      (wood p18 beech)
      (available p19)
      (wood p19 mahogany)
      (treatment p19 glazed)
      (available p20)
      (colour p20 blue)
      (wood p20 cherry)
      (available p21)
      (wood p21 walnut)
      (treatment p21 varnished)
      (available p22)
      (wood p22 mahogany)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (wood p24 mahogany)
      (surface-condition p24 verysmooth)
      (available p25)
      (wood p25 pine)
      (treatment p25 glazed)
      (available p26)
      (colour p26 mauve)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (wood p27 mahogany)
      (treatment p27 glazed)
      (available p28)
      (wood p28 pine)
      (treatment p28 glazed)
      (available p29)
      (colour p29 white)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 natural)
      (wood p30 oak)
      (surface-condition p30 verysmooth)
      (available p31)
      (wood p31 walnut)
      (surface-condition p31 smooth)
      (available p32)
      (colour p32 natural)
      (wood p32 beech)
      (available p33)
      (colour p33 natural)
      (wood p33 pine)
      (available p34)
      (colour p34 black)
      (wood p34 pine)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (wood p35 cherry)
      (surface-condition p35 verysmooth)
      (available p36)
      (wood p36 beech)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 red)
      (wood p37 cherry)
      (available p38)
      (colour p38 white)
      (surface-condition p38 verysmooth)
      (available p39)
      (wood p39 mahogany)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 red)
      (wood p40 pine)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (wood p41 teak)
      (surface-condition p41 verysmooth)
      (available p42)
      (wood p42 oak)
      (treatment p42 glazed)
      (available p43)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 black)
      (wood p44 oak)
      (available p45)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 green)
      (wood p46 beech)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (wood p47 mahogany)
      (treatment p47 varnished)
      (available p48)
      (wood p48 cherry)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 white)
      (wood p49 beech)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
      (available p50)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 green)
      (surface-condition p51 smooth)
      (available p52)
      (colour p52 green)
      (treatment p52 glazed)
      (available p53)
      (colour p53 mauve)
      (treatment p53 glazed)
      (available p54)
      (colour p54 mauve)
      (wood p54 beech)
      (surface-condition p54 verysmooth)
      (available p55)
      (wood p55 pine)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 blue)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 mauve)
      (treatment p57 glazed)
      (available p58)
      (colour p58 white)
      (wood p58 teak)
      (surface-condition p58 smooth)
      (treatment p58 glazed)
      (available p59)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (wood p60 teak)
      (surface-condition p60 smooth)
      (available p61)
      (wood p61 walnut)
      (surface-condition p61 verysmooth)
      (available p62)
      (wood p62 oak)
      (surface-condition p62 verysmooth)
      (available p63)
      (colour p63 natural)
      (wood p63 oak)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 blue)
      (wood p64 cherry)
      (available p65)
      (colour p65 red)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 natural)
      (surface-condition p66 verysmooth)
      (treatment p66 glazed)
      (available p67)
      (colour p67 red)
      (wood p67 cherry)
      (surface-condition p67 smooth)
      (available p68)
      (colour p68 mauve)
      (wood p68 pine)
      (available p69)
      (wood p69 beech)
      (surface-condition p69 verysmooth)
      (available p70)
      (wood p70 beech)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (wood p71 beech)
      (treatment p71 glazed)
      (available p72)
      (colour p72 green)
      (wood p72 pine)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 natural)
      (surface-condition p73 verysmooth)
      (available p74)
      (colour p74 red)
      (wood p74 cherry)
      (surface-condition p74 smooth)
      (available p75)
      (surface-condition p75 verysmooth)
      (treatment p75 glazed)
      (available p76)
      (colour p76 natural)
      (wood p76 cherry)
      (available p77)
      (wood p77 walnut)
      (surface-condition p77 smooth)
      (available p78)
      (colour p78 black)
      (wood p78 cherry)
      (treatment p78 glazed)
      (available p79)
      (wood p79 beech)
      (treatment p79 glazed)
      (available p80)
      (colour p80 natural)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 red)
      (wood p81 teak)
      (surface-condition p81 smooth)
      (treatment p81 glazed)
      (available p82)
      (surface-condition p82 verysmooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 mauve)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (wood p84 beech)
      (surface-condition p84 smooth)
      (available p85)
      (colour p85 green)
      (wood p85 cherry)
      (surface-condition p85 verysmooth)
      (treatment p85 varnished)
      (available p86)
      (colour p86 black)
      (surface-condition p86 verysmooth)
      (available p87)
      (colour p87 green)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 black)
      (wood p88 beech)
      (available p89)
      (colour p89 natural)
      (wood p89 beech)
      (surface-condition p89 verysmooth)
      (treatment p89 varnished)
      (available p90)
      (wood p90 cherry)
      (surface-condition p90 verysmooth)
      (treatment p90 glazed)
      (available p91)
      (colour p91 white)
      (wood p91 walnut)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 natural)
      (wood p92 pine)
      (surface-condition p92 smooth)
      (available p93)
      (colour p93 mauve)
      (wood p93 pine)
      (surface-condition p93 verysmooth)
      (treatment p93 glazed)
      (available p94)
      (colour p94 black)
      (wood p94 beech)
      (surface-condition p94 verysmooth)
      (available p95)
      (colour p95 green)
      (surface-condition p95 verysmooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 natural)
      (wood p96 mahogany)
      (surface-condition p96 verysmooth)
      (treatment p96 glazed)
      (available p97)
      (wood p97 walnut)
      (treatment p97 varnished)
      (available p98)
      (colour p98 green)
      (wood p98 beech)
      (available p99)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 natural)
      (surface-condition p100 smooth)
      (available p101)
      (colour p101 red)
      (wood p101 oak)
      (treatment p101 glazed)
      (available p102)
      (wood p102 mahogany)
      (surface-condition p102 smooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 blue)
      (wood p103 walnut)
      (surface-condition p103 verysmooth)
      (treatment p103 varnished)
      (available p104)
      (colour p104 natural)
      (wood p104 pine)
      (treatment p104 glazed)
      (available p105)
      (colour p105 black)
      (wood p105 pine)
      (available p106)
      (colour p106 blue)
      (wood p106 pine)
      (available p107)
      (colour p107 mauve)
      (wood p107 oak)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (colour p108 natural)
      (surface-condition p108 smooth)
      (available p109)
      (wood p109 cherry)
      (treatment p109 glazed)
    )
  )
  
)
