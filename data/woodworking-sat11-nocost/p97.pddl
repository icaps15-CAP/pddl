; woodworking task with 260 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 99458

(define (problem wood-prob-sat-97)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green blue red mauve white black - acolour
    beech walnut cherry oak mahogany pine teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 - part
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
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
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
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 blue)
    (wood p9 mahogany)
    (surface-condition p9 smooth)
    (treatment p9 glazed)
    (goalsize p9 small)
    
    
    
    
    (available p10)
    (colour p10 green)
    (wood p10 cherry)
    (surface-condition p10 verysmooth)
    (treatment p10 varnished)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 blue)
    (wood p14 teak)
    (surface-condition p14 rough)
    (treatment p14 varnished)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (available p23)
    (colour p23 white)
    (wood p23 cherry)
    (surface-condition p23 rough)
    (treatment p23 glazed)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 white)
    (wood p35 cherry)
    (surface-condition p35 smooth)
    (treatment p35 varnished)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 green)
    (wood p38 mahogany)
    (surface-condition p38 smooth)
    (treatment p38 varnished)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (available p41)
    (colour p41 red)
    (wood p41 pine)
    (surface-condition p41 verysmooth)
    (treatment p41 varnished)
    (goalsize p41 large)
    
    
    
    
    (available p42)
    (colour p42 red)
    (wood p42 pine)
    (surface-condition p42 rough)
    (treatment p42 colourfragments)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (available p56)
    (colour p56 white)
    (wood p56 cherry)
    (surface-condition p56 smooth)
    (treatment p56 glazed)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (available p65)
    (colour p65 red)
    (wood p65 mahogany)
    (surface-condition p65 rough)
    (treatment p65 glazed)
    (goalsize p65 medium)
    
    
    
    
    (available p66)
    (colour p66 mauve)
    (wood p66 beech)
    (surface-condition p66 smooth)
    (treatment p66 colourfragments)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (available p79)
    (colour p79 white)
    (wood p79 mahogany)
    (surface-condition p79 smooth)
    (treatment p79 colourfragments)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (available p84)
    (colour p84 white)
    (wood p84 beech)
    (surface-condition p84 smooth)
    (treatment p84 glazed)
    (goalsize p84 large)
    
    
    
    
    (available p85)
    (colour p85 red)
    (wood p85 cherry)
    (surface-condition p85 verysmooth)
    (treatment p85 varnished)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (available p94)
    (colour p94 natural)
    (wood p94 walnut)
    (surface-condition p94 smooth)
    (treatment p94 colourfragments)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (available p97)
    (colour p97 black)
    (wood p97 walnut)
    (surface-condition p97 verysmooth)
    (treatment p97 varnished)
    (goalsize p97 small)
    
    
    
    
    (available p98)
    (colour p98 red)
    (wood p98 beech)
    (surface-condition p98 rough)
    (treatment p98 colourfragments)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (available p100)
    (colour p100 green)
    (wood p100 oak)
    (surface-condition p100 smooth)
    (treatment p100 colourfragments)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (available p112)
    (colour p112 white)
    (wood p112 teak)
    (surface-condition p112 rough)
    (treatment p112 glazed)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (available p127)
    (colour p127 white)
    (wood p127 mahogany)
    (surface-condition p127 verysmooth)
    (treatment p127 colourfragments)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (available p129)
    (colour p129 white)
    (wood p129 walnut)
    (surface-condition p129 smooth)
    (treatment p129 varnished)
    (goalsize p129 small)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (available p135)
    (colour p135 mauve)
    (wood p135 pine)
    (surface-condition p135 rough)
    (treatment p135 glazed)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (available p140)
    (colour p140 black)
    (wood p140 pine)
    (surface-condition p140 smooth)
    (treatment p140 varnished)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (available p142)
    (colour p142 natural)
    (wood p142 oak)
    (surface-condition p142 smooth)
    (treatment p142 varnished)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (available p158)
    (colour p158 blue)
    (wood p158 walnut)
    (surface-condition p158 smooth)
    (treatment p158 varnished)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (available p161)
    (colour p161 white)
    (wood p161 pine)
    (surface-condition p161 smooth)
    (treatment p161 colourfragments)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (available p163)
    (colour p163 mauve)
    (wood p163 pine)
    (surface-condition p163 verysmooth)
    (treatment p163 colourfragments)
    (goalsize p163 large)
    
    
    
    
    (available p164)
    (colour p164 mauve)
    (wood p164 pine)
    (surface-condition p164 verysmooth)
    (treatment p164 glazed)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (available p168)
    (colour p168 black)
    (wood p168 pine)
    (surface-condition p168 verysmooth)
    (treatment p168 varnished)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 small)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (available p174)
    (colour p174 black)
    (wood p174 mahogany)
    (surface-condition p174 rough)
    (treatment p174 glazed)
    (goalsize p174 small)
    
    
    
    
    (available p175)
    (colour p175 natural)
    (wood p175 mahogany)
    (surface-condition p175 verysmooth)
    (treatment p175 varnished)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 small)
    
    
    
    
    (available p177)
    (colour p177 blue)
    (wood p177 mahogany)
    (surface-condition p177 verysmooth)
    (treatment p177 varnished)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 large)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 medium)
    
    
    
    
    (available p189)
    (colour p189 natural)
    (wood p189 mahogany)
    (surface-condition p189 smooth)
    (treatment p189 colourfragments)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (available p195)
    (colour p195 blue)
    (wood p195 teak)
    (surface-condition p195 rough)
    (treatment p195 glazed)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 medium)
    
    
    
    
    (available p197)
    (colour p197 mauve)
    (wood p197 beech)
    (surface-condition p197 smooth)
    (treatment p197 colourfragments)
    (goalsize p197 small)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 medium)
    
    
    
    
    (unused p202)
    (goalsize p202 small)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (available p208)
    (colour p208 natural)
    (wood p208 walnut)
    (surface-condition p208 verysmooth)
    (treatment p208 glazed)
    (goalsize p208 medium)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (unused p211)
    (goalsize p211 medium)
    
    
    
    
    (available p212)
    (colour p212 mauve)
    (wood p212 mahogany)
    (surface-condition p212 rough)
    (treatment p212 glazed)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 medium)
    
    
    
    
    (unused p214)
    (goalsize p214 large)
    
    
    
    
    (unused p215)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 medium)
    
    
    
    
    (unused p219)
    (goalsize p219 small)
    
    
    
    
    (unused p220)
    (goalsize p220 small)
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 large)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (unused p224)
    (goalsize p224 large)
    
    
    
    
    (unused p225)
    (goalsize p225 small)
    
    
    
    
    (available p226)
    (colour p226 green)
    (wood p226 teak)
    (surface-condition p226 smooth)
    (treatment p226 colourfragments)
    (goalsize p226 medium)
    
    
    
    
    (unused p227)
    (goalsize p227 large)
    
    
    
    
    (unused p228)
    (goalsize p228 large)
    
    
    
    
    (unused p229)
    (goalsize p229 small)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (unused p232)
    (goalsize p232 large)
    
    
    
    
    (available p233)
    (colour p233 natural)
    (wood p233 beech)
    (surface-condition p233 smooth)
    (treatment p233 varnished)
    (goalsize p233 large)
    
    
    
    
    (unused p234)
    (goalsize p234 large)
    
    
    
    
    (unused p235)
    (goalsize p235 medium)
    
    
    
    
    (unused p236)
    (goalsize p236 large)
    
    
    
    
    (available p237)
    (colour p237 black)
    (wood p237 teak)
    (surface-condition p237 rough)
    (treatment p237 varnished)
    (goalsize p237 medium)
    
    
    
    
    (unused p238)
    (goalsize p238 large)
    
    
    
    
    (unused p239)
    (goalsize p239 large)
    
    
    
    
    (unused p240)
    (goalsize p240 large)
    
    
    
    
    (unused p241)
    (goalsize p241 medium)
    
    
    
    
    (available p242)
    (colour p242 red)
    (wood p242 cherry)
    (surface-condition p242 smooth)
    (treatment p242 varnished)
    (goalsize p242 medium)
    
    
    
    
    (unused p243)
    (goalsize p243 small)
    
    
    
    
    (unused p244)
    (goalsize p244 small)
    
    
    
    
    (unused p245)
    (goalsize p245 small)
    
    
    
    
    (unused p246)
    (goalsize p246 small)
    
    
    
    
    (available p247)
    (colour p247 blue)
    (wood p247 mahogany)
    (surface-condition p247 smooth)
    (treatment p247 varnished)
    (goalsize p247 medium)
    
    
    
    
    (unused p248)
    (goalsize p248 small)
    
    
    
    
    (unused p249)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 small)
    
    
    
    
    (unused p251)
    (goalsize p251 small)
    
    
    
    
    (unused p252)
    (goalsize p252 large)
    
    
    
    
    (unused p253)
    (goalsize p253 small)
    
    
    
    
    (unused p254)
    (goalsize p254 small)
    
    
    
    
    (unused p255)
    (goalsize p255 medium)
    
    
    
    
    (unused p256)
    (goalsize p256 large)
    
    
    
    
    (unused p257)
    (goalsize p257 small)
    
    
    
    
    (unused p258)
    (goalsize p258 medium)
    
    
    
    
    (available p259)
    (colour p259 white)
    (wood p259 pine)
    (surface-condition p259 rough)
    (treatment p259 colourfragments)
    (goalsize p259 medium)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s6)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s5)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s11)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s1)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s6)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s4)
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
    (boardsize b17 s9)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s9)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 oak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s8)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s9)
    (wood b22 oak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s7)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s10)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s7)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s6)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s7)
    (wood b28 oak)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s8)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s10)
    (wood b30 pine)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s8)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s10)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s11)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s10)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s8)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s9)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s10)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s9)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s7)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s9)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s9)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s6)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s7)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s6)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s4)
    (wood b48 walnut)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s9)
    (wood b49 teak)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s8)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s9)
    (wood b51 teak)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s9)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s8)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s7)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s8)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s9)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s3)
    (wood b57 teak)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s8)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s8)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s8)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s6)
    (wood b61 beech)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s10)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s8)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s8)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s10)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s10)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s5)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (surface-condition p0 smooth)
      (available p1)
      (wood p1 cherry)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 white)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 teak)
      (treatment p3 glazed)
      (available p4)
      (wood p4 oak)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 white)
      (wood p5 beech)
      (treatment p5 glazed)
      (available p6)
      (wood p6 beech)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 red)
      (wood p7 oak)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 blue)
      (wood p8 beech)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 natural)
      (wood p9 mahogany)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 red)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 natural)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 natural)
      (wood p13 cherry)
      (surface-condition p13 verysmooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 mauve)
      (treatment p14 glazed)
      (available p15)
      (colour p15 blue)
      (wood p15 teak)
      (available p16)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 black)
      (wood p17 mahogany)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 white)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 blue)
      (treatment p19 varnished)
      (available p20)
      (wood p20 oak)
      (treatment p20 varnished)
      (available p21)
      (colour p21 mauve)
      (wood p21 teak)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 black)
      (wood p22 oak)
      (available p23)
      (colour p23 green)
      (wood p23 cherry)
      (available p24)
      (colour p24 black)
      (wood p24 pine)
      (treatment p24 glazed)
      (available p25)
      (colour p25 black)
      (surface-condition p25 smooth)
      (available p26)
      (wood p26 beech)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (wood p28 teak)
      (treatment p28 varnished)
      (available p29)
      (colour p29 mauve)
      (wood p29 pine)
      (available p30)
      (colour p30 mauve)
      (wood p30 walnut)
      (available p31)
      (colour p31 natural)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 blue)
      (treatment p32 varnished)
      (available p33)
      (colour p33 mauve)
      (treatment p33 glazed)
      (available p34)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (wood p35 cherry)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 blue)
      (wood p36 walnut)
      (available p37)
      (colour p37 blue)
      (wood p37 mahogany)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 mauve)
      (wood p38 mahogany)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (wood p39 teak)
      (treatment p39 varnished)
      (available p40)
      (wood p40 mahogany)
      (surface-condition p40 verysmooth)
      (available p41)
      (wood p41 pine)
      (treatment p41 glazed)
      (available p42)
      (colour p42 black)
      (treatment p42 glazed)
      (available p43)
      (colour p43 green)
      (surface-condition p43 smooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 mauve)
      (surface-condition p44 verysmooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 green)
      (wood p45 beech)
      (treatment p45 glazed)
      (available p46)
      (colour p46 mauve)
      (surface-condition p46 verysmooth)
      (treatment p46 glazed)
      (available p47)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 mauve)
      (wood p48 beech)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 natural)
      (wood p49 mahogany)
      (available p50)
      (colour p50 green)
      (treatment p50 varnished)
      (available p51)
      (wood p51 oak)
      (treatment p51 varnished)
      (available p52)
      (wood p52 teak)
      (treatment p52 glazed)
      (available p53)
      (colour p53 natural)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 blue)
      (wood p54 walnut)
      (available p55)
      (colour p55 white)
      (surface-condition p55 verysmooth)
      (available p56)
      (colour p56 natural)
      (wood p56 cherry)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 black)
      (surface-condition p57 verysmooth)
      (available p58)
      (wood p58 walnut)
      (treatment p58 glazed)
      (available p59)
      (wood p59 beech)
      (treatment p59 varnished)
      (available p60)
      (colour p60 black)
      (surface-condition p60 smooth)
      (available p61)
      (colour p61 mauve)
      (wood p61 cherry)
      (available p62)
      (colour p62 mauve)
      (treatment p62 varnished)
      (available p63)
      (wood p63 oak)
      (surface-condition p63 verysmooth)
      (available p64)
      (colour p64 black)
      (wood p64 pine)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 black)
      (wood p65 mahogany)
      (available p66)
      (colour p66 black)
      (treatment p66 glazed)
      (available p67)
      (colour p67 mauve)
      (wood p67 walnut)
      (treatment p67 glazed)
      (available p68)
      (colour p68 white)
      (wood p68 walnut)
      (surface-condition p68 verysmooth)
      (treatment p68 varnished)
      (available p69)
      (wood p69 pine)
      (treatment p69 varnished)
      (available p70)
      (wood p70 oak)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (wood p71 oak)
      (surface-condition p71 smooth)
      (available p72)
      (colour p72 white)
      (wood p72 oak)
      (surface-condition p72 verysmooth)
      (treatment p72 glazed)
      (available p73)
      (colour p73 mauve)
      (wood p73 pine)
      (available p74)
      (colour p74 natural)
      (wood p74 walnut)
      (treatment p74 varnished)
      (available p75)
      (wood p75 teak)
      (treatment p75 glazed)
      (available p76)
      (wood p76 pine)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 red)
      (wood p77 cherry)
      (available p78)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 black)
      (wood p79 mahogany)
      (available p80)
      (surface-condition p80 smooth)
      (treatment p80 glazed)
      (available p81)
      (colour p81 green)
      (wood p81 pine)
      (surface-condition p81 verysmooth)
      (available p82)
      (wood p82 cherry)
      (surface-condition p82 verysmooth)
      (available p83)
      (colour p83 red)
      (treatment p83 glazed)
      (available p84)
      (colour p84 blue)
      (wood p84 beech)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 green)
      (wood p86 beech)
      (surface-condition p86 smooth)
      (treatment p86 glazed)
      (available p87)
      (wood p87 beech)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 blue)
      (wood p88 oak)
      (available p89)
      (surface-condition p89 verysmooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 mauve)
      (treatment p90 glazed)
      (available p91)
      (wood p91 beech)
      (treatment p91 varnished)
      (available p92)
      (colour p92 white)
      (wood p92 walnut)
      (treatment p92 varnished)
      (available p93)
      (colour p93 natural)
      (wood p93 mahogany)
      (surface-condition p93 smooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 red)
      (surface-condition p94 smooth)
      (available p95)
      (colour p95 mauve)
      (surface-condition p95 verysmooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 green)
      (surface-condition p96 verysmooth)
      (available p97)
      (colour p97 natural)
      (treatment p97 varnished)
      (available p98)
      (colour p98 black)
      (surface-condition p98 smooth)
      (available p99)
      (surface-condition p99 verysmooth)
      (treatment p99 glazed)
      (available p100)
      (colour p100 white)
      (wood p100 oak)
      (surface-condition p100 verysmooth)
      (treatment p100 varnished)
      (available p101)
      (wood p101 teak)
      (surface-condition p101 verysmooth)
      (available p102)
      (wood p102 oak)
      (surface-condition p102 verysmooth)
      (available p103)
      (colour p103 natural)
      (surface-condition p103 smooth)
      (available p104)
      (colour p104 red)
      (wood p104 walnut)
      (available p105)
      (colour p105 red)
      (wood p105 beech)
      (surface-condition p105 smooth)
      (treatment p105 varnished)
      (available p106)
      (wood p106 beech)
      (surface-condition p106 verysmooth)
      (available p107)
      (colour p107 white)
      (wood p107 walnut)
      (surface-condition p107 verysmooth)
      (available p108)
      (wood p108 cherry)
      (treatment p108 varnished)
      (available p109)
      (colour p109 natural)
      (surface-condition p109 verysmooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 mauve)
      (wood p110 beech)
      (surface-condition p110 verysmooth)
      (treatment p110 varnished)
      (available p111)
      (colour p111 black)
      (wood p111 beech)
      (surface-condition p111 verysmooth)
      (treatment p111 glazed)
      (available p112)
      (colour p112 red)
      (treatment p112 varnished)
      (available p113)
      (colour p113 natural)
      (treatment p113 glazed)
      (available p114)
      (wood p114 oak)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (colour p115 red)
      (wood p115 oak)
      (available p116)
      (colour p116 black)
      (wood p116 cherry)
      (available p117)
      (colour p117 blue)
      (surface-condition p117 verysmooth)
      (available p118)
      (colour p118 blue)
      (treatment p118 varnished)
      (available p119)
      (colour p119 blue)
      (wood p119 pine)
      (surface-condition p119 smooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 mauve)
      (wood p120 pine)
      (surface-condition p120 verysmooth)
      (treatment p120 varnished)
      (available p121)
      (surface-condition p121 verysmooth)
      (treatment p121 varnished)
      (available p122)
      (wood p122 teak)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (colour p123 mauve)
      (wood p123 pine)
      (surface-condition p123 smooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 natural)
      (surface-condition p124 verysmooth)
      (available p125)
      (colour p125 green)
      (wood p125 oak)
      (surface-condition p125 verysmooth)
      (treatment p125 varnished)
      (available p126)
      (wood p126 teak)
      (surface-condition p126 verysmooth)
      (available p127)
      (wood p127 mahogany)
      (surface-condition p127 verysmooth)
      (treatment p127 varnished)
      (available p128)
      (colour p128 blue)
      (treatment p128 varnished)
      (available p129)
      (colour p129 green)
      (surface-condition p129 smooth)
      (treatment p129 glazed)
      (available p130)
      (wood p130 cherry)
      (treatment p130 glazed)
      (available p131)
      (colour p131 black)
      (surface-condition p131 verysmooth)
      (available p132)
      (colour p132 mauve)
      (surface-condition p132 smooth)
      (treatment p132 glazed)
      (available p133)
      (surface-condition p133 smooth)
      (treatment p133 varnished)
      (available p134)
      (colour p134 black)
      (wood p134 cherry)
      (surface-condition p134 verysmooth)
      (treatment p134 varnished)
      (available p135)
      (colour p135 natural)
      (wood p135 pine)
      (surface-condition p135 smooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 natural)
      (wood p136 oak)
      (surface-condition p136 verysmooth)
      (treatment p136 varnished)
      (available p137)
      (colour p137 black)
      (wood p137 pine)
      (surface-condition p137 verysmooth)
      (available p138)
      (colour p138 mauve)
      (wood p138 mahogany)
      (available p139)
      (colour p139 blue)
      (wood p139 mahogany)
      (available p140)
      (colour p140 white)
      (wood p140 pine)
      (surface-condition p140 verysmooth)
      (treatment p140 glazed)
      (available p141)
      (colour p141 red)
      (wood p141 beech)
      (treatment p141 glazed)
      (available p142)
      (wood p142 oak)
      (surface-condition p142 verysmooth)
      (available p143)
      (wood p143 oak)
      (treatment p143 glazed)
      (available p144)
      (wood p144 walnut)
      (surface-condition p144 verysmooth)
      (available p145)
      (colour p145 natural)
      (surface-condition p145 smooth)
      (available p146)
      (colour p146 natural)
      (wood p146 cherry)
      (available p147)
      (wood p147 oak)
      (surface-condition p147 verysmooth)
      (available p148)
      (wood p148 teak)
      (treatment p148 glazed)
      (available p149)
      (wood p149 oak)
      (treatment p149 glazed)
      (available p150)
      (colour p150 natural)
      (wood p150 teak)
      (available p151)
      (colour p151 blue)
      (wood p151 oak)
      (surface-condition p151 smooth)
      (treatment p151 glazed)
      (available p152)
      (colour p152 black)
      (wood p152 teak)
      (surface-condition p152 verysmooth)
      (treatment p152 glazed)
      (available p153)
      (colour p153 black)
      (surface-condition p153 smooth)
      (available p154)
      (colour p154 black)
      (wood p154 beech)
      (surface-condition p154 smooth)
      (treatment p154 glazed)
      (available p155)
      (colour p155 green)
      (treatment p155 varnished)
      (available p156)
      (colour p156 blue)
      (treatment p156 glazed)
      (available p157)
      (colour p157 red)
      (surface-condition p157 verysmooth)
      (available p158)
      (colour p158 mauve)
      (wood p158 walnut)
      (surface-condition p158 smooth)
      (treatment p158 varnished)
      (available p159)
      (colour p159 red)
      (wood p159 cherry)
      (surface-condition p159 smooth)
      (treatment p159 varnished)
      (available p160)
      (colour p160 red)
      (wood p160 teak)
      (surface-condition p160 smooth)
      (treatment p160 varnished)
      (available p161)
      (surface-condition p161 smooth)
      (treatment p161 varnished)
      (available p162)
      (surface-condition p162 smooth)
      (treatment p162 varnished)
      (available p163)
      (colour p163 black)
      (wood p163 pine)
      (surface-condition p163 verysmooth)
      (available p164)
      (wood p164 pine)
      (treatment p164 varnished)
      (available p165)
      (colour p165 red)
      (wood p165 cherry)
      (treatment p165 glazed)
      (available p166)
      (colour p166 red)
      (wood p166 walnut)
      (surface-condition p166 verysmooth)
      (available p167)
      (surface-condition p167 verysmooth)
      (treatment p167 glazed)
      (available p168)
      (wood p168 pine)
      (treatment p168 glazed)
      (available p169)
      (wood p169 teak)
      (surface-condition p169 verysmooth)
      (treatment p169 glazed)
      (available p170)
      (wood p170 oak)
      (treatment p170 glazed)
      (available p171)
      (wood p171 beech)
      (surface-condition p171 verysmooth)
      (treatment p171 glazed)
      (available p172)
      (wood p172 oak)
      (treatment p172 varnished)
      (available p173)
      (wood p173 walnut)
      (treatment p173 varnished)
      (available p174)
      (colour p174 blue)
      (wood p174 mahogany)
      (surface-condition p174 smooth)
      (treatment p174 glazed)
      (available p175)
      (colour p175 black)
      (treatment p175 glazed)
      (available p176)
      (colour p176 red)
      (wood p176 walnut)
      (available p177)
      (colour p177 black)
      (wood p177 mahogany)
      (surface-condition p177 smooth)
      (treatment p177 varnished)
      (available p178)
      (colour p178 white)
      (surface-condition p178 verysmooth)
      (treatment p178 glazed)
      (available p179)
      (colour p179 natural)
      (wood p179 cherry)
      (available p180)
      (colour p180 green)
      (wood p180 beech)
      (surface-condition p180 verysmooth)
      (treatment p180 varnished)
      (available p181)
      (colour p181 natural)
      (wood p181 teak)
      (available p182)
      (colour p182 blue)
      (wood p182 walnut)
      (available p183)
      (wood p183 walnut)
      (treatment p183 glazed)
      (available p184)
      (colour p184 green)
      (wood p184 pine)
      (available p185)
      (wood p185 cherry)
      (surface-condition p185 smooth)
      (available p186)
      (surface-condition p186 smooth)
      (treatment p186 varnished)
      (available p187)
      (colour p187 red)
      (treatment p187 glazed)
      (available p188)
      (wood p188 beech)
      (surface-condition p188 verysmooth)
      (available p189)
      (wood p189 mahogany)
      (treatment p189 varnished)
      (available p190)
      (colour p190 red)
      (wood p190 teak)
      (surface-condition p190 smooth)
      (treatment p190 varnished)
      (available p191)
      (colour p191 natural)
      (wood p191 cherry)
      (surface-condition p191 smooth)
      (treatment p191 varnished)
      (available p192)
      (wood p192 teak)
      (treatment p192 varnished)
      (available p193)
      (colour p193 red)
      (wood p193 cherry)
      (surface-condition p193 smooth)
      (treatment p193 varnished)
      (available p194)
      (colour p194 red)
      (wood p194 walnut)
      (surface-condition p194 verysmooth)
      (treatment p194 glazed)
      (available p195)
      (surface-condition p195 verysmooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 blue)
      (treatment p196 varnished)
      (available p197)
      (colour p197 natural)
      (wood p197 beech)
      (surface-condition p197 verysmooth)
      (treatment p197 varnished)
      (available p198)
      (wood p198 oak)
      (surface-condition p198 smooth)
      (available p199)
      (wood p199 beech)
      (surface-condition p199 smooth)
      (available p200)
      (colour p200 red)
      (wood p200 mahogany)
      (available p201)
      (colour p201 blue)
      (surface-condition p201 smooth)
      (available p202)
      (colour p202 blue)
      (wood p202 mahogany)
      (treatment p202 glazed)
      (available p203)
      (colour p203 blue)
      (surface-condition p203 smooth)
      (available p204)
      (colour p204 mauve)
      (treatment p204 glazed)
      (available p205)
      (surface-condition p205 smooth)
      (treatment p205 glazed)
      (available p206)
      (colour p206 green)
      (treatment p206 varnished)
      (available p207)
      (wood p207 cherry)
      (surface-condition p207 verysmooth)
      (available p208)
      (colour p208 black)
      (wood p208 walnut)
      (surface-condition p208 verysmooth)
      (treatment p208 varnished)
      (available p209)
      (colour p209 black)
      (treatment p209 varnished)
      (available p210)
      (colour p210 natural)
      (wood p210 pine)
      (surface-condition p210 verysmooth)
      (treatment p210 glazed)
      (available p211)
      (colour p211 white)
      (surface-condition p211 smooth)
      (treatment p211 varnished)
      (available p212)
      (colour p212 green)
      (wood p212 mahogany)
      (surface-condition p212 smooth)
      (treatment p212 varnished)
      (available p213)
      (wood p213 walnut)
      (surface-condition p213 smooth)
      (available p214)
      (wood p214 pine)
      (treatment p214 varnished)
      (available p215)
      (wood p215 pine)
      (surface-condition p215 verysmooth)
      (available p216)
      (colour p216 mauve)
      (surface-condition p216 smooth)
      (treatment p216 varnished)
      (available p217)
      (colour p217 blue)
      (treatment p217 glazed)
      (available p218)
      (wood p218 walnut)
      (surface-condition p218 verysmooth)
      (available p219)
      (colour p219 green)
      (wood p219 mahogany)
      (available p220)
      (colour p220 red)
      (treatment p220 varnished)
      (available p221)
      (colour p221 black)
      (wood p221 walnut)
      (surface-condition p221 smooth)
      (available p222)
      (colour p222 white)
      (wood p222 oak)
      (surface-condition p222 smooth)
      (treatment p222 glazed)
      (available p223)
      (colour p223 natural)
      (wood p223 pine)
      (surface-condition p223 smooth)
      (treatment p223 varnished)
      (available p224)
      (surface-condition p224 verysmooth)
      (treatment p224 varnished)
      (available p225)
      (wood p225 cherry)
      (surface-condition p225 smooth)
      (treatment p225 varnished)
      (available p226)
      (colour p226 mauve)
      (wood p226 teak)
      (available p227)
      (wood p227 beech)
      (treatment p227 glazed)
      (available p228)
      (colour p228 white)
      (wood p228 teak)
      (surface-condition p228 smooth)
      (treatment p228 varnished)
      (available p229)
      (colour p229 white)
      (wood p229 cherry)
      (surface-condition p229 smooth)
      (treatment p229 varnished)
      (available p230)
      (colour p230 mauve)
      (wood p230 teak)
      (surface-condition p230 smooth)
      (available p231)
      (wood p231 cherry)
      (surface-condition p231 verysmooth)
      (treatment p231 varnished)
      (available p232)
      (colour p232 blue)
      (wood p232 walnut)
      (surface-condition p232 smooth)
      (treatment p232 varnished)
      (available p233)
      (colour p233 mauve)
      (wood p233 beech)
      (surface-condition p233 verysmooth)
      (treatment p233 glazed)
      (available p234)
      (colour p234 mauve)
      (wood p234 beech)
      (surface-condition p234 smooth)
      (treatment p234 glazed)
      (available p235)
      (wood p235 cherry)
      (treatment p235 glazed)
      (available p236)
      (colour p236 white)
      (wood p236 teak)
      (surface-condition p236 verysmooth)
      (treatment p236 varnished)
      (available p237)
      (surface-condition p237 verysmooth)
      (treatment p237 varnished)
      (available p238)
      (colour p238 green)
      (wood p238 pine)
      (surface-condition p238 verysmooth)
      (treatment p238 glazed)
      (available p239)
      (colour p239 mauve)
      (wood p239 oak)
      (available p240)
      (colour p240 natural)
      (surface-condition p240 verysmooth)
      (available p241)
      (surface-condition p241 smooth)
      (treatment p241 glazed)
      (available p242)
      (wood p242 cherry)
      (surface-condition p242 verysmooth)
      (treatment p242 varnished)
      (available p243)
      (colour p243 red)
      (surface-condition p243 verysmooth)
      (available p244)
      (colour p244 red)
      (wood p244 oak)
      (surface-condition p244 verysmooth)
      (treatment p244 varnished)
      (available p245)
      (colour p245 red)
      (wood p245 walnut)
      (surface-condition p245 verysmooth)
      (treatment p245 varnished)
      (available p246)
      (wood p246 mahogany)
      (surface-condition p246 verysmooth)
      (treatment p246 glazed)
      (available p247)
      (colour p247 black)
      (wood p247 mahogany)
      (available p248)
      (wood p248 walnut)
      (surface-condition p248 smooth)
      (available p249)
      (colour p249 red)
      (wood p249 walnut)
      (surface-condition p249 smooth)
      (treatment p249 glazed)
      (available p250)
      (surface-condition p250 verysmooth)
      (treatment p250 varnished)
      (available p251)
      (surface-condition p251 verysmooth)
      (treatment p251 varnished)
      (available p252)
      (colour p252 blue)
      (wood p252 teak)
      (treatment p252 glazed)
      (available p253)
      (colour p253 black)
      (wood p253 mahogany)
      (available p254)
      (surface-condition p254 smooth)
      (treatment p254 glazed)
      (available p255)
      (colour p255 black)
      (surface-condition p255 smooth)
      (available p256)
      (colour p256 blue)
      (wood p256 cherry)
      (surface-condition p256 verysmooth)
      (treatment p256 varnished)
      (available p257)
      (wood p257 walnut)
      (treatment p257 varnished)
      (available p258)
      (colour p258 red)
      (surface-condition p258 verysmooth)
      (available p259)
      (colour p259 red)
      (surface-condition p259 verysmooth)
    )
  )
  
)
