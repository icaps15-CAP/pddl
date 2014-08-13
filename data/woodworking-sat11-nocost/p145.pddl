; woodworking task with 122 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 904031

(define (problem wood-prob-sat-145)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green mauve black white red blue - acolour
    pine walnut oak mahogany beech cherry teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 - aboardsize
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
    (has-colour glazer0 blue)
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 natural)
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
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 natural)
    (wood p3 teak)
    (surface-condition p3 verysmooth)
    (treatment p3 colourfragments)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 red)
    (wood p4 beech)
    (surface-condition p4 rough)
    (treatment p4 varnished)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (available p9)
    (colour p9 white)
    (wood p9 teak)
    (surface-condition p9 rough)
    (treatment p9 varnished)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 mauve)
    (wood p11 pine)
    (surface-condition p11 verysmooth)
    (treatment p11 glazed)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 white)
    (wood p14 beech)
    (surface-condition p14 verysmooth)
    (treatment p14 colourfragments)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 red)
    (wood p15 walnut)
    (surface-condition p15 verysmooth)
    (treatment p15 glazed)
    (goalsize p15 medium)
    
    
    
    
    (available p16)
    (colour p16 black)
    (wood p16 mahogany)
    (surface-condition p16 verysmooth)
    (treatment p16 glazed)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 red)
    (wood p17 pine)
    (surface-condition p17 verysmooth)
    (treatment p17 colourfragments)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 white)
    (wood p24 oak)
    (surface-condition p24 verysmooth)
    (treatment p24 varnished)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (available p26)
    (colour p26 red)
    (wood p26 pine)
    (surface-condition p26 smooth)
    (treatment p26 varnished)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (available p39)
    (colour p39 red)
    (wood p39 mahogany)
    (surface-condition p39 rough)
    (treatment p39 varnished)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (available p47)
    (colour p47 white)
    (wood p47 oak)
    (surface-condition p47 verysmooth)
    (treatment p47 glazed)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (available p56)
    (colour p56 white)
    (wood p56 teak)
    (surface-condition p56 rough)
    (treatment p56 varnished)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (available p62)
    (colour p62 white)
    (wood p62 cherry)
    (surface-condition p62 smooth)
    (treatment p62 colourfragments)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (available p65)
    (colour p65 mauve)
    (wood p65 cherry)
    (surface-condition p65 rough)
    (treatment p65 glazed)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (available p71)
    (colour p71 natural)
    (wood p71 teak)
    (surface-condition p71 smooth)
    (treatment p71 colourfragments)
    (goalsize p71 small)
    
    
    
    
    (available p72)
    (colour p72 black)
    (wood p72 pine)
    (surface-condition p72 rough)
    (treatment p72 glazed)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (available p76)
    (colour p76 green)
    (wood p76 beech)
    (surface-condition p76 rough)
    (treatment p76 glazed)
    (goalsize p76 small)
    
    
    
    
    (available p77)
    (colour p77 mauve)
    (wood p77 teak)
    (surface-condition p77 smooth)
    (treatment p77 colourfragments)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (available p80)
    (colour p80 blue)
    (wood p80 walnut)
    (surface-condition p80 smooth)
    (treatment p80 glazed)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (available p85)
    (colour p85 mauve)
    (wood p85 oak)
    (surface-condition p85 smooth)
    (treatment p85 colourfragments)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (available p92)
    (colour p92 natural)
    (wood p92 beech)
    (surface-condition p92 smooth)
    (treatment p92 varnished)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (available p96)
    (colour p96 natural)
    (wood p96 cherry)
    (surface-condition p96 smooth)
    (treatment p96 glazed)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (available p99)
    (colour p99 blue)
    (wood p99 teak)
    (surface-condition p99 smooth)
    (treatment p99 colourfragments)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (available p104)
    (colour p104 blue)
    (wood p104 pine)
    (surface-condition p104 smooth)
    (treatment p104 varnished)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (available p110)
    (colour p110 natural)
    (wood p110 mahogany)
    (surface-condition p110 rough)
    (treatment p110 varnished)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (available p113)
    (colour p113 black)
    (wood p113 mahogany)
    (surface-condition p113 rough)
    (treatment p113 glazed)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 oak)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s9)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 oak)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s9)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s4)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s6)
    (wood b14 pine)
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
    (boardsize b17 s4)
    (wood b17 pine)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s6)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s6)
    (wood b20 walnut)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 walnut)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s4)
    (wood b22 walnut)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s7)
    (wood b23 teak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s6)
    (wood b24 teak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s6)
    (wood b25 teak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s9)
    (wood b26 teak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 teak)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s9)
    (wood b28 teak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s3)
    (wood b29 teak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 beech)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s8)
    (wood b31 beech)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s7)
    (wood b32 beech)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 beech)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s3)
    (wood b34 beech)
    (surface-condition b34 smooth)
    (available b34)
  )
  (:goal
    (and
      (available p0)
      (wood p0 cherry)
      (surface-condition p0 verysmooth)
      (available p1)
      (colour p1 red)
      (wood p1 oak)
      (surface-condition p1 smooth)
      (available p2)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (wood p3 teak)
      (treatment p3 varnished)
      (available p4)
      (colour p4 natural)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 red)
      (wood p5 walnut)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 green)
      (wood p6 teak)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 mauve)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 blue)
      (wood p8 cherry)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 black)
      (wood p9 teak)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 black)
      (wood p10 beech)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 red)
      (wood p11 pine)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 green)
      (wood p12 teak)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (wood p13 walnut)
      (treatment p13 varnished)
      (available p14)
      (colour p14 mauve)
      (wood p14 beech)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 black)
      (wood p15 walnut)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 blue)
      (treatment p16 glazed)
      (available p17)
      (colour p17 mauve)
      (treatment p17 varnished)
      (available p18)
      (wood p18 cherry)
      (treatment p18 varnished)
      (available p19)
      (wood p19 beech)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 mauve)
      (wood p20 cherry)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 red)
      (wood p22 oak)
      (available p23)
      (wood p23 teak)
      (treatment p23 varnished)
      (available p24)
      (colour p24 black)
      (wood p24 oak)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 mauve)
      (surface-condition p25 verysmooth)
      (available p26)
      (wood p26 pine)
      (treatment p26 glazed)
      (available p27)
      (colour p27 mauve)
      (treatment p27 varnished)
      (available p28)
      (colour p28 white)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 white)
      (wood p29 beech)
      (surface-condition p29 verysmooth)
      (treatment p29 varnished)
      (available p30)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 green)
      (treatment p32 varnished)
      (available p33)
      (wood p33 walnut)
      (surface-condition p33 smooth)
      (treatment p33 glazed)
      (available p34)
      (wood p34 mahogany)
      (treatment p34 varnished)
      (available p35)
      (colour p35 white)
      (wood p35 pine)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 blue)
      (surface-condition p37 smooth)
      (available p38)
      (surface-condition p38 verysmooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 white)
      (wood p39 mahogany)
      (available p40)
      (colour p40 white)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 white)
      (wood p41 walnut)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 black)
      (surface-condition p42 verysmooth)
      (available p43)
      (colour p43 natural)
      (surface-condition p43 verysmooth)
      (available p44)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 red)
      (wood p45 teak)
      (available p46)
      (colour p46 black)
      (wood p46 beech)
      (surface-condition p46 verysmooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 red)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 white)
      (wood p48 pine)
      (treatment p48 glazed)
      (available p49)
      (colour p49 green)
      (wood p49 teak)
      (available p50)
      (wood p50 oak)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 natural)
      (surface-condition p51 smooth)
      (available p52)
      (colour p52 white)
      (wood p52 pine)
      (treatment p52 glazed)
      (available p53)
      (colour p53 white)
      (wood p53 walnut)
      (available p54)
      (colour p54 white)
      (wood p54 oak)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 mauve)
      (wood p55 pine)
      (surface-condition p55 verysmooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 natural)
      (treatment p56 varnished)
      (available p57)
      (colour p57 black)
      (treatment p57 varnished)
      (available p58)
      (colour p58 natural)
      (treatment p58 glazed)
      (available p59)
      (wood p59 beech)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (wood p60 cherry)
      (surface-condition p60 verysmooth)
      (available p61)
      (colour p61 red)
      (wood p61 teak)
      (surface-condition p61 smooth)
      (treatment p61 varnished)
      (available p62)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 black)
      (surface-condition p63 verysmooth)
      (available p64)
      (wood p64 walnut)
      (treatment p64 varnished)
      (available p65)
      (colour p65 white)
      (treatment p65 glazed)
      (available p66)
      (colour p66 red)
      (treatment p66 varnished)
      (available p67)
      (wood p67 walnut)
      (surface-condition p67 smooth)
      (available p68)
      (wood p68 walnut)
      (surface-condition p68 verysmooth)
      (available p69)
      (surface-condition p69 verysmooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 mauve)
      (wood p70 teak)
      (surface-condition p70 smooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 white)
      (wood p71 teak)
      (available p72)
      (wood p72 pine)
      (surface-condition p72 verysmooth)
      (treatment p72 glazed)
      (available p73)
      (colour p73 mauve)
      (wood p73 teak)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 black)
      (wood p74 beech)
      (surface-condition p74 smooth)
      (treatment p74 varnished)
      (available p75)
      (colour p75 natural)
      (wood p75 pine)
      (available p76)
      (colour p76 white)
      (wood p76 beech)
      (treatment p76 varnished)
      (available p77)
      (colour p77 natural)
      (surface-condition p77 verysmooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 red)
      (treatment p78 varnished)
      (available p79)
      (surface-condition p79 verysmooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 white)
      (wood p80 walnut)
      (surface-condition p80 smooth)
      (treatment p80 glazed)
      (available p81)
      (surface-condition p81 smooth)
      (treatment p81 varnished)
      (available p82)
      (colour p82 mauve)
      (wood p82 mahogany)
      (surface-condition p82 verysmooth)
      (available p83)
      (colour p83 green)
      (wood p83 oak)
      (treatment p83 varnished)
      (available p84)
      (colour p84 black)
      (wood p84 oak)
      (available p85)
      (colour p85 blue)
      (wood p85 oak)
      (surface-condition p85 smooth)
      (available p86)
      (colour p86 natural)
      (wood p86 walnut)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 mauve)
      (wood p87 mahogany)
      (surface-condition p87 verysmooth)
      (treatment p87 varnished)
      (available p88)
      (wood p88 teak)
      (surface-condition p88 smooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 blue)
      (wood p89 teak)
      (surface-condition p89 verysmooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 natural)
      (treatment p90 varnished)
      (available p91)
      (colour p91 natural)
      (surface-condition p91 verysmooth)
      (available p92)
      (surface-condition p92 verysmooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 mauve)
      (wood p93 teak)
      (available p94)
      (colour p94 green)
      (wood p94 mahogany)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (surface-condition p95 smooth)
      (treatment p95 glazed)
      (available p96)
      (colour p96 white)
      (treatment p96 glazed)
      (available p97)
      (colour p97 green)
      (treatment p97 glazed)
      (available p98)
      (wood p98 mahogany)
      (surface-condition p98 smooth)
      (available p99)
      (surface-condition p99 smooth)
      (treatment p99 glazed)
      (available p100)
      (surface-condition p100 smooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 black)
      (surface-condition p101 smooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 white)
      (wood p102 teak)
      (surface-condition p102 smooth)
      (treatment p102 glazed)
      (available p103)
      (wood p103 cherry)
      (surface-condition p103 smooth)
      (available p104)
      (wood p104 pine)
      (surface-condition p104 verysmooth)
      (treatment p104 glazed)
      (available p105)
      (colour p105 white)
      (treatment p105 glazed)
      (available p106)
      (colour p106 white)
      (surface-condition p106 verysmooth)
      (available p107)
      (colour p107 green)
      (wood p107 oak)
      (treatment p107 varnished)
      (available p108)
      (wood p108 pine)
      (surface-condition p108 smooth)
      (available p109)
      (colour p109 blue)
      (wood p109 beech)
      (surface-condition p109 verysmooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 green)
      (wood p110 mahogany)
      (surface-condition p110 smooth)
      (available p111)
      (wood p111 cherry)
      (surface-condition p111 smooth)
      (available p112)
      (colour p112 black)
      (treatment p112 glazed)
      (available p113)
      (wood p113 mahogany)
      (surface-condition p113 verysmooth)
      (available p114)
      (colour p114 natural)
      (surface-condition p114 smooth)
      (available p115)
      (surface-condition p115 smooth)
      (treatment p115 varnished)
      (available p116)
      (colour p116 white)
      (wood p116 pine)
      (available p117)
      (wood p117 mahogany)
      (treatment p117 glazed)
      (available p118)
      (colour p118 red)
      (wood p118 cherry)
      (surface-condition p118 smooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 black)
      (treatment p119 varnished)
      (available p120)
      (colour p120 red)
      (wood p120 pine)
      (surface-condition p120 verysmooth)
      (treatment p120 glazed)
      (available p121)
      (wood p121 oak)
      (surface-condition p121 verysmooth)
    )
  )
  
)
