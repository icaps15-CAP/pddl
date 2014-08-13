; woodworking task with 290 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 208958

(define (problem wood-prob-sat-201)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white blue green red mauve black - acolour
    mahogany walnut oak cherry beech pine teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 p278 p279 p280 p281 p282 p283 p284 p285 p286 p287 p288 p289 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 b75 b76 b77 b78 b79 b80 b81 b82 b83 b84 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
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
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
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
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 blue)
    (wood p1 oak)
    (surface-condition p1 smooth)
    (treatment p1 glazed)
    (goalsize p1 medium)
    
    
    
    
    (available p2)
    (colour p2 white)
    (wood p2 pine)
    (surface-condition p2 smooth)
    (treatment p2 glazed)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 red)
    (wood p3 teak)
    (surface-condition p3 smooth)
    (treatment p3 colourfragments)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 black)
    (wood p6 teak)
    (surface-condition p6 smooth)
    (treatment p6 varnished)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (available p9)
    (colour p9 mauve)
    (wood p9 teak)
    (surface-condition p9 rough)
    (treatment p9 colourfragments)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 blue)
    (wood p20 oak)
    (surface-condition p20 verysmooth)
    (treatment p20 colourfragments)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 mauve)
    (wood p22 pine)
    (surface-condition p22 rough)
    (treatment p22 colourfragments)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (available p43)
    (colour p43 mauve)
    (wood p43 pine)
    (surface-condition p43 smooth)
    (treatment p43 colourfragments)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (available p46)
    (colour p46 mauve)
    (wood p46 teak)
    (surface-condition p46 verysmooth)
    (treatment p46 colourfragments)
    (goalsize p46 small)
    
    
    
    
    (available p47)
    (colour p47 green)
    (wood p47 mahogany)
    (surface-condition p47 smooth)
    (treatment p47 colourfragments)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (available p51)
    (colour p51 mauve)
    (wood p51 mahogany)
    (surface-condition p51 verysmooth)
    (treatment p51 glazed)
    (goalsize p51 large)
    
    
    
    
    (available p52)
    (colour p52 green)
    (wood p52 teak)
    (surface-condition p52 smooth)
    (treatment p52 colourfragments)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (available p56)
    (colour p56 green)
    (wood p56 mahogany)
    (surface-condition p56 verysmooth)
    (treatment p56 glazed)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (available p59)
    (colour p59 natural)
    (wood p59 mahogany)
    (surface-condition p59 smooth)
    (treatment p59 varnished)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (available p76)
    (colour p76 green)
    (wood p76 walnut)
    (surface-condition p76 rough)
    (treatment p76 glazed)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (available p80)
    (colour p80 red)
    (wood p80 oak)
    (surface-condition p80 smooth)
    (treatment p80 glazed)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (available p84)
    (colour p84 white)
    (wood p84 teak)
    (surface-condition p84 smooth)
    (treatment p84 glazed)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (available p87)
    (colour p87 blue)
    (wood p87 mahogany)
    (surface-condition p87 smooth)
    (treatment p87 colourfragments)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (available p92)
    (colour p92 black)
    (wood p92 walnut)
    (surface-condition p92 verysmooth)
    (treatment p92 varnished)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (available p103)
    (colour p103 blue)
    (wood p103 walnut)
    (surface-condition p103 verysmooth)
    (treatment p103 colourfragments)
    (goalsize p103 medium)
    
    
    
    
    (available p104)
    (colour p104 natural)
    (wood p104 cherry)
    (surface-condition p104 verysmooth)
    (treatment p104 varnished)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (available p114)
    (colour p114 red)
    (wood p114 oak)
    (surface-condition p114 verysmooth)
    (treatment p114 colourfragments)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (available p120)
    (colour p120 white)
    (wood p120 oak)
    (surface-condition p120 verysmooth)
    (treatment p120 glazed)
    (goalsize p120 small)
    
    
    
    
    (available p121)
    (colour p121 green)
    (wood p121 cherry)
    (surface-condition p121 rough)
    (treatment p121 glazed)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (available p127)
    (colour p127 green)
    (wood p127 teak)
    (surface-condition p127 verysmooth)
    (treatment p127 glazed)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (available p147)
    (colour p147 natural)
    (wood p147 beech)
    (surface-condition p147 smooth)
    (treatment p147 varnished)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (available p152)
    (colour p152 mauve)
    (wood p152 cherry)
    (surface-condition p152 rough)
    (treatment p152 colourfragments)
    (goalsize p152 small)
    
    
    
    
    (available p153)
    (colour p153 white)
    (wood p153 oak)
    (surface-condition p153 rough)
    (treatment p153 varnished)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (available p156)
    (colour p156 natural)
    (wood p156 beech)
    (surface-condition p156 rough)
    (treatment p156 colourfragments)
    (goalsize p156 medium)
    
    
    
    
    (available p157)
    (colour p157 blue)
    (wood p157 teak)
    (surface-condition p157 verysmooth)
    (treatment p157 varnished)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (available p161)
    (colour p161 black)
    (wood p161 mahogany)
    (surface-condition p161 verysmooth)
    (treatment p161 colourfragments)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (available p165)
    (colour p165 red)
    (wood p165 mahogany)
    (surface-condition p165 smooth)
    (treatment p165 colourfragments)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 medium)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 small)
    
    
    
    
    (available p177)
    (colour p177 blue)
    (wood p177 mahogany)
    (surface-condition p177 rough)
    (treatment p177 colourfragments)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (available p180)
    (colour p180 red)
    (wood p180 beech)
    (surface-condition p180 verysmooth)
    (treatment p180 glazed)
    (goalsize p180 small)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (available p185)
    (colour p185 blue)
    (wood p185 pine)
    (surface-condition p185 verysmooth)
    (treatment p185 varnished)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 small)
    
    
    
    
    (unused p187)
    (goalsize p187 medium)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 large)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (available p193)
    (colour p193 mauve)
    (wood p193 walnut)
    (surface-condition p193 verysmooth)
    (treatment p193 glazed)
    (goalsize p193 large)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 medium)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (available p200)
    (colour p200 black)
    (wood p200 cherry)
    (surface-condition p200 rough)
    (treatment p200 varnished)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 small)
    
    
    
    
    (unused p202)
    (goalsize p202 large)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
    (unused p204)
    (goalsize p204 small)
    
    
    
    
    (unused p205)
    (goalsize p205 medium)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 medium)
    
    
    
    
    (unused p209)
    (goalsize p209 large)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (unused p215)
    (goalsize p215 large)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 medium)
    
    
    
    
    (unused p218)
    (goalsize p218 small)
    
    
    
    
    (unused p219)
    (goalsize p219 small)
    
    
    
    
    (unused p220)
    (goalsize p220 large)
    
    
    
    
    (unused p221)
    (goalsize p221 large)
    
    
    
    
    (unused p222)
    (goalsize p222 large)
    
    
    
    
    (unused p223)
    (goalsize p223 large)
    
    
    
    
    (unused p224)
    (goalsize p224 small)
    
    
    
    
    (available p225)
    (colour p225 black)
    (wood p225 walnut)
    (surface-condition p225 smooth)
    (treatment p225 varnished)
    (goalsize p225 medium)
    
    
    
    
    (unused p226)
    (goalsize p226 large)
    
    
    
    
    (available p227)
    (colour p227 blue)
    (wood p227 teak)
    (surface-condition p227 smooth)
    (treatment p227 varnished)
    (goalsize p227 large)
    
    
    
    
    (unused p228)
    (goalsize p228 large)
    
    
    
    
    (available p229)
    (colour p229 red)
    (wood p229 teak)
    (surface-condition p229 smooth)
    (treatment p229 varnished)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 small)
    
    
    
    
    (unused p231)
    (goalsize p231 medium)
    
    
    
    
    (available p232)
    (colour p232 natural)
    (wood p232 mahogany)
    (surface-condition p232 rough)
    (treatment p232 colourfragments)
    (goalsize p232 large)
    
    
    
    
    (unused p233)
    (goalsize p233 medium)
    
    
    
    
    (unused p234)
    (goalsize p234 large)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (unused p237)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 small)
    
    
    
    
    (available p239)
    (colour p239 green)
    (wood p239 pine)
    (surface-condition p239 smooth)
    (treatment p239 colourfragments)
    (goalsize p239 small)
    
    
    
    
    (available p240)
    (colour p240 green)
    (wood p240 oak)
    (surface-condition p240 rough)
    (treatment p240 glazed)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 small)
    
    
    
    
    (unused p242)
    (goalsize p242 large)
    
    
    
    
    (unused p243)
    (goalsize p243 medium)
    
    
    
    
    (unused p244)
    (goalsize p244 small)
    
    
    
    
    (available p245)
    (colour p245 natural)
    (wood p245 walnut)
    (surface-condition p245 smooth)
    (treatment p245 varnished)
    (goalsize p245 large)
    
    
    
    
    (available p246)
    (colour p246 red)
    (wood p246 cherry)
    (surface-condition p246 verysmooth)
    (treatment p246 colourfragments)
    (goalsize p246 small)
    
    
    
    
    (available p247)
    (colour p247 white)
    (wood p247 pine)
    (surface-condition p247 verysmooth)
    (treatment p247 varnished)
    (goalsize p247 small)
    
    
    
    
    (unused p248)
    (goalsize p248 small)
    
    
    
    
    (available p249)
    (colour p249 white)
    (wood p249 pine)
    (surface-condition p249 smooth)
    (treatment p249 varnished)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 medium)
    
    
    
    
    (unused p251)
    (goalsize p251 large)
    
    
    
    
    (unused p252)
    (goalsize p252 large)
    
    
    
    
    (unused p253)
    (goalsize p253 medium)
    
    
    
    
    (unused p254)
    (goalsize p254 medium)
    
    
    
    
    (unused p255)
    (goalsize p255 medium)
    
    
    
    
    (available p256)
    (colour p256 blue)
    (wood p256 mahogany)
    (surface-condition p256 rough)
    (treatment p256 glazed)
    (goalsize p256 large)
    
    
    
    
    (unused p257)
    (goalsize p257 small)
    
    
    
    
    (unused p258)
    (goalsize p258 medium)
    
    
    
    
    (unused p259)
    (goalsize p259 medium)
    
    
    
    
    (unused p260)
    (goalsize p260 medium)
    
    
    
    
    (unused p261)
    (goalsize p261 medium)
    
    
    
    
    (available p262)
    (colour p262 red)
    (wood p262 walnut)
    (surface-condition p262 verysmooth)
    (treatment p262 glazed)
    (goalsize p262 medium)
    
    
    
    
    (unused p263)
    (goalsize p263 small)
    
    
    
    
    (unused p264)
    (goalsize p264 large)
    
    
    
    
    (unused p265)
    (goalsize p265 small)
    
    
    
    
    (unused p266)
    (goalsize p266 small)
    
    
    
    
    (unused p267)
    (goalsize p267 medium)
    
    
    
    
    (unused p268)
    (goalsize p268 medium)
    
    
    
    
    (unused p269)
    (goalsize p269 large)
    
    
    
    
    (unused p270)
    (goalsize p270 small)
    
    
    
    
    (unused p271)
    (goalsize p271 large)
    
    
    
    
    (unused p272)
    (goalsize p272 large)
    
    
    
    
    (unused p273)
    (goalsize p273 small)
    
    
    
    
    (unused p274)
    (goalsize p274 medium)
    
    
    
    
    (available p275)
    (colour p275 blue)
    (wood p275 mahogany)
    (surface-condition p275 smooth)
    (treatment p275 varnished)
    (goalsize p275 large)
    
    
    
    
    (unused p276)
    (goalsize p276 large)
    
    
    
    
    (available p277)
    (colour p277 red)
    (wood p277 mahogany)
    (surface-condition p277 rough)
    (treatment p277 varnished)
    (goalsize p277 small)
    
    
    
    
    (available p278)
    (colour p278 white)
    (wood p278 teak)
    (surface-condition p278 rough)
    (treatment p278 varnished)
    (goalsize p278 medium)
    
    
    
    
    (unused p279)
    (goalsize p279 large)
    
    
    
    
    (available p280)
    (colour p280 mauve)
    (wood p280 oak)
    (surface-condition p280 verysmooth)
    (treatment p280 colourfragments)
    (goalsize p280 large)
    
    
    
    
    (unused p281)
    (goalsize p281 medium)
    
    
    
    
    (unused p282)
    (goalsize p282 small)
    
    
    
    
    (unused p283)
    (goalsize p283 large)
    
    
    
    
    (available p284)
    (colour p284 blue)
    (wood p284 beech)
    (surface-condition p284 verysmooth)
    (treatment p284 varnished)
    (goalsize p284 medium)
    
    
    
    
    (unused p285)
    (goalsize p285 small)
    
    
    
    
    (unused p286)
    (goalsize p286 large)
    
    
    
    
    (unused p287)
    (goalsize p287 small)
    
    
    
    
    (unused p288)
    (goalsize p288 large)
    
    
    
    
    (unused p289)
    (goalsize p289 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s5)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s6)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s11)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 cherry)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s8)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s6)
    (wood b11 cherry)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s9)
    (wood b12 cherry)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s10)
    (wood b13 cherry)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 cherry)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 mahogany)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 mahogany)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 mahogany)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s5)
    (wood b24 mahogany)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s9)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s11)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s6)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s11)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s6)
    (wood b31 oak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s10)
    (wood b32 oak)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 oak)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s6)
    (wood b34 oak)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s6)
    (wood b35 oak)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s6)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s6)
    (wood b37 pine)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s7)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s9)
    (wood b39 pine)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s9)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s10)
    (wood b41 pine)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s11)
    (wood b42 pine)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s6)
    (wood b43 pine)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s8)
    (wood b44 pine)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s9)
    (wood b45 pine)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s6)
    (wood b46 pine)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s7)
    (wood b47 pine)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s6)
    (wood b48 pine)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s1)
    (wood b49 pine)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s10)
    (wood b50 walnut)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s8)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s8)
    (wood b52 walnut)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s9)
    (wood b53 walnut)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s8)
    (wood b54 walnut)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s8)
    (wood b55 walnut)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s9)
    (wood b56 walnut)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s8)
    (wood b57 walnut)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s8)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s8)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s8)
    (wood b60 teak)
    (surface-condition b60 smooth)
    (available b60)
    (boardsize b61 s9)
    (wood b61 teak)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s8)
    (wood b62 teak)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s5)
    (wood b63 teak)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s10)
    (wood b64 teak)
    (surface-condition b64 smooth)
    (available b64)
    (boardsize b65 s10)
    (wood b65 teak)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s9)
    (wood b66 teak)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s11)
    (wood b67 teak)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s8)
    (wood b68 teak)
    (surface-condition b68 smooth)
    (available b68)
    (boardsize b69 s9)
    (wood b69 teak)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s11)
    (wood b70 beech)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s9)
    (wood b71 beech)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s8)
    (wood b72 beech)
    (surface-condition b72 smooth)
    (available b72)
    (boardsize b73 s6)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
    (boardsize b74 s7)
    (wood b74 beech)
    (surface-condition b74 rough)
    (available b74)
    (boardsize b75 s6)
    (wood b75 beech)
    (surface-condition b75 rough)
    (available b75)
    (boardsize b76 s5)
    (wood b76 beech)
    (surface-condition b76 smooth)
    (available b76)
    (boardsize b77 s5)
    (wood b77 beech)
    (surface-condition b77 rough)
    (available b77)
    (boardsize b78 s9)
    (wood b78 beech)
    (surface-condition b78 smooth)
    (available b78)
    (boardsize b79 s7)
    (wood b79 beech)
    (surface-condition b79 smooth)
    (available b79)
    (boardsize b80 s7)
    (wood b80 beech)
    (surface-condition b80 rough)
    (available b80)
    (boardsize b81 s10)
    (wood b81 beech)
    (surface-condition b81 smooth)
    (available b81)
    (boardsize b82 s8)
    (wood b82 beech)
    (surface-condition b82 rough)
    (available b82)
    (boardsize b83 s6)
    (wood b83 beech)
    (surface-condition b83 rough)
    (available b83)
    (boardsize b84 s6)
    (wood b84 beech)
    (surface-condition b84 rough)
    (available b84)
  )
  (:goal
    (and
      (available p0)
      (wood p0 beech)
      (surface-condition p0 verysmooth)
      (available p1)
      (colour p1 green)
      (wood p1 oak)
      (available p2)
      (colour p2 blue)
      (treatment p2 glazed)
      (available p3)
      (wood p3 teak)
      (treatment p3 varnished)
      (available p4)
      (colour p4 red)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 green)
      (surface-condition p6 verysmooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 green)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 green)
      (treatment p8 glazed)
      (available p9)
      (colour p9 natural)
      (wood p9 teak)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 green)
      (wood p10 beech)
      (treatment p10 varnished)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 red)
      (wood p12 mahogany)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 green)
      (wood p13 pine)
      (available p14)
      (colour p14 red)
      (wood p14 teak)
      (treatment p14 varnished)
      (available p15)
      (wood p15 mahogany)
      (surface-condition p15 smooth)
      (available p16)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 black)
      (wood p17 pine)
      (treatment p17 varnished)
      (available p18)
      (colour p18 black)
      (wood p18 cherry)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 natural)
      (treatment p19 varnished)
      (available p20)
      (colour p20 white)
      (wood p20 oak)
      (available p21)
      (colour p21 blue)
      (wood p21 beech)
      (surface-condition p21 smooth)
      (available p22)
      (colour p22 black)
      (wood p22 pine)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (wood p23 teak)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 red)
      (wood p24 cherry)
      (surface-condition p24 smooth)
      (treatment p24 varnished)
      (available p25)
      (wood p25 mahogany)
      (treatment p25 glazed)
      (available p26)
      (colour p26 green)
      (treatment p26 varnished)
      (available p27)
      (colour p27 white)
      (wood p27 cherry)
      (surface-condition p27 verysmooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 green)
      (surface-condition p28 verysmooth)
      (available p29)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 green)
      (wood p30 cherry)
      (available p31)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 red)
      (treatment p32 glazed)
      (available p33)
      (colour p33 red)
      (treatment p33 glazed)
      (available p34)
      (wood p34 pine)
      (treatment p34 varnished)
      (available p35)
      (colour p35 natural)
      (wood p35 oak)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 mauve)
      (wood p36 teak)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 red)
      (wood p37 cherry)
      (treatment p37 glazed)
      (available p38)
      (wood p38 oak)
      (treatment p38 glazed)
      (available p39)
      (colour p39 black)
      (wood p39 beech)
      (surface-condition p39 verysmooth)
      (treatment p39 varnished)
      (available p40)
      (wood p40 pine)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 blue)
      (wood p41 beech)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 red)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 black)
      (wood p43 pine)
      (surface-condition p43 verysmooth)
      (available p44)
      (colour p44 mauve)
      (wood p44 walnut)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (wood p45 pine)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 black)
      (surface-condition p47 verysmooth)
      (available p48)
      (wood p48 teak)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (wood p49 beech)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 white)
      (surface-condition p50 smooth)
      (treatment p50 varnished)
      (available p51)
      (wood p51 mahogany)
      (surface-condition p51 smooth)
      (available p52)
      (colour p52 natural)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (wood p53 mahogany)
      (surface-condition p53 smooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 white)
      (wood p54 walnut)
      (surface-condition p54 smooth)
      (treatment p54 glazed)
      (available p55)
      (wood p55 beech)
      (surface-condition p55 verysmooth)
      (available p56)
      (colour p56 blue)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 natural)
      (wood p57 oak)
      (surface-condition p57 smooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 blue)
      (surface-condition p58 verysmooth)
      (available p59)
      (colour p59 blue)
      (surface-condition p59 verysmooth)
      (available p60)
      (colour p60 natural)
      (surface-condition p60 smooth)
      (available p61)
      (colour p61 white)
      (wood p61 teak)
      (available p62)
      (colour p62 black)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 mauve)
      (wood p63 pine)
      (available p64)
      (surface-condition p64 verysmooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 white)
      (wood p65 oak)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (wood p66 beech)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 red)
      (surface-condition p67 verysmooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 blue)
      (treatment p68 varnished)
      (available p69)
      (colour p69 mauve)
      (wood p69 teak)
      (surface-condition p69 smooth)
      (available p70)
      (colour p70 blue)
      (wood p70 oak)
      (surface-condition p70 verysmooth)
      (available p71)
      (colour p71 mauve)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 blue)
      (wood p72 beech)
      (available p73)
      (colour p73 natural)
      (treatment p73 varnished)
      (available p74)
      (wood p74 pine)
      (surface-condition p74 smooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 white)
      (wood p75 mahogany)
      (available p76)
      (colour p76 mauve)
      (surface-condition p76 verysmooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 green)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 white)
      (wood p78 beech)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 black)
      (wood p79 mahogany)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 natural)
      (treatment p80 glazed)
      (available p81)
      (wood p81 pine)
      (surface-condition p81 verysmooth)
      (available p82)
      (surface-condition p82 smooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 green)
      (wood p83 teak)
      (surface-condition p83 smooth)
      (treatment p83 glazed)
      (available p84)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 red)
      (surface-condition p85 verysmooth)
      (available p86)
      (colour p86 red)
      (wood p86 walnut)
      (surface-condition p86 verysmooth)
      (available p87)
      (surface-condition p87 verysmooth)
      (treatment p87 varnished)
      (available p88)
      (surface-condition p88 verysmooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 blue)
      (treatment p89 glazed)
      (available p90)
      (wood p90 teak)
      (surface-condition p90 smooth)
      (available p91)
      (wood p91 beech)
      (surface-condition p91 smooth)
      (treatment p91 varnished)
      (available p92)
      (colour p92 red)
      (wood p92 walnut)
      (available p93)
      (colour p93 mauve)
      (wood p93 cherry)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (surface-condition p94 verysmooth)
      (treatment p94 varnished)
      (available p95)
      (wood p95 beech)
      (surface-condition p95 verysmooth)
      (available p96)
      (wood p96 pine)
      (surface-condition p96 verysmooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 black)
      (wood p97 mahogany)
      (surface-condition p97 smooth)
      (available p98)
      (wood p98 walnut)
      (surface-condition p98 verysmooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 natural)
      (wood p99 cherry)
      (surface-condition p99 smooth)
      (treatment p99 varnished)
      (available p100)
      (surface-condition p100 verysmooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 natural)
      (wood p101 mahogany)
      (surface-condition p101 verysmooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 green)
      (treatment p102 glazed)
      (available p103)
      (wood p103 walnut)
      (treatment p103 varnished)
      (available p104)
      (surface-condition p104 verysmooth)
      (treatment p104 glazed)
      (available p105)
      (surface-condition p105 smooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 natural)
      (wood p106 teak)
      (surface-condition p106 smooth)
      (treatment p106 glazed)
      (available p107)
      (colour p107 green)
      (wood p107 teak)
      (surface-condition p107 smooth)
      (available p108)
      (wood p108 cherry)
      (treatment p108 varnished)
      (available p109)
      (wood p109 walnut)
      (surface-condition p109 smooth)
      (treatment p109 glazed)
      (available p110)
      (wood p110 pine)
      (treatment p110 varnished)
      (available p111)
      (wood p111 pine)
      (treatment p111 varnished)
      (available p112)
      (colour p112 blue)
      (surface-condition p112 smooth)
      (available p113)
      (colour p113 green)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 natural)
      (wood p114 oak)
      (surface-condition p114 smooth)
      (treatment p114 varnished)
      (available p115)
      (wood p115 mahogany)
      (treatment p115 glazed)
      (available p116)
      (colour p116 natural)
      (wood p116 beech)
      (available p117)
      (colour p117 red)
      (wood p117 pine)
      (surface-condition p117 smooth)
      (treatment p117 glazed)
      (available p118)
      (surface-condition p118 verysmooth)
      (treatment p118 glazed)
      (available p119)
      (colour p119 natural)
      (surface-condition p119 verysmooth)
      (available p120)
      (wood p120 oak)
      (surface-condition p120 smooth)
      (available p121)
      (colour p121 mauve)
      (treatment p121 varnished)
      (available p122)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (colour p123 black)
      (wood p123 teak)
      (available p124)
      (colour p124 white)
      (wood p124 teak)
      (treatment p124 varnished)
      (available p125)
      (colour p125 red)
      (wood p125 walnut)
      (surface-condition p125 smooth)
      (treatment p125 glazed)
      (available p126)
      (colour p126 mauve)
      (wood p126 beech)
      (surface-condition p126 smooth)
      (treatment p126 glazed)
      (available p127)
      (surface-condition p127 smooth)
      (treatment p127 glazed)
      (available p128)
      (colour p128 black)
      (wood p128 cherry)
      (surface-condition p128 smooth)
      (treatment p128 varnished)
      (available p129)
      (colour p129 green)
      (wood p129 cherry)
      (surface-condition p129 verysmooth)
      (treatment p129 varnished)
      (available p130)
      (surface-condition p130 smooth)
      (treatment p130 varnished)
      (available p131)
      (colour p131 natural)
      (wood p131 teak)
      (surface-condition p131 smooth)
      (treatment p131 varnished)
      (available p132)
      (colour p132 blue)
      (wood p132 beech)
      (treatment p132 glazed)
      (available p133)
      (wood p133 oak)
      (treatment p133 glazed)
      (available p134)
      (wood p134 cherry)
      (surface-condition p134 verysmooth)
      (treatment p134 glazed)
      (available p135)
      (colour p135 green)
      (wood p135 oak)
      (surface-condition p135 smooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 natural)
      (treatment p136 varnished)
      (available p137)
      (colour p137 green)
      (wood p137 cherry)
      (surface-condition p137 verysmooth)
      (treatment p137 varnished)
      (available p138)
      (colour p138 natural)
      (wood p138 beech)
      (surface-condition p138 verysmooth)
      (treatment p138 glazed)
      (available p139)
      (colour p139 mauve)
      (surface-condition p139 verysmooth)
      (treatment p139 glazed)
      (available p140)
      (colour p140 black)
      (wood p140 pine)
      (surface-condition p140 verysmooth)
      (treatment p140 glazed)
      (available p141)
      (wood p141 oak)
      (treatment p141 glazed)
      (available p142)
      (colour p142 white)
      (treatment p142 varnished)
      (available p143)
      (colour p143 natural)
      (wood p143 teak)
      (surface-condition p143 verysmooth)
      (treatment p143 varnished)
      (available p144)
      (surface-condition p144 smooth)
      (treatment p144 varnished)
      (available p145)
      (wood p145 oak)
      (treatment p145 glazed)
      (available p146)
      (wood p146 mahogany)
      (treatment p146 glazed)
      (available p147)
      (colour p147 red)
      (wood p147 beech)
      (surface-condition p147 verysmooth)
      (treatment p147 varnished)
      (available p148)
      (surface-condition p148 verysmooth)
      (treatment p148 glazed)
      (available p149)
      (colour p149 white)
      (wood p149 teak)
      (available p150)
      (surface-condition p150 smooth)
      (treatment p150 varnished)
      (available p151)
      (colour p151 white)
      (wood p151 teak)
      (available p152)
      (colour p152 green)
      (treatment p152 varnished)
      (available p153)
      (wood p153 oak)
      (treatment p153 glazed)
      (available p154)
      (colour p154 red)
      (treatment p154 varnished)
      (available p155)
      (colour p155 black)
      (wood p155 beech)
      (available p156)
      (colour p156 white)
      (treatment p156 varnished)
      (available p157)
      (colour p157 red)
      (surface-condition p157 smooth)
      (available p158)
      (colour p158 red)
      (wood p158 pine)
      (surface-condition p158 smooth)
      (treatment p158 glazed)
      (available p159)
      (colour p159 mauve)
      (wood p159 teak)
      (surface-condition p159 verysmooth)
      (treatment p159 glazed)
      (available p160)
      (colour p160 red)
      (wood p160 teak)
      (surface-condition p160 smooth)
      (available p161)
      (colour p161 natural)
      (surface-condition p161 verysmooth)
      (available p162)
      (colour p162 red)
      (treatment p162 varnished)
      (available p163)
      (colour p163 mauve)
      (surface-condition p163 verysmooth)
      (available p164)
      (wood p164 cherry)
      (treatment p164 varnished)
      (available p165)
      (colour p165 blue)
      (surface-condition p165 verysmooth)
      (available p166)
      (colour p166 natural)
      (wood p166 pine)
      (surface-condition p166 verysmooth)
      (available p167)
      (colour p167 natural)
      (wood p167 oak)
      (surface-condition p167 verysmooth)
      (treatment p167 varnished)
      (available p168)
      (colour p168 mauve)
      (wood p168 mahogany)
      (available p169)
      (colour p169 mauve)
      (treatment p169 glazed)
      (available p170)
      (colour p170 green)
      (wood p170 pine)
      (available p171)
      (colour p171 red)
      (treatment p171 glazed)
      (available p172)
      (wood p172 walnut)
      (treatment p172 glazed)
      (available p173)
      (colour p173 natural)
      (surface-condition p173 verysmooth)
      (available p174)
      (colour p174 blue)
      (wood p174 beech)
      (treatment p174 glazed)
      (available p175)
      (colour p175 natural)
      (wood p175 oak)
      (available p176)
      (colour p176 blue)
      (wood p176 pine)
      (available p177)
      (colour p177 natural)
      (treatment p177 varnished)
      (available p178)
      (colour p178 blue)
      (wood p178 teak)
      (available p179)
      (wood p179 pine)
      (surface-condition p179 verysmooth)
      (treatment p179 varnished)
      (available p180)
      (colour p180 mauve)
      (surface-condition p180 smooth)
      (available p181)
      (colour p181 natural)
      (wood p181 beech)
      (available p182)
      (colour p182 red)
      (wood p182 oak)
      (available p183)
      (colour p183 mauve)
      (surface-condition p183 verysmooth)
      (treatment p183 varnished)
      (available p184)
      (colour p184 black)
      (wood p184 teak)
      (treatment p184 varnished)
      (available p185)
      (wood p185 pine)
      (surface-condition p185 smooth)
      (available p186)
      (colour p186 blue)
      (surface-condition p186 smooth)
      (available p187)
      (colour p187 red)
      (surface-condition p187 smooth)
      (available p188)
      (colour p188 black)
      (treatment p188 glazed)
      (available p189)
      (colour p189 green)
      (wood p189 beech)
      (surface-condition p189 smooth)
      (treatment p189 varnished)
      (available p190)
      (colour p190 green)
      (wood p190 teak)
      (available p191)
      (colour p191 mauve)
      (wood p191 mahogany)
      (surface-condition p191 verysmooth)
      (treatment p191 glazed)
      (available p192)
      (colour p192 red)
      (wood p192 cherry)
      (available p193)
      (wood p193 walnut)
      (treatment p193 varnished)
      (available p194)
      (colour p194 red)
      (treatment p194 varnished)
      (available p195)
      (colour p195 natural)
      (wood p195 cherry)
      (treatment p195 glazed)
      (available p196)
      (wood p196 pine)
      (treatment p196 glazed)
      (available p197)
      (wood p197 oak)
      (treatment p197 glazed)
      (available p198)
      (colour p198 natural)
      (wood p198 cherry)
      (available p199)
      (colour p199 white)
      (wood p199 teak)
      (surface-condition p199 smooth)
      (treatment p199 glazed)
      (available p200)
      (colour p200 natural)
      (wood p200 cherry)
      (available p201)
      (wood p201 teak)
      (treatment p201 glazed)
      (available p202)
      (surface-condition p202 verysmooth)
      (treatment p202 varnished)
      (available p203)
      (surface-condition p203 smooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 green)
      (surface-condition p204 smooth)
      (available p205)
      (colour p205 red)
      (treatment p205 varnished)
      (available p206)
      (surface-condition p206 verysmooth)
      (treatment p206 varnished)
      (available p207)
      (wood p207 oak)
      (surface-condition p207 verysmooth)
      (available p208)
      (surface-condition p208 smooth)
      (treatment p208 glazed)
      (available p209)
      (colour p209 natural)
      (treatment p209 glazed)
      (available p210)
      (colour p210 white)
      (wood p210 walnut)
      (treatment p210 glazed)
      (available p211)
      (colour p211 white)
      (treatment p211 varnished)
      (available p212)
      (colour p212 black)
      (wood p212 beech)
      (surface-condition p212 smooth)
      (treatment p212 glazed)
      (available p213)
      (wood p213 pine)
      (treatment p213 varnished)
      (available p214)
      (surface-condition p214 smooth)
      (treatment p214 glazed)
      (available p215)
      (wood p215 oak)
      (treatment p215 varnished)
      (available p216)
      (colour p216 red)
      (surface-condition p216 verysmooth)
      (available p217)
      (colour p217 white)
      (wood p217 oak)
      (available p218)
      (colour p218 green)
      (wood p218 walnut)
      (available p219)
      (colour p219 white)
      (surface-condition p219 smooth)
      (available p220)
      (wood p220 walnut)
      (surface-condition p220 smooth)
      (available p221)
      (wood p221 cherry)
      (surface-condition p221 verysmooth)
      (available p222)
      (colour p222 mauve)
      (wood p222 beech)
      (surface-condition p222 verysmooth)
      (available p223)
      (colour p223 black)
      (wood p223 mahogany)
      (surface-condition p223 smooth)
      (treatment p223 varnished)
      (available p224)
      (colour p224 green)
      (surface-condition p224 verysmooth)
      (available p225)
      (colour p225 natural)
      (wood p225 walnut)
      (surface-condition p225 smooth)
      (treatment p225 glazed)
      (available p226)
      (colour p226 black)
      (wood p226 oak)
      (available p227)
      (colour p227 natural)
      (surface-condition p227 verysmooth)
      (available p228)
      (wood p228 cherry)
      (surface-condition p228 smooth)
      (available p229)
      (colour p229 natural)
      (wood p229 teak)
      (surface-condition p229 smooth)
      (treatment p229 varnished)
      (available p230)
      (surface-condition p230 verysmooth)
      (treatment p230 varnished)
      (available p231)
      (wood p231 beech)
      (treatment p231 glazed)
      (available p232)
      (surface-condition p232 verysmooth)
      (treatment p232 varnished)
      (available p233)
      (wood p233 oak)
      (surface-condition p233 smooth)
      (available p234)
      (wood p234 oak)
      (surface-condition p234 verysmooth)
      (available p235)
      (colour p235 black)
      (treatment p235 varnished)
      (available p236)
      (colour p236 natural)
      (wood p236 pine)
      (surface-condition p236 smooth)
      (treatment p236 glazed)
      (available p237)
      (colour p237 red)
      (surface-condition p237 verysmooth)
      (available p238)
      (colour p238 blue)
      (wood p238 teak)
      (surface-condition p238 smooth)
      (treatment p238 varnished)
      (available p239)
      (wood p239 pine)
      (treatment p239 varnished)
      (available p240)
      (colour p240 mauve)
      (surface-condition p240 verysmooth)
      (treatment p240 varnished)
      (available p241)
      (colour p241 green)
      (wood p241 oak)
      (surface-condition p241 verysmooth)
      (treatment p241 glazed)
      (available p242)
      (surface-condition p242 smooth)
      (treatment p242 varnished)
      (available p243)
      (colour p243 natural)
      (surface-condition p243 smooth)
      (available p244)
      (colour p244 mauve)
      (surface-condition p244 verysmooth)
      (available p245)
      (surface-condition p245 verysmooth)
      (treatment p245 glazed)
      (available p246)
      (colour p246 mauve)
      (wood p246 cherry)
      (surface-condition p246 smooth)
      (treatment p246 glazed)
      (available p247)
      (colour p247 green)
      (wood p247 pine)
      (available p248)
      (wood p248 mahogany)
      (surface-condition p248 smooth)
      (available p249)
      (colour p249 black)
      (wood p249 pine)
      (surface-condition p249 verysmooth)
      (treatment p249 glazed)
      (available p250)
      (colour p250 red)
      (wood p250 beech)
      (surface-condition p250 verysmooth)
      (treatment p250 varnished)
      (available p251)
      (colour p251 black)
      (surface-condition p251 verysmooth)
      (available p252)
      (colour p252 blue)
      (treatment p252 varnished)
      (available p253)
      (colour p253 red)
      (wood p253 beech)
      (surface-condition p253 smooth)
      (treatment p253 varnished)
      (available p254)
      (colour p254 mauve)
      (wood p254 cherry)
      (surface-condition p254 verysmooth)
      (treatment p254 varnished)
      (available p255)
      (colour p255 blue)
      (surface-condition p255 smooth)
      (treatment p255 glazed)
      (available p256)
      (colour p256 green)
      (treatment p256 glazed)
      (available p257)
      (colour p257 natural)
      (surface-condition p257 verysmooth)
      (treatment p257 varnished)
      (available p258)
      (wood p258 oak)
      (surface-condition p258 verysmooth)
      (available p259)
      (colour p259 blue)
      (wood p259 walnut)
      (available p260)
      (colour p260 red)
      (wood p260 pine)
      (available p261)
      (wood p261 oak)
      (surface-condition p261 verysmooth)
      (available p262)
      (colour p262 black)
      (treatment p262 glazed)
      (available p263)
      (colour p263 mauve)
      (wood p263 teak)
      (surface-condition p263 verysmooth)
      (treatment p263 glazed)
      (available p264)
      (colour p264 blue)
      (wood p264 cherry)
      (available p265)
      (colour p265 white)
      (wood p265 pine)
      (available p266)
      (colour p266 white)
      (wood p266 walnut)
      (available p267)
      (colour p267 green)
      (treatment p267 varnished)
      (available p268)
      (wood p268 pine)
      (surface-condition p268 verysmooth)
      (treatment p268 glazed)
      (available p269)
      (colour p269 red)
      (surface-condition p269 verysmooth)
      (treatment p269 glazed)
      (available p270)
      (colour p270 mauve)
      (wood p270 walnut)
      (treatment p270 varnished)
      (available p271)
      (colour p271 natural)
      (surface-condition p271 smooth)
      (available p272)
      (colour p272 white)
      (surface-condition p272 verysmooth)
      (available p273)
      (colour p273 black)
      (treatment p273 varnished)
      (available p274)
      (colour p274 black)
      (wood p274 beech)
      (surface-condition p274 smooth)
      (treatment p274 varnished)
      (available p275)
      (colour p275 mauve)
      (wood p275 mahogany)
      (treatment p275 varnished)
      (available p276)
      (colour p276 blue)
      (wood p276 pine)
      (treatment p276 glazed)
      (available p277)
      (colour p277 green)
      (wood p277 mahogany)
      (treatment p277 glazed)
      (available p278)
      (surface-condition p278 verysmooth)
      (treatment p278 varnished)
      (available p279)
      (wood p279 mahogany)
      (surface-condition p279 verysmooth)
      (available p280)
      (wood p280 oak)
      (treatment p280 glazed)
      (available p281)
      (surface-condition p281 verysmooth)
      (treatment p281 glazed)
      (available p282)
      (colour p282 green)
      (treatment p282 glazed)
      (available p283)
      (colour p283 red)
      (wood p283 cherry)
      (surface-condition p283 verysmooth)
      (available p284)
      (colour p284 mauve)
      (wood p284 beech)
      (surface-condition p284 smooth)
      (treatment p284 varnished)
      (available p285)
      (wood p285 oak)
      (surface-condition p285 smooth)
      (available p286)
      (wood p286 cherry)
      (treatment p286 varnished)
      (available p287)
      (colour p287 red)
      (treatment p287 varnished)
      (available p288)
      (colour p288 white)
      (wood p288 walnut)
      (surface-condition p288 verysmooth)
      (available p289)
      (surface-condition p289 verysmooth)
      (treatment p289 varnished)
    )
  )
  
)
