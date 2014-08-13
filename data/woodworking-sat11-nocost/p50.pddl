; woodworking task with 119 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 513502

(define (problem wood-prob-sat-50)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white mauve green blue red black - acolour
    beech walnut cherry mahogany pine teak oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
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
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 white)
    (wood p1 beech)
    (surface-condition p1 verysmooth)
    (treatment p1 colourfragments)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 blue)
    (wood p6 beech)
    (surface-condition p6 smooth)
    (treatment p6 varnished)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 green)
    (wood p15 pine)
    (surface-condition p15 smooth)
    (treatment p15 glazed)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 black)
    (wood p16 walnut)
    (surface-condition p16 verysmooth)
    (treatment p16 colourfragments)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 mauve)
    (wood p22 teak)
    (surface-condition p22 verysmooth)
    (treatment p22 glazed)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 white)
    (wood p24 mahogany)
    (surface-condition p24 rough)
    (treatment p24 varnished)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (available p26)
    (colour p26 green)
    (wood p26 pine)
    (surface-condition p26 rough)
    (treatment p26 varnished)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (available p29)
    (colour p29 red)
    (wood p29 cherry)
    (surface-condition p29 rough)
    (treatment p29 colourfragments)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 red)
    (wood p36 beech)
    (surface-condition p36 verysmooth)
    (treatment p36 glazed)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (available p38)
    (colour p38 white)
    (wood p38 walnut)
    (surface-condition p38 verysmooth)
    (treatment p38 colourfragments)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (available p40)
    (colour p40 blue)
    (wood p40 cherry)
    (surface-condition p40 verysmooth)
    (treatment p40 glazed)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (available p48)
    (colour p48 mauve)
    (wood p48 mahogany)
    (surface-condition p48 verysmooth)
    (treatment p48 glazed)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (available p55)
    (colour p55 natural)
    (wood p55 beech)
    (surface-condition p55 rough)
    (treatment p55 glazed)
    (goalsize p55 large)
    
    
    
    
    (available p56)
    (colour p56 green)
    (wood p56 pine)
    (surface-condition p56 verysmooth)
    (treatment p56 varnished)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (available p59)
    (colour p59 black)
    (wood p59 cherry)
    (surface-condition p59 verysmooth)
    (treatment p59 colourfragments)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (available p63)
    (colour p63 red)
    (wood p63 pine)
    (surface-condition p63 verysmooth)
    (treatment p63 varnished)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (available p66)
    (colour p66 green)
    (wood p66 mahogany)
    (surface-condition p66 rough)
    (treatment p66 colourfragments)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (available p70)
    (colour p70 blue)
    (wood p70 mahogany)
    (surface-condition p70 rough)
    (treatment p70 glazed)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (available p73)
    (colour p73 natural)
    (wood p73 pine)
    (surface-condition p73 rough)
    (treatment p73 glazed)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (available p76)
    (colour p76 blue)
    (wood p76 beech)
    (surface-condition p76 rough)
    (treatment p76 glazed)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (available p95)
    (colour p95 natural)
    (wood p95 teak)
    (surface-condition p95 verysmooth)
    (treatment p95 varnished)
    (goalsize p95 large)
    
    
    
    
    (available p96)
    (colour p96 red)
    (wood p96 teak)
    (surface-condition p96 smooth)
    (treatment p96 colourfragments)
    (goalsize p96 small)
    
    
    
    
    (available p97)
    (colour p97 white)
    (wood p97 walnut)
    (surface-condition p97 verysmooth)
    (treatment p97 colourfragments)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (available p113)
    (colour p113 black)
    (wood p113 beech)
    (surface-condition p113 rough)
    (treatment p113 varnished)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s5)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s5)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s11)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s3)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s10)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s5)
    (wood b13 oak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s1)
    (wood b14 oak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 pine)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s6)
    (wood b17 pine)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s5)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s4)
    (wood b19 pine)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s10)
    (wood b20 walnut)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s7)
    (wood b21 walnut)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s8)
    (wood b22 walnut)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s8)
    (wood b23 walnut)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s2)
    (wood b24 walnut)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 teak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s10)
    (wood b26 teak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s10)
    (wood b27 teak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s8)
    (wood b28 teak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s6)
    (wood b29 beech)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 beech)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s6)
    (wood b31 beech)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s3)
    (wood b32 beech)
    (surface-condition b32 rough)
    (available b32)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 pine)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 green)
      (wood p1 beech)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 blue)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 black)
      (treatment p3 varnished)
      (available p4)
      (colour p4 blue)
      (wood p4 oak)
      (available p5)
      (wood p5 pine)
      (treatment p5 varnished)
      (available p6)
      (colour p6 white)
      (wood p6 beech)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 green)
      (treatment p7 glazed)
      (available p8)
      (wood p8 oak)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 blue)
      (treatment p9 varnished)
      (available p10)
      (colour p10 white)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 white)
      (wood p11 pine)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 white)
      (wood p12 mahogany)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (wood p13 pine)
      (treatment p13 varnished)
      (available p14)
      (colour p14 blue)
      (wood p14 pine)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 white)
      (wood p15 pine)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 red)
      (treatment p16 glazed)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 natural)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 blue)
      (wood p19 pine)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (wood p21 pine)
      (treatment p21 glazed)
      (available p22)
      (colour p22 red)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 white)
      (treatment p23 glazed)
      (available p24)
      (colour p24 red)
      (wood p24 mahogany)
      (surface-condition p24 verysmooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 green)
      (surface-condition p25 smooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 natural)
      (wood p26 pine)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 mauve)
      (treatment p27 glazed)
      (available p28)
      (colour p28 green)
      (treatment p28 glazed)
      (available p29)
      (colour p29 natural)
      (wood p29 cherry)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (colour p32 green)
      (surface-condition p32 smooth)
      (available p33)
      (wood p33 teak)
      (treatment p33 glazed)
      (available p34)
      (wood p34 cherry)
      (treatment p34 varnished)
      (available p35)
      (colour p35 blue)
      (wood p35 teak)
      (available p36)
      (colour p36 black)
      (surface-condition p36 smooth)
      (available p37)
      (colour p37 blue)
      (surface-condition p37 smooth)
      (available p38)
      (colour p38 black)
      (treatment p38 glazed)
      (available p39)
      (colour p39 red)
      (surface-condition p39 verysmooth)
      (treatment p39 varnished)
      (available p40)
      (wood p40 cherry)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 white)
      (wood p41 oak)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (wood p42 teak)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (wood p43 mahogany)
      (treatment p43 varnished)
      (available p44)
      (colour p44 green)
      (treatment p44 varnished)
      (available p45)
      (colour p45 blue)
      (surface-condition p45 smooth)
      (available p46)
      (wood p46 cherry)
      (treatment p46 varnished)
      (available p47)
      (colour p47 natural)
      (wood p47 cherry)
      (available p48)
      (colour p48 red)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (wood p49 cherry)
      (treatment p49 glazed)
      (available p50)
      (colour p50 natural)
      (wood p50 walnut)
      (available p51)
      (wood p51 walnut)
      (treatment p51 glazed)
      (available p52)
      (colour p52 black)
      (wood p52 cherry)
      (treatment p52 glazed)
      (available p53)
      (colour p53 black)
      (wood p53 beech)
      (treatment p53 glazed)
      (available p54)
      (surface-condition p54 smooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 green)
      (surface-condition p55 smooth)
      (available p56)
      (colour p56 natural)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 green)
      (wood p57 teak)
      (surface-condition p57 smooth)
      (treatment p57 varnished)
      (available p58)
      (wood p58 oak)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 mauve)
      (wood p59 cherry)
      (available p60)
      (wood p60 oak)
      (surface-condition p60 verysmooth)
      (available p61)
      (colour p61 green)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 black)
      (wood p62 teak)
      (surface-condition p62 smooth)
      (available p63)
      (colour p63 white)
      (treatment p63 varnished)
      (available p64)
      (colour p64 green)
      (wood p64 mahogany)
      (surface-condition p64 verysmooth)
      (available p65)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (wood p66 mahogany)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 natural)
      (wood p67 cherry)
      (surface-condition p67 smooth)
      (treatment p67 glazed)
      (available p68)
      (wood p68 teak)
      (surface-condition p68 smooth)
      (available p69)
      (colour p69 red)
      (wood p69 cherry)
      (surface-condition p69 smooth)
      (available p70)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 natural)
      (surface-condition p71 smooth)
      (available p72)
      (wood p72 cherry)
      (treatment p72 glazed)
      (available p73)
      (colour p73 white)
      (wood p73 pine)
      (surface-condition p73 smooth)
      (available p74)
      (colour p74 blue)
      (surface-condition p74 smooth)
      (available p75)
      (colour p75 black)
      (surface-condition p75 smooth)
      (available p76)
      (colour p76 black)
      (wood p76 beech)
      (surface-condition p76 verysmooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 natural)
      (wood p77 oak)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 natural)
      (wood p78 cherry)
      (treatment p78 varnished)
      (available p79)
      (colour p79 green)
      (wood p79 mahogany)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (wood p80 walnut)
      (surface-condition p80 smooth)
      (available p81)
      (wood p81 oak)
      (treatment p81 glazed)
      (available p82)
      (colour p82 natural)
      (wood p82 cherry)
      (surface-condition p82 verysmooth)
      (treatment p82 glazed)
      (available p83)
      (colour p83 green)
      (wood p83 walnut)
      (available p84)
      (colour p84 white)
      (wood p84 walnut)
      (available p85)
      (colour p85 black)
      (wood p85 mahogany)
      (treatment p85 varnished)
      (available p86)
      (colour p86 red)
      (wood p86 beech)
      (available p87)
      (wood p87 beech)
      (treatment p87 glazed)
      (available p88)
      (colour p88 natural)
      (wood p88 teak)
      (surface-condition p88 smooth)
      (available p89)
      (surface-condition p89 verysmooth)
      (treatment p89 varnished)
      (available p90)
      (colour p90 green)
      (wood p90 oak)
      (surface-condition p90 verysmooth)
      (treatment p90 glazed)
      (available p91)
      (colour p91 natural)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 mauve)
      (wood p92 walnut)
      (treatment p92 varnished)
      (available p93)
      (colour p93 white)
      (treatment p93 varnished)
      (available p94)
      (colour p94 black)
      (wood p94 walnut)
      (surface-condition p94 verysmooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 red)
      (surface-condition p95 verysmooth)
      (available p96)
      (surface-condition p96 smooth)
      (treatment p96 glazed)
      (available p97)
      (surface-condition p97 verysmooth)
      (treatment p97 varnished)
      (available p98)
      (surface-condition p98 smooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 white)
      (surface-condition p99 smooth)
      (available p100)
      (wood p100 beech)
      (surface-condition p100 smooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 blue)
      (wood p101 cherry)
      (available p102)
      (colour p102 mauve)
      (wood p102 pine)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 red)
      (wood p103 mahogany)
      (surface-condition p103 verysmooth)
      (available p104)
      (colour p104 black)
      (wood p104 mahogany)
      (available p105)
      (colour p105 blue)
      (wood p105 walnut)
      (available p106)
      (colour p106 green)
      (treatment p106 glazed)
      (available p107)
      (colour p107 green)
      (wood p107 cherry)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (wood p108 cherry)
      (treatment p108 varnished)
      (available p109)
      (colour p109 red)
      (wood p109 beech)
      (available p110)
      (colour p110 mauve)
      (wood p110 cherry)
      (available p111)
      (colour p111 green)
      (treatment p111 varnished)
      (available p112)
      (colour p112 white)
      (wood p112 mahogany)
      (surface-condition p112 verysmooth)
      (treatment p112 varnished)
      (available p113)
      (colour p113 white)
      (wood p113 beech)
      (surface-condition p113 smooth)
      (available p114)
      (colour p114 red)
      (wood p114 beech)
      (treatment p114 glazed)
      (available p115)
      (colour p115 black)
      (treatment p115 glazed)
      (available p116)
      (wood p116 cherry)
      (surface-condition p116 verysmooth)
      (available p117)
      (surface-condition p117 verysmooth)
      (treatment p117 glazed)
      (available p118)
      (colour p118 white)
      (treatment p118 varnished)
    )
  )
  
)
