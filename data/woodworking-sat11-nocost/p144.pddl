; woodworking task with 119 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 251951

(define (problem wood-prob-sat-144)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve blue black white red green - acolour
    pine teak mahogany walnut beech oak cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (available p1)
    (colour p1 red)
    (wood p1 oak)
    (surface-condition p1 rough)
    (treatment p1 colourfragments)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 mauve)
    (wood p3 pine)
    (surface-condition p3 rough)
    (treatment p3 colourfragments)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 red)
    (wood p6 pine)
    (surface-condition p6 rough)
    (treatment p6 colourfragments)
    (goalsize p6 large)
    
    
    
    
    (available p7)
    (colour p7 blue)
    (wood p7 teak)
    (surface-condition p7 verysmooth)
    (treatment p7 glazed)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (available p18)
    (colour p18 blue)
    (wood p18 walnut)
    (surface-condition p18 rough)
    (treatment p18 varnished)
    (goalsize p18 large)
    
    
    
    
    (available p19)
    (colour p19 mauve)
    (wood p19 mahogany)
    (surface-condition p19 rough)
    (treatment p19 glazed)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 white)
    (wood p21 pine)
    (surface-condition p21 smooth)
    (treatment p21 varnished)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (available p23)
    (colour p23 blue)
    (wood p23 mahogany)
    (surface-condition p23 verysmooth)
    (treatment p23 glazed)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 natural)
    (wood p25 walnut)
    (surface-condition p25 rough)
    (treatment p25 varnished)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (available p27)
    (colour p27 black)
    (wood p27 beech)
    (surface-condition p27 rough)
    (treatment p27 colourfragments)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 red)
    (wood p28 beech)
    (surface-condition p28 rough)
    (treatment p28 varnished)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (available p30)
    (colour p30 green)
    (wood p30 beech)
    (surface-condition p30 rough)
    (treatment p30 varnished)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (available p52)
    (colour p52 white)
    (wood p52 mahogany)
    (surface-condition p52 smooth)
    (treatment p52 varnished)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (available p57)
    (colour p57 red)
    (wood p57 oak)
    (surface-condition p57 verysmooth)
    (treatment p57 varnished)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (available p61)
    (colour p61 mauve)
    (wood p61 mahogany)
    (surface-condition p61 smooth)
    (treatment p61 colourfragments)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (available p63)
    (colour p63 red)
    (wood p63 walnut)
    (surface-condition p63 smooth)
    (treatment p63 colourfragments)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (available p65)
    (colour p65 black)
    (wood p65 pine)
    (surface-condition p65 rough)
    (treatment p65 colourfragments)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (available p73)
    (colour p73 green)
    (wood p73 mahogany)
    (surface-condition p73 smooth)
    (treatment p73 glazed)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (available p77)
    (colour p77 white)
    (wood p77 beech)
    (surface-condition p77 verysmooth)
    (treatment p77 colourfragments)
    (goalsize p77 large)
    
    
    
    
    (available p78)
    (colour p78 black)
    (wood p78 mahogany)
    (surface-condition p78 verysmooth)
    (treatment p78 glazed)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (available p81)
    (colour p81 white)
    (wood p81 mahogany)
    (surface-condition p81 verysmooth)
    (treatment p81 varnished)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (available p87)
    (colour p87 black)
    (wood p87 pine)
    (surface-condition p87 verysmooth)
    (treatment p87 glazed)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (available p94)
    (colour p94 blue)
    (wood p94 teak)
    (surface-condition p94 rough)
    (treatment p94 colourfragments)
    (goalsize p94 medium)
    
    
    
    
    (available p95)
    (colour p95 mauve)
    (wood p95 cherry)
    (surface-condition p95 verysmooth)
    (treatment p95 glazed)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (available p98)
    (colour p98 black)
    (wood p98 beech)
    (surface-condition p98 smooth)
    (treatment p98 varnished)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (available p108)
    (colour p108 natural)
    (wood p108 pine)
    (surface-condition p108 smooth)
    (treatment p108 colourfragments)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (available p117)
    (colour p117 white)
    (wood p117 teak)
    (surface-condition p117 rough)
    (treatment p117 glazed)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s2)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s4)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s7)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s5)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 oak)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s6)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s4)
    (wood b13 oak)
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
    (boardsize b16 s9)
    (wood b16 pine)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s6)
    (wood b17 pine)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s3)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s11)
    (wood b19 walnut)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s8)
    (wood b20 walnut)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s11)
    (wood b21 walnut)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s4)
    (wood b22 walnut)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s6)
    (wood b23 teak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 teak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s7)
    (wood b25 teak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s8)
    (wood b26 teak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s10)
    (wood b27 teak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s4)
    (wood b28 teak)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s8)
    (wood b29 beech)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s6)
    (wood b30 beech)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s7)
    (wood b31 beech)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s8)
    (wood b32 beech)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s6)
    (wood b33 beech)
    (surface-condition b33 rough)
    (available b33)
  )
  (:goal
    (and
      (available p0)
      (wood p0 beech)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 white)
      (wood p1 oak)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 natural)
      (treatment p3 glazed)
      (available p4)
      (colour p4 blue)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (wood p6 pine)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 natural)
      (wood p8 teak)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 mauve)
      (wood p9 pine)
      (available p10)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (wood p11 pine)
      (surface-condition p11 verysmooth)
      (available p12)
      (wood p12 cherry)
      (treatment p12 varnished)
      (available p13)
      (colour p13 natural)
      (wood p13 pine)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 white)
      (wood p14 mahogany)
      (surface-condition p14 verysmooth)
      (available p15)
      (colour p15 red)
      (wood p15 beech)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (wood p16 pine)
      (treatment p16 varnished)
      (available p17)
      (colour p17 blue)
      (wood p17 mahogany)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 red)
      (treatment p18 varnished)
      (available p19)
      (wood p19 mahogany)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 black)
      (wood p20 oak)
      (treatment p20 glazed)
      (available p21)
      (colour p21 natural)
      (wood p21 pine)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 white)
      (wood p22 beech)
      (available p23)
      (colour p23 mauve)
      (wood p23 mahogany)
      (available p24)
      (colour p24 red)
      (treatment p24 varnished)
      (available p25)
      (colour p25 mauve)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (wood p26 walnut)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 green)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 white)
      (wood p28 beech)
      (surface-condition p28 verysmooth)
      (treatment p28 glazed)
      (available p29)
      (wood p29 walnut)
      (surface-condition p29 smooth)
      (available p30)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 natural)
      (wood p31 beech)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 white)
      (surface-condition p33 smooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 red)
      (wood p34 walnut)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 red)
      (wood p35 beech)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (wood p36 walnut)
      (treatment p36 varnished)
      (available p37)
      (colour p37 black)
      (surface-condition p37 smooth)
      (available p38)
      (colour p38 black)
      (surface-condition p38 smooth)
      (available p39)
      (colour p39 blue)
      (wood p39 walnut)
      (surface-condition p39 smooth)
      (treatment p39 glazed)
      (available p40)
      (wood p40 cherry)
      (surface-condition p40 verysmooth)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 natural)
      (wood p42 cherry)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 green)
      (wood p43 oak)
      (surface-condition p43 smooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 white)
      (wood p44 oak)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 green)
      (wood p45 mahogany)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (wood p46 walnut)
      (treatment p46 varnished)
      (available p47)
      (colour p47 blue)
      (surface-condition p47 verysmooth)
      (available p48)
      (colour p48 black)
      (wood p48 walnut)
      (available p49)
      (wood p49 oak)
      (treatment p49 varnished)
      (available p50)
      (surface-condition p50 verysmooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 white)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 mauve)
      (wood p52 mahogany)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 black)
      (surface-condition p53 smooth)
      (available p54)
      (surface-condition p54 smooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 mauve)
      (treatment p55 varnished)
      (available p56)
      (colour p56 mauve)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 white)
      (wood p57 oak)
      (available p58)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 mauve)
      (treatment p59 varnished)
      (available p60)
      (wood p60 cherry)
      (surface-condition p60 smooth)
      (available p61)
      (colour p61 blue)
      (treatment p61 glazed)
      (available p62)
      (colour p62 red)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 blue)
      (wood p63 walnut)
      (surface-condition p63 verysmooth)
      (treatment p63 varnished)
      (available p64)
      (surface-condition p64 verysmooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 red)
      (wood p65 pine)
      (available p66)
      (colour p66 white)
      (wood p66 teak)
      (available p67)
      (colour p67 blue)
      (wood p67 teak)
      (available p68)
      (colour p68 green)
      (wood p68 walnut)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (wood p69 pine)
      (surface-condition p69 verysmooth)
      (available p70)
      (colour p70 mauve)
      (surface-condition p70 verysmooth)
      (available p71)
      (surface-condition p71 verysmooth)
      (treatment p71 glazed)
      (available p72)
      (wood p72 beech)
      (treatment p72 varnished)
      (available p73)
      (wood p73 mahogany)
      (surface-condition p73 verysmooth)
      (treatment p73 glazed)
      (available p74)
      (wood p74 mahogany)
      (treatment p74 glazed)
      (available p75)
      (colour p75 white)
      (treatment p75 glazed)
      (available p76)
      (wood p76 beech)
      (surface-condition p76 smooth)
      (available p77)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 mauve)
      (wood p78 mahogany)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 green)
      (surface-condition p79 verysmooth)
      (available p80)
      (wood p80 teak)
      (treatment p80 glazed)
      (available p81)
      (colour p81 blue)
      (wood p81 mahogany)
      (surface-condition p81 verysmooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 blue)
      (wood p82 cherry)
      (surface-condition p82 smooth)
      (treatment p82 varnished)
      (available p83)
      (wood p83 teak)
      (surface-condition p83 verysmooth)
      (available p84)
      (surface-condition p84 verysmooth)
      (treatment p84 glazed)
      (available p85)
      (colour p85 natural)
      (wood p85 oak)
      (surface-condition p85 verysmooth)
      (available p86)
      (wood p86 teak)
      (surface-condition p86 smooth)
      (available p87)
      (colour p87 mauve)
      (wood p87 pine)
      (surface-condition p87 verysmooth)
      (treatment p87 glazed)
      (available p88)
      (colour p88 green)
      (wood p88 pine)
      (treatment p88 glazed)
      (available p89)
      (wood p89 walnut)
      (surface-condition p89 smooth)
      (available p90)
      (wood p90 oak)
      (treatment p90 varnished)
      (available p91)
      (colour p91 natural)
      (wood p91 oak)
      (treatment p91 glazed)
      (available p92)
      (wood p92 beech)
      (treatment p92 varnished)
      (available p93)
      (wood p93 cherry)
      (treatment p93 varnished)
      (available p94)
      (wood p94 teak)
      (surface-condition p94 smooth)
      (available p95)
      (colour p95 green)
      (surface-condition p95 verysmooth)
      (available p96)
      (colour p96 mauve)
      (wood p96 oak)
      (available p97)
      (colour p97 black)
      (wood p97 mahogany)
      (surface-condition p97 smooth)
      (available p98)
      (colour p98 green)
      (treatment p98 varnished)
      (available p99)
      (wood p99 teak)
      (treatment p99 glazed)
      (available p100)
      (colour p100 natural)
      (surface-condition p100 smooth)
      (available p101)
      (colour p101 mauve)
      (wood p101 cherry)
      (available p102)
      (surface-condition p102 smooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 green)
      (wood p103 mahogany)
      (surface-condition p103 smooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 white)
      (wood p104 beech)
      (surface-condition p104 verysmooth)
      (treatment p104 glazed)
      (available p105)
      (colour p105 red)
      (treatment p105 glazed)
      (available p106)
      (wood p106 pine)
      (treatment p106 glazed)
      (available p107)
      (surface-condition p107 verysmooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 mauve)
      (treatment p108 varnished)
      (available p109)
      (colour p109 natural)
      (surface-condition p109 smooth)
      (available p110)
      (colour p110 black)
      (surface-condition p110 verysmooth)
      (treatment p110 varnished)
      (available p111)
      (wood p111 beech)
      (treatment p111 glazed)
      (available p112)
      (wood p112 oak)
      (surface-condition p112 verysmooth)
      (treatment p112 glazed)
      (available p113)
      (colour p113 black)
      (wood p113 mahogany)
      (treatment p113 glazed)
      (available p114)
      (colour p114 green)
      (wood p114 cherry)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (colour p115 blue)
      (wood p115 pine)
      (available p116)
      (colour p116 natural)
      (wood p116 pine)
      (treatment p116 varnished)
      (available p117)
      (wood p117 teak)
      (surface-condition p117 smooth)
      (treatment p117 glazed)
      (available p118)
      (colour p118 natural)
      (wood p118 teak)
      (surface-condition p118 smooth)
      (treatment p118 glazed)
    )
  )
  
)
