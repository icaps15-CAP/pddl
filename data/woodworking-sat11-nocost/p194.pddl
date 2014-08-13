; woodworking task with 269 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 134032

(define (problem wood-prob-sat-194)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green white mauve blue black red - acolour
    mahogany beech oak cherry pine walnut teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 b75 b76 b77 b78 b79 b80 b81 b82 b83 b84 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
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
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (available p2)
    (colour p2 black)
    (wood p2 cherry)
    (surface-condition p2 smooth)
    (treatment p2 colourfragments)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 mauve)
    (wood p7 oak)
    (surface-condition p7 rough)
    (treatment p7 colourfragments)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 green)
    (wood p11 walnut)
    (surface-condition p11 verysmooth)
    (treatment p11 varnished)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 green)
    (wood p13 walnut)
    (surface-condition p13 verysmooth)
    (treatment p13 glazed)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 green)
    (wood p14 oak)
    (surface-condition p14 smooth)
    (treatment p14 colourfragments)
    (goalsize p14 small)
    
    
    
    
    (available p15)
    (colour p15 mauve)
    (wood p15 cherry)
    (surface-condition p15 rough)
    (treatment p15 glazed)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 mauve)
    (wood p27 teak)
    (surface-condition p27 smooth)
    (treatment p27 colourfragments)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (available p34)
    (colour p34 green)
    (wood p34 teak)
    (surface-condition p34 rough)
    (treatment p34 colourfragments)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (available p37)
    (colour p37 red)
    (wood p37 beech)
    (surface-condition p37 smooth)
    (treatment p37 varnished)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (available p43)
    (colour p43 black)
    (wood p43 teak)
    (surface-condition p43 verysmooth)
    (treatment p43 colourfragments)
    (goalsize p43 small)
    
    
    
    
    (available p44)
    (colour p44 mauve)
    (wood p44 mahogany)
    (surface-condition p44 verysmooth)
    (treatment p44 colourfragments)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (available p46)
    (colour p46 blue)
    (wood p46 walnut)
    (surface-condition p46 rough)
    (treatment p46 varnished)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (available p55)
    (colour p55 red)
    (wood p55 teak)
    (surface-condition p55 smooth)
    (treatment p55 glazed)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 red)
    (wood p67 oak)
    (surface-condition p67 rough)
    (treatment p67 varnished)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (available p86)
    (colour p86 mauve)
    (wood p86 cherry)
    (surface-condition p86 smooth)
    (treatment p86 colourfragments)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (available p91)
    (colour p91 blue)
    (wood p91 cherry)
    (surface-condition p91 rough)
    (treatment p91 varnished)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (available p97)
    (colour p97 red)
    (wood p97 mahogany)
    (surface-condition p97 verysmooth)
    (treatment p97 varnished)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (available p105)
    (colour p105 red)
    (wood p105 oak)
    (surface-condition p105 rough)
    (treatment p105 colourfragments)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (available p107)
    (colour p107 green)
    (wood p107 pine)
    (surface-condition p107 rough)
    (treatment p107 glazed)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (available p112)
    (colour p112 mauve)
    (wood p112 walnut)
    (surface-condition p112 rough)
    (treatment p112 varnished)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (available p119)
    (colour p119 black)
    (wood p119 mahogany)
    (surface-condition p119 rough)
    (treatment p119 varnished)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (available p125)
    (colour p125 natural)
    (wood p125 walnut)
    (surface-condition p125 rough)
    (treatment p125 glazed)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (available p136)
    (colour p136 red)
    (wood p136 oak)
    (surface-condition p136 rough)
    (treatment p136 glazed)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (available p141)
    (colour p141 mauve)
    (wood p141 walnut)
    (surface-condition p141 smooth)
    (treatment p141 colourfragments)
    (goalsize p141 large)
    
    
    
    
    (available p142)
    (colour p142 natural)
    (wood p142 oak)
    (surface-condition p142 verysmooth)
    (treatment p142 varnished)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 medium)
    
    
    
    
    (available p168)
    (colour p168 natural)
    (wood p168 beech)
    (surface-condition p168 rough)
    (treatment p168 varnished)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 medium)
    
    
    
    
    (available p171)
    (colour p171 black)
    (wood p171 cherry)
    (surface-condition p171 rough)
    (treatment p171 glazed)
    (goalsize p171 small)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (available p173)
    (colour p173 white)
    (wood p173 pine)
    (surface-condition p173 verysmooth)
    (treatment p173 colourfragments)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (available p182)
    (colour p182 white)
    (wood p182 oak)
    (surface-condition p182 smooth)
    (treatment p182 colourfragments)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (available p184)
    (colour p184 mauve)
    (wood p184 teak)
    (surface-condition p184 rough)
    (treatment p184 varnished)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (available p186)
    (colour p186 green)
    (wood p186 beech)
    (surface-condition p186 smooth)
    (treatment p186 colourfragments)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 medium)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 large)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (available p192)
    (colour p192 black)
    (wood p192 oak)
    (surface-condition p192 rough)
    (treatment p192 colourfragments)
    (goalsize p192 medium)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 small)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (available p198)
    (colour p198 natural)
    (wood p198 walnut)
    (surface-condition p198 rough)
    (treatment p198 varnished)
    (goalsize p198 small)
    
    
    
    
    (available p199)
    (colour p199 green)
    (wood p199 oak)
    (surface-condition p199 verysmooth)
    (treatment p199 colourfragments)
    (goalsize p199 medium)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (available p201)
    (colour p201 black)
    (wood p201 pine)
    (surface-condition p201 smooth)
    (treatment p201 colourfragments)
    (goalsize p201 small)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 medium)
    
    
    
    
    (unused p204)
    (goalsize p204 small)
    
    
    
    
    (unused p205)
    (goalsize p205 large)
    
    
    
    
    (unused p206)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 medium)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 medium)
    
    
    
    
    (available p211)
    (colour p211 red)
    (wood p211 pine)
    (surface-condition p211 smooth)
    (treatment p211 colourfragments)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 medium)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 large)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (available p222)
    (colour p222 green)
    (wood p222 beech)
    (surface-condition p222 verysmooth)
    (treatment p222 glazed)
    (goalsize p222 large)
    
    
    
    
    (unused p223)
    (goalsize p223 large)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (available p225)
    (colour p225 natural)
    (wood p225 oak)
    (surface-condition p225 smooth)
    (treatment p225 glazed)
    (goalsize p225 medium)
    
    
    
    
    (unused p226)
    (goalsize p226 large)
    
    
    
    
    (unused p227)
    (goalsize p227 large)
    
    
    
    
    (unused p228)
    (goalsize p228 large)
    
    
    
    
    (unused p229)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 large)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (available p232)
    (colour p232 natural)
    (wood p232 teak)
    (surface-condition p232 verysmooth)
    (treatment p232 glazed)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 large)
    
    
    
    
    (unused p234)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 small)
    
    
    
    
    (unused p236)
    (goalsize p236 medium)
    
    
    
    
    (unused p237)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 small)
    
    
    
    
    (unused p239)
    (goalsize p239 large)
    
    
    
    
    (unused p240)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 medium)
    
    
    
    
    (unused p242)
    (goalsize p242 large)
    
    
    
    
    (unused p243)
    (goalsize p243 large)
    
    
    
    
    (unused p244)
    (goalsize p244 medium)
    
    
    
    
    (unused p245)
    (goalsize p245 small)
    
    
    
    
    (unused p246)
    (goalsize p246 large)
    
    
    
    
    (unused p247)
    (goalsize p247 small)
    
    
    
    
    (unused p248)
    (goalsize p248 large)
    
    
    
    
    (unused p249)
    (goalsize p249 small)
    
    
    
    
    (unused p250)
    (goalsize p250 medium)
    
    
    
    
    (unused p251)
    (goalsize p251 large)
    
    
    
    
    (available p252)
    (colour p252 blue)
    (wood p252 pine)
    (surface-condition p252 smooth)
    (treatment p252 colourfragments)
    (goalsize p252 small)
    
    
    
    
    (unused p253)
    (goalsize p253 small)
    
    
    
    
    (unused p254)
    (goalsize p254 large)
    
    
    
    
    (unused p255)
    (goalsize p255 small)
    
    
    
    
    (unused p256)
    (goalsize p256 medium)
    
    
    
    
    (unused p257)
    (goalsize p257 medium)
    
    
    
    
    (unused p258)
    (goalsize p258 medium)
    
    
    
    
    (unused p259)
    (goalsize p259 medium)
    
    
    
    
    (unused p260)
    (goalsize p260 small)
    
    
    
    
    (available p261)
    (colour p261 natural)
    (wood p261 beech)
    (surface-condition p261 verysmooth)
    (treatment p261 glazed)
    (goalsize p261 large)
    
    
    
    
    (unused p262)
    (goalsize p262 medium)
    
    
    
    
    (unused p263)
    (goalsize p263 small)
    
    
    
    
    (unused p264)
    (goalsize p264 medium)
    
    
    
    
    (unused p265)
    (goalsize p265 small)
    
    
    
    
    (unused p266)
    (goalsize p266 large)
    
    
    
    
    (unused p267)
    (goalsize p267 medium)
    
    
    
    
    (unused p268)
    (goalsize p268 small)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s5)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 cherry)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 cherry)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 cherry)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 cherry)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s1)
    (wood b15 cherry)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s10)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s10)
    (wood b17 mahogany)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s9)
    (wood b18 mahogany)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s11)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 mahogany)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s9)
    (wood b22 mahogany)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s6)
    (wood b23 mahogany)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 mahogany)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s5)
    (wood b25 mahogany)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s8)
    (wood b26 mahogany)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s3)
    (wood b27 mahogany)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s8)
    (wood b28 oak)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s7)
    (wood b29 oak)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s6)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s8)
    (wood b31 oak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s7)
    (wood b32 oak)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s10)
    (wood b33 oak)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s6)
    (wood b34 oak)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s10)
    (wood b35 oak)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s3)
    (wood b36 oak)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s7)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s8)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s7)
    (wood b39 pine)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s9)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s12)
    (wood b41 pine)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s8)
    (wood b42 pine)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s7)
    (wood b43 pine)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s9)
    (wood b44 pine)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s9)
    (wood b45 pine)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s8)
    (wood b46 pine)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s5)
    (wood b47 pine)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s4)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s8)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s8)
    (wood b50 walnut)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s8)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 walnut)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s10)
    (wood b53 walnut)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s6)
    (wood b54 walnut)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s7)
    (wood b55 walnut)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s9)
    (wood b56 walnut)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s7)
    (wood b57 walnut)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s4)
    (wood b58 walnut)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s7)
    (wood b59 teak)
    (surface-condition b59 smooth)
    (available b59)
    (boardsize b60 s10)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s7)
    (wood b61 teak)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s5)
    (wood b62 teak)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s9)
    (wood b63 teak)
    (surface-condition b63 smooth)
    (available b63)
    (boardsize b64 s8)
    (wood b64 teak)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s8)
    (wood b65 teak)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s10)
    (wood b66 teak)
    (surface-condition b66 smooth)
    (available b66)
    (boardsize b67 s7)
    (wood b67 teak)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s10)
    (wood b68 teak)
    (surface-condition b68 smooth)
    (available b68)
    (boardsize b69 s9)
    (wood b69 teak)
    (surface-condition b69 smooth)
    (available b69)
    (boardsize b70 s6)
    (wood b70 teak)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s6)
    (wood b71 beech)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s8)
    (wood b72 beech)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s6)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
    (boardsize b74 s8)
    (wood b74 beech)
    (surface-condition b74 rough)
    (available b74)
    (boardsize b75 s8)
    (wood b75 beech)
    (surface-condition b75 rough)
    (available b75)
    (boardsize b76 s7)
    (wood b76 beech)
    (surface-condition b76 rough)
    (available b76)
    (boardsize b77 s10)
    (wood b77 beech)
    (surface-condition b77 rough)
    (available b77)
    (boardsize b78 s6)
    (wood b78 beech)
    (surface-condition b78 rough)
    (available b78)
    (boardsize b79 s8)
    (wood b79 beech)
    (surface-condition b79 rough)
    (available b79)
    (boardsize b80 s7)
    (wood b80 beech)
    (surface-condition b80 smooth)
    (available b80)
    (boardsize b81 s6)
    (wood b81 beech)
    (surface-condition b81 rough)
    (available b81)
    (boardsize b82 s11)
    (wood b82 beech)
    (surface-condition b82 smooth)
    (available b82)
    (boardsize b83 s10)
    (wood b83 beech)
    (surface-condition b83 smooth)
    (available b83)
    (boardsize b84 s4)
    (wood b84 beech)
    (surface-condition b84 rough)
    (available b84)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (surface-condition p0 smooth)
      (available p1)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (wood p2 cherry)
      (treatment p2 varnished)
      (available p3)
      (colour p3 mauve)
      (wood p3 mahogany)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 natural)
      (surface-condition p4 verysmooth)
      (available p5)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 white)
      (wood p6 teak)
      (available p7)
      (colour p7 natural)
      (wood p7 oak)
      (treatment p7 glazed)
      (available p8)
      (colour p8 natural)
      (treatment p8 glazed)
      (available p9)
      (colour p9 blue)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 blue)
      (wood p10 walnut)
      (available p11)
      (colour p11 white)
      (surface-condition p11 smooth)
      (available p12)
      (wood p12 beech)
      (treatment p12 glazed)
      (available p13)
      (wood p13 walnut)
      (treatment p13 varnished)
      (available p14)
      (colour p14 black)
      (wood p14 oak)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 natural)
      (wood p15 cherry)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 white)
      (surface-condition p16 smooth)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 black)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 black)
      (surface-condition p19 smooth)
      (available p20)
      (wood p20 cherry)
      (treatment p20 varnished)
      (available p21)
      (colour p21 black)
      (treatment p21 varnished)
      (available p22)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (wood p23 beech)
      (treatment p23 varnished)
      (available p24)
      (colour p24 red)
      (wood p24 oak)
      (available p25)
      (colour p25 red)
      (wood p25 pine)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (wood p26 beech)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 blue)
      (wood p27 teak)
      (available p28)
      (colour p28 blue)
      (wood p28 beech)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 green)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (wood p30 cherry)
      (surface-condition p30 verysmooth)
      (available p31)
      (colour p31 natural)
      (wood p31 oak)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (colour p32 red)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (surface-condition p33 verysmooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 red)
      (wood p34 teak)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 blue)
      (wood p35 cherry)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 green)
      (wood p36 beech)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 blue)
      (wood p37 beech)
      (available p38)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 mauve)
      (surface-condition p39 smooth)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (wood p41 mahogany)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 blue)
      (wood p42 walnut)
      (available p43)
      (colour p43 mauve)
      (treatment p43 varnished)
      (available p44)
      (wood p44 mahogany)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 natural)
      (wood p46 walnut)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 natural)
      (wood p47 teak)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 black)
      (treatment p48 glazed)
      (available p49)
      (colour p49 mauve)
      (surface-condition p49 verysmooth)
      (treatment p49 varnished)
      (available p50)
      (wood p50 mahogany)
      (treatment p50 glazed)
      (available p51)
      (wood p51 pine)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (wood p52 oak)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 red)
      (wood p53 walnut)
      (surface-condition p53 smooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 natural)
      (wood p54 beech)
      (surface-condition p54 verysmooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 black)
      (surface-condition p55 smooth)
      (available p56)
      (wood p56 oak)
      (treatment p56 varnished)
      (available p57)
      (colour p57 black)
      (wood p57 pine)
      (treatment p57 glazed)
      (available p58)
      (colour p58 blue)
      (wood p58 mahogany)
      (surface-condition p58 verysmooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 black)
      (wood p59 cherry)
      (available p60)
      (colour p60 black)
      (wood p60 walnut)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 green)
      (treatment p61 glazed)
      (available p62)
      (wood p62 beech)
      (surface-condition p62 smooth)
      (available p63)
      (surface-condition p63 verysmooth)
      (treatment p63 glazed)
      (available p64)
      (colour p64 red)
      (wood p64 cherry)
      (surface-condition p64 verysmooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 green)
      (wood p65 teak)
      (available p66)
      (colour p66 mauve)
      (wood p66 cherry)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (surface-condition p67 verysmooth)
      (treatment p67 varnished)
      (available p68)
      (wood p68 cherry)
      (treatment p68 varnished)
      (available p69)
      (colour p69 black)
      (wood p69 pine)
      (treatment p69 varnished)
      (available p70)
      (colour p70 white)
      (wood p70 teak)
      (treatment p70 varnished)
      (available p71)
      (colour p71 natural)
      (treatment p71 varnished)
      (available p72)
      (wood p72 mahogany)
      (treatment p72 varnished)
      (available p73)
      (wood p73 cherry)
      (surface-condition p73 verysmooth)
      (available p74)
      (wood p74 walnut)
      (treatment p74 glazed)
      (available p75)
      (colour p75 white)
      (wood p75 mahogany)
      (surface-condition p75 smooth)
      (treatment p75 varnished)
      (available p76)
      (colour p76 blue)
      (wood p76 walnut)
      (treatment p76 varnished)
      (available p77)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 mauve)
      (wood p78 pine)
      (surface-condition p78 verysmooth)
      (treatment p78 varnished)
      (available p79)
      (wood p79 beech)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (wood p80 walnut)
      (surface-condition p80 verysmooth)
      (available p81)
      (wood p81 beech)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (wood p82 beech)
      (surface-condition p82 verysmooth)
      (available p83)
      (colour p83 mauve)
      (treatment p83 glazed)
      (available p84)
      (wood p84 oak)
      (treatment p84 varnished)
      (available p85)
      (colour p85 red)
      (treatment p85 varnished)
      (available p86)
      (colour p86 blue)
      (wood p86 cherry)
      (surface-condition p86 verysmooth)
      (treatment p86 glazed)
      (available p87)
      (colour p87 natural)
      (treatment p87 varnished)
      (available p88)
      (wood p88 oak)
      (surface-condition p88 verysmooth)
      (treatment p88 glazed)
      (available p89)
      (wood p89 beech)
      (surface-condition p89 smooth)
      (treatment p89 varnished)
      (available p90)
      (surface-condition p90 smooth)
      (treatment p90 varnished)
      (available p91)
      (wood p91 cherry)
      (treatment p91 glazed)
      (available p92)
      (colour p92 natural)
      (wood p92 pine)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (surface-condition p93 verysmooth)
      (treatment p93 glazed)
      (available p94)
      (wood p94 pine)
      (surface-condition p94 smooth)
      (available p95)
      (colour p95 white)
      (treatment p95 varnished)
      (available p96)
      (surface-condition p96 verysmooth)
      (treatment p96 glazed)
      (available p97)
      (colour p97 white)
      (wood p97 mahogany)
      (treatment p97 glazed)
      (available p98)
      (wood p98 oak)
      (surface-condition p98 smooth)
      (available p99)
      (colour p99 red)
      (surface-condition p99 verysmooth)
      (treatment p99 glazed)
      (available p100)
      (surface-condition p100 verysmooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 natural)
      (surface-condition p101 smooth)
      (available p102)
      (colour p102 white)
      (wood p102 beech)
      (treatment p102 varnished)
      (available p103)
      (colour p103 mauve)
      (treatment p103 glazed)
      (available p104)
      (colour p104 white)
      (treatment p104 glazed)
      (available p105)
      (colour p105 white)
      (wood p105 oak)
      (surface-condition p105 smooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 blue)
      (surface-condition p106 smooth)
      (available p107)
      (colour p107 natural)
      (surface-condition p107 smooth)
      (available p108)
      (wood p108 pine)
      (surface-condition p108 smooth)
      (available p109)
      (colour p109 blue)
      (wood p109 cherry)
      (surface-condition p109 smooth)
      (treatment p109 glazed)
      (available p110)
      (colour p110 green)
      (surface-condition p110 verysmooth)
      (available p111)
      (colour p111 blue)
      (wood p111 walnut)
      (surface-condition p111 smooth)
      (treatment p111 glazed)
      (available p112)
      (colour p112 red)
      (surface-condition p112 verysmooth)
      (available p113)
      (colour p113 white)
      (wood p113 pine)
      (surface-condition p113 smooth)
      (treatment p113 glazed)
      (available p114)
      (colour p114 black)
      (wood p114 beech)
      (available p115)
      (wood p115 beech)
      (surface-condition p115 verysmooth)
      (available p116)
      (surface-condition p116 smooth)
      (treatment p116 glazed)
      (available p117)
      (wood p117 beech)
      (surface-condition p117 smooth)
      (available p118)
      (wood p118 teak)
      (surface-condition p118 verysmooth)
      (available p119)
      (colour p119 white)
      (treatment p119 varnished)
      (available p120)
      (wood p120 beech)
      (surface-condition p120 smooth)
      (available p121)
      (colour p121 mauve)
      (wood p121 teak)
      (surface-condition p121 smooth)
      (treatment p121 glazed)
      (available p122)
      (wood p122 teak)
      (surface-condition p122 smooth)
      (available p123)
      (colour p123 blue)
      (wood p123 walnut)
      (available p124)
      (colour p124 green)
      (wood p124 walnut)
      (surface-condition p124 smooth)
      (treatment p124 glazed)
      (available p125)
      (colour p125 green)
      (treatment p125 varnished)
      (available p126)
      (colour p126 red)
      (wood p126 cherry)
      (available p127)
      (colour p127 white)
      (wood p127 pine)
      (surface-condition p127 smooth)
      (treatment p127 varnished)
      (available p128)
      (colour p128 natural)
      (wood p128 oak)
      (surface-condition p128 verysmooth)
      (available p129)
      (colour p129 red)
      (wood p129 walnut)
      (surface-condition p129 verysmooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 blue)
      (treatment p130 glazed)
      (available p131)
      (colour p131 green)
      (surface-condition p131 verysmooth)
      (available p132)
      (wood p132 pine)
      (surface-condition p132 smooth)
      (available p133)
      (colour p133 black)
      (wood p133 pine)
      (surface-condition p133 smooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 black)
      (wood p134 walnut)
      (available p135)
      (colour p135 mauve)
      (wood p135 teak)
      (surface-condition p135 verysmooth)
      (treatment p135 glazed)
      (available p136)
      (colour p136 mauve)
      (treatment p136 varnished)
      (available p137)
      (colour p137 black)
      (surface-condition p137 verysmooth)
      (treatment p137 varnished)
      (available p138)
      (colour p138 green)
      (wood p138 cherry)
      (available p139)
      (colour p139 blue)
      (wood p139 cherry)
      (surface-condition p139 smooth)
      (treatment p139 glazed)
      (available p140)
      (colour p140 mauve)
      (wood p140 teak)
      (surface-condition p140 smooth)
      (treatment p140 varnished)
      (available p141)
      (surface-condition p141 verysmooth)
      (treatment p141 varnished)
      (available p142)
      (colour p142 blue)
      (surface-condition p142 verysmooth)
      (available p143)
      (wood p143 mahogany)
      (surface-condition p143 smooth)
      (available p144)
      (wood p144 pine)
      (treatment p144 varnished)
      (available p145)
      (colour p145 blue)
      (wood p145 mahogany)
      (surface-condition p145 smooth)
      (treatment p145 glazed)
      (available p146)
      (colour p146 natural)
      (wood p146 walnut)
      (available p147)
      (colour p147 red)
      (wood p147 oak)
      (available p148)
      (colour p148 white)
      (surface-condition p148 smooth)
      (treatment p148 varnished)
      (available p149)
      (surface-condition p149 verysmooth)
      (treatment p149 varnished)
      (available p150)
      (wood p150 cherry)
      (treatment p150 varnished)
      (available p151)
      (colour p151 natural)
      (wood p151 pine)
      (treatment p151 varnished)
      (available p152)
      (colour p152 green)
      (wood p152 beech)
      (available p153)
      (colour p153 white)
      (wood p153 beech)
      (surface-condition p153 verysmooth)
      (treatment p153 glazed)
      (available p154)
      (colour p154 natural)
      (wood p154 teak)
      (treatment p154 varnished)
      (available p155)
      (colour p155 natural)
      (surface-condition p155 smooth)
      (available p156)
      (colour p156 natural)
      (wood p156 cherry)
      (available p157)
      (colour p157 green)
      (wood p157 beech)
      (surface-condition p157 verysmooth)
      (treatment p157 varnished)
      (available p158)
      (wood p158 cherry)
      (treatment p158 glazed)
      (available p159)
      (colour p159 mauve)
      (wood p159 walnut)
      (surface-condition p159 smooth)
      (treatment p159 glazed)
      (available p160)
      (wood p160 pine)
      (treatment p160 varnished)
      (available p161)
      (colour p161 natural)
      (wood p161 beech)
      (treatment p161 glazed)
      (available p162)
      (colour p162 white)
      (surface-condition p162 verysmooth)
      (treatment p162 glazed)
      (available p163)
      (colour p163 mauve)
      (wood p163 teak)
      (treatment p163 varnished)
      (available p164)
      (colour p164 black)
      (wood p164 mahogany)
      (surface-condition p164 verysmooth)
      (available p165)
      (colour p165 white)
      (wood p165 cherry)
      (available p166)
      (surface-condition p166 smooth)
      (treatment p166 glazed)
      (available p167)
      (wood p167 mahogany)
      (surface-condition p167 verysmooth)
      (treatment p167 glazed)
      (available p168)
      (colour p168 blue)
      (wood p168 beech)
      (surface-condition p168 verysmooth)
      (available p169)
      (wood p169 teak)
      (surface-condition p169 verysmooth)
      (available p170)
      (colour p170 red)
      (treatment p170 glazed)
      (available p171)
      (colour p171 natural)
      (wood p171 cherry)
      (available p172)
      (surface-condition p172 smooth)
      (treatment p172 glazed)
      (available p173)
      (colour p173 blue)
      (surface-condition p173 verysmooth)
      (available p174)
      (wood p174 walnut)
      (treatment p174 glazed)
      (available p175)
      (wood p175 mahogany)
      (treatment p175 glazed)
      (available p176)
      (colour p176 natural)
      (wood p176 mahogany)
      (surface-condition p176 verysmooth)
      (treatment p176 varnished)
      (available p177)
      (wood p177 teak)
      (treatment p177 varnished)
      (available p178)
      (colour p178 natural)
      (wood p178 mahogany)
      (available p179)
      (wood p179 oak)
      (treatment p179 varnished)
      (available p180)
      (colour p180 black)
      (wood p180 teak)
      (surface-condition p180 verysmooth)
      (treatment p180 glazed)
      (available p181)
      (colour p181 natural)
      (wood p181 pine)
      (surface-condition p181 smooth)
      (treatment p181 varnished)
      (available p182)
      (colour p182 black)
      (wood p182 oak)
      (surface-condition p182 verysmooth)
      (treatment p182 varnished)
      (available p183)
      (colour p183 blue)
      (wood p183 mahogany)
      (surface-condition p183 smooth)
      (treatment p183 glazed)
      (available p184)
      (colour p184 natural)
      (surface-condition p184 smooth)
      (available p185)
      (colour p185 mauve)
      (wood p185 cherry)
      (available p186)
      (wood p186 beech)
      (treatment p186 varnished)
      (available p187)
      (colour p187 red)
      (surface-condition p187 smooth)
      (available p188)
      (colour p188 mauve)
      (wood p188 beech)
      (surface-condition p188 verysmooth)
      (treatment p188 varnished)
      (available p189)
      (colour p189 white)
      (wood p189 teak)
      (surface-condition p189 smooth)
      (treatment p189 glazed)
      (available p190)
      (wood p190 mahogany)
      (surface-condition p190 smooth)
      (treatment p190 varnished)
      (available p191)
      (colour p191 red)
      (treatment p191 glazed)
      (available p192)
      (colour p192 white)
      (wood p192 oak)
      (surface-condition p192 smooth)
      (treatment p192 glazed)
      (available p193)
      (colour p193 red)
      (wood p193 walnut)
      (surface-condition p193 verysmooth)
      (treatment p193 varnished)
      (available p194)
      (wood p194 cherry)
      (treatment p194 varnished)
      (available p195)
      (colour p195 mauve)
      (wood p195 cherry)
      (surface-condition p195 smooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 white)
      (treatment p196 glazed)
      (available p197)
      (colour p197 mauve)
      (wood p197 mahogany)
      (surface-condition p197 smooth)
      (available p198)
      (colour p198 blue)
      (surface-condition p198 verysmooth)
      (available p199)
      (colour p199 natural)
      (wood p199 oak)
      (surface-condition p199 smooth)
      (treatment p199 glazed)
      (available p200)
      (colour p200 white)
      (treatment p200 varnished)
      (available p201)
      (colour p201 blue)
      (surface-condition p201 smooth)
      (available p202)
      (colour p202 natural)
      (wood p202 mahogany)
      (surface-condition p202 smooth)
      (treatment p202 varnished)
      (available p203)
      (surface-condition p203 verysmooth)
      (treatment p203 glazed)
      (available p204)
      (surface-condition p204 verysmooth)
      (treatment p204 glazed)
      (available p205)
      (colour p205 green)
      (wood p205 cherry)
      (surface-condition p205 smooth)
      (treatment p205 varnished)
      (available p206)
      (colour p206 blue)
      (surface-condition p206 smooth)
      (available p207)
      (wood p207 oak)
      (treatment p207 varnished)
      (available p208)
      (colour p208 blue)
      (wood p208 mahogany)
      (surface-condition p208 smooth)
      (treatment p208 varnished)
      (available p209)
      (wood p209 cherry)
      (surface-condition p209 smooth)
      (available p210)
      (wood p210 beech)
      (treatment p210 varnished)
      (available p211)
      (colour p211 blue)
      (wood p211 pine)
      (available p212)
      (colour p212 blue)
      (wood p212 teak)
      (surface-condition p212 verysmooth)
      (available p213)
      (colour p213 mauve)
      (wood p213 cherry)
      (surface-condition p213 smooth)
      (treatment p213 varnished)
      (available p214)
      (surface-condition p214 verysmooth)
      (treatment p214 glazed)
      (available p215)
      (colour p215 blue)
      (surface-condition p215 smooth)
      (treatment p215 varnished)
      (available p216)
      (colour p216 black)
      (surface-condition p216 verysmooth)
      (available p217)
      (colour p217 natural)
      (wood p217 pine)
      (available p218)
      (wood p218 beech)
      (treatment p218 varnished)
      (available p219)
      (colour p219 blue)
      (wood p219 teak)
      (surface-condition p219 smooth)
      (treatment p219 varnished)
      (available p220)
      (wood p220 walnut)
      (surface-condition p220 verysmooth)
      (available p221)
      (wood p221 beech)
      (surface-condition p221 smooth)
      (treatment p221 varnished)
      (available p222)
      (wood p222 beech)
      (treatment p222 varnished)
      (available p223)
      (colour p223 red)
      (treatment p223 varnished)
      (available p224)
      (colour p224 black)
      (wood p224 pine)
      (surface-condition p224 verysmooth)
      (treatment p224 varnished)
      (available p225)
      (colour p225 mauve)
      (wood p225 oak)
      (available p226)
      (wood p226 beech)
      (surface-condition p226 smooth)
      (treatment p226 varnished)
      (available p227)
      (wood p227 mahogany)
      (treatment p227 varnished)
      (available p228)
      (wood p228 mahogany)
      (treatment p228 varnished)
      (available p229)
      (wood p229 cherry)
      (treatment p229 glazed)
      (available p230)
      (colour p230 mauve)
      (surface-condition p230 verysmooth)
      (available p231)
      (colour p231 green)
      (wood p231 oak)
      (surface-condition p231 verysmooth)
      (available p232)
      (colour p232 black)
      (wood p232 teak)
      (surface-condition p232 smooth)
      (available p233)
      (colour p233 green)
      (wood p233 teak)
      (surface-condition p233 smooth)
      (treatment p233 varnished)
      (available p234)
      (wood p234 mahogany)
      (surface-condition p234 verysmooth)
      (available p235)
      (colour p235 blue)
      (wood p235 beech)
      (available p236)
      (wood p236 cherry)
      (surface-condition p236 smooth)
      (available p237)
      (colour p237 white)
      (wood p237 cherry)
      (surface-condition p237 verysmooth)
      (treatment p237 glazed)
      (available p238)
      (colour p238 blue)
      (treatment p238 varnished)
      (available p239)
      (colour p239 green)
      (surface-condition p239 verysmooth)
      (treatment p239 glazed)
      (available p240)
      (colour p240 white)
      (wood p240 walnut)
      (available p241)
      (colour p241 red)
      (wood p241 pine)
      (surface-condition p241 smooth)
      (available p242)
      (colour p242 white)
      (surface-condition p242 smooth)
      (available p243)
      (colour p243 white)
      (wood p243 walnut)
      (available p244)
      (colour p244 black)
      (wood p244 teak)
      (surface-condition p244 smooth)
      (treatment p244 glazed)
      (available p245)
      (wood p245 teak)
      (treatment p245 varnished)
      (available p246)
      (wood p246 pine)
      (treatment p246 varnished)
      (available p247)
      (colour p247 blue)
      (wood p247 pine)
      (surface-condition p247 verysmooth)
      (treatment p247 varnished)
      (available p248)
      (surface-condition p248 smooth)
      (treatment p248 glazed)
      (available p249)
      (colour p249 blue)
      (wood p249 mahogany)
      (treatment p249 varnished)
      (available p250)
      (colour p250 black)
      (treatment p250 glazed)
      (available p251)
      (surface-condition p251 smooth)
      (treatment p251 varnished)
      (available p252)
      (wood p252 pine)
      (treatment p252 varnished)
      (available p253)
      (colour p253 natural)
      (wood p253 pine)
      (surface-condition p253 smooth)
      (treatment p253 glazed)
      (available p254)
      (colour p254 green)
      (wood p254 pine)
      (surface-condition p254 smooth)
      (available p255)
      (colour p255 blue)
      (wood p255 teak)
      (surface-condition p255 verysmooth)
      (treatment p255 glazed)
      (available p256)
      (colour p256 green)
      (wood p256 cherry)
      (surface-condition p256 verysmooth)
      (treatment p256 varnished)
      (available p257)
      (colour p257 mauve)
      (surface-condition p257 verysmooth)
      (treatment p257 varnished)
      (available p258)
      (colour p258 red)
      (treatment p258 glazed)
      (available p259)
      (surface-condition p259 verysmooth)
      (treatment p259 glazed)
      (available p260)
      (surface-condition p260 smooth)
      (treatment p260 glazed)
      (available p261)
      (colour p261 green)
      (wood p261 beech)
      (surface-condition p261 verysmooth)
      (available p262)
      (colour p262 red)
      (wood p262 walnut)
      (surface-condition p262 verysmooth)
      (available p263)
      (colour p263 red)
      (surface-condition p263 verysmooth)
      (available p264)
      (colour p264 black)
      (wood p264 oak)
      (available p265)
      (colour p265 green)
      (wood p265 oak)
      (surface-condition p265 smooth)
      (available p266)
      (wood p266 teak)
      (surface-condition p266 smooth)
      (available p267)
      (wood p267 teak)
      (surface-condition p267 verysmooth)
      (available p268)
      (colour p268 natural)
      (wood p268 mahogany)
    )
  )
  
)
