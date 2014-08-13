; woodworking task with 155 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 309318

(define (problem wood-prob-sat-156)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve white green black red blue - acolour
    oak teak cherry pine mahogany beech walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 black)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer1 mauve)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
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
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 natural)
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
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 black)
    (wood p1 cherry)
    (surface-condition p1 rough)
    (treatment p1 varnished)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 natural)
    (wood p4 oak)
    (surface-condition p4 verysmooth)
    (treatment p4 glazed)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 black)
    (wood p6 cherry)
    (surface-condition p6 rough)
    (treatment p6 glazed)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (available p17)
    (colour p17 natural)
    (wood p17 mahogany)
    (surface-condition p17 smooth)
    (treatment p17 varnished)
    (goalsize p17 large)
    
    
    
    
    (available p18)
    (colour p18 red)
    (wood p18 pine)
    (surface-condition p18 smooth)
    (treatment p18 varnished)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (available p21)
    (colour p21 red)
    (wood p21 beech)
    (surface-condition p21 rough)
    (treatment p21 varnished)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 white)
    (wood p24 cherry)
    (surface-condition p24 smooth)
    (treatment p24 varnished)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (available p30)
    (colour p30 black)
    (wood p30 pine)
    (surface-condition p30 verysmooth)
    (treatment p30 colourfragments)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (available p33)
    (colour p33 mauve)
    (wood p33 pine)
    (surface-condition p33 rough)
    (treatment p33 varnished)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 green)
    (wood p35 teak)
    (surface-condition p35 verysmooth)
    (treatment p35 glazed)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (available p41)
    (colour p41 natural)
    (wood p41 mahogany)
    (surface-condition p41 smooth)
    (treatment p41 varnished)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (available p44)
    (colour p44 white)
    (wood p44 mahogany)
    (surface-condition p44 verysmooth)
    (treatment p44 colourfragments)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (available p46)
    (colour p46 red)
    (wood p46 pine)
    (surface-condition p46 verysmooth)
    (treatment p46 glazed)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (available p56)
    (colour p56 green)
    (wood p56 mahogany)
    (surface-condition p56 verysmooth)
    (treatment p56 colourfragments)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (available p66)
    (colour p66 white)
    (wood p66 oak)
    (surface-condition p66 rough)
    (treatment p66 varnished)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (available p68)
    (colour p68 red)
    (wood p68 mahogany)
    (surface-condition p68 verysmooth)
    (treatment p68 glazed)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (available p70)
    (colour p70 red)
    (wood p70 teak)
    (surface-condition p70 smooth)
    (treatment p70 colourfragments)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (available p73)
    (colour p73 blue)
    (wood p73 pine)
    (surface-condition p73 rough)
    (treatment p73 varnished)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (available p76)
    (colour p76 natural)
    (wood p76 beech)
    (surface-condition p76 rough)
    (treatment p76 glazed)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (available p78)
    (colour p78 blue)
    (wood p78 beech)
    (surface-condition p78 rough)
    (treatment p78 varnished)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (available p82)
    (colour p82 green)
    (wood p82 mahogany)
    (surface-condition p82 verysmooth)
    (treatment p82 colourfragments)
    (goalsize p82 large)
    
    
    
    
    (available p83)
    (colour p83 white)
    (wood p83 oak)
    (surface-condition p83 smooth)
    (treatment p83 varnished)
    (goalsize p83 large)
    
    
    
    
    (available p84)
    (colour p84 mauve)
    (wood p84 teak)
    (surface-condition p84 rough)
    (treatment p84 varnished)
    (goalsize p84 medium)
    
    
    
    
    (available p85)
    (colour p85 mauve)
    (wood p85 walnut)
    (surface-condition p85 rough)
    (treatment p85 varnished)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (available p99)
    (colour p99 red)
    (wood p99 mahogany)
    (surface-condition p99 smooth)
    (treatment p99 glazed)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (available p101)
    (colour p101 natural)
    (wood p101 teak)
    (surface-condition p101 verysmooth)
    (treatment p101 varnished)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (available p106)
    (colour p106 green)
    (wood p106 oak)
    (surface-condition p106 rough)
    (treatment p106 glazed)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (available p108)
    (colour p108 red)
    (wood p108 oak)
    (surface-condition p108 smooth)
    (treatment p108 glazed)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (available p116)
    (colour p116 black)
    (wood p116 beech)
    (surface-condition p116 verysmooth)
    (treatment p116 colourfragments)
    (goalsize p116 medium)
    
    
    
    
    (available p117)
    (colour p117 mauve)
    (wood p117 oak)
    (surface-condition p117 verysmooth)
    (treatment p117 varnished)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (available p121)
    (colour p121 natural)
    (wood p121 beech)
    (surface-condition p121 smooth)
    (treatment p121 colourfragments)
    (goalsize p121 large)
    
    
    
    
    (available p122)
    (colour p122 red)
    (wood p122 pine)
    (surface-condition p122 rough)
    (treatment p122 colourfragments)
    (goalsize p122 medium)
    
    
    
    
    (available p123)
    (colour p123 blue)
    (wood p123 walnut)
    (surface-condition p123 rough)
    (treatment p123 colourfragments)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (available p132)
    (colour p132 green)
    (wood p132 mahogany)
    (surface-condition p132 smooth)
    (treatment p132 varnished)
    (goalsize p132 small)
    
    
    
    
    (available p133)
    (colour p133 red)
    (wood p133 beech)
    (surface-condition p133 smooth)
    (treatment p133 glazed)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (available p136)
    (colour p136 black)
    (wood p136 pine)
    (surface-condition p136 verysmooth)
    (treatment p136 colourfragments)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (available p139)
    (colour p139 green)
    (wood p139 cherry)
    (surface-condition p139 verysmooth)
    (treatment p139 varnished)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s12)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s10)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s11)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s4)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 oak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s6)
    (wood b14 oak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s9)
    (wood b15 oak)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s10)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 oak)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s9)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 pine)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s5)
    (wood b20 pine)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s8)
    (wood b21 pine)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 pine)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 pine)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s9)
    (wood b24 walnut)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 walnut)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s11)
    (wood b26 walnut)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 walnut)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s2)
    (wood b28 walnut)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s10)
    (wood b29 teak)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s4)
    (wood b30 teak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s8)
    (wood b31 teak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s11)
    (wood b32 teak)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 teak)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s8)
    (wood b34 teak)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 teak)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s8)
    (wood b36 teak)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s3)
    (wood b37 teak)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s8)
    (wood b38 beech)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s10)
    (wood b39 beech)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 beech)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s5)
    (wood b41 beech)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s8)
    (wood b42 beech)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s7)
    (wood b43 beech)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s3)
    (wood b44 beech)
    (surface-condition b44 rough)
    (available b44)
  )
  (:goal
    (and
      (available p0)
      (colour p0 red)
      (wood p0 cherry)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 red)
      (treatment p1 glazed)
      (available p2)
      (wood p2 mahogany)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 blue)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 blue)
      (wood p4 oak)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (wood p5 cherry)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 mauve)
      (wood p6 cherry)
      (surface-condition p6 smooth)
      (available p7)
      (wood p7 beech)
      (treatment p7 glazed)
      (available p8)
      (colour p8 white)
      (treatment p8 varnished)
      (available p9)
      (colour p9 natural)
      (treatment p9 glazed)
      (available p10)
      (colour p10 mauve)
      (wood p10 walnut)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 red)
      (wood p11 walnut)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 mauve)
      (treatment p12 glazed)
      (available p13)
      (wood p13 walnut)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 green)
      (treatment p14 varnished)
      (available p15)
      (colour p15 black)
      (treatment p15 varnished)
      (available p16)
      (colour p16 natural)
      (wood p16 cherry)
      (surface-condition p16 verysmooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 blue)
      (wood p17 mahogany)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 natural)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 mauve)
      (wood p19 cherry)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 red)
      (wood p20 mahogany)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 blue)
      (surface-condition p21 smooth)
      (available p22)
      (wood p22 beech)
      (surface-condition p22 verysmooth)
      (available p23)
      (wood p23 pine)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (wood p24 cherry)
      (treatment p24 glazed)
      (available p25)
      (colour p25 red)
      (surface-condition p25 smooth)
      (available p26)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 white)
      (surface-condition p27 verysmooth)
      (available p28)
      (wood p28 beech)
      (treatment p28 glazed)
      (available p29)
      (colour p29 natural)
      (wood p29 teak)
      (treatment p29 varnished)
      (available p30)
      (colour p30 white)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 white)
      (wood p31 teak)
      (surface-condition p31 smooth)
      (available p32)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 green)
      (treatment p33 varnished)
      (available p34)
      (colour p34 green)
      (treatment p34 glazed)
      (available p35)
      (wood p35 teak)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (wood p36 cherry)
      (treatment p36 glazed)
      (available p37)
      (wood p37 teak)
      (surface-condition p37 smooth)
      (available p38)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 black)
      (wood p39 beech)
      (surface-condition p39 verysmooth)
      (treatment p39 varnished)
      (available p40)
      (wood p40 cherry)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (wood p41 mahogany)
      (treatment p41 glazed)
      (available p42)
      (colour p42 black)
      (wood p42 pine)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 green)
      (wood p43 teak)
      (treatment p43 varnished)
      (available p44)
      (colour p44 red)
      (surface-condition p44 verysmooth)
      (available p45)
      (wood p45 cherry)
      (treatment p45 glazed)
      (available p46)
      (wood p46 pine)
      (surface-condition p46 smooth)
      (available p47)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (wood p48 beech)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (wood p49 cherry)
      (treatment p49 glazed)
      (available p50)
      (colour p50 black)
      (wood p50 beech)
      (treatment p50 glazed)
      (available p51)
      (colour p51 natural)
      (wood p51 cherry)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 blue)
      (wood p52 oak)
      (treatment p52 glazed)
      (available p53)
      (wood p53 pine)
      (treatment p53 glazed)
      (available p54)
      (colour p54 blue)
      (wood p54 oak)
      (surface-condition p54 smooth)
      (available p55)
      (colour p55 black)
      (treatment p55 glazed)
      (available p56)
      (colour p56 mauve)
      (wood p56 mahogany)
      (surface-condition p56 verysmooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 natural)
      (wood p57 oak)
      (treatment p57 varnished)
      (available p58)
      (colour p58 blue)
      (wood p58 oak)
      (surface-condition p58 smooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 mauve)
      (surface-condition p59 smooth)
      (available p60)
      (colour p60 white)
      (wood p60 mahogany)
      (surface-condition p60 verysmooth)
      (treatment p60 glazed)
      (available p61)
      (colour p61 mauve)
      (wood p61 mahogany)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 red)
      (wood p62 mahogany)
      (treatment p62 varnished)
      (available p63)
      (colour p63 black)
      (wood p63 teak)
      (surface-condition p63 smooth)
      (treatment p63 glazed)
      (available p64)
      (surface-condition p64 smooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 green)
      (wood p65 beech)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 black)
      (wood p67 walnut)
      (surface-condition p67 verysmooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 blue)
      (treatment p68 glazed)
      (available p69)
      (colour p69 mauve)
      (wood p69 cherry)
      (surface-condition p69 verysmooth)
      (treatment p69 varnished)
      (available p70)
      (colour p70 green)
      (wood p70 teak)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 green)
      (wood p71 cherry)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (surface-condition p72 verysmooth)
      (treatment p72 varnished)
      (available p73)
      (surface-condition p73 verysmooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 red)
      (wood p74 pine)
      (available p75)
      (wood p75 mahogany)
      (surface-condition p75 verysmooth)
      (available p76)
      (colour p76 green)
      (wood p76 beech)
      (surface-condition p76 smooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 blue)
      (surface-condition p77 verysmooth)
      (available p78)
      (wood p78 beech)
      (treatment p78 glazed)
      (available p79)
      (colour p79 blue)
      (wood p79 beech)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (wood p80 pine)
      (treatment p80 varnished)
      (available p81)
      (colour p81 blue)
      (wood p81 pine)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (colour p82 black)
      (wood p82 mahogany)
      (surface-condition p82 smooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 black)
      (surface-condition p83 smooth)
      (available p84)
      (colour p84 black)
      (wood p84 teak)
      (available p85)
      (colour p85 black)
      (wood p85 walnut)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 white)
      (wood p86 cherry)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 white)
      (wood p87 walnut)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 natural)
      (treatment p88 varnished)
      (available p89)
      (colour p89 white)
      (wood p89 pine)
      (available p90)
      (surface-condition p90 smooth)
      (treatment p90 glazed)
      (available p91)
      (wood p91 teak)
      (surface-condition p91 verysmooth)
      (available p92)
      (colour p92 natural)
      (wood p92 pine)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (wood p93 beech)
      (surface-condition p93 verysmooth)
      (available p94)
      (wood p94 teak)
      (treatment p94 varnished)
      (available p95)
      (colour p95 green)
      (wood p95 mahogany)
      (available p96)
      (colour p96 black)
      (wood p96 teak)
      (surface-condition p96 verysmooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 white)
      (wood p97 cherry)
      (surface-condition p97 verysmooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 red)
      (wood p98 pine)
      (surface-condition p98 verysmooth)
      (treatment p98 glazed)
      (available p99)
      (colour p99 blue)
      (wood p99 mahogany)
      (surface-condition p99 smooth)
      (treatment p99 glazed)
      (available p100)
      (surface-condition p100 smooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 white)
      (wood p101 teak)
      (surface-condition p101 verysmooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 blue)
      (wood p102 mahogany)
      (available p103)
      (colour p103 natural)
      (treatment p103 varnished)
      (available p104)
      (wood p104 oak)
      (surface-condition p104 verysmooth)
      (available p105)
      (colour p105 natural)
      (wood p105 teak)
      (available p106)
      (colour p106 black)
      (wood p106 oak)
      (surface-condition p106 verysmooth)
      (treatment p106 glazed)
      (available p107)
      (colour p107 green)
      (wood p107 teak)
      (surface-condition p107 verysmooth)
      (treatment p107 varnished)
      (available p108)
      (colour p108 green)
      (wood p108 oak)
      (surface-condition p108 smooth)
      (treatment p108 varnished)
      (available p109)
      (wood p109 walnut)
      (treatment p109 varnished)
      (available p110)
      (colour p110 red)
      (wood p110 teak)
      (surface-condition p110 smooth)
      (available p111)
      (colour p111 black)
      (treatment p111 glazed)
      (available p112)
      (surface-condition p112 smooth)
      (treatment p112 varnished)
      (available p113)
      (colour p113 red)
      (wood p113 walnut)
      (surface-condition p113 smooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 red)
      (surface-condition p114 smooth)
      (available p115)
      (surface-condition p115 verysmooth)
      (treatment p115 varnished)
      (available p116)
      (wood p116 beech)
      (surface-condition p116 verysmooth)
      (treatment p116 varnished)
      (available p117)
      (colour p117 red)
      (wood p117 oak)
      (surface-condition p117 verysmooth)
      (treatment p117 glazed)
      (available p118)
      (colour p118 blue)
      (wood p118 cherry)
      (surface-condition p118 verysmooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 white)
      (wood p119 cherry)
      (surface-condition p119 verysmooth)
      (treatment p119 varnished)
      (available p120)
      (surface-condition p120 verysmooth)
      (treatment p120 glazed)
      (available p121)
      (colour p121 white)
      (wood p121 beech)
      (surface-condition p121 verysmooth)
      (available p122)
      (colour p122 mauve)
      (wood p122 pine)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (wood p123 walnut)
      (treatment p123 glazed)
      (available p124)
      (colour p124 red)
      (wood p124 oak)
      (surface-condition p124 smooth)
      (available p125)
      (colour p125 mauve)
      (wood p125 teak)
      (available p126)
      (colour p126 mauve)
      (wood p126 beech)
      (available p127)
      (colour p127 white)
      (surface-condition p127 verysmooth)
      (treatment p127 glazed)
      (available p128)
      (colour p128 white)
      (wood p128 teak)
      (surface-condition p128 verysmooth)
      (treatment p128 glazed)
      (available p129)
      (wood p129 walnut)
      (surface-condition p129 verysmooth)
      (available p130)
      (colour p130 red)
      (surface-condition p130 verysmooth)
      (available p131)
      (surface-condition p131 smooth)
      (treatment p131 glazed)
      (available p132)
      (colour p132 mauve)
      (surface-condition p132 smooth)
      (available p133)
      (colour p133 black)
      (wood p133 beech)
      (available p134)
      (colour p134 natural)
      (wood p134 mahogany)
      (surface-condition p134 verysmooth)
      (treatment p134 glazed)
      (available p135)
      (colour p135 white)
      (surface-condition p135 verysmooth)
      (treatment p135 glazed)
      (available p136)
      (colour p136 green)
      (wood p136 pine)
      (surface-condition p136 verysmooth)
      (available p137)
      (colour p137 mauve)
      (treatment p137 glazed)
      (available p138)
      (colour p138 natural)
      (wood p138 beech)
      (treatment p138 varnished)
      (available p139)
      (colour p139 blue)
      (wood p139 cherry)
      (available p140)
      (surface-condition p140 smooth)
      (treatment p140 varnished)
      (available p141)
      (colour p141 blue)
      (wood p141 mahogany)
      (available p142)
      (colour p142 black)
      (surface-condition p142 verysmooth)
      (available p143)
      (wood p143 beech)
      (treatment p143 glazed)
      (available p144)
      (colour p144 black)
      (treatment p144 glazed)
      (available p145)
      (colour p145 natural)
      (surface-condition p145 smooth)
      (available p146)
      (colour p146 natural)
      (wood p146 oak)
      (available p147)
      (colour p147 blue)
      (surface-condition p147 verysmooth)
      (available p148)
      (colour p148 black)
      (wood p148 teak)
      (available p149)
      (wood p149 mahogany)
      (surface-condition p149 smooth)
      (available p150)
      (colour p150 green)
      (wood p150 teak)
      (surface-condition p150 smooth)
      (treatment p150 varnished)
      (available p151)
      (wood p151 pine)
      (treatment p151 glazed)
      (available p152)
      (colour p152 mauve)
      (surface-condition p152 smooth)
      (available p153)
      (wood p153 beech)
      (treatment p153 varnished)
      (available p154)
      (wood p154 pine)
      (treatment p154 varnished)
    )
  )
  
)
