; woodworking task with 224 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 71003

(define (problem wood-prob-sat-179)
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
    mahogany walnut cherry teak beech pine oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
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
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 green)
    (wood p3 teak)
    (surface-condition p3 smooth)
    (treatment p3 colourfragments)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 natural)
    (wood p5 cherry)
    (surface-condition p5 rough)
    (treatment p5 glazed)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (available p13)
    (colour p13 natural)
    (wood p13 pine)
    (surface-condition p13 verysmooth)
    (treatment p13 colourfragments)
    (goalsize p13 large)
    
    
    
    
    (available p14)
    (colour p14 green)
    (wood p14 teak)
    (surface-condition p14 smooth)
    (treatment p14 colourfragments)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 natural)
    (wood p36 teak)
    (surface-condition p36 verysmooth)
    (treatment p36 glazed)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (available p44)
    (colour p44 black)
    (wood p44 walnut)
    (surface-condition p44 rough)
    (treatment p44 varnished)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (available p47)
    (colour p47 natural)
    (wood p47 walnut)
    (surface-condition p47 rough)
    (treatment p47 glazed)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (available p50)
    (colour p50 white)
    (wood p50 pine)
    (surface-condition p50 rough)
    (treatment p50 varnished)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (available p57)
    (colour p57 green)
    (wood p57 walnut)
    (surface-condition p57 verysmooth)
    (treatment p57 glazed)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (available p69)
    (colour p69 blue)
    (wood p69 teak)
    (surface-condition p69 smooth)
    (treatment p69 varnished)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (available p71)
    (colour p71 red)
    (wood p71 walnut)
    (surface-condition p71 smooth)
    (treatment p71 glazed)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (available p79)
    (colour p79 white)
    (wood p79 pine)
    (surface-condition p79 rough)
    (treatment p79 glazed)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (available p90)
    (colour p90 red)
    (wood p90 pine)
    (surface-condition p90 rough)
    (treatment p90 varnished)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
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
    
    
    
    
    (available p101)
    (colour p101 blue)
    (wood p101 pine)
    (surface-condition p101 smooth)
    (treatment p101 colourfragments)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (available p105)
    (colour p105 blue)
    (wood p105 oak)
    (surface-condition p105 verysmooth)
    (treatment p105 glazed)
    (goalsize p105 small)
    
    
    
    
    (available p106)
    (colour p106 black)
    (wood p106 walnut)
    (surface-condition p106 smooth)
    (treatment p106 glazed)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (available p108)
    (colour p108 mauve)
    (wood p108 pine)
    (surface-condition p108 verysmooth)
    (treatment p108 varnished)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (available p110)
    (colour p110 black)
    (wood p110 teak)
    (surface-condition p110 rough)
    (treatment p110 glazed)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (available p120)
    (colour p120 black)
    (wood p120 walnut)
    (surface-condition p120 verysmooth)
    (treatment p120 varnished)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (available p122)
    (colour p122 black)
    (wood p122 cherry)
    (surface-condition p122 smooth)
    (treatment p122 colourfragments)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (available p128)
    (colour p128 red)
    (wood p128 mahogany)
    (surface-condition p128 verysmooth)
    (treatment p128 glazed)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (available p138)
    (colour p138 mauve)
    (wood p138 pine)
    (surface-condition p138 verysmooth)
    (treatment p138 colourfragments)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
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
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 small)
    
    
    
    
    (available p149)
    (colour p149 blue)
    (wood p149 oak)
    (surface-condition p149 smooth)
    (treatment p149 varnished)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (available p151)
    (colour p151 white)
    (wood p151 oak)
    (surface-condition p151 rough)
    (treatment p151 glazed)
    (goalsize p151 large)
    
    
    
    
    (available p152)
    (colour p152 natural)
    (wood p152 pine)
    (surface-condition p152 verysmooth)
    (treatment p152 glazed)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (available p156)
    (colour p156 natural)
    (wood p156 teak)
    (surface-condition p156 smooth)
    (treatment p156 glazed)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (available p164)
    (colour p164 blue)
    (wood p164 walnut)
    (surface-condition p164 smooth)
    (treatment p164 colourfragments)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (available p167)
    (colour p167 white)
    (wood p167 teak)
    (surface-condition p167 smooth)
    (treatment p167 glazed)
    (goalsize p167 medium)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (available p172)
    (colour p172 white)
    (wood p172 oak)
    (surface-condition p172 smooth)
    (treatment p172 glazed)
    (goalsize p172 large)
    
    
    
    
    (available p173)
    (colour p173 white)
    (wood p173 beech)
    (surface-condition p173 rough)
    (treatment p173 colourfragments)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 medium)
    
    
    
    
    (unused p178)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (available p180)
    (colour p180 green)
    (wood p180 pine)
    (surface-condition p180 rough)
    (treatment p180 glazed)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (unused p185)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (available p188)
    (colour p188 natural)
    (wood p188 cherry)
    (surface-condition p188 smooth)
    (treatment p188 glazed)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 large)
    
    
    
    
    (available p190)
    (colour p190 natural)
    (wood p190 teak)
    (surface-condition p190 verysmooth)
    (treatment p190 colourfragments)
    (goalsize p190 large)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 medium)
    
    
    
    
    (available p193)
    (colour p193 white)
    (wood p193 cherry)
    (surface-condition p193 smooth)
    (treatment p193 glazed)
    (goalsize p193 large)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (available p200)
    (colour p200 blue)
    (wood p200 mahogany)
    (surface-condition p200 smooth)
    (treatment p200 colourfragments)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 medium)
    
    
    
    
    (unused p202)
    (goalsize p202 large)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
    (available p204)
    (colour p204 blue)
    (wood p204 cherry)
    (surface-condition p204 rough)
    (treatment p204 colourfragments)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 large)
    
    
    
    
    (available p206)
    (colour p206 blue)
    (wood p206 oak)
    (surface-condition p206 rough)
    (treatment p206 colourfragments)
    (goalsize p206 medium)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 large)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (available p214)
    (colour p214 mauve)
    (wood p214 beech)
    (surface-condition p214 verysmooth)
    (treatment p214 varnished)
    (goalsize p214 large)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (available p216)
    (colour p216 green)
    (wood p216 oak)
    (surface-condition p216 smooth)
    (treatment p216 varnished)
    (goalsize p216 small)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 small)
    
    
    
    
    (unused p219)
    (goalsize p219 large)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s6)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s9)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 cherry)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s5)
    (wood b9 cherry)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s7)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s7)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s6)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s10)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s6)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s6)
    (wood b17 mahogany)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s7)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s6)
    (wood b22 oak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s9)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s6)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s9)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s8)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s1)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s9)
    (wood b29 pine)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s11)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s7)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s9)
    (wood b32 pine)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s6)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s5)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s8)
    (wood b36 pine)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s10)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s3)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s11)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s9)
    (wood b40 walnut)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s8)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s8)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s6)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s7)
    (wood b44 walnut)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s9)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s9)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s9)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s3)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s8)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s8)
    (wood b50 teak)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s8)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s8)
    (wood b52 teak)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s7)
    (wood b53 teak)
    (surface-condition b53 smooth)
    (available b53)
    (boardsize b54 s8)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s7)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s6)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s8)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s2)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s7)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s10)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s7)
    (wood b61 beech)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s11)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s8)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s7)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s9)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s10)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s3)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (wood p0 mahogany)
      (treatment p0 varnished)
      (available p1)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 green)
      (wood p2 mahogany)
      (available p3)
      (colour p3 black)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 white)
      (treatment p4 glazed)
      (available p5)
      (wood p5 cherry)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 black)
      (surface-condition p6 smooth)
      (available p7)
      (wood p7 cherry)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (wood p8 teak)
      (treatment p8 varnished)
      (available p9)
      (colour p9 mauve)
      (wood p9 pine)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 white)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 black)
      (wood p12 teak)
      (available p13)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 mauve)
      (wood p14 teak)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 red)
      (surface-condition p15 smooth)
      (available p16)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (wood p17 teak)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 natural)
      (treatment p18 varnished)
      (available p19)
      (wood p19 teak)
      (treatment p19 varnished)
      (available p20)
      (colour p20 natural)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 mauve)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 blue)
      (wood p22 teak)
      (available p23)
      (colour p23 black)
      (surface-condition p23 smooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 natural)
      (wood p24 cherry)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 blue)
      (wood p25 walnut)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 blue)
      (wood p27 walnut)
      (surface-condition p27 smooth)
      (available p28)
      (wood p28 pine)
      (surface-condition p28 verysmooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 natural)
      (wood p29 mahogany)
      (treatment p29 varnished)
      (available p30)
      (colour p30 green)
      (wood p30 walnut)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 black)
      (surface-condition p31 smooth)
      (available p32)
      (colour p32 natural)
      (wood p32 beech)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 white)
      (surface-condition p33 verysmooth)
      (treatment p33 glazed)
      (available p34)
      (wood p34 cherry)
      (treatment p34 varnished)
      (available p35)
      (wood p35 beech)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 blue)
      (wood p36 teak)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 black)
      (treatment p37 varnished)
      (available p38)
      (colour p38 mauve)
      (wood p38 walnut)
      (treatment p38 glazed)
      (available p39)
      (colour p39 blue)
      (wood p39 walnut)
      (surface-condition p39 smooth)
      (treatment p39 glazed)
      (available p40)
      (wood p40 cherry)
      (treatment p40 varnished)
      (available p41)
      (colour p41 white)
      (surface-condition p41 verysmooth)
      (available p42)
      (wood p42 cherry)
      (treatment p42 varnished)
      (available p43)
      (colour p43 black)
      (wood p43 walnut)
      (surface-condition p43 smooth)
      (available p44)
      (colour p44 red)
      (wood p44 walnut)
      (available p45)
      (colour p45 red)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (wood p46 beech)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 black)
      (wood p47 walnut)
      (treatment p47 glazed)
      (available p48)
      (wood p48 walnut)
      (treatment p48 varnished)
      (available p49)
      (wood p49 oak)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (wood p50 pine)
      (surface-condition p50 verysmooth)
      (available p51)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 mauve)
      (treatment p52 glazed)
      (available p53)
      (colour p53 natural)
      (surface-condition p53 verysmooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 red)
      (treatment p54 varnished)
      (available p55)
      (colour p55 blue)
      (treatment p55 glazed)
      (available p56)
      (colour p56 black)
      (wood p56 mahogany)
      (surface-condition p56 verysmooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 white)
      (wood p57 walnut)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 mauve)
      (wood p58 beech)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 mauve)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 white)
      (wood p60 cherry)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 natural)
      (wood p61 beech)
      (surface-condition p61 verysmooth)
      (available p62)
      (wood p62 mahogany)
      (surface-condition p62 verysmooth)
      (available p63)
      (wood p63 pine)
      (treatment p63 glazed)
      (available p64)
      (colour p64 mauve)
      (wood p64 pine)
      (surface-condition p64 verysmooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 mauve)
      (wood p65 oak)
      (surface-condition p65 verysmooth)
      (available p66)
      (colour p66 blue)
      (treatment p66 glazed)
      (available p67)
      (colour p67 green)
      (wood p67 pine)
      (surface-condition p67 verysmooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 red)
      (wood p68 oak)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 black)
      (wood p69 teak)
      (available p70)
      (colour p70 red)
      (surface-condition p70 verysmooth)
      (available p71)
      (colour p71 green)
      (wood p71 walnut)
      (available p72)
      (colour p72 natural)
      (wood p72 teak)
      (surface-condition p72 smooth)
      (treatment p72 glazed)
      (available p73)
      (colour p73 black)
      (treatment p73 varnished)
      (available p74)
      (surface-condition p74 verysmooth)
      (treatment p74 varnished)
      (available p75)
      (colour p75 blue)
      (wood p75 teak)
      (surface-condition p75 verysmooth)
      (treatment p75 varnished)
      (available p76)
      (surface-condition p76 verysmooth)
      (treatment p76 varnished)
      (available p77)
      (wood p77 mahogany)
      (surface-condition p77 smooth)
      (available p78)
      (wood p78 mahogany)
      (treatment p78 varnished)
      (available p79)
      (colour p79 mauve)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (surface-condition p80 smooth)
      (treatment p80 glazed)
      (available p81)
      (colour p81 white)
      (wood p81 oak)
      (treatment p81 varnished)
      (available p82)
      (colour p82 white)
      (wood p82 cherry)
      (surface-condition p82 verysmooth)
      (treatment p82 glazed)
      (available p83)
      (wood p83 oak)
      (surface-condition p83 verysmooth)
      (available p84)
      (colour p84 blue)
      (surface-condition p84 smooth)
      (available p85)
      (colour p85 red)
      (treatment p85 varnished)
      (available p86)
      (colour p86 natural)
      (treatment p86 varnished)
      (available p87)
      (wood p87 oak)
      (surface-condition p87 verysmooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 white)
      (wood p88 oak)
      (treatment p88 glazed)
      (available p89)
      (colour p89 mauve)
      (wood p89 beech)
      (surface-condition p89 verysmooth)
      (treatment p89 varnished)
      (available p90)
      (colour p90 white)
      (wood p90 pine)
      (surface-condition p90 smooth)
      (treatment p90 glazed)
      (available p91)
      (colour p91 mauve)
      (wood p91 oak)
      (treatment p91 varnished)
      (available p92)
      (wood p92 teak)
      (treatment p92 glazed)
      (available p93)
      (surface-condition p93 verysmooth)
      (treatment p93 glazed)
      (available p94)
      (wood p94 walnut)
      (surface-condition p94 verysmooth)
      (available p95)
      (colour p95 white)
      (wood p95 mahogany)
      (surface-condition p95 verysmooth)
      (treatment p95 glazed)
      (available p96)
      (colour p96 natural)
      (wood p96 beech)
      (surface-condition p96 smooth)
      (treatment p96 glazed)
      (available p97)
      (colour p97 blue)
      (wood p97 teak)
      (surface-condition p97 verysmooth)
      (treatment p97 varnished)
      (available p98)
      (wood p98 teak)
      (treatment p98 glazed)
      (available p99)
      (colour p99 red)
      (treatment p99 glazed)
      (available p100)
      (colour p100 blue)
      (treatment p100 glazed)
      (available p101)
      (colour p101 white)
      (wood p101 pine)
      (surface-condition p101 verysmooth)
      (treatment p101 varnished)
      (available p102)
      (colour p102 red)
      (wood p102 oak)
      (surface-condition p102 verysmooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 mauve)
      (treatment p103 glazed)
      (available p104)
      (colour p104 mauve)
      (wood p104 cherry)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 black)
      (wood p105 oak)
      (surface-condition p105 verysmooth)
      (treatment p105 varnished)
      (available p106)
      (wood p106 walnut)
      (surface-condition p106 verysmooth)
      (treatment p106 varnished)
      (available p107)
      (wood p107 oak)
      (treatment p107 glazed)
      (available p108)
      (wood p108 pine)
      (treatment p108 glazed)
      (available p109)
      (wood p109 walnut)
      (treatment p109 varnished)
      (available p110)
      (colour p110 natural)
      (surface-condition p110 smooth)
      (available p111)
      (surface-condition p111 smooth)
      (treatment p111 glazed)
      (available p112)
      (wood p112 pine)
      (treatment p112 glazed)
      (available p113)
      (colour p113 blue)
      (surface-condition p113 smooth)
      (treatment p113 glazed)
      (available p114)
      (colour p114 green)
      (surface-condition p114 verysmooth)
      (available p115)
      (colour p115 natural)
      (wood p115 mahogany)
      (surface-condition p115 verysmooth)
      (treatment p115 varnished)
      (available p116)
      (colour p116 black)
      (wood p116 walnut)
      (surface-condition p116 smooth)
      (treatment p116 glazed)
      (available p117)
      (colour p117 natural)
      (wood p117 pine)
      (treatment p117 varnished)
      (available p118)
      (colour p118 black)
      (wood p118 teak)
      (surface-condition p118 verysmooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 green)
      (wood p119 teak)
      (surface-condition p119 verysmooth)
      (available p120)
      (colour p120 blue)
      (wood p120 walnut)
      (surface-condition p120 smooth)
      (treatment p120 varnished)
      (available p121)
      (colour p121 mauve)
      (wood p121 walnut)
      (surface-condition p121 smooth)
      (treatment p121 glazed)
      (available p122)
      (wood p122 cherry)
      (surface-condition p122 verysmooth)
      (available p123)
      (colour p123 red)
      (wood p123 mahogany)
      (surface-condition p123 smooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 black)
      (treatment p124 varnished)
      (available p125)
      (colour p125 mauve)
      (surface-condition p125 smooth)
      (available p126)
      (colour p126 natural)
      (surface-condition p126 smooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 natural)
      (wood p127 pine)
      (treatment p127 glazed)
      (available p128)
      (wood p128 mahogany)
      (treatment p128 varnished)
      (available p129)
      (wood p129 mahogany)
      (surface-condition p129 smooth)
      (available p130)
      (wood p130 pine)
      (surface-condition p130 smooth)
      (available p131)
      (colour p131 blue)
      (surface-condition p131 smooth)
      (treatment p131 glazed)
      (available p132)
      (surface-condition p132 smooth)
      (treatment p132 varnished)
      (available p133)
      (colour p133 mauve)
      (wood p133 beech)
      (surface-condition p133 verysmooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 green)
      (surface-condition p134 smooth)
      (available p135)
      (colour p135 white)
      (surface-condition p135 smooth)
      (available p136)
      (wood p136 pine)
      (surface-condition p136 verysmooth)
      (available p137)
      (colour p137 black)
      (wood p137 beech)
      (available p138)
      (colour p138 white)
      (treatment p138 glazed)
      (available p139)
      (colour p139 blue)
      (wood p139 walnut)
      (surface-condition p139 smooth)
      (treatment p139 varnished)
      (available p140)
      (wood p140 oak)
      (surface-condition p140 verysmooth)
      (treatment p140 varnished)
      (available p141)
      (colour p141 blue)
      (wood p141 beech)
      (surface-condition p141 verysmooth)
      (treatment p141 glazed)
      (available p142)
      (wood p142 pine)
      (treatment p142 varnished)
      (available p143)
      (colour p143 mauve)
      (wood p143 pine)
      (surface-condition p143 smooth)
      (treatment p143 varnished)
      (available p144)
      (colour p144 natural)
      (wood p144 beech)
      (surface-condition p144 verysmooth)
      (available p145)
      (colour p145 natural)
      (surface-condition p145 verysmooth)
      (available p146)
      (wood p146 cherry)
      (surface-condition p146 verysmooth)
      (available p147)
      (colour p147 white)
      (wood p147 teak)
      (available p148)
      (wood p148 teak)
      (surface-condition p148 smooth)
      (treatment p148 glazed)
      (available p149)
      (colour p149 red)
      (surface-condition p149 smooth)
      (available p150)
      (colour p150 mauve)
      (wood p150 cherry)
      (surface-condition p150 smooth)
      (available p151)
      (colour p151 green)
      (surface-condition p151 verysmooth)
      (available p152)
      (surface-condition p152 smooth)
      (treatment p152 glazed)
      (available p153)
      (colour p153 mauve)
      (wood p153 oak)
      (available p154)
      (wood p154 oak)
      (surface-condition p154 smooth)
      (available p155)
      (wood p155 beech)
      (treatment p155 varnished)
      (available p156)
      (colour p156 black)
      (surface-condition p156 verysmooth)
      (treatment p156 glazed)
      (available p157)
      (colour p157 mauve)
      (surface-condition p157 verysmooth)
      (treatment p157 varnished)
      (available p158)
      (colour p158 mauve)
      (surface-condition p158 smooth)
      (treatment p158 varnished)
      (available p159)
      (colour p159 black)
      (wood p159 walnut)
      (treatment p159 varnished)
      (available p160)
      (surface-condition p160 verysmooth)
      (treatment p160 glazed)
      (available p161)
      (colour p161 natural)
      (surface-condition p161 smooth)
      (treatment p161 glazed)
      (available p162)
      (colour p162 mauve)
      (surface-condition p162 verysmooth)
      (treatment p162 varnished)
      (available p163)
      (colour p163 white)
      (surface-condition p163 verysmooth)
      (treatment p163 varnished)
      (available p164)
      (colour p164 mauve)
      (treatment p164 glazed)
      (available p165)
      (wood p165 mahogany)
      (treatment p165 glazed)
      (available p166)
      (colour p166 blue)
      (wood p166 cherry)
      (available p167)
      (colour p167 mauve)
      (surface-condition p167 smooth)
      (treatment p167 varnished)
      (available p168)
      (colour p168 mauve)
      (wood p168 pine)
      (available p169)
      (colour p169 black)
      (treatment p169 varnished)
      (available p170)
      (colour p170 black)
      (wood p170 oak)
      (surface-condition p170 verysmooth)
      (treatment p170 varnished)
      (available p171)
      (surface-condition p171 smooth)
      (treatment p171 glazed)
      (available p172)
      (colour p172 red)
      (surface-condition p172 smooth)
      (available p173)
      (colour p173 red)
      (wood p173 beech)
      (surface-condition p173 smooth)
      (treatment p173 glazed)
      (available p174)
      (colour p174 white)
      (treatment p174 varnished)
      (available p175)
      (wood p175 cherry)
      (treatment p175 varnished)
      (available p176)
      (surface-condition p176 verysmooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 natural)
      (wood p177 cherry)
      (surface-condition p177 smooth)
      (treatment p177 varnished)
      (available p178)
      (colour p178 blue)
      (wood p178 oak)
      (surface-condition p178 verysmooth)
      (available p179)
      (wood p179 teak)
      (surface-condition p179 verysmooth)
      (available p180)
      (surface-condition p180 verysmooth)
      (treatment p180 varnished)
      (available p181)
      (colour p181 blue)
      (wood p181 walnut)
      (surface-condition p181 verysmooth)
      (available p182)
      (colour p182 natural)
      (wood p182 beech)
      (surface-condition p182 verysmooth)
      (treatment p182 glazed)
      (available p183)
      (surface-condition p183 verysmooth)
      (treatment p183 varnished)
      (available p184)
      (colour p184 mauve)
      (surface-condition p184 smooth)
      (treatment p184 glazed)
      (available p185)
      (colour p185 white)
      (wood p185 teak)
      (surface-condition p185 smooth)
      (treatment p185 glazed)
      (available p186)
      (colour p186 green)
      (treatment p186 glazed)
      (available p187)
      (colour p187 white)
      (treatment p187 varnished)
      (available p188)
      (wood p188 cherry)
      (treatment p188 varnished)
      (available p189)
      (colour p189 blue)
      (wood p189 walnut)
      (surface-condition p189 verysmooth)
      (treatment p189 glazed)
      (available p190)
      (colour p190 mauve)
      (wood p190 teak)
      (available p191)
      (colour p191 green)
      (wood p191 pine)
      (available p192)
      (colour p192 mauve)
      (wood p192 cherry)
      (surface-condition p192 verysmooth)
      (treatment p192 varnished)
      (available p193)
      (colour p193 green)
      (treatment p193 varnished)
      (available p194)
      (colour p194 natural)
      (wood p194 oak)
      (surface-condition p194 smooth)
      (treatment p194 varnished)
      (available p195)
      (colour p195 green)
      (wood p195 beech)
      (treatment p195 varnished)
      (available p196)
      (wood p196 pine)
      (surface-condition p196 verysmooth)
      (available p197)
      (colour p197 black)
      (wood p197 cherry)
      (available p198)
      (wood p198 cherry)
      (treatment p198 glazed)
      (available p199)
      (wood p199 pine)
      (treatment p199 varnished)
      (available p200)
      (colour p200 black)
      (treatment p200 glazed)
      (available p201)
      (colour p201 red)
      (wood p201 oak)
      (surface-condition p201 smooth)
      (available p202)
      (colour p202 natural)
      (wood p202 mahogany)
      (available p203)
      (colour p203 blue)
      (surface-condition p203 smooth)
      (treatment p203 glazed)
      (available p204)
      (wood p204 cherry)
      (treatment p204 varnished)
      (available p205)
      (colour p205 blue)
      (surface-condition p205 verysmooth)
      (available p206)
      (colour p206 natural)
      (surface-condition p206 verysmooth)
      (available p207)
      (colour p207 black)
      (wood p207 beech)
      (surface-condition p207 smooth)
      (available p208)
      (colour p208 green)
      (treatment p208 glazed)
      (available p209)
      (wood p209 teak)
      (surface-condition p209 smooth)
      (available p210)
      (colour p210 blue)
      (treatment p210 glazed)
      (available p211)
      (wood p211 mahogany)
      (treatment p211 glazed)
      (available p212)
      (colour p212 red)
      (wood p212 walnut)
      (treatment p212 glazed)
      (available p213)
      (colour p213 white)
      (wood p213 beech)
      (available p214)
      (surface-condition p214 smooth)
      (treatment p214 varnished)
      (available p215)
      (colour p215 green)
      (wood p215 pine)
      (treatment p215 glazed)
      (available p216)
      (colour p216 black)
      (surface-condition p216 verysmooth)
      (available p217)
      (colour p217 green)
      (surface-condition p217 smooth)
      (available p218)
      (colour p218 green)
      (wood p218 beech)
      (available p219)
      (wood p219 pine)
      (surface-condition p219 verysmooth)
      (available p220)
      (colour p220 green)
      (wood p220 oak)
      (surface-condition p220 verysmooth)
      (treatment p220 glazed)
      (available p221)
      (colour p221 blue)
      (wood p221 oak)
      (treatment p221 varnished)
      (available p222)
      (colour p222 green)
      (wood p222 teak)
      (surface-condition p222 verysmooth)
      (treatment p222 glazed)
      (available p223)
      (colour p223 white)
      (wood p223 mahogany)
      (surface-condition p223 smooth)
      (treatment p223 varnished)
    )
  )
  
)
