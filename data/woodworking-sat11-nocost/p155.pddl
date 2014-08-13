; woodworking task with 152 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 706782

(define (problem wood-prob-sat-155)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black red white green blue mauve - acolour
    oak pine mahogany cherry walnut beech teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 white)
    (wood p5 oak)
    (surface-condition p5 smooth)
    (treatment p5 glazed)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (available p8)
    (colour p8 green)
    (wood p8 mahogany)
    (surface-condition p8 smooth)
    (treatment p8 colourfragments)
    (goalsize p8 large)
    
    
    
    
    (available p9)
    (colour p9 black)
    (wood p9 oak)
    (surface-condition p9 smooth)
    (treatment p9 varnished)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (available p11)
    (colour p11 black)
    (wood p11 walnut)
    (surface-condition p11 verysmooth)
    (treatment p11 varnished)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 white)
    (wood p22 walnut)
    (surface-condition p22 smooth)
    (treatment p22 colourfragments)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 green)
    (wood p27 beech)
    (surface-condition p27 rough)
    (treatment p27 varnished)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (available p34)
    (colour p34 blue)
    (wood p34 pine)
    (surface-condition p34 rough)
    (treatment p34 colourfragments)
    (goalsize p34 medium)
    
    
    
    
    (available p35)
    (colour p35 mauve)
    (wood p35 cherry)
    (surface-condition p35 verysmooth)
    (treatment p35 glazed)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (available p38)
    (colour p38 blue)
    (wood p38 mahogany)
    (surface-condition p38 rough)
    (treatment p38 colourfragments)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (available p44)
    (colour p44 mauve)
    (wood p44 oak)
    (surface-condition p44 rough)
    (treatment p44 varnished)
    (goalsize p44 medium)
    
    
    
    
    (available p45)
    (colour p45 black)
    (wood p45 cherry)
    (surface-condition p45 rough)
    (treatment p45 colourfragments)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (available p49)
    (colour p49 white)
    (wood p49 pine)
    (surface-condition p49 smooth)
    (treatment p49 glazed)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (available p53)
    (colour p53 natural)
    (wood p53 mahogany)
    (surface-condition p53 smooth)
    (treatment p53 colourfragments)
    (goalsize p53 small)
    
    
    
    
    (available p54)
    (colour p54 green)
    (wood p54 pine)
    (surface-condition p54 verysmooth)
    (treatment p54 varnished)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (available p57)
    (colour p57 green)
    (wood p57 beech)
    (surface-condition p57 rough)
    (treatment p57 glazed)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (available p59)
    (colour p59 blue)
    (wood p59 beech)
    (surface-condition p59 verysmooth)
    (treatment p59 colourfragments)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (available p65)
    (colour p65 black)
    (wood p65 mahogany)
    (surface-condition p65 rough)
    (treatment p65 colourfragments)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 mauve)
    (wood p67 mahogany)
    (surface-condition p67 smooth)
    (treatment p67 varnished)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (available p71)
    (colour p71 green)
    (wood p71 cherry)
    (surface-condition p71 rough)
    (treatment p71 varnished)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (available p97)
    (colour p97 black)
    (wood p97 pine)
    (surface-condition p97 smooth)
    (treatment p97 colourfragments)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (available p100)
    (colour p100 black)
    (wood p100 walnut)
    (surface-condition p100 verysmooth)
    (treatment p100 glazed)
    (goalsize p100 small)
    
    
    
    
    (available p101)
    (colour p101 white)
    (wood p101 pine)
    (surface-condition p101 smooth)
    (treatment p101 colourfragments)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (available p105)
    (colour p105 mauve)
    (wood p105 cherry)
    (surface-condition p105 rough)
    (treatment p105 glazed)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (available p107)
    (colour p107 black)
    (wood p107 beech)
    (surface-condition p107 verysmooth)
    (treatment p107 colourfragments)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (available p109)
    (colour p109 blue)
    (wood p109 teak)
    (surface-condition p109 rough)
    (treatment p109 colourfragments)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (available p111)
    (colour p111 mauve)
    (wood p111 beech)
    (surface-condition p111 rough)
    (treatment p111 varnished)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (available p125)
    (colour p125 mauve)
    (wood p125 cherry)
    (surface-condition p125 smooth)
    (treatment p125 glazed)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (available p144)
    (colour p144 white)
    (wood p144 pine)
    (surface-condition p144 smooth)
    (treatment p144 glazed)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (boardsize b0 s5)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s11)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s5)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 mahogany)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s7)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s1)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s10)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s10)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 oak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 oak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s9)
    (wood b15 oak)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s6)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s10)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s5)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 pine)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 pine)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s7)
    (wood b21 pine)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s6)
    (wood b22 pine)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 pine)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 pine)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s5)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s4)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s6)
    (wood b27 walnut)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s7)
    (wood b28 walnut)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s8)
    (wood b29 walnut)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s8)
    (wood b30 walnut)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s5)
    (wood b31 walnut)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s7)
    (wood b32 walnut)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s9)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s4)
    (wood b34 walnut)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s10)
    (wood b35 teak)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s8)
    (wood b36 teak)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s6)
    (wood b37 teak)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s2)
    (wood b38 teak)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s7)
    (wood b39 beech)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 beech)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s9)
    (wood b41 beech)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s9)
    (wood b42 beech)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s7)
    (wood b43 beech)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s8)
    (wood b44 beech)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s10)
    (wood b45 beech)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s11)
    (wood b46 beech)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s4)
    (wood b47 beech)
    (surface-condition b47 smooth)
    (available b47)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 mauve)
      (treatment p1 glazed)
      (available p2)
      (colour p2 red)
      (wood p2 beech)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 white)
      (treatment p3 glazed)
      (available p4)
      (wood p4 beech)
      (treatment p4 varnished)
      (available p5)
      (colour p5 blue)
      (wood p5 oak)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 red)
      (wood p6 cherry)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 mauve)
      (wood p7 beech)
      (surface-condition p7 smooth)
      (available p8)
      (wood p8 mahogany)
      (treatment p8 varnished)
      (available p9)
      (colour p9 white)
      (wood p9 oak)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 white)
      (wood p10 pine)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 white)
      (wood p11 walnut)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 red)
      (surface-condition p12 smooth)
      (available p13)
      (wood p13 pine)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 white)
      (wood p14 cherry)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 green)
      (surface-condition p16 smooth)
      (available p17)
      (colour p17 blue)
      (treatment p17 varnished)
      (available p18)
      (colour p18 mauve)
      (treatment p18 glazed)
      (available p19)
      (colour p19 mauve)
      (wood p19 beech)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 red)
      (wood p20 oak)
      (available p21)
      (wood p21 walnut)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 natural)
      (wood p22 walnut)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 red)
      (surface-condition p23 smooth)
      (available p24)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 red)
      (wood p25 oak)
      (surface-condition p25 smooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 red)
      (wood p26 walnut)
      (available p27)
      (colour p27 red)
      (wood p27 beech)
      (treatment p27 glazed)
      (available p28)
      (colour p28 mauve)
      (surface-condition p28 verysmooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 white)
      (wood p29 beech)
      (treatment p29 glazed)
      (available p30)
      (colour p30 blue)
      (wood p30 walnut)
      (available p31)
      (colour p31 white)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 blue)
      (wood p32 mahogany)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (wood p33 cherry)
      (treatment p33 varnished)
      (available p34)
      (wood p34 pine)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 natural)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 natural)
      (treatment p36 varnished)
      (available p37)
      (colour p37 mauve)
      (wood p37 walnut)
      (available p38)
      (surface-condition p38 verysmooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 blue)
      (wood p39 beech)
      (surface-condition p39 smooth)
      (available p40)
      (colour p40 green)
      (treatment p40 glazed)
      (available p41)
      (colour p41 blue)
      (wood p41 walnut)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 red)
      (surface-condition p42 verysmooth)
      (available p43)
      (wood p43 beech)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (wood p44 oak)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 white)
      (surface-condition p45 smooth)
      (available p46)
      (wood p46 oak)
      (treatment p46 glazed)
      (available p47)
      (wood p47 pine)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 blue)
      (wood p48 walnut)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 black)
      (wood p49 pine)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (wood p50 teak)
      (treatment p50 varnished)
      (available p51)
      (colour p51 natural)
      (wood p51 beech)
      (available p52)
      (colour p52 white)
      (wood p52 beech)
      (available p53)
      (colour p53 red)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (surface-condition p54 smooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 blue)
      (treatment p55 varnished)
      (available p56)
      (colour p56 natural)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 black)
      (wood p57 beech)
      (treatment p57 varnished)
      (available p58)
      (wood p58 mahogany)
      (surface-condition p58 verysmooth)
      (available p59)
      (colour p59 red)
      (treatment p59 varnished)
      (available p60)
      (colour p60 blue)
      (wood p60 teak)
      (available p61)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (wood p62 oak)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (surface-condition p63 verysmooth)
      (treatment p63 varnished)
      (available p64)
      (wood p64 mahogany)
      (treatment p64 glazed)
      (available p65)
      (wood p65 mahogany)
      (treatment p65 varnished)
      (available p66)
      (surface-condition p66 verysmooth)
      (treatment p66 glazed)
      (available p67)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 red)
      (wood p68 pine)
      (surface-condition p68 verysmooth)
      (treatment p68 glazed)
      (available p69)
      (wood p69 cherry)
      (surface-condition p69 smooth)
      (available p70)
      (wood p70 beech)
      (surface-condition p70 smooth)
      (available p71)
      (colour p71 blue)
      (treatment p71 varnished)
      (available p72)
      (colour p72 green)
      (wood p72 oak)
      (available p73)
      (colour p73 white)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (wood p74 pine)
      (treatment p74 glazed)
      (available p75)
      (wood p75 pine)
      (surface-condition p75 smooth)
      (available p76)
      (colour p76 white)
      (wood p76 teak)
      (treatment p76 varnished)
      (available p77)
      (wood p77 cherry)
      (treatment p77 glazed)
      (available p78)
      (wood p78 pine)
      (treatment p78 glazed)
      (available p79)
      (colour p79 white)
      (treatment p79 glazed)
      (available p80)
      (colour p80 mauve)
      (wood p80 pine)
      (surface-condition p80 smooth)
      (treatment p80 glazed)
      (available p81)
      (wood p81 walnut)
      (treatment p81 glazed)
      (available p82)
      (wood p82 pine)
      (surface-condition p82 verysmooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 blue)
      (treatment p83 glazed)
      (available p84)
      (wood p84 pine)
      (surface-condition p84 verysmooth)
      (available p85)
      (wood p85 walnut)
      (surface-condition p85 verysmooth)
      (available p86)
      (wood p86 cherry)
      (treatment p86 glazed)
      (available p87)
      (colour p87 mauve)
      (surface-condition p87 verysmooth)
      (treatment p87 glazed)
      (available p88)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 natural)
      (wood p89 oak)
      (surface-condition p89 verysmooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 white)
      (wood p90 beech)
      (available p91)
      (colour p91 red)
      (wood p91 oak)
      (surface-condition p91 verysmooth)
      (treatment p91 glazed)
      (available p92)
      (wood p92 mahogany)
      (surface-condition p92 verysmooth)
      (available p93)
      (colour p93 blue)
      (treatment p93 varnished)
      (available p94)
      (colour p94 white)
      (wood p94 teak)
      (treatment p94 glazed)
      (available p95)
      (wood p95 mahogany)
      (surface-condition p95 verysmooth)
      (available p96)
      (wood p96 teak)
      (treatment p96 glazed)
      (available p97)
      (colour p97 white)
      (treatment p97 glazed)
      (available p98)
      (surface-condition p98 smooth)
      (treatment p98 glazed)
      (available p99)
      (wood p99 oak)
      (treatment p99 varnished)
      (available p100)
      (colour p100 mauve)
      (treatment p100 glazed)
      (available p101)
      (surface-condition p101 smooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 black)
      (treatment p102 glazed)
      (available p103)
      (colour p103 white)
      (wood p103 oak)
      (surface-condition p103 verysmooth)
      (available p104)
      (wood p104 oak)
      (surface-condition p104 verysmooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 blue)
      (wood p105 cherry)
      (available p106)
      (colour p106 white)
      (wood p106 teak)
      (available p107)
      (surface-condition p107 smooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 natural)
      (wood p108 cherry)
      (treatment p108 varnished)
      (available p109)
      (colour p109 black)
      (wood p109 teak)
      (available p110)
      (colour p110 green)
      (wood p110 teak)
      (available p111)
      (wood p111 beech)
      (treatment p111 glazed)
      (available p112)
      (colour p112 black)
      (wood p112 mahogany)
      (surface-condition p112 verysmooth)
      (treatment p112 glazed)
      (available p113)
      (colour p113 mauve)
      (wood p113 beech)
      (surface-condition p113 verysmooth)
      (available p114)
      (colour p114 mauve)
      (wood p114 walnut)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (wood p115 pine)
      (surface-condition p115 verysmooth)
      (treatment p115 varnished)
      (available p116)
      (colour p116 black)
      (wood p116 teak)
      (available p117)
      (colour p117 white)
      (treatment p117 varnished)
      (available p118)
      (wood p118 cherry)
      (surface-condition p118 smooth)
      (available p119)
      (colour p119 natural)
      (wood p119 pine)
      (available p120)
      (colour p120 red)
      (surface-condition p120 verysmooth)
      (available p121)
      (surface-condition p121 smooth)
      (treatment p121 glazed)
      (available p122)
      (colour p122 red)
      (wood p122 walnut)
      (surface-condition p122 verysmooth)
      (treatment p122 varnished)
      (available p123)
      (colour p123 red)
      (wood p123 oak)
      (available p124)
      (colour p124 black)
      (wood p124 oak)
      (available p125)
      (colour p125 green)
      (wood p125 cherry)
      (surface-condition p125 smooth)
      (treatment p125 glazed)
      (available p126)
      (colour p126 red)
      (wood p126 oak)
      (surface-condition p126 verysmooth)
      (treatment p126 varnished)
      (available p127)
      (colour p127 white)
      (surface-condition p127 verysmooth)
      (available p128)
      (colour p128 green)
      (surface-condition p128 smooth)
      (available p129)
      (wood p129 pine)
      (surface-condition p129 smooth)
      (available p130)
      (colour p130 mauve)
      (wood p130 mahogany)
      (surface-condition p130 smooth)
      (available p131)
      (wood p131 mahogany)
      (surface-condition p131 smooth)
      (treatment p131 glazed)
      (available p132)
      (wood p132 pine)
      (surface-condition p132 verysmooth)
      (available p133)
      (colour p133 green)
      (wood p133 cherry)
      (available p134)
      (surface-condition p134 verysmooth)
      (treatment p134 varnished)
      (available p135)
      (colour p135 blue)
      (surface-condition p135 verysmooth)
      (treatment p135 varnished)
      (available p136)
      (wood p136 beech)
      (surface-condition p136 smooth)
      (treatment p136 varnished)
      (available p137)
      (colour p137 red)
      (treatment p137 glazed)
      (available p138)
      (wood p138 walnut)
      (surface-condition p138 verysmooth)
      (treatment p138 glazed)
      (available p139)
      (colour p139 blue)
      (treatment p139 varnished)
      (available p140)
      (wood p140 cherry)
      (treatment p140 glazed)
      (available p141)
      (colour p141 red)
      (wood p141 oak)
      (surface-condition p141 verysmooth)
      (treatment p141 varnished)
      (available p142)
      (colour p142 green)
      (surface-condition p142 smooth)
      (available p143)
      (colour p143 mauve)
      (wood p143 oak)
      (available p144)
      (colour p144 red)
      (wood p144 pine)
      (available p145)
      (colour p145 white)
      (treatment p145 varnished)
      (available p146)
      (surface-condition p146 smooth)
      (treatment p146 glazed)
      (available p147)
      (wood p147 beech)
      (treatment p147 varnished)
      (available p148)
      (colour p148 black)
      (wood p148 oak)
      (available p149)
      (wood p149 mahogany)
      (surface-condition p149 verysmooth)
      (available p150)
      (colour p150 mauve)
      (wood p150 beech)
      (available p151)
      (colour p151 black)
      (wood p151 oak)
    )
  )
  
)
