; woodworking task with 137 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 495428

(define (problem wood-prob-sat-150)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue white black green red mauve - acolour
    pine teak oak walnut cherry beech mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 red)
    (wood p0 oak)
    (surface-condition p0 rough)
    (treatment p0 glazed)
    (goalsize p0 medium)
    
    
    
    
    (available p1)
    (colour p1 natural)
    (wood p1 teak)
    (surface-condition p1 verysmooth)
    (treatment p1 glazed)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (available p10)
    (colour p10 blue)
    (wood p10 cherry)
    (surface-condition p10 rough)
    (treatment p10 glazed)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 green)
    (wood p19 oak)
    (surface-condition p19 smooth)
    (treatment p19 colourfragments)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 red)
    (wood p21 oak)
    (surface-condition p21 verysmooth)
    (treatment p21 glazed)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 mauve)
    (wood p31 walnut)
    (surface-condition p31 rough)
    (treatment p31 varnished)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (available p36)
    (colour p36 natural)
    (wood p36 oak)
    (surface-condition p36 verysmooth)
    (treatment p36 glazed)
    (goalsize p36 large)
    
    
    
    
    (available p37)
    (colour p37 mauve)
    (wood p37 oak)
    (surface-condition p37 verysmooth)
    (treatment p37 varnished)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (available p44)
    (colour p44 blue)
    (wood p44 beech)
    (surface-condition p44 rough)
    (treatment p44 varnished)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (available p50)
    (colour p50 blue)
    (wood p50 cherry)
    (surface-condition p50 rough)
    (treatment p50 colourfragments)
    (goalsize p50 small)
    
    
    
    
    (available p51)
    (colour p51 blue)
    (wood p51 beech)
    (surface-condition p51 verysmooth)
    (treatment p51 glazed)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (available p53)
    (colour p53 blue)
    (wood p53 cherry)
    (surface-condition p53 rough)
    (treatment p53 varnished)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (available p55)
    (colour p55 red)
    (wood p55 teak)
    (surface-condition p55 verysmooth)
    (treatment p55 colourfragments)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (available p65)
    (colour p65 mauve)
    (wood p65 oak)
    (surface-condition p65 rough)
    (treatment p65 glazed)
    (goalsize p65 small)
    
    
    
    
    (available p66)
    (colour p66 red)
    (wood p66 beech)
    (surface-condition p66 rough)
    (treatment p66 varnished)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (available p69)
    (colour p69 white)
    (wood p69 walnut)
    (surface-condition p69 rough)
    (treatment p69 glazed)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (available p76)
    (colour p76 red)
    (wood p76 cherry)
    (surface-condition p76 rough)
    (treatment p76 colourfragments)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (available p84)
    (colour p84 white)
    (wood p84 walnut)
    (surface-condition p84 rough)
    (treatment p84 colourfragments)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (available p86)
    (colour p86 green)
    (wood p86 oak)
    (surface-condition p86 rough)
    (treatment p86 colourfragments)
    (goalsize p86 medium)
    
    
    
    
    (available p87)
    (colour p87 green)
    (wood p87 teak)
    (surface-condition p87 rough)
    (treatment p87 glazed)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (available p91)
    (colour p91 blue)
    (wood p91 pine)
    (surface-condition p91 rough)
    (treatment p91 varnished)
    (goalsize p91 small)
    
    
    
    
    (available p92)
    (colour p92 green)
    (wood p92 mahogany)
    (surface-condition p92 rough)
    (treatment p92 glazed)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (available p94)
    (colour p94 black)
    (wood p94 walnut)
    (surface-condition p94 smooth)
    (treatment p94 varnished)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (available p102)
    (colour p102 green)
    (wood p102 cherry)
    (surface-condition p102 rough)
    (treatment p102 varnished)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (available p104)
    (colour p104 red)
    (wood p104 cherry)
    (surface-condition p104 smooth)
    (treatment p104 glazed)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (available p106)
    (colour p106 red)
    (wood p106 pine)
    (surface-condition p106 smooth)
    (treatment p106 glazed)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (available p109)
    (colour p109 black)
    (wood p109 oak)
    (surface-condition p109 smooth)
    (treatment p109 colourfragments)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (available p112)
    (colour p112 blue)
    (wood p112 teak)
    (surface-condition p112 verysmooth)
    (treatment p112 glazed)
    (goalsize p112 large)
    
    
    
    
    (available p113)
    (colour p113 white)
    (wood p113 pine)
    (surface-condition p113 rough)
    (treatment p113 varnished)
    (goalsize p113 large)
    
    
    
    
    (available p114)
    (colour p114 red)
    (wood p114 mahogany)
    (surface-condition p114 smooth)
    (treatment p114 colourfragments)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (available p122)
    (colour p122 red)
    (wood p122 pine)
    (surface-condition p122 rough)
    (treatment p122 varnished)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (available p128)
    (colour p128 natural)
    (wood p128 beech)
    (surface-condition p128 rough)
    (treatment p128 colourfragments)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (available p130)
    (colour p130 mauve)
    (wood p130 oak)
    (surface-condition p130 rough)
    (treatment p130 glazed)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (available p135)
    (colour p135 blue)
    (wood p135 walnut)
    (surface-condition p135 verysmooth)
    (treatment p135 colourfragments)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 medium)
    
    
    
    
    (boardsize b0 s7)
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
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s10)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s5)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s11)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s10)
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
    (boardsize b16 s10)
    (wood b16 pine)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s9)
    (wood b17 pine)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 pine)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s2)
    (wood b20 pine)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s11)
    (wood b21 walnut)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s6)
    (wood b22 walnut)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 walnut)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s9)
    (wood b24 walnut)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 walnut)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s5)
    (wood b26 walnut)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 teak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s10)
    (wood b28 teak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 teak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 teak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s5)
    (wood b31 teak)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s9)
    (wood b32 beech)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s8)
    (wood b33 beech)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s7)
    (wood b34 beech)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s7)
    (wood b35 beech)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s8)
    (wood b36 beech)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s3)
    (wood b37 beech)
    (surface-condition b37 rough)
    (available b37)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 teak)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (wood p2 walnut)
      (treatment p2 varnished)
      (available p3)
      (colour p3 red)
      (wood p3 teak)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (wood p4 cherry)
      (treatment p4 varnished)
      (available p5)
      (wood p5 oak)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 white)
      (treatment p6 varnished)
      (available p7)
      (colour p7 green)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 green)
      (surface-condition p8 verysmooth)
      (available p9)
      (colour p9 red)
      (wood p9 cherry)
      (treatment p9 glazed)
      (available p10)
      (colour p10 white)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 natural)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 green)
      (wood p12 cherry)
      (available p13)
      (colour p13 white)
      (surface-condition p13 smooth)
      (available p14)
      (wood p14 pine)
      (treatment p14 varnished)
      (available p15)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 natural)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 red)
      (treatment p17 glazed)
      (available p18)
      (colour p18 mauve)
      (wood p18 teak)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (wood p19 oak)
      (treatment p19 glazed)
      (available p20)
      (colour p20 black)
      (wood p20 cherry)
      (surface-condition p20 smooth)
      (treatment p20 glazed)
      (available p21)
      (wood p21 oak)
      (treatment p21 varnished)
      (available p22)
      (colour p22 white)
      (wood p22 teak)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 natural)
      (wood p23 beech)
      (surface-condition p23 smooth)
      (available p24)
      (colour p24 white)
      (wood p24 pine)
      (available p25)
      (colour p25 red)
      (wood p25 mahogany)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 white)
      (wood p26 mahogany)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (wood p27 beech)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 green)
      (wood p28 teak)
      (available p29)
      (colour p29 green)
      (wood p29 oak)
      (available p30)
      (colour p30 blue)
      (wood p30 oak)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 blue)
      (wood p31 walnut)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (wood p32 pine)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 mauve)
      (wood p33 teak)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 blue)
      (wood p34 walnut)
      (available p35)
      (colour p35 white)
      (wood p35 pine)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 green)
      (wood p36 oak)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (wood p37 oak)
      (treatment p37 glazed)
      (available p38)
      (colour p38 white)
      (wood p38 mahogany)
      (available p39)
      (colour p39 green)
      (wood p39 beech)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 mauve)
      (wood p41 beech)
      (surface-condition p41 smooth)
      (treatment p41 varnished)
      (available p42)
      (wood p42 mahogany)
      (treatment p42 glazed)
      (available p43)
      (colour p43 mauve)
      (wood p43 teak)
      (treatment p43 glazed)
      (available p44)
      (colour p44 red)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 natural)
      (wood p45 walnut)
      (surface-condition p45 verysmooth)
      (available p46)
      (colour p46 mauve)
      (wood p46 mahogany)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 natural)
      (wood p47 mahogany)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 natural)
      (treatment p48 glazed)
      (available p49)
      (colour p49 white)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 white)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 white)
      (wood p51 beech)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 blue)
      (wood p52 mahogany)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (wood p53 cherry)
      (treatment p53 glazed)
      (available p54)
      (colour p54 blue)
      (surface-condition p54 smooth)
      (available p55)
      (wood p55 teak)
      (treatment p55 glazed)
      (available p56)
      (colour p56 blue)
      (wood p56 pine)
      (available p57)
      (colour p57 natural)
      (wood p57 walnut)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (wood p58 beech)
      (treatment p58 varnished)
      (available p59)
      (colour p59 green)
      (wood p59 beech)
      (treatment p59 varnished)
      (available p60)
      (colour p60 mauve)
      (wood p60 teak)
      (surface-condition p60 smooth)
      (treatment p60 glazed)
      (available p61)
      (colour p61 blue)
      (wood p61 walnut)
      (surface-condition p61 smooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 black)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 mauve)
      (wood p63 mahogany)
      (available p64)
      (colour p64 green)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 white)
      (wood p65 oak)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (wood p66 beech)
      (surface-condition p66 verysmooth)
      (available p67)
      (wood p67 walnut)
      (treatment p67 varnished)
      (available p68)
      (colour p68 blue)
      (treatment p68 glazed)
      (available p69)
      (surface-condition p69 verysmooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 mauve)
      (wood p70 beech)
      (surface-condition p70 smooth)
      (available p71)
      (wood p71 mahogany)
      (treatment p71 varnished)
      (available p72)
      (wood p72 beech)
      (treatment p72 glazed)
      (available p73)
      (colour p73 mauve)
      (treatment p73 glazed)
      (available p74)
      (colour p74 mauve)
      (treatment p74 glazed)
      (available p75)
      (colour p75 natural)
      (surface-condition p75 smooth)
      (available p76)
      (colour p76 green)
      (wood p76 cherry)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (colour p77 black)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 natural)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (wood p79 cherry)
      (surface-condition p79 verysmooth)
      (available p80)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (surface-condition p81 smooth)
      (treatment p81 glazed)
      (available p82)
      (wood p82 oak)
      (treatment p82 varnished)
      (available p83)
      (colour p83 white)
      (wood p83 mahogany)
      (treatment p83 glazed)
      (available p84)
      (colour p84 blue)
      (treatment p84 varnished)
      (available p85)
      (colour p85 white)
      (treatment p85 varnished)
      (available p86)
      (colour p86 blue)
      (wood p86 oak)
      (available p87)
      (colour p87 mauve)
      (wood p87 teak)
      (surface-condition p87 verysmooth)
      (available p88)
      (wood p88 teak)
      (surface-condition p88 smooth)
      (available p89)
      (wood p89 pine)
      (surface-condition p89 smooth)
      (available p90)
      (colour p90 white)
      (surface-condition p90 verysmooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 green)
      (wood p91 pine)
      (surface-condition p91 verysmooth)
      (treatment p91 varnished)
      (available p92)
      (colour p92 black)
      (wood p92 mahogany)
      (available p93)
      (colour p93 black)
      (wood p93 cherry)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (wood p94 walnut)
      (treatment p94 glazed)
      (available p95)
      (colour p95 mauve)
      (surface-condition p95 verysmooth)
      (available p96)
      (wood p96 teak)
      (surface-condition p96 verysmooth)
      (available p97)
      (colour p97 white)
      (wood p97 pine)
      (surface-condition p97 verysmooth)
      (available p98)
      (colour p98 green)
      (surface-condition p98 verysmooth)
      (available p99)
      (colour p99 green)
      (wood p99 cherry)
      (surface-condition p99 smooth)
      (available p100)
      (surface-condition p100 verysmooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 green)
      (wood p101 beech)
      (surface-condition p101 smooth)
      (treatment p101 glazed)
      (available p102)
      (wood p102 cherry)
      (surface-condition p102 smooth)
      (available p103)
      (colour p103 white)
      (treatment p103 glazed)
      (available p104)
      (colour p104 mauve)
      (wood p104 cherry)
      (surface-condition p104 verysmooth)
      (treatment p104 glazed)
      (available p105)
      (colour p105 black)
      (wood p105 walnut)
      (available p106)
      (colour p106 natural)
      (wood p106 pine)
      (treatment p106 glazed)
      (available p107)
      (colour p107 green)
      (wood p107 pine)
      (surface-condition p107 smooth)
      (available p108)
      (colour p108 green)
      (surface-condition p108 smooth)
      (available p109)
      (surface-condition p109 verysmooth)
      (treatment p109 glazed)
      (available p110)
      (wood p110 beech)
      (surface-condition p110 verysmooth)
      (available p111)
      (colour p111 mauve)
      (wood p111 oak)
      (surface-condition p111 smooth)
      (treatment p111 varnished)
      (available p112)
      (colour p112 black)
      (wood p112 teak)
      (surface-condition p112 smooth)
      (treatment p112 varnished)
      (available p113)
      (surface-condition p113 smooth)
      (treatment p113 glazed)
      (available p114)
      (colour p114 natural)
      (wood p114 mahogany)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (surface-condition p115 smooth)
      (treatment p115 glazed)
      (available p116)
      (wood p116 walnut)
      (treatment p116 glazed)
      (available p117)
      (wood p117 cherry)
      (treatment p117 glazed)
      (available p118)
      (colour p118 blue)
      (surface-condition p118 verysmooth)
      (treatment p118 glazed)
      (available p119)
      (colour p119 green)
      (wood p119 pine)
      (surface-condition p119 smooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 blue)
      (surface-condition p120 verysmooth)
      (available p121)
      (colour p121 green)
      (wood p121 beech)
      (surface-condition p121 verysmooth)
      (treatment p121 glazed)
      (available p122)
      (surface-condition p122 verysmooth)
      (treatment p122 glazed)
      (available p123)
      (surface-condition p123 verysmooth)
      (treatment p123 glazed)
      (available p124)
      (colour p124 mauve)
      (surface-condition p124 smooth)
      (available p125)
      (colour p125 black)
      (wood p125 beech)
      (available p126)
      (colour p126 white)
      (surface-condition p126 smooth)
      (available p127)
      (colour p127 natural)
      (wood p127 oak)
      (available p128)
      (wood p128 beech)
      (surface-condition p128 smooth)
      (available p129)
      (colour p129 green)
      (wood p129 walnut)
      (surface-condition p129 verysmooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 red)
      (surface-condition p130 smooth)
      (available p131)
      (colour p131 black)
      (surface-condition p131 smooth)
      (available p132)
      (surface-condition p132 verysmooth)
      (treatment p132 glazed)
      (available p133)
      (wood p133 walnut)
      (surface-condition p133 verysmooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 mauve)
      (wood p134 cherry)
      (surface-condition p134 verysmooth)
      (treatment p134 varnished)
      (available p135)
      (wood p135 walnut)
      (treatment p135 varnished)
      (available p136)
      (colour p136 natural)
      (treatment p136 glazed)
    )
  )
  
)
