; woodworking task with 116 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 115971

(define (problem wood-prob-sat-143)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue green red black white mauve - acolour
    cherry oak teak mahogany beech pine walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 white)
    (wood p11 walnut)
    (surface-condition p11 smooth)
    (treatment p11 glazed)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 blue)
    (wood p12 pine)
    (surface-condition p12 rough)
    (treatment p12 varnished)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (available p21)
    (colour p21 red)
    (wood p21 oak)
    (surface-condition p21 verysmooth)
    (treatment p21 varnished)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 green)
    (wood p29 oak)
    (surface-condition p29 verysmooth)
    (treatment p29 varnished)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 white)
    (wood p31 cherry)
    (surface-condition p31 rough)
    (treatment p31 glazed)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (available p34)
    (colour p34 black)
    (wood p34 mahogany)
    (surface-condition p34 rough)
    (treatment p34 varnished)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (available p49)
    (colour p49 blue)
    (wood p49 oak)
    (surface-condition p49 verysmooth)
    (treatment p49 colourfragments)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (available p51)
    (colour p51 blue)
    (wood p51 oak)
    (surface-condition p51 verysmooth)
    (treatment p51 glazed)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (available p57)
    (colour p57 black)
    (wood p57 oak)
    (surface-condition p57 verysmooth)
    (treatment p57 colourfragments)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (available p60)
    (colour p60 red)
    (wood p60 teak)
    (surface-condition p60 smooth)
    (treatment p60 glazed)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 black)
    (wood p65 cherry)
    (surface-condition p65 rough)
    (treatment p65 varnished)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 green)
    (wood p66 walnut)
    (surface-condition p66 rough)
    (treatment p66 varnished)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (available p71)
    (colour p71 red)
    (wood p71 beech)
    (surface-condition p71 smooth)
    (treatment p71 glazed)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (available p77)
    (colour p77 white)
    (wood p77 beech)
    (surface-condition p77 rough)
    (treatment p77 glazed)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (available p79)
    (colour p79 white)
    (wood p79 mahogany)
    (surface-condition p79 smooth)
    (treatment p79 glazed)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (available p84)
    (colour p84 natural)
    (wood p84 oak)
    (surface-condition p84 smooth)
    (treatment p84 colourfragments)
    (goalsize p84 small)
    
    
    
    
    (available p85)
    (colour p85 green)
    (wood p85 teak)
    (surface-condition p85 verysmooth)
    (treatment p85 colourfragments)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (available p88)
    (colour p88 green)
    (wood p88 oak)
    (surface-condition p88 smooth)
    (treatment p88 glazed)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (available p96)
    (colour p96 blue)
    (wood p96 beech)
    (surface-condition p96 smooth)
    (treatment p96 varnished)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (available p98)
    (colour p98 mauve)
    (wood p98 pine)
    (surface-condition p98 rough)
    (treatment p98 varnished)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (available p107)
    (colour p107 blue)
    (wood p107 cherry)
    (surface-condition p107 verysmooth)
    (treatment p107 varnished)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (available p110)
    (colour p110 mauve)
    (wood p110 teak)
    (surface-condition p110 verysmooth)
    (treatment p110 glazed)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (available p113)
    (colour p113 red)
    (wood p113 cherry)
    (surface-condition p113 verysmooth)
    (treatment p113 colourfragments)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s10)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s10)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s4)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 oak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s6)
    (wood b14 oak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s12)
    (wood b15 oak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s2)
    (wood b17 oak)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s8)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s6)
    (wood b19 pine)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s3)
    (wood b20 pine)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 walnut)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s6)
    (wood b22 walnut)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 walnut)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s11)
    (wood b24 walnut)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s2)
    (wood b25 walnut)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s8)
    (wood b26 teak)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s6)
    (wood b27 teak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s5)
    (wood b28 teak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s9)
    (wood b29 teak)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s6)
    (wood b30 teak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s8)
    (wood b31 beech)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s10)
    (wood b32 beech)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s10)
    (wood b33 beech)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s10)
    (wood b34 beech)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s4)
    (wood b35 beech)
    (surface-condition b35 rough)
    (available b35)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (wood p0 walnut)
      (surface-condition p0 verysmooth)
      (available p1)
      (wood p1 walnut)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 natural)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 natural)
      (wood p3 pine)
      (available p4)
      (colour p4 natural)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 green)
      (wood p5 oak)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 mauve)
      (surface-condition p6 verysmooth)
      (available p7)
      (colour p7 red)
      (wood p7 pine)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 blue)
      (wood p8 teak)
      (available p9)
      (colour p9 green)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 natural)
      (wood p10 teak)
      (treatment p10 varnished)
      (available p11)
      (colour p11 blue)
      (treatment p11 varnished)
      (available p12)
      (wood p12 pine)
      (surface-condition p12 smooth)
      (available p13)
      (colour p13 red)
      (wood p13 mahogany)
      (available p14)
      (colour p14 red)
      (wood p14 teak)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 red)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 natural)
      (wood p16 teak)
      (treatment p16 glazed)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 red)
      (wood p18 walnut)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (wood p19 beech)
      (treatment p19 varnished)
      (available p20)
      (colour p20 black)
      (treatment p20 varnished)
      (available p21)
      (colour p21 mauve)
      (wood p21 oak)
      (available p22)
      (colour p22 white)
      (wood p22 beech)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (wood p23 mahogany)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 blue)
      (wood p24 teak)
      (surface-condition p24 smooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 black)
      (wood p25 walnut)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 red)
      (wood p26 pine)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 blue)
      (wood p27 oak)
      (surface-condition p27 smooth)
      (available p28)
      (wood p28 mahogany)
      (surface-condition p28 smooth)
      (available p29)
      (colour p29 black)
      (wood p29 oak)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 red)
      (wood p30 beech)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 black)
      (wood p31 cherry)
      (treatment p31 glazed)
      (available p32)
      (colour p32 red)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 natural)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 natural)
      (wood p34 mahogany)
      (available p35)
      (colour p35 green)
      (wood p35 cherry)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 red)
      (wood p36 teak)
      (available p37)
      (surface-condition p37 smooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 white)
      (wood p38 cherry)
      (surface-condition p38 verysmooth)
      (available p39)
      (colour p39 blue)
      (surface-condition p39 verysmooth)
      (available p40)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 black)
      (wood p41 cherry)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 natural)
      (wood p42 walnut)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 black)
      (wood p43 teak)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (wood p44 walnut)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 red)
      (wood p45 mahogany)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 natural)
      (wood p46 teak)
      (treatment p46 glazed)
      (available p47)
      (colour p47 black)
      (wood p47 beech)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 blue)
      (wood p48 mahogany)
      (available p49)
      (colour p49 black)
      (wood p49 oak)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 natural)
      (wood p50 teak)
      (treatment p50 varnished)
      (available p51)
      (colour p51 mauve)
      (wood p51 oak)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (wood p52 beech)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 green)
      (wood p53 mahogany)
      (treatment p53 varnished)
      (available p54)
      (colour p54 blue)
      (wood p54 beech)
      (surface-condition p54 smooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 natural)
      (wood p55 oak)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 green)
      (wood p56 beech)
      (surface-condition p56 verysmooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 red)
      (wood p57 oak)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (wood p58 cherry)
      (treatment p58 glazed)
      (available p59)
      (colour p59 black)
      (wood p59 oak)
      (available p60)
      (wood p60 teak)
      (treatment p60 varnished)
      (available p61)
      (wood p61 walnut)
      (treatment p61 glazed)
      (available p62)
      (colour p62 green)
      (surface-condition p62 smooth)
      (available p63)
      (colour p63 white)
      (surface-condition p63 smooth)
      (available p64)
      (colour p64 black)
      (treatment p64 glazed)
      (available p65)
      (colour p65 natural)
      (wood p65 cherry)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 black)
      (treatment p66 varnished)
      (available p67)
      (colour p67 mauve)
      (surface-condition p67 smooth)
      (available p68)
      (colour p68 red)
      (surface-condition p68 verysmooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 black)
      (wood p69 mahogany)
      (treatment p69 varnished)
      (available p70)
      (colour p70 mauve)
      (wood p70 walnut)
      (available p71)
      (colour p71 natural)
      (wood p71 beech)
      (surface-condition p71 smooth)
      (treatment p71 glazed)
      (available p72)
      (colour p72 black)
      (treatment p72 varnished)
      (available p73)
      (colour p73 red)
      (treatment p73 glazed)
      (available p74)
      (colour p74 red)
      (wood p74 beech)
      (treatment p74 varnished)
      (available p75)
      (colour p75 natural)
      (wood p75 mahogany)
      (available p76)
      (wood p76 beech)
      (surface-condition p76 smooth)
      (available p77)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (wood p78 oak)
      (surface-condition p78 verysmooth)
      (treatment p78 varnished)
      (available p79)
      (colour p79 black)
      (wood p79 mahogany)
      (surface-condition p79 verysmooth)
      (available p80)
      (colour p80 natural)
      (treatment p80 glazed)
      (available p81)
      (wood p81 pine)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (colour p82 red)
      (treatment p82 varnished)
      (available p83)
      (colour p83 green)
      (wood p83 cherry)
      (treatment p83 glazed)
      (available p84)
      (colour p84 red)
      (treatment p84 glazed)
      (available p85)
      (colour p85 white)
      (wood p85 teak)
      (available p86)
      (colour p86 black)
      (wood p86 walnut)
      (available p87)
      (surface-condition p87 verysmooth)
      (treatment p87 glazed)
      (available p88)
      (colour p88 mauve)
      (wood p88 oak)
      (surface-condition p88 verysmooth)
      (available p89)
      (colour p89 mauve)
      (surface-condition p89 smooth)
      (available p90)
      (wood p90 teak)
      (surface-condition p90 smooth)
      (available p91)
      (wood p91 cherry)
      (surface-condition p91 smooth)
      (treatment p91 varnished)
      (available p92)
      (wood p92 mahogany)
      (surface-condition p92 smooth)
      (available p93)
      (colour p93 red)
      (wood p93 mahogany)
      (treatment p93 glazed)
      (available p94)
      (wood p94 cherry)
      (surface-condition p94 smooth)
      (available p95)
      (colour p95 black)
      (wood p95 beech)
      (surface-condition p95 verysmooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 green)
      (wood p96 beech)
      (surface-condition p96 verysmooth)
      (treatment p96 glazed)
      (available p97)
      (colour p97 blue)
      (surface-condition p97 smooth)
      (available p98)
      (colour p98 white)
      (surface-condition p98 verysmooth)
      (available p99)
      (colour p99 black)
      (treatment p99 glazed)
      (available p100)
      (colour p100 red)
      (wood p100 teak)
      (available p101)
      (colour p101 white)
      (surface-condition p101 verysmooth)
      (treatment p101 glazed)
      (available p102)
      (surface-condition p102 smooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 red)
      (wood p103 cherry)
      (treatment p103 glazed)
      (available p104)
      (wood p104 mahogany)
      (surface-condition p104 verysmooth)
      (available p105)
      (surface-condition p105 smooth)
      (treatment p105 varnished)
      (available p106)
      (colour p106 white)
      (wood p106 cherry)
      (available p107)
      (colour p107 green)
      (wood p107 cherry)
      (treatment p107 varnished)
      (available p108)
      (colour p108 mauve)
      (surface-condition p108 verysmooth)
      (available p109)
      (colour p109 green)
      (wood p109 pine)
      (available p110)
      (colour p110 natural)
      (wood p110 teak)
      (surface-condition p110 verysmooth)
      (treatment p110 varnished)
      (available p111)
      (colour p111 white)
      (surface-condition p111 verysmooth)
      (treatment p111 glazed)
      (available p112)
      (colour p112 mauve)
      (treatment p112 glazed)
      (available p113)
      (colour p113 natural)
      (surface-condition p113 smooth)
      (available p114)
      (colour p114 blue)
      (wood p114 beech)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (colour p115 red)
      (wood p115 oak)
    )
  )
  
)
