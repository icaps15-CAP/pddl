; woodworking task with 119 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 412564

(define (problem wood-prob-sat-84)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue white mauve green black red - acolour
    cherry teak oak mahogany beech walnut pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer0 mauve)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
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
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
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
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (available p18)
    (colour p18 green)
    (wood p18 teak)
    (surface-condition p18 rough)
    (treatment p18 colourfragments)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 red)
    (wood p20 oak)
    (surface-condition p20 rough)
    (treatment p20 colourfragments)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 blue)
    (wood p21 teak)
    (surface-condition p21 verysmooth)
    (treatment p21 varnished)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (available p26)
    (colour p26 red)
    (wood p26 pine)
    (surface-condition p26 smooth)
    (treatment p26 glazed)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 red)
    (wood p28 teak)
    (surface-condition p28 rough)
    (treatment p28 colourfragments)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (available p32)
    (colour p32 white)
    (wood p32 mahogany)
    (surface-condition p32 smooth)
    (treatment p32 glazed)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (available p36)
    (colour p36 white)
    (wood p36 teak)
    (surface-condition p36 verysmooth)
    (treatment p36 colourfragments)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (available p40)
    (colour p40 red)
    (wood p40 pine)
    (surface-condition p40 smooth)
    (treatment p40 glazed)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (available p51)
    (colour p51 black)
    (wood p51 beech)
    (surface-condition p51 verysmooth)
    (treatment p51 colourfragments)
    (goalsize p51 medium)
    
    
    
    
    (available p52)
    (colour p52 green)
    (wood p52 beech)
    (surface-condition p52 smooth)
    (treatment p52 varnished)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (available p55)
    (colour p55 natural)
    (wood p55 cherry)
    (surface-condition p55 smooth)
    (treatment p55 varnished)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (available p57)
    (colour p57 black)
    (wood p57 beech)
    (surface-condition p57 smooth)
    (treatment p57 varnished)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (available p64)
    (colour p64 blue)
    (wood p64 oak)
    (surface-condition p64 rough)
    (treatment p64 varnished)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 natural)
    (wood p66 walnut)
    (surface-condition p66 rough)
    (treatment p66 colourfragments)
    (goalsize p66 large)
    
    
    
    
    (available p67)
    (colour p67 red)
    (wood p67 cherry)
    (surface-condition p67 rough)
    (treatment p67 glazed)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (available p70)
    (colour p70 red)
    (wood p70 mahogany)
    (surface-condition p70 rough)
    (treatment p70 glazed)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (available p75)
    (colour p75 green)
    (wood p75 oak)
    (surface-condition p75 rough)
    (treatment p75 colourfragments)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (available p81)
    (colour p81 black)
    (wood p81 pine)
    (surface-condition p81 smooth)
    (treatment p81 colourfragments)
    (goalsize p81 small)
    
    
    
    
    (available p82)
    (colour p82 black)
    (wood p82 oak)
    (surface-condition p82 smooth)
    (treatment p82 colourfragments)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (available p84)
    (colour p84 red)
    (wood p84 pine)
    (surface-condition p84 verysmooth)
    (treatment p84 varnished)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (available p86)
    (colour p86 white)
    (wood p86 beech)
    (surface-condition p86 verysmooth)
    (treatment p86 glazed)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (available p94)
    (colour p94 mauve)
    (wood p94 beech)
    (surface-condition p94 smooth)
    (treatment p94 glazed)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (available p97)
    (colour p97 mauve)
    (wood p97 oak)
    (surface-condition p97 rough)
    (treatment p97 varnished)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (available p110)
    (colour p110 black)
    (wood p110 oak)
    (surface-condition p110 rough)
    (treatment p110 glazed)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (available p116)
    (colour p116 blue)
    (wood p116 beech)
    (surface-condition p116 verysmooth)
    (treatment p116 glazed)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s11)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 mahogany)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s6)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s1)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 oak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s5)
    (wood b14 oak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 oak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s5)
    (wood b16 oak)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s6)
    (wood b17 oak)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s7)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 pine)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 pine)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s6)
    (wood b21 pine)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s9)
    (wood b22 pine)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s2)
    (wood b23 pine)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s11)
    (wood b24 walnut)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s6)
    (wood b25 walnut)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s6)
    (wood b26 walnut)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s8)
    (wood b27 teak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s8)
    (wood b28 teak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s6)
    (wood b29 teak)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s9)
    (wood b30 teak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s4)
    (wood b31 teak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s10)
    (wood b32 beech)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s10)
    (wood b33 beech)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s10)
    (wood b34 beech)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 beech)
    (surface-condition b35 smooth)
    (available b35)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (surface-condition p0 smooth)
      (available p1)
      (colour p1 black)
      (wood p1 cherry)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (wood p2 cherry)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 teak)
      (treatment p3 glazed)
      (available p4)
      (colour p4 white)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 green)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 white)
      (wood p6 oak)
      (treatment p6 glazed)
      (available p7)
      (wood p7 mahogany)
      (treatment p7 glazed)
      (available p8)
      (wood p8 cherry)
      (treatment p8 glazed)
      (available p9)
      (colour p9 mauve)
      (wood p9 beech)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 green)
      (wood p10 oak)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 natural)
      (wood p11 oak)
      (available p12)
      (colour p12 natural)
      (wood p12 cherry)
      (surface-condition p12 smooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 black)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 black)
      (wood p14 cherry)
      (available p15)
      (colour p15 green)
      (wood p15 pine)
      (available p16)
      (colour p16 black)
      (treatment p16 glazed)
      (available p17)
      (colour p17 green)
      (treatment p17 varnished)
      (available p18)
      (colour p18 blue)
      (wood p18 teak)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 white)
      (wood p19 oak)
      (treatment p19 varnished)
      (available p20)
      (colour p20 mauve)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 natural)
      (wood p21 teak)
      (available p22)
      (colour p22 blue)
      (wood p22 beech)
      (surface-condition p22 verysmooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 natural)
      (surface-condition p23 smooth)
      (available p24)
      (wood p24 oak)
      (treatment p24 glazed)
      (available p25)
      (colour p25 green)
      (wood p25 mahogany)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 green)
      (wood p26 pine)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (wood p27 teak)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 mauve)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 white)
      (wood p29 walnut)
      (treatment p29 glazed)
      (available p30)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 mauve)
      (surface-condition p31 smooth)
      (available p32)
      (colour p32 black)
      (treatment p32 varnished)
      (available p33)
      (colour p33 red)
      (wood p33 mahogany)
      (treatment p33 varnished)
      (available p34)
      (colour p34 blue)
      (wood p34 mahogany)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 red)
      (wood p35 beech)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 white)
      (treatment p37 glazed)
      (available p38)
      (wood p38 mahogany)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (wood p39 walnut)
      (surface-condition p39 smooth)
      (available p40)
      (colour p40 blue)
      (surface-condition p40 verysmooth)
      (available p41)
      (colour p41 red)
      (wood p41 teak)
      (treatment p41 varnished)
      (available p42)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 natural)
      (wood p43 walnut)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 blue)
      (wood p44 teak)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 natural)
      (wood p45 cherry)
      (surface-condition p45 verysmooth)
      (available p46)
      (colour p46 green)
      (wood p46 cherry)
      (available p47)
      (wood p47 beech)
      (surface-condition p47 verysmooth)
      (available p48)
      (wood p48 teak)
      (treatment p48 glazed)
      (available p49)
      (wood p49 oak)
      (treatment p49 glazed)
      (available p50)
      (wood p50 cherry)
      (treatment p50 glazed)
      (available p51)
      (colour p51 mauve)
      (wood p51 beech)
      (treatment p51 glazed)
      (available p52)
      (colour p52 black)
      (wood p52 beech)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 black)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 black)
      (wood p54 teak)
      (treatment p54 glazed)
      (available p55)
      (colour p55 green)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 blue)
      (wood p56 oak)
      (surface-condition p56 verysmooth)
      (treatment p56 varnished)
      (available p57)
      (wood p57 beech)
      (surface-condition p57 verysmooth)
      (available p58)
      (colour p58 green)
      (wood p58 cherry)
      (available p59)
      (colour p59 natural)
      (surface-condition p59 verysmooth)
      (available p60)
      (surface-condition p60 smooth)
      (treatment p60 glazed)
      (available p61)
      (wood p61 teak)
      (surface-condition p61 smooth)
      (available p62)
      (colour p62 green)
      (wood p62 beech)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 black)
      (treatment p63 glazed)
      (available p64)
      (colour p64 white)
      (surface-condition p64 smooth)
      (available p65)
      (colour p65 natural)
      (wood p65 oak)
      (surface-condition p65 smooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 mauve)
      (wood p66 walnut)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 green)
      (wood p67 cherry)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
      (available p68)
      (wood p68 pine)
      (treatment p68 varnished)
      (available p69)
      (wood p69 oak)
      (treatment p69 varnished)
      (available p70)
      (colour p70 mauve)
      (surface-condition p70 verysmooth)
      (available p71)
      (colour p71 mauve)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (colour p72 natural)
      (wood p72 pine)
      (surface-condition p72 verysmooth)
      (available p73)
      (wood p73 cherry)
      (treatment p73 varnished)
      (available p74)
      (wood p74 mahogany)
      (surface-condition p74 verysmooth)
      (available p75)
      (colour p75 mauve)
      (wood p75 oak)
      (surface-condition p75 verysmooth)
      (available p76)
      (colour p76 mauve)
      (treatment p76 varnished)
      (available p77)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (wood p78 mahogany)
      (surface-condition p78 verysmooth)
      (available p79)
      (colour p79 black)
      (wood p79 pine)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 white)
      (wood p80 walnut)
      (surface-condition p80 verysmooth)
      (treatment p80 glazed)
      (available p81)
      (wood p81 pine)
      (surface-condition p81 smooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 mauve)
      (wood p82 oak)
      (treatment p82 glazed)
      (available p83)
      (wood p83 oak)
      (surface-condition p83 verysmooth)
      (available p84)
      (colour p84 black)
      (treatment p84 glazed)
      (available p85)
      (colour p85 green)
      (wood p85 cherry)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 red)
      (wood p86 beech)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 blue)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 red)
      (wood p88 pine)
      (surface-condition p88 smooth)
      (treatment p88 varnished)
      (available p89)
      (surface-condition p89 smooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 white)
      (wood p90 cherry)
      (surface-condition p90 verysmooth)
      (treatment p90 glazed)
      (available p91)
      (colour p91 green)
      (wood p91 cherry)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 white)
      (wood p92 beech)
      (surface-condition p92 smooth)
      (available p93)
      (colour p93 white)
      (wood p93 oak)
      (available p94)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (wood p95 teak)
      (surface-condition p95 verysmooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 black)
      (treatment p96 varnished)
      (available p97)
      (colour p97 blue)
      (wood p97 oak)
      (available p98)
      (wood p98 mahogany)
      (treatment p98 glazed)
      (available p99)
      (colour p99 green)
      (treatment p99 glazed)
      (available p100)
      (colour p100 black)
      (treatment p100 glazed)
      (available p101)
      (colour p101 red)
      (treatment p101 glazed)
      (available p102)
      (colour p102 natural)
      (wood p102 mahogany)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 blue)
      (wood p103 pine)
      (surface-condition p103 smooth)
      (treatment p103 varnished)
      (available p104)
      (wood p104 oak)
      (treatment p104 varnished)
      (available p105)
      (wood p105 oak)
      (treatment p105 glazed)
      (available p106)
      (wood p106 oak)
      (treatment p106 glazed)
      (available p107)
      (colour p107 natural)
      (wood p107 cherry)
      (surface-condition p107 smooth)
      (available p108)
      (colour p108 mauve)
      (wood p108 walnut)
      (surface-condition p108 smooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 black)
      (wood p109 pine)
      (available p110)
      (colour p110 green)
      (surface-condition p110 verysmooth)
      (available p111)
      (wood p111 beech)
      (surface-condition p111 verysmooth)
      (available p112)
      (colour p112 black)
      (surface-condition p112 verysmooth)
      (treatment p112 varnished)
      (available p113)
      (colour p113 red)
      (wood p113 oak)
      (surface-condition p113 smooth)
      (treatment p113 glazed)
      (available p114)
      (wood p114 teak)
      (treatment p114 glazed)
      (available p115)
      (colour p115 red)
      (wood p115 walnut)
      (surface-condition p115 verysmooth)
      (treatment p115 varnished)
      (available p116)
      (colour p116 white)
      (wood p116 beech)
      (available p117)
      (colour p117 green)
      (wood p117 pine)
      (available p118)
      (colour p118 white)
      (surface-condition p118 smooth)
      (treatment p118 glazed)
    )
  )
  
)
