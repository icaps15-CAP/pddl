; woodworking task with 116 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 513195

(define (problem wood-prob-sat-49)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green blue mauve white black red - acolour
    oak mahogany walnut teak cherry beech pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 white)
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
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
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
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (available p3)
    (colour p3 red)
    (wood p3 pine)
    (surface-condition p3 verysmooth)
    (treatment p3 varnished)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 white)
    (wood p14 mahogany)
    (surface-condition p14 verysmooth)
    (treatment p14 varnished)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 natural)
    (wood p21 cherry)
    (surface-condition p21 verysmooth)
    (treatment p21 varnished)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 blue)
    (wood p22 beech)
    (surface-condition p22 verysmooth)
    (treatment p22 colourfragments)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 green)
    (wood p28 teak)
    (surface-condition p28 verysmooth)
    (treatment p28 glazed)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (available p30)
    (colour p30 natural)
    (wood p30 teak)
    (surface-condition p30 smooth)
    (treatment p30 colourfragments)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 white)
    (wood p31 cherry)
    (surface-condition p31 verysmooth)
    (treatment p31 colourfragments)
    (goalsize p31 medium)
    
    
    
    
    (available p32)
    (colour p32 green)
    (wood p32 oak)
    (surface-condition p32 smooth)
    (treatment p32 glazed)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 black)
    (wood p36 beech)
    (surface-condition p36 smooth)
    (treatment p36 varnished)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (available p54)
    (colour p54 white)
    (wood p54 teak)
    (surface-condition p54 rough)
    (treatment p54 colourfragments)
    (goalsize p54 medium)
    
    
    
    
    (available p55)
    (colour p55 red)
    (wood p55 beech)
    (surface-condition p55 smooth)
    (treatment p55 colourfragments)
    (goalsize p55 small)
    
    
    
    
    (available p56)
    (colour p56 blue)
    (wood p56 oak)
    (surface-condition p56 rough)
    (treatment p56 colourfragments)
    (goalsize p56 large)
    
    
    
    
    (available p57)
    (colour p57 mauve)
    (wood p57 walnut)
    (surface-condition p57 rough)
    (treatment p57 varnished)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (available p64)
    (colour p64 natural)
    (wood p64 mahogany)
    (surface-condition p64 verysmooth)
    (treatment p64 colourfragments)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 green)
    (wood p66 cherry)
    (surface-condition p66 verysmooth)
    (treatment p66 colourfragments)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (available p72)
    (colour p72 white)
    (wood p72 mahogany)
    (surface-condition p72 rough)
    (treatment p72 varnished)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (available p74)
    (colour p74 white)
    (wood p74 cherry)
    (surface-condition p74 rough)
    (treatment p74 varnished)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (available p76)
    (colour p76 red)
    (wood p76 walnut)
    (surface-condition p76 smooth)
    (treatment p76 colourfragments)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (available p78)
    (colour p78 natural)
    (wood p78 oak)
    (surface-condition p78 rough)
    (treatment p78 glazed)
    (goalsize p78 large)
    
    
    
    
    (available p79)
    (colour p79 white)
    (wood p79 mahogany)
    (surface-condition p79 rough)
    (treatment p79 glazed)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (available p84)
    (colour p84 blue)
    (wood p84 pine)
    (surface-condition p84 smooth)
    (treatment p84 glazed)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (available p87)
    (colour p87 white)
    (wood p87 mahogany)
    (surface-condition p87 verysmooth)
    (treatment p87 glazed)
    (goalsize p87 medium)
    
    
    
    
    (available p88)
    (colour p88 white)
    (wood p88 mahogany)
    (surface-condition p88 smooth)
    (treatment p88 glazed)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (available p101)
    (colour p101 natural)
    (wood p101 beech)
    (surface-condition p101 smooth)
    (treatment p101 colourfragments)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (available p110)
    (colour p110 white)
    (wood p110 pine)
    (surface-condition p110 verysmooth)
    (treatment p110 glazed)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (available p112)
    (colour p112 natural)
    (wood p112 cherry)
    (surface-condition p112 smooth)
    (treatment p112 varnished)
    (goalsize p112 large)
    
    
    
    
    (available p113)
    (colour p113 green)
    (wood p113 pine)
    (surface-condition p113 verysmooth)
    (treatment p113 varnished)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s4)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s6)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 mahogany)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s10)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s1)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s5)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 oak)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s7)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 pine)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s5)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s12)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s5)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s10)
    (wood b21 teak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 teak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s4)
    (wood b23 teak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s11)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 beech)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s10)
    (wood b26 beech)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 beech)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s3)
    (wood b28 beech)
    (surface-condition b28 rough)
    (available b28)
  )
  (:goal
    (and
      (available p0)
      (wood p0 pine)
      (treatment p0 glazed)
      (available p1)
      (colour p1 white)
      (wood p1 cherry)
      (available p2)
      (colour p2 green)
      (wood p2 teak)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 white)
      (wood p3 pine)
      (treatment p3 varnished)
      (available p4)
      (colour p4 natural)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 mauve)
      (wood p5 teak)
      (treatment p5 glazed)
      (available p6)
      (colour p6 black)
      (surface-condition p6 verysmooth)
      (available p7)
      (wood p7 oak)
      (treatment p7 varnished)
      (available p8)
      (colour p8 natural)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 green)
      (surface-condition p10 smooth)
      (available p11)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 mauve)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 white)
      (wood p13 walnut)
      (available p14)
      (wood p14 mahogany)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 natural)
      (treatment p15 glazed)
      (available p16)
      (colour p16 green)
      (wood p16 mahogany)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 black)
      (wood p17 mahogany)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 white)
      (wood p18 cherry)
      (available p19)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 green)
      (treatment p20 varnished)
      (available p21)
      (wood p21 cherry)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 red)
      (surface-condition p22 smooth)
      (available p23)
      (surface-condition p23 smooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 mauve)
      (wood p24 pine)
      (surface-condition p24 verysmooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 black)
      (wood p25 beech)
      (surface-condition p25 smooth)
      (treatment p25 glazed)
      (available p26)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 mauve)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 white)
      (wood p28 teak)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 natural)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 blue)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 blue)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 red)
      (treatment p32 glazed)
      (available p33)
      (colour p33 blue)
      (wood p33 oak)
      (available p34)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 black)
      (wood p35 oak)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 blue)
      (wood p36 beech)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 red)
      (wood p37 teak)
      (surface-condition p37 smooth)
      (available p38)
      (colour p38 blue)
      (wood p38 teak)
      (surface-condition p38 verysmooth)
      (treatment p38 varnished)
      (available p39)
      (surface-condition p39 smooth)
      (treatment p39 glazed)
      (available p40)
      (wood p40 oak)
      (surface-condition p40 verysmooth)
      (available p41)
      (colour p41 natural)
      (wood p41 oak)
      (available p42)
      (wood p42 pine)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (wood p43 mahogany)
      (surface-condition p43 smooth)
      (available p44)
      (wood p44 beech)
      (treatment p44 varnished)
      (available p45)
      (colour p45 blue)
      (surface-condition p45 smooth)
      (available p46)
      (colour p46 green)
      (wood p46 pine)
      (available p47)
      (wood p47 teak)
      (surface-condition p47 verysmooth)
      (treatment p47 glazed)
      (available p48)
      (colour p48 black)
      (wood p48 mahogany)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 red)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
      (available p50)
      (wood p50 walnut)
      (treatment p50 glazed)
      (available p51)
      (wood p51 walnut)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 white)
      (wood p52 walnut)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 white)
      (wood p53 beech)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 blue)
      (wood p54 teak)
      (treatment p54 varnished)
      (available p55)
      (colour p55 black)
      (wood p55 beech)
      (surface-condition p55 verysmooth)
      (available p56)
      (wood p56 oak)
      (treatment p56 glazed)
      (available p57)
      (colour p57 red)
      (wood p57 walnut)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 white)
      (wood p58 beech)
      (surface-condition p58 verysmooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 mauve)
      (surface-condition p59 smooth)
      (treatment p59 glazed)
      (available p60)
      (wood p60 walnut)
      (treatment p60 varnished)
      (available p61)
      (colour p61 black)
      (wood p61 teak)
      (treatment p61 glazed)
      (available p62)
      (wood p62 mahogany)
      (treatment p62 varnished)
      (available p63)
      (wood p63 pine)
      (surface-condition p63 smooth)
      (available p64)
      (wood p64 mahogany)
      (surface-condition p64 smooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 green)
      (wood p65 walnut)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 blue)
      (wood p66 cherry)
      (surface-condition p66 smooth)
      (treatment p66 glazed)
      (available p67)
      (colour p67 black)
      (surface-condition p67 smooth)
      (available p68)
      (colour p68 black)
      (wood p68 cherry)
      (treatment p68 glazed)
      (available p69)
      (colour p69 black)
      (surface-condition p69 verysmooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 white)
      (wood p70 cherry)
      (surface-condition p70 smooth)
      (treatment p70 varnished)
      (available p71)
      (wood p71 beech)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 natural)
      (wood p72 mahogany)
      (available p73)
      (surface-condition p73 smooth)
      (treatment p73 glazed)
      (available p74)
      (colour p74 blue)
      (surface-condition p74 verysmooth)
      (treatment p74 varnished)
      (available p75)
      (colour p75 green)
      (wood p75 cherry)
      (treatment p75 varnished)
      (available p76)
      (colour p76 mauve)
      (wood p76 walnut)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (wood p77 pine)
      (surface-condition p77 smooth)
      (available p78)
      (wood p78 oak)
      (surface-condition p78 smooth)
      (available p79)
      (colour p79 green)
      (surface-condition p79 smooth)
      (available p80)
      (colour p80 green)
      (wood p80 mahogany)
      (available p81)
      (colour p81 natural)
      (wood p81 teak)
      (surface-condition p81 verysmooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 blue)
      (wood p82 mahogany)
      (available p83)
      (colour p83 blue)
      (wood p83 walnut)
      (surface-condition p83 verysmooth)
      (treatment p83 glazed)
      (available p84)
      (colour p84 black)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (wood p85 teak)
      (surface-condition p85 verysmooth)
      (available p86)
      (wood p86 beech)
      (surface-condition p86 smooth)
      (available p87)
      (colour p87 blue)
      (surface-condition p87 verysmooth)
      (treatment p87 glazed)
      (available p88)
      (colour p88 red)
      (treatment p88 glazed)
      (available p89)
      (colour p89 natural)
      (surface-condition p89 verysmooth)
      (available p90)
      (surface-condition p90 smooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 mauve)
      (wood p91 pine)
      (surface-condition p91 verysmooth)
      (treatment p91 glazed)
      (available p92)
      (colour p92 red)
      (treatment p92 varnished)
      (available p93)
      (colour p93 black)
      (wood p93 beech)
      (available p94)
      (wood p94 cherry)
      (treatment p94 glazed)
      (available p95)
      (colour p95 mauve)
      (surface-condition p95 verysmooth)
      (treatment p95 varnished)
      (available p96)
      (wood p96 mahogany)
      (surface-condition p96 verysmooth)
      (available p97)
      (wood p97 cherry)
      (treatment p97 glazed)
      (available p98)
      (colour p98 white)
      (wood p98 walnut)
      (available p99)
      (wood p99 teak)
      (treatment p99 varnished)
      (available p100)
      (wood p100 pine)
      (surface-condition p100 smooth)
      (available p101)
      (wood p101 beech)
      (treatment p101 varnished)
      (available p102)
      (colour p102 blue)
      (wood p102 oak)
      (surface-condition p102 smooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 mauve)
      (treatment p103 varnished)
      (available p104)
      (colour p104 black)
      (treatment p104 varnished)
      (available p105)
      (wood p105 walnut)
      (surface-condition p105 verysmooth)
      (available p106)
      (colour p106 white)
      (surface-condition p106 verysmooth)
      (available p107)
      (wood p107 teak)
      (treatment p107 varnished)
      (available p108)
      (surface-condition p108 verysmooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 mauve)
      (wood p109 oak)
      (available p110)
      (colour p110 green)
      (treatment p110 glazed)
      (available p111)
      (colour p111 natural)
      (surface-condition p111 smooth)
      (available p112)
      (surface-condition p112 smooth)
      (treatment p112 glazed)
      (available p113)
      (colour p113 black)
      (surface-condition p113 verysmooth)
      (available p114)
      (colour p114 black)
      (wood p114 cherry)
      (available p115)
      (colour p115 green)
      (treatment p115 glazed)
    )
  )
  
)
