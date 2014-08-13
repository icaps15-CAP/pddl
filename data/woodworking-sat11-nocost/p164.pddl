; woodworking task with 179 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 214871

(define (problem wood-prob-sat-164)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green red black mauve blue white - acolour
    mahogany pine beech teak walnut oak cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
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
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (available p3)
    (colour p3 mauve)
    (wood p3 walnut)
    (surface-condition p3 smooth)
    (treatment p3 colourfragments)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (available p5)
    (colour p5 blue)
    (wood p5 teak)
    (surface-condition p5 smooth)
    (treatment p5 colourfragments)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 blue)
    (wood p9 teak)
    (surface-condition p9 smooth)
    (treatment p9 glazed)
    (goalsize p9 large)
    
    
    
    
    (available p10)
    (colour p10 red)
    (wood p10 pine)
    (surface-condition p10 rough)
    (treatment p10 glazed)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 mauve)
    (wood p11 teak)
    (surface-condition p11 rough)
    (treatment p11 colourfragments)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (available p18)
    (colour p18 white)
    (wood p18 teak)
    (surface-condition p18 rough)
    (treatment p18 glazed)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (available p21)
    (colour p21 black)
    (wood p21 mahogany)
    (surface-condition p21 rough)
    (treatment p21 colourfragments)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 natural)
    (wood p26 walnut)
    (surface-condition p26 rough)
    (treatment p26 colourfragments)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (available p35)
    (colour p35 black)
    (wood p35 pine)
    (surface-condition p35 smooth)
    (treatment p35 varnished)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (available p40)
    (colour p40 natural)
    (wood p40 teak)
    (surface-condition p40 verysmooth)
    (treatment p40 glazed)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (available p46)
    (colour p46 natural)
    (wood p46 pine)
    (surface-condition p46 verysmooth)
    (treatment p46 glazed)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (available p49)
    (colour p49 green)
    (wood p49 mahogany)
    (surface-condition p49 rough)
    (treatment p49 varnished)
    (goalsize p49 large)
    
    
    
    
    (available p50)
    (colour p50 mauve)
    (wood p50 cherry)
    (surface-condition p50 rough)
    (treatment p50 colourfragments)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (available p54)
    (colour p54 natural)
    (wood p54 cherry)
    (surface-condition p54 smooth)
    (treatment p54 colourfragments)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (available p61)
    (colour p61 natural)
    (wood p61 oak)
    (surface-condition p61 smooth)
    (treatment p61 colourfragments)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (available p67)
    (colour p67 natural)
    (wood p67 oak)
    (surface-condition p67 smooth)
    (treatment p67 varnished)
    (goalsize p67 large)
    
    
    
    
    (available p68)
    (colour p68 mauve)
    (wood p68 beech)
    (surface-condition p68 rough)
    (treatment p68 glazed)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (available p71)
    (colour p71 natural)
    (wood p71 cherry)
    (surface-condition p71 verysmooth)
    (treatment p71 colourfragments)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (available p76)
    (colour p76 natural)
    (wood p76 beech)
    (surface-condition p76 rough)
    (treatment p76 colourfragments)
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
    (colour p81 red)
    (wood p81 oak)
    (surface-condition p81 verysmooth)
    (treatment p81 glazed)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (available p84)
    (colour p84 white)
    (wood p84 mahogany)
    (surface-condition p84 rough)
    (treatment p84 varnished)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (available p100)
    (colour p100 white)
    (wood p100 oak)
    (surface-condition p100 smooth)
    (treatment p100 colourfragments)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (available p113)
    (colour p113 green)
    (wood p113 cherry)
    (surface-condition p113 smooth)
    (treatment p113 varnished)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (available p115)
    (colour p115 red)
    (wood p115 walnut)
    (surface-condition p115 rough)
    (treatment p115 glazed)
    (goalsize p115 medium)
    
    
    
    
    (available p116)
    (colour p116 mauve)
    (wood p116 beech)
    (surface-condition p116 smooth)
    (treatment p116 colourfragments)
    (goalsize p116 medium)
    
    
    
    
    (available p117)
    (colour p117 mauve)
    (wood p117 pine)
    (surface-condition p117 verysmooth)
    (treatment p117 glazed)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (available p122)
    (colour p122 red)
    (wood p122 mahogany)
    (surface-condition p122 verysmooth)
    (treatment p122 glazed)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (available p124)
    (colour p124 natural)
    (wood p124 walnut)
    (surface-condition p124 verysmooth)
    (treatment p124 glazed)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (available p130)
    (colour p130 white)
    (wood p130 oak)
    (surface-condition p130 verysmooth)
    (treatment p130 colourfragments)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (available p135)
    (colour p135 green)
    (wood p135 mahogany)
    (surface-condition p135 verysmooth)
    (treatment p135 varnished)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (available p138)
    (colour p138 green)
    (wood p138 beech)
    (surface-condition p138 smooth)
    (treatment p138 glazed)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (available p149)
    (colour p149 white)
    (wood p149 oak)
    (surface-condition p149 rough)
    (treatment p149 varnished)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (available p156)
    (colour p156 red)
    (wood p156 cherry)
    (surface-condition p156 rough)
    (treatment p156 varnished)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (available p170)
    (colour p170 red)
    (wood p170 mahogany)
    (surface-condition p170 verysmooth)
    (treatment p170 varnished)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (available p173)
    (colour p173 mauve)
    (wood p173 oak)
    (surface-condition p173 verysmooth)
    (treatment p173 varnished)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s10)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s10)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s11)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s8)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s6)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s9)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s10)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 pine)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s7)
    (wood b24 pine)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 pine)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s7)
    (wood b26 pine)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s10)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s5)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s8)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s6)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s2)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s11)
    (wood b32 walnut)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s9)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s7)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s9)
    (wood b37 teak)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s7)
    (wood b38 teak)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s8)
    (wood b39 teak)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 teak)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s7)
    (wood b41 teak)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s9)
    (wood b42 teak)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s7)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s8)
    (wood b44 teak)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s3)
    (wood b45 teak)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s10)
    (wood b46 beech)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s9)
    (wood b47 beech)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s9)
    (wood b48 beech)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s7)
    (wood b49 beech)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s9)
    (wood b50 beech)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s7)
    (wood b51 beech)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 beech)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s6)
    (wood b53 beech)
    (surface-condition b53 rough)
    (available b53)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (wood p0 beech)
      (surface-condition p0 smooth)
      (available p1)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 green)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (wood p4 cherry)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 white)
      (treatment p5 varnished)
      (available p6)
      (colour p6 red)
      (wood p6 mahogany)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 blue)
      (wood p7 cherry)
      (available p8)
      (colour p8 white)
      (treatment p8 glazed)
      (available p9)
      (colour p9 red)
      (treatment p9 varnished)
      (available p10)
      (wood p10 pine)
      (surface-condition p10 smooth)
      (available p11)
      (wood p11 teak)
      (surface-condition p11 smooth)
      (available p12)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 red)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 white)
      (wood p14 pine)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 natural)
      (wood p15 teak)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 red)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 white)
      (wood p17 cherry)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 green)
      (wood p18 teak)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (wood p19 walnut)
      (surface-condition p19 verysmooth)
      (available p20)
      (wood p20 pine)
      (surface-condition p20 verysmooth)
      (available p21)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 white)
      (wood p22 mahogany)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 white)
      (wood p23 oak)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (surface-condition p24 verysmooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 red)
      (wood p25 mahogany)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 black)
      (treatment p26 glazed)
      (available p27)
      (colour p27 natural)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 black)
      (wood p28 beech)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 green)
      (wood p29 pine)
      (surface-condition p29 verysmooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 blue)
      (wood p30 pine)
      (available p31)
      (wood p31 cherry)
      (treatment p31 varnished)
      (available p32)
      (colour p32 white)
      (wood p32 oak)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (wood p33 mahogany)
      (treatment p33 glazed)
      (available p34)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 green)
      (wood p35 pine)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (wood p36 beech)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 blue)
      (wood p37 cherry)
      (available p38)
      (colour p38 green)
      (wood p38 pine)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (wood p39 walnut)
      (surface-condition p39 smooth)
      (available p40)
      (colour p40 blue)
      (surface-condition p40 verysmooth)
      (available p41)
      (colour p41 green)
      (wood p41 walnut)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (wood p43 walnut)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 green)
      (treatment p44 glazed)
      (available p45)
      (wood p45 oak)
      (treatment p45 glazed)
      (available p46)
      (colour p46 black)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 red)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 white)
      (wood p48 cherry)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 blue)
      (wood p49 mahogany)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 natural)
      (wood p50 cherry)
      (available p51)
      (colour p51 natural)
      (wood p51 pine)
      (treatment p51 glazed)
      (available p52)
      (colour p52 red)
      (wood p52 mahogany)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (wood p53 beech)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 red)
      (wood p54 cherry)
      (available p55)
      (colour p55 green)
      (wood p55 beech)
      (available p56)
      (colour p56 green)
      (wood p56 cherry)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 mauve)
      (wood p57 pine)
      (surface-condition p57 smooth)
      (treatment p57 varnished)
      (available p58)
      (wood p58 cherry)
      (surface-condition p58 smooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 green)
      (wood p59 cherry)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 blue)
      (surface-condition p60 verysmooth)
      (treatment p60 glazed)
      (available p61)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 natural)
      (wood p62 cherry)
      (available p63)
      (wood p63 walnut)
      (surface-condition p63 smooth)
      (available p64)
      (wood p64 mahogany)
      (treatment p64 glazed)
      (available p65)
      (wood p65 beech)
      (treatment p65 glazed)
      (available p66)
      (colour p66 red)
      (wood p66 mahogany)
      (surface-condition p66 smooth)
      (treatment p66 glazed)
      (available p67)
      (wood p67 oak)
      (surface-condition p67 verysmooth)
      (available p68)
      (colour p68 green)
      (wood p68 beech)
      (treatment p68 glazed)
      (available p69)
      (colour p69 red)
      (treatment p69 varnished)
      (available p70)
      (colour p70 red)
      (surface-condition p70 verysmooth)
      (available p71)
      (surface-condition p71 verysmooth)
      (treatment p71 glazed)
      (available p72)
      (wood p72 mahogany)
      (treatment p72 varnished)
      (available p73)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (wood p74 mahogany)
      (treatment p74 glazed)
      (available p75)
      (colour p75 green)
      (wood p75 beech)
      (surface-condition p75 verysmooth)
      (treatment p75 varnished)
      (available p76)
      (wood p76 beech)
      (surface-condition p76 verysmooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 black)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (surface-condition p78 smooth)
      (treatment p78 varnished)
      (available p79)
      (colour p79 mauve)
      (wood p79 beech)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 red)
      (wood p80 cherry)
      (surface-condition p80 smooth)
      (treatment p80 glazed)
      (available p81)
      (colour p81 natural)
      (treatment p81 glazed)
      (available p82)
      (surface-condition p82 smooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 black)
      (wood p83 oak)
      (treatment p83 varnished)
      (available p84)
      (colour p84 natural)
      (treatment p84 glazed)
      (available p85)
      (surface-condition p85 verysmooth)
      (treatment p85 varnished)
      (available p86)
      (colour p86 white)
      (wood p86 walnut)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (wood p87 teak)
      (treatment p87 varnished)
      (available p88)
      (colour p88 green)
      (wood p88 beech)
      (treatment p88 varnished)
      (available p89)
      (colour p89 black)
      (wood p89 beech)
      (available p90)
      (wood p90 mahogany)
      (treatment p90 glazed)
      (available p91)
      (surface-condition p91 verysmooth)
      (treatment p91 varnished)
      (available p92)
      (colour p92 mauve)
      (wood p92 cherry)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (colour p93 red)
      (wood p93 beech)
      (available p94)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 white)
      (wood p95 beech)
      (treatment p95 varnished)
      (available p96)
      (colour p96 blue)
      (wood p96 teak)
      (surface-condition p96 smooth)
      (treatment p96 glazed)
      (available p97)
      (colour p97 red)
      (wood p97 walnut)
      (available p98)
      (colour p98 natural)
      (wood p98 mahogany)
      (surface-condition p98 verysmooth)
      (treatment p98 varnished)
      (available p99)
      (wood p99 teak)
      (surface-condition p99 verysmooth)
      (available p100)
      (colour p100 natural)
      (wood p100 oak)
      (surface-condition p100 smooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 green)
      (wood p101 teak)
      (surface-condition p101 smooth)
      (available p102)
      (wood p102 pine)
      (surface-condition p102 verysmooth)
      (available p103)
      (colour p103 white)
      (wood p103 teak)
      (treatment p103 varnished)
      (available p104)
      (wood p104 cherry)
      (surface-condition p104 verysmooth)
      (available p105)
      (surface-condition p105 smooth)
      (treatment p105 varnished)
      (available p106)
      (colour p106 natural)
      (wood p106 mahogany)
      (available p107)
      (wood p107 teak)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (colour p108 black)
      (wood p108 oak)
      (surface-condition p108 smooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 green)
      (wood p109 pine)
      (available p110)
      (colour p110 blue)
      (surface-condition p110 verysmooth)
      (available p111)
      (wood p111 cherry)
      (surface-condition p111 smooth)
      (available p112)
      (colour p112 green)
      (wood p112 pine)
      (surface-condition p112 smooth)
      (available p113)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (wood p114 teak)
      (surface-condition p114 verysmooth)
      (available p115)
      (surface-condition p115 verysmooth)
      (treatment p115 glazed)
      (available p116)
      (colour p116 natural)
      (wood p116 beech)
      (surface-condition p116 smooth)
      (treatment p116 glazed)
      (available p117)
      (colour p117 red)
      (wood p117 pine)
      (surface-condition p117 smooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 white)
      (treatment p118 varnished)
      (available p119)
      (wood p119 beech)
      (surface-condition p119 smooth)
      (available p120)
      (colour p120 mauve)
      (wood p120 cherry)
      (surface-condition p120 verysmooth)
      (treatment p120 varnished)
      (available p121)
      (colour p121 green)
      (wood p121 teak)
      (treatment p121 varnished)
      (available p122)
      (colour p122 black)
      (surface-condition p122 smooth)
      (treatment p122 varnished)
      (available p123)
      (wood p123 teak)
      (surface-condition p123 verysmooth)
      (available p124)
      (colour p124 black)
      (wood p124 walnut)
      (available p125)
      (wood p125 pine)
      (surface-condition p125 smooth)
      (available p126)
      (surface-condition p126 verysmooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 mauve)
      (surface-condition p127 smooth)
      (available p128)
      (colour p128 natural)
      (surface-condition p128 smooth)
      (available p129)
      (colour p129 blue)
      (wood p129 beech)
      (available p130)
      (surface-condition p130 smooth)
      (treatment p130 varnished)
      (available p131)
      (colour p131 black)
      (wood p131 pine)
      (surface-condition p131 verysmooth)
      (available p132)
      (colour p132 white)
      (wood p132 cherry)
      (surface-condition p132 verysmooth)
      (treatment p132 varnished)
      (available p133)
      (colour p133 red)
      (wood p133 oak)
      (surface-condition p133 smooth)
      (treatment p133 varnished)
      (available p134)
      (wood p134 walnut)
      (surface-condition p134 smooth)
      (available p135)
      (colour p135 blue)
      (wood p135 mahogany)
      (available p136)
      (wood p136 pine)
      (treatment p136 varnished)
      (available p137)
      (colour p137 red)
      (wood p137 oak)
      (surface-condition p137 verysmooth)
      (treatment p137 glazed)
      (available p138)
      (colour p138 white)
      (treatment p138 glazed)
      (available p139)
      (surface-condition p139 verysmooth)
      (treatment p139 varnished)
      (available p140)
      (surface-condition p140 smooth)
      (treatment p140 varnished)
      (available p141)
      (wood p141 mahogany)
      (surface-condition p141 smooth)
      (available p142)
      (colour p142 natural)
      (wood p142 walnut)
      (surface-condition p142 smooth)
      (treatment p142 varnished)
      (available p143)
      (wood p143 beech)
      (treatment p143 glazed)
      (available p144)
      (colour p144 green)
      (wood p144 pine)
      (available p145)
      (wood p145 cherry)
      (surface-condition p145 verysmooth)
      (treatment p145 glazed)
      (available p146)
      (colour p146 green)
      (wood p146 teak)
      (treatment p146 glazed)
      (available p147)
      (wood p147 walnut)
      (treatment p147 varnished)
      (available p148)
      (wood p148 teak)
      (treatment p148 glazed)
      (available p149)
      (colour p149 black)
      (wood p149 oak)
      (surface-condition p149 smooth)
      (treatment p149 varnished)
      (available p150)
      (colour p150 white)
      (treatment p150 varnished)
      (available p151)
      (wood p151 cherry)
      (surface-condition p151 verysmooth)
      (treatment p151 varnished)
      (available p152)
      (wood p152 teak)
      (surface-condition p152 verysmooth)
      (available p153)
      (colour p153 black)
      (surface-condition p153 smooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 white)
      (treatment p154 glazed)
      (available p155)
      (colour p155 white)
      (wood p155 pine)
      (available p156)
      (colour p156 green)
      (wood p156 cherry)
      (surface-condition p156 smooth)
      (treatment p156 glazed)
      (available p157)
      (colour p157 black)
      (surface-condition p157 verysmooth)
      (available p158)
      (wood p158 mahogany)
      (surface-condition p158 verysmooth)
      (treatment p158 glazed)
      (available p159)
      (colour p159 blue)
      (wood p159 oak)
      (treatment p159 glazed)
      (available p160)
      (colour p160 black)
      (treatment p160 glazed)
      (available p161)
      (colour p161 mauve)
      (wood p161 mahogany)
      (surface-condition p161 smooth)
      (treatment p161 glazed)
      (available p162)
      (colour p162 green)
      (wood p162 oak)
      (surface-condition p162 smooth)
      (treatment p162 glazed)
      (available p163)
      (colour p163 green)
      (wood p163 cherry)
      (surface-condition p163 verysmooth)
      (treatment p163 varnished)
      (available p164)
      (colour p164 green)
      (wood p164 beech)
      (available p165)
      (wood p165 oak)
      (surface-condition p165 smooth)
      (available p166)
      (colour p166 red)
      (wood p166 pine)
      (surface-condition p166 verysmooth)
      (available p167)
      (wood p167 walnut)
      (treatment p167 varnished)
      (available p168)
      (colour p168 red)
      (surface-condition p168 verysmooth)
      (treatment p168 glazed)
      (available p169)
      (colour p169 white)
      (wood p169 pine)
      (available p170)
      (colour p170 natural)
      (wood p170 mahogany)
      (treatment p170 varnished)
      (available p171)
      (colour p171 black)
      (treatment p171 varnished)
      (available p172)
      (wood p172 pine)
      (surface-condition p172 verysmooth)
      (treatment p172 varnished)
      (available p173)
      (colour p173 red)
      (wood p173 oak)
      (available p174)
      (wood p174 pine)
      (surface-condition p174 smooth)
      (available p175)
      (colour p175 red)
      (surface-condition p175 smooth)
      (treatment p175 varnished)
      (available p176)
      (wood p176 beech)
      (surface-condition p176 smooth)
      (available p177)
      (wood p177 mahogany)
      (treatment p177 varnished)
      (available p178)
      (wood p178 walnut)
      (surface-condition p178 verysmooth)
    )
  )
  
)
