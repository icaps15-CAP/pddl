; woodworking task with 296 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 252740

(define (problem wood-prob-sat-203)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve blue red black white green - acolour
    cherry beech teak pine walnut mahogany oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 p278 p279 p280 p281 p282 p283 p284 p285 p286 p287 p288 p289 p290 p291 p292 p293 p294 p295 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 b75 b76 b77 b78 b79 b80 b81 b82 b83 b84 b85 b86 b87 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 black)
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
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 green)
    (wood p6 pine)
    (surface-condition p6 verysmooth)
    (treatment p6 colourfragments)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 black)
    (wood p12 beech)
    (surface-condition p12 rough)
    (treatment p12 glazed)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (available p15)
    (colour p15 black)
    (wood p15 beech)
    (surface-condition p15 rough)
    (treatment p15 colourfragments)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 natural)
    (wood p26 teak)
    (surface-condition p26 smooth)
    (treatment p26 glazed)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 red)
    (wood p31 cherry)
    (surface-condition p31 rough)
    (treatment p31 colourfragments)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (available p38)
    (colour p38 natural)
    (wood p38 cherry)
    (surface-condition p38 verysmooth)
    (treatment p38 glazed)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (available p45)
    (colour p45 green)
    (wood p45 pine)
    (surface-condition p45 smooth)
    (treatment p45 colourfragments)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (available p47)
    (colour p47 mauve)
    (wood p47 oak)
    (surface-condition p47 rough)
    (treatment p47 glazed)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
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
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (available p88)
    (colour p88 red)
    (wood p88 cherry)
    (surface-condition p88 rough)
    (treatment p88 varnished)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (available p97)
    (colour p97 red)
    (wood p97 mahogany)
    (surface-condition p97 smooth)
    (treatment p97 colourfragments)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (available p99)
    (colour p99 white)
    (wood p99 mahogany)
    (surface-condition p99 verysmooth)
    (treatment p99 glazed)
    (goalsize p99 medium)
    
    
    
    
    (available p100)
    (colour p100 green)
    (wood p100 mahogany)
    (surface-condition p100 verysmooth)
    (treatment p100 colourfragments)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (available p102)
    (colour p102 mauve)
    (wood p102 pine)
    (surface-condition p102 rough)
    (treatment p102 colourfragments)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (available p111)
    (colour p111 blue)
    (wood p111 oak)
    (surface-condition p111 smooth)
    (treatment p111 varnished)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (available p126)
    (colour p126 natural)
    (wood p126 walnut)
    (surface-condition p126 rough)
    (treatment p126 colourfragments)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 small)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (available p134)
    (colour p134 green)
    (wood p134 pine)
    (surface-condition p134 verysmooth)
    (treatment p134 varnished)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (available p150)
    (colour p150 white)
    (wood p150 pine)
    (surface-condition p150 verysmooth)
    (treatment p150 varnished)
    (goalsize p150 medium)
    
    
    
    
    (available p151)
    (colour p151 mauve)
    (wood p151 beech)
    (surface-condition p151 verysmooth)
    (treatment p151 glazed)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (available p156)
    (colour p156 white)
    (wood p156 cherry)
    (surface-condition p156 smooth)
    (treatment p156 glazed)
    (goalsize p156 medium)
    
    
    
    
    (available p157)
    (colour p157 mauve)
    (wood p157 walnut)
    (surface-condition p157 rough)
    (treatment p157 glazed)
    (goalsize p157 small)
    
    
    
    
    (available p158)
    (colour p158 white)
    (wood p158 teak)
    (surface-condition p158 smooth)
    (treatment p158 colourfragments)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (available p167)
    (colour p167 black)
    (wood p167 pine)
    (surface-condition p167 rough)
    (treatment p167 varnished)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (available p176)
    (colour p176 blue)
    (wood p176 teak)
    (surface-condition p176 rough)
    (treatment p176 varnished)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 medium)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (available p181)
    (colour p181 mauve)
    (wood p181 mahogany)
    (surface-condition p181 rough)
    (treatment p181 varnished)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (available p183)
    (colour p183 natural)
    (wood p183 mahogany)
    (surface-condition p183 smooth)
    (treatment p183 colourfragments)
    (goalsize p183 medium)
    
    
    
    
    (available p184)
    (colour p184 black)
    (wood p184 cherry)
    (surface-condition p184 verysmooth)
    (treatment p184 colourfragments)
    (goalsize p184 medium)
    
    
    
    
    (available p185)
    (colour p185 black)
    (wood p185 cherry)
    (surface-condition p185 verysmooth)
    (treatment p185 varnished)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 large)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (unused p191)
    (goalsize p191 large)
    
    
    
    
    (unused p192)
    (goalsize p192 medium)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 small)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (available p197)
    (colour p197 red)
    (wood p197 mahogany)
    (surface-condition p197 rough)
    (treatment p197 glazed)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (unused p199)
    (goalsize p199 medium)
    
    
    
    
    (unused p200)
    (goalsize p200 small)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (available p202)
    (colour p202 blue)
    (wood p202 pine)
    (surface-condition p202 rough)
    (treatment p202 varnished)
    (goalsize p202 small)
    
    
    
    
    (unused p203)
    (goalsize p203 medium)
    
    
    
    
    (available p204)
    (colour p204 blue)
    (wood p204 mahogany)
    (surface-condition p204 verysmooth)
    (treatment p204 varnished)
    (goalsize p204 large)
    
    
    
    
    (available p205)
    (colour p205 red)
    (wood p205 walnut)
    (surface-condition p205 smooth)
    (treatment p205 varnished)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 medium)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 small)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (unused p211)
    (goalsize p211 medium)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (unused p215)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (available p217)
    (colour p217 black)
    (wood p217 oak)
    (surface-condition p217 verysmooth)
    (treatment p217 glazed)
    (goalsize p217 small)
    
    
    
    
    (unused p218)
    (goalsize p218 medium)
    
    
    
    
    (unused p219)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 large)
    
    
    
    
    (unused p221)
    (goalsize p221 large)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (available p223)
    (colour p223 green)
    (wood p223 beech)
    (surface-condition p223 rough)
    (treatment p223 colourfragments)
    (goalsize p223 small)
    
    
    
    
    (available p224)
    (colour p224 natural)
    (wood p224 mahogany)
    (surface-condition p224 smooth)
    (treatment p224 glazed)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 small)
    
    
    
    
    (available p226)
    (colour p226 blue)
    (wood p226 pine)
    (surface-condition p226 smooth)
    (treatment p226 varnished)
    (goalsize p226 large)
    
    
    
    
    (available p227)
    (colour p227 red)
    (wood p227 cherry)
    (surface-condition p227 smooth)
    (treatment p227 glazed)
    (goalsize p227 large)
    
    
    
    
    (unused p228)
    (goalsize p228 medium)
    
    
    
    
    (unused p229)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 small)
    
    
    
    
    (unused p231)
    (goalsize p231 medium)
    
    
    
    
    (available p232)
    (colour p232 mauve)
    (wood p232 pine)
    (surface-condition p232 verysmooth)
    (treatment p232 colourfragments)
    (goalsize p232 small)
    
    
    
    
    (unused p233)
    (goalsize p233 small)
    
    
    
    
    (unused p234)
    (goalsize p234 small)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 medium)
    
    
    
    
    (available p237)
    (colour p237 mauve)
    (wood p237 teak)
    (surface-condition p237 smooth)
    (treatment p237 varnished)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (unused p239)
    (goalsize p239 small)
    
    
    
    
    (available p240)
    (colour p240 blue)
    (wood p240 cherry)
    (surface-condition p240 smooth)
    (treatment p240 glazed)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 medium)
    
    
    
    
    (unused p242)
    (goalsize p242 large)
    
    
    
    
    (unused p243)
    (goalsize p243 small)
    
    
    
    
    (unused p244)
    (goalsize p244 medium)
    
    
    
    
    (unused p245)
    (goalsize p245 large)
    
    
    
    
    (unused p246)
    (goalsize p246 large)
    
    
    
    
    (available p247)
    (colour p247 white)
    (wood p247 oak)
    (surface-condition p247 rough)
    (treatment p247 varnished)
    (goalsize p247 small)
    
    
    
    
    (unused p248)
    (goalsize p248 large)
    
    
    
    
    (unused p249)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 small)
    
    
    
    
    (unused p251)
    (goalsize p251 large)
    
    
    
    
    (unused p252)
    (goalsize p252 large)
    
    
    
    
    (available p253)
    (colour p253 white)
    (wood p253 walnut)
    (surface-condition p253 rough)
    (treatment p253 varnished)
    (goalsize p253 medium)
    
    
    
    
    (unused p254)
    (goalsize p254 large)
    
    
    
    
    (available p255)
    (colour p255 black)
    (wood p255 beech)
    (surface-condition p255 smooth)
    (treatment p255 varnished)
    (goalsize p255 small)
    
    
    
    
    (unused p256)
    (goalsize p256 small)
    
    
    
    
    (unused p257)
    (goalsize p257 large)
    
    
    
    
    (available p258)
    (colour p258 blue)
    (wood p258 oak)
    (surface-condition p258 rough)
    (treatment p258 glazed)
    (goalsize p258 medium)
    
    
    
    
    (unused p259)
    (goalsize p259 large)
    
    
    
    
    (unused p260)
    (goalsize p260 medium)
    
    
    
    
    (unused p261)
    (goalsize p261 medium)
    
    
    
    
    (unused p262)
    (goalsize p262 small)
    
    
    
    
    (available p263)
    (colour p263 mauve)
    (wood p263 teak)
    (surface-condition p263 smooth)
    (treatment p263 glazed)
    (goalsize p263 medium)
    
    
    
    
    (available p264)
    (colour p264 red)
    (wood p264 mahogany)
    (surface-condition p264 smooth)
    (treatment p264 colourfragments)
    (goalsize p264 medium)
    
    
    
    
    (unused p265)
    (goalsize p265 large)
    
    
    
    
    (unused p266)
    (goalsize p266 medium)
    
    
    
    
    (unused p267)
    (goalsize p267 medium)
    
    
    
    
    (unused p268)
    (goalsize p268 large)
    
    
    
    
    (unused p269)
    (goalsize p269 large)
    
    
    
    
    (unused p270)
    (goalsize p270 medium)
    
    
    
    
    (unused p271)
    (goalsize p271 small)
    
    
    
    
    (unused p272)
    (goalsize p272 large)
    
    
    
    
    (available p273)
    (colour p273 mauve)
    (wood p273 pine)
    (surface-condition p273 verysmooth)
    (treatment p273 glazed)
    (goalsize p273 large)
    
    
    
    
    (unused p274)
    (goalsize p274 small)
    
    
    
    
    (unused p275)
    (goalsize p275 large)
    
    
    
    
    (available p276)
    (colour p276 red)
    (wood p276 oak)
    (surface-condition p276 rough)
    (treatment p276 varnished)
    (goalsize p276 small)
    
    
    
    
    (unused p277)
    (goalsize p277 medium)
    
    
    
    
    (unused p278)
    (goalsize p278 large)
    
    
    
    
    (unused p279)
    (goalsize p279 small)
    
    
    
    
    (available p280)
    (colour p280 green)
    (wood p280 oak)
    (surface-condition p280 rough)
    (treatment p280 varnished)
    (goalsize p280 medium)
    
    
    
    
    (unused p281)
    (goalsize p281 large)
    
    
    
    
    (unused p282)
    (goalsize p282 medium)
    
    
    
    
    (unused p283)
    (goalsize p283 medium)
    
    
    
    
    (available p284)
    (colour p284 natural)
    (wood p284 mahogany)
    (surface-condition p284 rough)
    (treatment p284 varnished)
    (goalsize p284 large)
    
    
    
    
    (unused p285)
    (goalsize p285 small)
    
    
    
    
    (unused p286)
    (goalsize p286 medium)
    
    
    
    
    (unused p287)
    (goalsize p287 medium)
    
    
    
    
    (unused p288)
    (goalsize p288 medium)
    
    
    
    
    (unused p289)
    (goalsize p289 small)
    
    
    
    
    (unused p290)
    (goalsize p290 large)
    
    
    
    
    (unused p291)
    (goalsize p291 large)
    
    
    
    
    (unused p292)
    (goalsize p292 medium)
    
    
    
    
    (unused p293)
    (goalsize p293 small)
    
    
    
    
    (unused p294)
    (goalsize p294 small)
    
    
    
    
    (unused p295)
    (goalsize p295 large)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s11)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s7)
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
    (boardsize b6 s9)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s9)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 cherry)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s3)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s6)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s8)
    (wood b15 mahogany)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s8)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 mahogany)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s10)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s7)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s4)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s6)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s5)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s10)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s10)
    (wood b29 oak)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s8)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 oak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s8)
    (wood b32 oak)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s8)
    (wood b33 oak)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 oak)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s6)
    (wood b35 oak)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s8)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s7)
    (wood b37 pine)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s7)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s10)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 pine)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s11)
    (wood b41 pine)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s8)
    (wood b42 pine)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s11)
    (wood b43 pine)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s10)
    (wood b44 pine)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s6)
    (wood b45 pine)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s7)
    (wood b46 pine)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s1)
    (wood b47 pine)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s7)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s11)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s6)
    (wood b50 walnut)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s9)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s7)
    (wood b52 walnut)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s4)
    (wood b53 walnut)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s8)
    (wood b54 walnut)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s10)
    (wood b55 walnut)
    (surface-condition b55 smooth)
    (available b55)
    (boardsize b56 s9)
    (wood b56 walnut)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s7)
    (wood b57 walnut)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s10)
    (wood b58 walnut)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s11)
    (wood b59 walnut)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s8)
    (wood b60 walnut)
    (surface-condition b60 smooth)
    (available b60)
    (boardsize b61 s10)
    (wood b61 walnut)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s10)
    (wood b62 walnut)
    (surface-condition b62 smooth)
    (available b62)
    (boardsize b63 s11)
    (wood b63 walnut)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s7)
    (wood b64 teak)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s8)
    (wood b65 teak)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s10)
    (wood b66 teak)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s7)
    (wood b67 teak)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s7)
    (wood b68 teak)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s8)
    (wood b69 teak)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s7)
    (wood b70 teak)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s8)
    (wood b71 teak)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s8)
    (wood b72 teak)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s7)
    (wood b73 teak)
    (surface-condition b73 smooth)
    (available b73)
    (boardsize b74 s10)
    (wood b74 beech)
    (surface-condition b74 rough)
    (available b74)
    (boardsize b75 s7)
    (wood b75 beech)
    (surface-condition b75 rough)
    (available b75)
    (boardsize b76 s10)
    (wood b76 beech)
    (surface-condition b76 rough)
    (available b76)
    (boardsize b77 s8)
    (wood b77 beech)
    (surface-condition b77 rough)
    (available b77)
    (boardsize b78 s7)
    (wood b78 beech)
    (surface-condition b78 rough)
    (available b78)
    (boardsize b79 s8)
    (wood b79 beech)
    (surface-condition b79 rough)
    (available b79)
    (boardsize b80 s9)
    (wood b80 beech)
    (surface-condition b80 rough)
    (available b80)
    (boardsize b81 s9)
    (wood b81 beech)
    (surface-condition b81 rough)
    (available b81)
    (boardsize b82 s9)
    (wood b82 beech)
    (surface-condition b82 rough)
    (available b82)
    (boardsize b83 s6)
    (wood b83 beech)
    (surface-condition b83 rough)
    (available b83)
    (boardsize b84 s7)
    (wood b84 beech)
    (surface-condition b84 rough)
    (available b84)
    (boardsize b85 s6)
    (wood b85 beech)
    (surface-condition b85 smooth)
    (available b85)
    (boardsize b86 s8)
    (wood b86 beech)
    (surface-condition b86 rough)
    (available b86)
    (boardsize b87 s6)
    (wood b87 beech)
    (surface-condition b87 rough)
    (available b87)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (wood p0 oak)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 white)
      (wood p1 beech)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 black)
      (wood p3 beech)
      (available p4)
      (colour p4 natural)
      (wood p4 pine)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 white)
      (wood p5 oak)
      (available p6)
      (colour p6 white)
      (wood p6 pine)
      (surface-condition p6 smooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 black)
      (wood p7 pine)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 blue)
      (treatment p8 varnished)
      (available p9)
      (colour p9 natural)
      (wood p9 pine)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (wood p10 beech)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 red)
      (wood p11 cherry)
      (available p12)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 natural)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (wood p14 cherry)
      (surface-condition p14 verysmooth)
      (available p15)
      (colour p15 blue)
      (surface-condition p15 verysmooth)
      (available p16)
      (wood p16 mahogany)
      (treatment p16 varnished)
      (available p17)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 white)
      (wood p18 mahogany)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 black)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 mauve)
      (surface-condition p20 smooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 mauve)
      (wood p21 pine)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (wood p22 pine)
      (surface-condition p22 verysmooth)
      (available p23)
      (wood p23 oak)
      (surface-condition p23 smooth)
      (available p24)
      (colour p24 blue)
      (wood p24 pine)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 white)
      (surface-condition p26 smooth)
      (available p27)
      (wood p27 beech)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 green)
      (treatment p28 varnished)
      (available p29)
      (wood p29 mahogany)
      (treatment p29 glazed)
      (available p30)
      (colour p30 mauve)
      (surface-condition p30 smooth)
      (available p31)
      (wood p31 cherry)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 natural)
      (surface-condition p33 verysmooth)
      (available p34)
      (wood p34 beech)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 blue)
      (wood p35 mahogany)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (wood p36 pine)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 white)
      (surface-condition p37 smooth)
      (available p38)
      (colour p38 blue)
      (wood p38 cherry)
      (surface-condition p38 verysmooth)
      (treatment p38 varnished)
      (available p39)
      (wood p39 oak)
      (treatment p39 varnished)
      (available p40)
      (colour p40 black)
      (wood p40 beech)
      (surface-condition p40 verysmooth)
      (treatment p40 glazed)
      (available p41)
      (wood p41 cherry)
      (treatment p41 glazed)
      (available p42)
      (colour p42 green)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 natural)
      (surface-condition p43 verysmooth)
      (available p44)
      (wood p44 pine)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (wood p45 pine)
      (treatment p45 glazed)
      (available p46)
      (colour p46 mauve)
      (wood p46 mahogany)
      (surface-condition p46 verysmooth)
      (available p47)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (colour p48 red)
      (wood p48 beech)
      (available p49)
      (wood p49 teak)
      (surface-condition p49 smooth)
      (available p50)
      (colour p50 green)
      (wood p50 mahogany)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 black)
      (wood p51 walnut)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 natural)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (surface-condition p53 verysmooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 mauve)
      (surface-condition p54 smooth)
      (available p55)
      (wood p55 walnut)
      (treatment p55 glazed)
      (available p56)
      (colour p56 natural)
      (wood p56 beech)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (surface-condition p57 smooth)
      (treatment p57 varnished)
      (available p58)
      (wood p58 oak)
      (treatment p58 varnished)
      (available p59)
      (colour p59 green)
      (surface-condition p59 verysmooth)
      (available p60)
      (colour p60 blue)
      (wood p60 walnut)
      (available p61)
      (surface-condition p61 smooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 blue)
      (wood p62 oak)
      (available p63)
      (colour p63 blue)
      (wood p63 teak)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 natural)
      (wood p64 oak)
      (treatment p64 varnished)
      (available p65)
      (colour p65 red)
      (wood p65 pine)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (wood p67 pine)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 white)
      (wood p68 oak)
      (surface-condition p68 smooth)
      (treatment p68 glazed)
      (available p69)
      (wood p69 teak)
      (surface-condition p69 verysmooth)
      (available p70)
      (colour p70 white)
      (wood p70 mahogany)
      (available p71)
      (wood p71 mahogany)
      (surface-condition p71 smooth)
      (available p72)
      (wood p72 pine)
      (treatment p72 varnished)
      (available p73)
      (colour p73 green)
      (wood p73 teak)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 white)
      (wood p74 cherry)
      (treatment p74 varnished)
      (available p75)
      (colour p75 white)
      (wood p75 teak)
      (available p76)
      (wood p76 cherry)
      (surface-condition p76 verysmooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 white)
      (wood p77 beech)
      (available p78)
      (colour p78 natural)
      (surface-condition p78 verysmooth)
      (treatment p78 varnished)
      (available p79)
      (colour p79 blue)
      (treatment p79 glazed)
      (available p80)
      (colour p80 blue)
      (wood p80 teak)
      (treatment p80 varnished)
      (available p81)
      (wood p81 walnut)
      (treatment p81 varnished)
      (available p82)
      (wood p82 walnut)
      (surface-condition p82 smooth)
      (available p83)
      (wood p83 oak)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 blue)
      (wood p84 pine)
      (surface-condition p84 smooth)
      (available p85)
      (colour p85 blue)
      (treatment p85 glazed)
      (available p86)
      (colour p86 black)
      (wood p86 pine)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 black)
      (wood p87 oak)
      (surface-condition p87 verysmooth)
      (treatment p87 glazed)
      (available p88)
      (surface-condition p88 smooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 mauve)
      (treatment p89 varnished)
      (available p90)
      (surface-condition p90 smooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 white)
      (treatment p91 glazed)
      (available p92)
      (colour p92 blue)
      (wood p92 mahogany)
      (surface-condition p92 verysmooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 green)
      (surface-condition p93 smooth)
      (available p94)
      (colour p94 red)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 mauve)
      (surface-condition p95 verysmooth)
      (available p96)
      (colour p96 blue)
      (surface-condition p96 verysmooth)
      (available p97)
      (surface-condition p97 verysmooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 black)
      (surface-condition p98 smooth)
      (treatment p98 glazed)
      (available p99)
      (colour p99 black)
      (wood p99 mahogany)
      (available p100)
      (surface-condition p100 verysmooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 red)
      (wood p101 mahogany)
      (surface-condition p101 verysmooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 black)
      (wood p102 pine)
      (surface-condition p102 smooth)
      (treatment p102 glazed)
      (available p103)
      (wood p103 oak)
      (surface-condition p103 smooth)
      (available p104)
      (colour p104 red)
      (treatment p104 varnished)
      (available p105)
      (wood p105 cherry)
      (surface-condition p105 verysmooth)
      (available p106)
      (colour p106 natural)
      (treatment p106 glazed)
      (available p107)
      (colour p107 white)
      (wood p107 beech)
      (available p108)
      (colour p108 blue)
      (wood p108 oak)
      (surface-condition p108 smooth)
      (treatment p108 varnished)
      (available p109)
      (wood p109 oak)
      (treatment p109 glazed)
      (available p110)
      (colour p110 black)
      (wood p110 mahogany)
      (surface-condition p110 smooth)
      (treatment p110 varnished)
      (available p111)
      (colour p111 natural)
      (wood p111 oak)
      (available p112)
      (colour p112 green)
      (treatment p112 glazed)
      (available p113)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 blue)
      (treatment p114 varnished)
      (available p115)
      (colour p115 green)
      (surface-condition p115 verysmooth)
      (available p116)
      (colour p116 green)
      (wood p116 beech)
      (surface-condition p116 verysmooth)
      (treatment p116 glazed)
      (available p117)
      (colour p117 green)
      (treatment p117 varnished)
      (available p118)
      (colour p118 black)
      (wood p118 mahogany)
      (surface-condition p118 smooth)
      (treatment p118 glazed)
      (available p119)
      (wood p119 teak)
      (surface-condition p119 verysmooth)
      (available p120)
      (colour p120 blue)
      (wood p120 teak)
      (surface-condition p120 smooth)
      (available p121)
      (colour p121 white)
      (treatment p121 varnished)
      (available p122)
      (colour p122 black)
      (wood p122 oak)
      (treatment p122 glazed)
      (available p123)
      (colour p123 green)
      (treatment p123 glazed)
      (available p124)
      (wood p124 walnut)
      (treatment p124 varnished)
      (available p125)
      (wood p125 beech)
      (surface-condition p125 smooth)
      (available p126)
      (colour p126 red)
      (wood p126 walnut)
      (surface-condition p126 verysmooth)
      (treatment p126 varnished)
      (available p127)
      (colour p127 mauve)
      (wood p127 oak)
      (surface-condition p127 smooth)
      (treatment p127 varnished)
      (available p128)
      (wood p128 cherry)
      (surface-condition p128 verysmooth)
      (treatment p128 glazed)
      (available p129)
      (colour p129 natural)
      (surface-condition p129 verysmooth)
      (available p130)
      (wood p130 oak)
      (surface-condition p130 smooth)
      (treatment p130 glazed)
      (available p131)
      (colour p131 black)
      (wood p131 oak)
      (available p132)
      (colour p132 blue)
      (wood p132 beech)
      (available p133)
      (surface-condition p133 verysmooth)
      (treatment p133 varnished)
      (available p134)
      (surface-condition p134 verysmooth)
      (treatment p134 glazed)
      (available p135)
      (colour p135 black)
      (wood p135 walnut)
      (treatment p135 varnished)
      (available p136)
      (colour p136 mauve)
      (treatment p136 varnished)
      (available p137)
      (colour p137 green)
      (wood p137 oak)
      (treatment p137 varnished)
      (available p138)
      (surface-condition p138 smooth)
      (treatment p138 varnished)
      (available p139)
      (colour p139 red)
      (wood p139 pine)
      (surface-condition p139 smooth)
      (available p140)
      (colour p140 black)
      (treatment p140 varnished)
      (available p141)
      (wood p141 walnut)
      (surface-condition p141 verysmooth)
      (available p142)
      (surface-condition p142 smooth)
      (treatment p142 varnished)
      (available p143)
      (wood p143 mahogany)
      (surface-condition p143 verysmooth)
      (available p144)
      (colour p144 red)
      (wood p144 cherry)
      (surface-condition p144 verysmooth)
      (treatment p144 varnished)
      (available p145)
      (wood p145 teak)
      (surface-condition p145 verysmooth)
      (available p146)
      (colour p146 mauve)
      (wood p146 cherry)
      (surface-condition p146 verysmooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 green)
      (wood p147 pine)
      (surface-condition p147 verysmooth)
      (treatment p147 glazed)
      (available p148)
      (colour p148 red)
      (wood p148 cherry)
      (treatment p148 glazed)
      (available p149)
      (surface-condition p149 smooth)
      (treatment p149 varnished)
      (available p150)
      (colour p150 natural)
      (wood p150 pine)
      (surface-condition p150 smooth)
      (available p151)
      (wood p151 beech)
      (surface-condition p151 smooth)
      (treatment p151 glazed)
      (available p152)
      (colour p152 black)
      (wood p152 beech)
      (available p153)
      (wood p153 cherry)
      (surface-condition p153 verysmooth)
      (available p154)
      (colour p154 blue)
      (wood p154 walnut)
      (available p155)
      (colour p155 red)
      (wood p155 walnut)
      (treatment p155 varnished)
      (available p156)
      (colour p156 blue)
      (wood p156 cherry)
      (surface-condition p156 verysmooth)
      (treatment p156 glazed)
      (available p157)
      (colour p157 blue)
      (wood p157 walnut)
      (surface-condition p157 verysmooth)
      (available p158)
      (colour p158 green)
      (wood p158 teak)
      (surface-condition p158 verysmooth)
      (treatment p158 varnished)
      (available p159)
      (colour p159 red)
      (wood p159 pine)
      (surface-condition p159 verysmooth)
      (available p160)
      (colour p160 blue)
      (wood p160 cherry)
      (surface-condition p160 verysmooth)
      (treatment p160 varnished)
      (available p161)
      (colour p161 red)
      (surface-condition p161 verysmooth)
      (treatment p161 glazed)
      (available p162)
      (wood p162 teak)
      (treatment p162 varnished)
      (available p163)
      (colour p163 blue)
      (wood p163 beech)
      (available p164)
      (colour p164 black)
      (treatment p164 varnished)
      (available p165)
      (colour p165 black)
      (wood p165 walnut)
      (surface-condition p165 verysmooth)
      (treatment p165 glazed)
      (available p166)
      (colour p166 mauve)
      (wood p166 cherry)
      (surface-condition p166 smooth)
      (treatment p166 glazed)
      (available p167)
      (colour p167 blue)
      (treatment p167 glazed)
      (available p168)
      (colour p168 white)
      (wood p168 beech)
      (surface-condition p168 verysmooth)
      (available p169)
      (wood p169 pine)
      (treatment p169 varnished)
      (available p170)
      (colour p170 mauve)
      (surface-condition p170 verysmooth)
      (available p171)
      (surface-condition p171 smooth)
      (treatment p171 varnished)
      (available p172)
      (surface-condition p172 smooth)
      (treatment p172 glazed)
      (available p173)
      (colour p173 natural)
      (wood p173 beech)
      (available p174)
      (wood p174 oak)
      (surface-condition p174 smooth)
      (available p175)
      (wood p175 oak)
      (surface-condition p175 verysmooth)
      (available p176)
      (colour p176 natural)
      (treatment p176 glazed)
      (available p177)
      (colour p177 natural)
      (surface-condition p177 smooth)
      (available p178)
      (colour p178 green)
      (surface-condition p178 verysmooth)
      (treatment p178 glazed)
      (available p179)
      (surface-condition p179 smooth)
      (treatment p179 glazed)
      (available p180)
      (colour p180 mauve)
      (wood p180 teak)
      (available p181)
      (colour p181 natural)
      (surface-condition p181 smooth)
      (available p182)
      (colour p182 blue)
      (treatment p182 varnished)
      (available p183)
      (wood p183 mahogany)
      (treatment p183 varnished)
      (available p184)
      (wood p184 cherry)
      (surface-condition p184 verysmooth)
      (treatment p184 varnished)
      (available p185)
      (colour p185 white)
      (wood p185 cherry)
      (surface-condition p185 verysmooth)
      (treatment p185 glazed)
      (available p186)
      (colour p186 mauve)
      (wood p186 pine)
      (surface-condition p186 smooth)
      (treatment p186 varnished)
      (available p187)
      (colour p187 red)
      (treatment p187 glazed)
      (available p188)
      (surface-condition p188 smooth)
      (treatment p188 varnished)
      (available p189)
      (colour p189 natural)
      (wood p189 beech)
      (surface-condition p189 smooth)
      (treatment p189 varnished)
      (available p190)
      (colour p190 blue)
      (wood p190 oak)
      (surface-condition p190 verysmooth)
      (treatment p190 glazed)
      (available p191)
      (colour p191 white)
      (wood p191 beech)
      (surface-condition p191 verysmooth)
      (treatment p191 varnished)
      (available p192)
      (colour p192 mauve)
      (wood p192 oak)
      (available p193)
      (colour p193 mauve)
      (wood p193 cherry)
      (surface-condition p193 verysmooth)
      (available p194)
      (colour p194 blue)
      (wood p194 cherry)
      (treatment p194 glazed)
      (available p195)
      (colour p195 red)
      (treatment p195 varnished)
      (available p196)
      (wood p196 pine)
      (surface-condition p196 smooth)
      (available p197)
      (colour p197 natural)
      (treatment p197 glazed)
      (available p198)
      (colour p198 black)
      (surface-condition p198 smooth)
      (available p199)
      (colour p199 green)
      (surface-condition p199 verysmooth)
      (available p200)
      (wood p200 walnut)
      (treatment p200 glazed)
      (available p201)
      (colour p201 green)
      (surface-condition p201 smooth)
      (available p202)
      (colour p202 black)
      (wood p202 pine)
      (available p203)
      (colour p203 mauve)
      (wood p203 walnut)
      (treatment p203 glazed)
      (available p204)
      (colour p204 black)
      (surface-condition p204 verysmooth)
      (available p205)
      (colour p205 natural)
      (treatment p205 glazed)
      (available p206)
      (colour p206 mauve)
      (surface-condition p206 verysmooth)
      (treatment p206 varnished)
      (available p207)
      (colour p207 white)
      (wood p207 walnut)
      (surface-condition p207 verysmooth)
      (treatment p207 varnished)
      (available p208)
      (wood p208 teak)
      (surface-condition p208 verysmooth)
      (treatment p208 varnished)
      (available p209)
      (colour p209 green)
      (wood p209 mahogany)
      (available p210)
      (surface-condition p210 smooth)
      (treatment p210 glazed)
      (available p211)
      (colour p211 natural)
      (wood p211 beech)
      (surface-condition p211 verysmooth)
      (treatment p211 varnished)
      (available p212)
      (colour p212 natural)
      (wood p212 teak)
      (surface-condition p212 verysmooth)
      (treatment p212 glazed)
      (available p213)
      (colour p213 blue)
      (surface-condition p213 smooth)
      (treatment p213 varnished)
      (available p214)
      (colour p214 green)
      (wood p214 teak)
      (surface-condition p214 smooth)
      (available p215)
      (wood p215 oak)
      (surface-condition p215 verysmooth)
      (treatment p215 glazed)
      (available p216)
      (colour p216 blue)
      (wood p216 cherry)
      (surface-condition p216 smooth)
      (treatment p216 glazed)
      (available p217)
      (colour p217 mauve)
      (wood p217 oak)
      (available p218)
      (colour p218 blue)
      (treatment p218 glazed)
      (available p219)
      (wood p219 walnut)
      (surface-condition p219 verysmooth)
      (treatment p219 varnished)
      (available p220)
      (wood p220 cherry)
      (treatment p220 varnished)
      (available p221)
      (colour p221 mauve)
      (wood p221 walnut)
      (available p222)
      (colour p222 natural)
      (wood p222 mahogany)
      (surface-condition p222 verysmooth)
      (available p223)
      (wood p223 beech)
      (treatment p223 glazed)
      (available p224)
      (colour p224 red)
      (surface-condition p224 smooth)
      (treatment p224 glazed)
      (available p225)
      (colour p225 red)
      (wood p225 pine)
      (surface-condition p225 smooth)
      (treatment p225 varnished)
      (available p226)
      (colour p226 green)
      (wood p226 pine)
      (surface-condition p226 smooth)
      (treatment p226 glazed)
      (available p227)
      (colour p227 blue)
      (wood p227 cherry)
      (surface-condition p227 verysmooth)
      (treatment p227 varnished)
      (available p228)
      (wood p228 walnut)
      (surface-condition p228 verysmooth)
      (treatment p228 glazed)
      (available p229)
      (wood p229 mahogany)
      (treatment p229 varnished)
      (available p230)
      (colour p230 red)
      (wood p230 walnut)
      (surface-condition p230 smooth)
      (available p231)
      (wood p231 teak)
      (treatment p231 varnished)
      (available p232)
      (colour p232 black)
      (treatment p232 glazed)
      (available p233)
      (wood p233 oak)
      (treatment p233 glazed)
      (available p234)
      (colour p234 red)
      (surface-condition p234 smooth)
      (available p235)
      (colour p235 green)
      (wood p235 walnut)
      (surface-condition p235 verysmooth)
      (treatment p235 glazed)
      (available p236)
      (colour p236 blue)
      (wood p236 beech)
      (available p237)
      (colour p237 green)
      (treatment p237 glazed)
      (available p238)
      (wood p238 beech)
      (surface-condition p238 verysmooth)
      (available p239)
      (colour p239 white)
      (surface-condition p239 verysmooth)
      (available p240)
      (colour p240 white)
      (surface-condition p240 smooth)
      (available p241)
      (wood p241 pine)
      (surface-condition p241 smooth)
      (treatment p241 glazed)
      (available p242)
      (colour p242 green)
      (wood p242 beech)
      (surface-condition p242 smooth)
      (available p243)
      (wood p243 pine)
      (treatment p243 varnished)
      (available p244)
      (colour p244 green)
      (wood p244 teak)
      (treatment p244 varnished)
      (available p245)
      (colour p245 white)
      (surface-condition p245 verysmooth)
      (treatment p245 varnished)
      (available p246)
      (colour p246 blue)
      (wood p246 oak)
      (surface-condition p246 smooth)
      (treatment p246 varnished)
      (available p247)
      (colour p247 red)
      (surface-condition p247 smooth)
      (available p248)
      (colour p248 mauve)
      (surface-condition p248 smooth)
      (available p249)
      (colour p249 white)
      (treatment p249 varnished)
      (available p250)
      (wood p250 pine)
      (treatment p250 varnished)
      (available p251)
      (colour p251 white)
      (wood p251 beech)
      (surface-condition p251 verysmooth)
      (treatment p251 varnished)
      (available p252)
      (colour p252 natural)
      (wood p252 walnut)
      (surface-condition p252 verysmooth)
      (treatment p252 varnished)
      (available p253)
      (colour p253 blue)
      (wood p253 walnut)
      (available p254)
      (surface-condition p254 smooth)
      (treatment p254 varnished)
      (available p255)
      (colour p255 red)
      (surface-condition p255 smooth)
      (treatment p255 glazed)
      (available p256)
      (wood p256 pine)
      (treatment p256 glazed)
      (available p257)
      (colour p257 white)
      (wood p257 pine)
      (surface-condition p257 smooth)
      (treatment p257 varnished)
      (available p258)
      (surface-condition p258 smooth)
      (treatment p258 varnished)
      (available p259)
      (surface-condition p259 smooth)
      (treatment p259 varnished)
      (available p260)
      (wood p260 walnut)
      (treatment p260 varnished)
      (available p261)
      (wood p261 teak)
      (treatment p261 glazed)
      (available p262)
      (colour p262 white)
      (treatment p262 glazed)
      (available p263)
      (colour p263 red)
      (surface-condition p263 verysmooth)
      (treatment p263 glazed)
      (available p264)
      (colour p264 natural)
      (wood p264 mahogany)
      (surface-condition p264 verysmooth)
      (treatment p264 varnished)
      (available p265)
      (colour p265 blue)
      (wood p265 walnut)
      (surface-condition p265 verysmooth)
      (treatment p265 varnished)
      (available p266)
      (surface-condition p266 verysmooth)
      (treatment p266 varnished)
      (available p267)
      (colour p267 black)
      (treatment p267 glazed)
      (available p268)
      (colour p268 mauve)
      (treatment p268 glazed)
      (available p269)
      (colour p269 blue)
      (wood p269 cherry)
      (available p270)
      (colour p270 natural)
      (wood p270 cherry)
      (surface-condition p270 smooth)
      (available p271)
      (wood p271 pine)
      (surface-condition p271 smooth)
      (available p272)
      (colour p272 mauve)
      (treatment p272 glazed)
      (available p273)
      (wood p273 pine)
      (treatment p273 varnished)
      (available p274)
      (colour p274 blue)
      (surface-condition p274 verysmooth)
      (available p275)
      (colour p275 red)
      (wood p275 teak)
      (treatment p275 glazed)
      (available p276)
      (colour p276 mauve)
      (wood p276 oak)
      (surface-condition p276 smooth)
      (available p277)
      (colour p277 red)
      (wood p277 walnut)
      (surface-condition p277 smooth)
      (treatment p277 varnished)
      (available p278)
      (colour p278 mauve)
      (wood p278 beech)
      (surface-condition p278 smooth)
      (treatment p278 varnished)
      (available p279)
      (colour p279 blue)
      (surface-condition p279 verysmooth)
      (treatment p279 varnished)
      (available p280)
      (colour p280 mauve)
      (surface-condition p280 verysmooth)
      (available p281)
      (colour p281 blue)
      (treatment p281 varnished)
      (available p282)
      (wood p282 pine)
      (surface-condition p282 verysmooth)
      (available p283)
      (wood p283 cherry)
      (treatment p283 varnished)
      (available p284)
      (wood p284 mahogany)
      (treatment p284 glazed)
      (available p285)
      (colour p285 white)
      (surface-condition p285 smooth)
      (available p286)
      (colour p286 black)
      (treatment p286 glazed)
      (available p287)
      (wood p287 mahogany)
      (surface-condition p287 verysmooth)
      (available p288)
      (wood p288 cherry)
      (surface-condition p288 verysmooth)
      (available p289)
      (surface-condition p289 smooth)
      (treatment p289 glazed)
      (available p290)
      (surface-condition p290 smooth)
      (treatment p290 varnished)
      (available p291)
      (colour p291 blue)
      (surface-condition p291 verysmooth)
      (treatment p291 glazed)
      (available p292)
      (colour p292 mauve)
      (wood p292 beech)
      (treatment p292 glazed)
      (available p293)
      (wood p293 pine)
      (surface-condition p293 verysmooth)
      (available p294)
      (wood p294 oak)
      (surface-condition p294 smooth)
      (available p295)
      (colour p295 red)
      (wood p295 beech)
    )
  )
  
)
