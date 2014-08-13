; woodworking task with 299 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 108499

(define (problem wood-prob-sat-204)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black red blue green white mauve - acolour
    teak walnut mahogany beech pine cherry oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 p278 p279 p280 p281 p282 p283 p284 p285 p286 p287 p288 p289 p290 p291 p292 p293 p294 p295 p296 p297 p298 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 b75 b76 b77 b78 b79 b80 b81 b82 b83 b84 b85 b86 b87 b88 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 black)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (available p4)
    (colour p4 black)
    (wood p4 mahogany)
    (surface-condition p4 smooth)
    (treatment p4 varnished)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 black)
    (wood p22 pine)
    (surface-condition p22 smooth)
    (treatment p22 varnished)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 black)
    (wood p24 beech)
    (surface-condition p24 rough)
    (treatment p24 glazed)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 black)
    (wood p28 cherry)
    (surface-condition p28 verysmooth)
    (treatment p28 glazed)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 natural)
    (wood p31 cherry)
    (surface-condition p31 verysmooth)
    (treatment p31 varnished)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (available p39)
    (colour p39 white)
    (wood p39 teak)
    (surface-condition p39 smooth)
    (treatment p39 colourfragments)
    (goalsize p39 small)
    
    
    
    
    (available p40)
    (colour p40 green)
    (wood p40 teak)
    (surface-condition p40 rough)
    (treatment p40 varnished)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (available p42)
    (colour p42 natural)
    (wood p42 oak)
    (surface-condition p42 verysmooth)
    (treatment p42 glazed)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (available p46)
    (colour p46 white)
    (wood p46 cherry)
    (surface-condition p46 verysmooth)
    (treatment p46 colourfragments)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (available p51)
    (colour p51 white)
    (wood p51 cherry)
    (surface-condition p51 verysmooth)
    (treatment p51 varnished)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (available p53)
    (colour p53 red)
    (wood p53 oak)
    (surface-condition p53 verysmooth)
    (treatment p53 colourfragments)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (available p65)
    (colour p65 black)
    (wood p65 mahogany)
    (surface-condition p65 smooth)
    (treatment p65 colourfragments)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 green)
    (wood p66 oak)
    (surface-condition p66 rough)
    (treatment p66 glazed)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (available p71)
    (colour p71 natural)
    (wood p71 beech)
    (surface-condition p71 smooth)
    (treatment p71 glazed)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (available p78)
    (colour p78 red)
    (wood p78 mahogany)
    (surface-condition p78 verysmooth)
    (treatment p78 varnished)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (available p85)
    (colour p85 red)
    (wood p85 pine)
    (surface-condition p85 smooth)
    (treatment p85 glazed)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (available p95)
    (colour p95 blue)
    (wood p95 pine)
    (surface-condition p95 verysmooth)
    (treatment p95 glazed)
    (goalsize p95 medium)
    
    
    
    
    (available p96)
    (colour p96 black)
    (wood p96 cherry)
    (surface-condition p96 verysmooth)
    (treatment p96 varnished)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (available p99)
    (colour p99 green)
    (wood p99 pine)
    (surface-condition p99 rough)
    (treatment p99 colourfragments)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (available p105)
    (colour p105 red)
    (wood p105 pine)
    (surface-condition p105 verysmooth)
    (treatment p105 varnished)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (available p112)
    (colour p112 natural)
    (wood p112 beech)
    (surface-condition p112 verysmooth)
    (treatment p112 colourfragments)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (available p115)
    (colour p115 green)
    (wood p115 oak)
    (surface-condition p115 smooth)
    (treatment p115 colourfragments)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (available p122)
    (colour p122 red)
    (wood p122 oak)
    (surface-condition p122 rough)
    (treatment p122 colourfragments)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (available p125)
    (colour p125 blue)
    (wood p125 teak)
    (surface-condition p125 smooth)
    (treatment p125 varnished)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (available p140)
    (colour p140 mauve)
    (wood p140 mahogany)
    (surface-condition p140 rough)
    (treatment p140 varnished)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (available p142)
    (colour p142 white)
    (wood p142 oak)
    (surface-condition p142 rough)
    (treatment p142 glazed)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (available p146)
    (colour p146 white)
    (wood p146 cherry)
    (surface-condition p146 rough)
    (treatment p146 glazed)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (available p150)
    (colour p150 white)
    (wood p150 beech)
    (surface-condition p150 smooth)
    (treatment p150 glazed)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (available p161)
    (colour p161 mauve)
    (wood p161 teak)
    (surface-condition p161 smooth)
    (treatment p161 colourfragments)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (available p163)
    (colour p163 natural)
    (wood p163 walnut)
    (surface-condition p163 smooth)
    (treatment p163 colourfragments)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 medium)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 medium)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (available p174)
    (colour p174 white)
    (wood p174 beech)
    (surface-condition p174 rough)
    (treatment p174 glazed)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (unused p181)
    (goalsize p181 large)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (unused p184)
    (goalsize p184 small)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (available p190)
    (colour p190 green)
    (wood p190 mahogany)
    (surface-condition p190 smooth)
    (treatment p190 glazed)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (available p192)
    (colour p192 mauve)
    (wood p192 pine)
    (surface-condition p192 smooth)
    (treatment p192 glazed)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 small)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 small)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 medium)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 medium)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (available p210)
    (colour p210 blue)
    (wood p210 cherry)
    (surface-condition p210 smooth)
    (treatment p210 glazed)
    (goalsize p210 medium)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (available p212)
    (colour p212 red)
    (wood p212 pine)
    (surface-condition p212 smooth)
    (treatment p212 glazed)
    (goalsize p212 small)
    
    
    
    
    (unused p213)
    (goalsize p213 medium)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (unused p215)
    (goalsize p215 large)
    
    
    
    
    (available p216)
    (colour p216 mauve)
    (wood p216 mahogany)
    (surface-condition p216 rough)
    (treatment p216 colourfragments)
    (goalsize p216 small)
    
    
    
    
    (unused p217)
    (goalsize p217 medium)
    
    
    
    
    (unused p218)
    (goalsize p218 medium)
    
    
    
    
    (available p219)
    (colour p219 red)
    (wood p219 oak)
    (surface-condition p219 rough)
    (treatment p219 glazed)
    (goalsize p219 medium)
    
    
    
    
    (available p220)
    (colour p220 blue)
    (wood p220 oak)
    (surface-condition p220 verysmooth)
    (treatment p220 colourfragments)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (available p223)
    (colour p223 white)
    (wood p223 walnut)
    (surface-condition p223 verysmooth)
    (treatment p223 colourfragments)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 medium)
    
    
    
    
    (available p226)
    (colour p226 natural)
    (wood p226 mahogany)
    (surface-condition p226 smooth)
    (treatment p226 glazed)
    (goalsize p226 medium)
    
    
    
    
    (unused p227)
    (goalsize p227 medium)
    
    
    
    
    (unused p228)
    (goalsize p228 medium)
    
    
    
    
    (available p229)
    (colour p229 black)
    (wood p229 walnut)
    (surface-condition p229 verysmooth)
    (treatment p229 colourfragments)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 large)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (available p232)
    (colour p232 green)
    (wood p232 teak)
    (surface-condition p232 rough)
    (treatment p232 glazed)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 large)
    
    
    
    
    (unused p234)
    (goalsize p234 large)
    
    
    
    
    (available p235)
    (colour p235 red)
    (wood p235 mahogany)
    (surface-condition p235 rough)
    (treatment p235 colourfragments)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 large)
    
    
    
    
    (unused p237)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (unused p239)
    (goalsize p239 medium)
    
    
    
    
    (unused p240)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 large)
    
    
    
    
    (unused p242)
    (goalsize p242 large)
    
    
    
    
    (available p243)
    (colour p243 natural)
    (wood p243 mahogany)
    (surface-condition p243 smooth)
    (treatment p243 varnished)
    (goalsize p243 medium)
    
    
    
    
    (unused p244)
    (goalsize p244 large)
    
    
    
    
    (available p245)
    (colour p245 black)
    (wood p245 walnut)
    (surface-condition p245 verysmooth)
    (treatment p245 colourfragments)
    (goalsize p245 medium)
    
    
    
    
    (unused p246)
    (goalsize p246 large)
    
    
    
    
    (available p247)
    (colour p247 green)
    (wood p247 beech)
    (surface-condition p247 rough)
    (treatment p247 colourfragments)
    (goalsize p247 large)
    
    
    
    
    (unused p248)
    (goalsize p248 medium)
    
    
    
    
    (unused p249)
    (goalsize p249 medium)
    
    
    
    
    (unused p250)
    (goalsize p250 large)
    
    
    
    
    (unused p251)
    (goalsize p251 large)
    
    
    
    
    (unused p252)
    (goalsize p252 medium)
    
    
    
    
    (unused p253)
    (goalsize p253 small)
    
    
    
    
    (available p254)
    (colour p254 blue)
    (wood p254 beech)
    (surface-condition p254 verysmooth)
    (treatment p254 varnished)
    (goalsize p254 small)
    
    
    
    
    (unused p255)
    (goalsize p255 large)
    
    
    
    
    (unused p256)
    (goalsize p256 medium)
    
    
    
    
    (unused p257)
    (goalsize p257 small)
    
    
    
    
    (unused p258)
    (goalsize p258 medium)
    
    
    
    
    (unused p259)
    (goalsize p259 small)
    
    
    
    
    (unused p260)
    (goalsize p260 small)
    
    
    
    
    (unused p261)
    (goalsize p261 large)
    
    
    
    
    (unused p262)
    (goalsize p262 large)
    
    
    
    
    (unused p263)
    (goalsize p263 medium)
    
    
    
    
    (unused p264)
    (goalsize p264 large)
    
    
    
    
    (available p265)
    (colour p265 black)
    (wood p265 pine)
    (surface-condition p265 verysmooth)
    (treatment p265 glazed)
    (goalsize p265 small)
    
    
    
    
    (unused p266)
    (goalsize p266 large)
    
    
    
    
    (unused p267)
    (goalsize p267 small)
    
    
    
    
    (unused p268)
    (goalsize p268 medium)
    
    
    
    
    (unused p269)
    (goalsize p269 large)
    
    
    
    
    (unused p270)
    (goalsize p270 large)
    
    
    
    
    (unused p271)
    (goalsize p271 small)
    
    
    
    
    (unused p272)
    (goalsize p272 small)
    
    
    
    
    (unused p273)
    (goalsize p273 small)
    
    
    
    
    (unused p274)
    (goalsize p274 medium)
    
    
    
    
    (unused p275)
    (goalsize p275 large)
    
    
    
    
    (unused p276)
    (goalsize p276 small)
    
    
    
    
    (unused p277)
    (goalsize p277 small)
    
    
    
    
    (unused p278)
    (goalsize p278 medium)
    
    
    
    
    (unused p279)
    (goalsize p279 medium)
    
    
    
    
    (unused p280)
    (goalsize p280 small)
    
    
    
    
    (available p281)
    (colour p281 black)
    (wood p281 walnut)
    (surface-condition p281 rough)
    (treatment p281 colourfragments)
    (goalsize p281 large)
    
    
    
    
    (available p282)
    (colour p282 green)
    (wood p282 teak)
    (surface-condition p282 verysmooth)
    (treatment p282 glazed)
    (goalsize p282 large)
    
    
    
    
    (unused p283)
    (goalsize p283 small)
    
    
    
    
    (unused p284)
    (goalsize p284 small)
    
    
    
    
    (unused p285)
    (goalsize p285 small)
    
    
    
    
    (unused p286)
    (goalsize p286 medium)
    
    
    
    
    (available p287)
    (colour p287 blue)
    (wood p287 oak)
    (surface-condition p287 smooth)
    (treatment p287 glazed)
    (goalsize p287 small)
    
    
    
    
    (unused p288)
    (goalsize p288 medium)
    
    
    
    
    (unused p289)
    (goalsize p289 medium)
    
    
    
    
    (unused p290)
    (goalsize p290 small)
    
    
    
    
    (unused p291)
    (goalsize p291 medium)
    
    
    
    
    (available p292)
    (colour p292 black)
    (wood p292 mahogany)
    (surface-condition p292 verysmooth)
    (treatment p292 varnished)
    (goalsize p292 medium)
    
    
    
    
    (unused p293)
    (goalsize p293 large)
    
    
    
    
    (unused p294)
    (goalsize p294 medium)
    
    
    
    
    (unused p295)
    (goalsize p295 small)
    
    
    
    
    (available p296)
    (colour p296 mauve)
    (wood p296 teak)
    (surface-condition p296 smooth)
    (treatment p296 colourfragments)
    (goalsize p296 medium)
    
    
    
    
    (unused p297)
    (goalsize p297 large)
    
    
    
    
    (unused p298)
    (goalsize p298 small)
    
    
    
    
    (boardsize b0 s4)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s4)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s11)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 cherry)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s9)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s6)
    (wood b11 cherry)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s3)
    (wood b12 cherry)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s10)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s6)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s10)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 mahogany)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s6)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s7)
    (wood b21 mahogany)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 mahogany)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 mahogany)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s2)
    (wood b24 mahogany)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s6)
    (wood b26 oak)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s8)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s6)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s7)
    (wood b31 oak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s6)
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
    (boardsize b35 s5)
    (wood b35 oak)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s9)
    (wood b36 oak)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 oak)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s9)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s8)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s9)
    (wood b40 pine)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s10)
    (wood b41 pine)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s7)
    (wood b42 pine)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s8)
    (wood b43 pine)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s8)
    (wood b44 pine)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s10)
    (wood b45 pine)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s9)
    (wood b46 pine)
    (surface-condition b46 smooth)
    (available b46)
    (boardsize b47 s9)
    (wood b47 pine)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s8)
    (wood b48 pine)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s7)
    (wood b49 pine)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s12)
    (wood b50 pine)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s7)
    (wood b51 pine)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s4)
    (wood b52 pine)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s9)
    (wood b53 walnut)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s9)
    (wood b54 walnut)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s6)
    (wood b55 walnut)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s9)
    (wood b56 walnut)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s10)
    (wood b57 walnut)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s7)
    (wood b58 walnut)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s6)
    (wood b59 walnut)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s6)
    (wood b60 walnut)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s10)
    (wood b61 walnut)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s11)
    (wood b62 walnut)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s10)
    (wood b63 walnut)
    (surface-condition b63 smooth)
    (available b63)
    (boardsize b64 s8)
    (wood b64 walnut)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s9)
    (wood b65 walnut)
    (surface-condition b65 smooth)
    (available b65)
    (boardsize b66 s8)
    (wood b66 teak)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s8)
    (wood b67 teak)
    (surface-condition b67 smooth)
    (available b67)
    (boardsize b68 s8)
    (wood b68 teak)
    (surface-condition b68 smooth)
    (available b68)
    (boardsize b69 s10)
    (wood b69 teak)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s7)
    (wood b70 teak)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s9)
    (wood b71 teak)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s8)
    (wood b72 teak)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s10)
    (wood b73 teak)
    (surface-condition b73 rough)
    (available b73)
    (boardsize b74 s7)
    (wood b74 teak)
    (surface-condition b74 rough)
    (available b74)
    (boardsize b75 s7)
    (wood b75 teak)
    (surface-condition b75 rough)
    (available b75)
    (boardsize b76 s7)
    (wood b76 beech)
    (surface-condition b76 rough)
    (available b76)
    (boardsize b77 s10)
    (wood b77 beech)
    (surface-condition b77 smooth)
    (available b77)
    (boardsize b78 s8)
    (wood b78 beech)
    (surface-condition b78 smooth)
    (available b78)
    (boardsize b79 s8)
    (wood b79 beech)
    (surface-condition b79 rough)
    (available b79)
    (boardsize b80 s10)
    (wood b80 beech)
    (surface-condition b80 rough)
    (available b80)
    (boardsize b81 s6)
    (wood b81 beech)
    (surface-condition b81 rough)
    (available b81)
    (boardsize b82 s6)
    (wood b82 beech)
    (surface-condition b82 rough)
    (available b82)
    (boardsize b83 s8)
    (wood b83 beech)
    (surface-condition b83 smooth)
    (available b83)
    (boardsize b84 s8)
    (wood b84 beech)
    (surface-condition b84 rough)
    (available b84)
    (boardsize b85 s8)
    (wood b85 beech)
    (surface-condition b85 rough)
    (available b85)
    (boardsize b86 s9)
    (wood b86 beech)
    (surface-condition b86 rough)
    (available b86)
    (boardsize b87 s7)
    (wood b87 beech)
    (surface-condition b87 smooth)
    (available b87)
    (boardsize b88 s3)
    (wood b88 beech)
    (surface-condition b88 rough)
    (available b88)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 beech)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 natural)
      (wood p1 mahogany)
      (available p2)
      (colour p2 green)
      (wood p2 teak)
      (available p3)
      (colour p3 white)
      (wood p3 oak)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 red)
      (wood p4 mahogany)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 natural)
      (wood p5 walnut)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 black)
      (wood p6 oak)
      (available p7)
      (wood p7 beech)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 blue)
      (treatment p8 varnished)
      (available p9)
      (wood p9 pine)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (wood p10 pine)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 blue)
      (treatment p12 glazed)
      (available p13)
      (colour p13 natural)
      (wood p13 walnut)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (wood p14 pine)
      (surface-condition p14 verysmooth)
      (available p15)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 blue)
      (wood p16 beech)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 white)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 black)
      (wood p18 walnut)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (wood p19 pine)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 red)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 green)
      (treatment p21 glazed)
      (available p22)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 mauve)
      (wood p23 mahogany)
      (available p24)
      (wood p24 beech)
      (treatment p24 varnished)
      (available p25)
      (wood p25 pine)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 red)
      (wood p26 pine)
      (available p27)
      (colour p27 red)
      (treatment p27 varnished)
      (available p28)
      (colour p28 blue)
      (wood p28 cherry)
      (available p29)
      (wood p29 pine)
      (surface-condition p29 verysmooth)
      (available p30)
      (wood p30 teak)
      (treatment p30 glazed)
      (available p31)
      (colour p31 black)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 white)
      (wood p33 mahogany)
      (treatment p33 glazed)
      (available p34)
      (colour p34 blue)
      (surface-condition p34 smooth)
      (available p35)
      (colour p35 green)
      (wood p35 teak)
      (available p36)
      (wood p36 mahogany)
      (treatment p36 glazed)
      (available p37)
      (colour p37 green)
      (treatment p37 varnished)
      (available p38)
      (wood p38 pine)
      (treatment p38 varnished)
      (available p39)
      (colour p39 black)
      (treatment p39 glazed)
      (available p40)
      (colour p40 black)
      (wood p40 teak)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 green)
      (wood p41 mahogany)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 red)
      (surface-condition p42 verysmooth)
      (available p43)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 white)
      (wood p44 cherry)
      (treatment p44 varnished)
      (available p45)
      (colour p45 blue)
      (wood p45 pine)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 green)
      (wood p46 cherry)
      (surface-condition p46 verysmooth)
      (treatment p46 glazed)
      (available p47)
      (wood p47 cherry)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 mauve)
      (wood p48 mahogany)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 white)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (wood p50 oak)
      (treatment p50 glazed)
      (available p51)
      (colour p51 natural)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 green)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 black)
      (wood p53 oak)
      (treatment p53 glazed)
      (available p54)
      (wood p54 pine)
      (treatment p54 glazed)
      (available p55)
      (surface-condition p55 smooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 white)
      (surface-condition p56 verysmooth)
      (available p57)
      (wood p57 beech)
      (treatment p57 glazed)
      (available p58)
      (wood p58 beech)
      (treatment p58 varnished)
      (available p59)
      (colour p59 red)
      (surface-condition p59 verysmooth)
      (available p60)
      (colour p60 white)
      (wood p60 mahogany)
      (surface-condition p60 smooth)
      (treatment p60 glazed)
      (available p61)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (wood p62 beech)
      (surface-condition p62 smooth)
      (available p63)
      (wood p63 mahogany)
      (surface-condition p63 smooth)
      (available p64)
      (colour p64 mauve)
      (wood p64 oak)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (wood p65 mahogany)
      (treatment p65 glazed)
      (available p66)
      (colour p66 red)
      (wood p66 oak)
      (treatment p66 varnished)
      (available p67)
      (colour p67 black)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (wood p68 oak)
      (surface-condition p68 smooth)
      (available p69)
      (wood p69 oak)
      (treatment p69 varnished)
      (available p70)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 green)
      (wood p71 beech)
      (available p72)
      (colour p72 red)
      (surface-condition p72 smooth)
      (available p73)
      (wood p73 pine)
      (treatment p73 glazed)
      (available p74)
      (surface-condition p74 smooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 black)
      (treatment p75 glazed)
      (available p76)
      (colour p76 red)
      (wood p76 cherry)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (colour p77 green)
      (wood p77 cherry)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 mauve)
      (wood p78 mahogany)
      (available p79)
      (wood p79 mahogany)
      (treatment p79 varnished)
      (available p80)
      (colour p80 red)
      (wood p80 beech)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 mauve)
      (treatment p81 glazed)
      (available p82)
      (colour p82 black)
      (surface-condition p82 verysmooth)
      (available p83)
      (colour p83 green)
      (treatment p83 glazed)
      (available p84)
      (wood p84 oak)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 blue)
      (treatment p85 varnished)
      (available p86)
      (wood p86 cherry)
      (surface-condition p86 verysmooth)
      (available p87)
      (colour p87 black)
      (surface-condition p87 smooth)
      (treatment p87 glazed)
      (available p88)
      (wood p88 teak)
      (treatment p88 glazed)
      (available p89)
      (colour p89 green)
      (wood p89 walnut)
      (surface-condition p89 smooth)
      (available p90)
      (wood p90 pine)
      (treatment p90 glazed)
      (available p91)
      (wood p91 teak)
      (surface-condition p91 verysmooth)
      (treatment p91 glazed)
      (available p92)
      (colour p92 green)
      (wood p92 walnut)
      (available p93)
      (surface-condition p93 verysmooth)
      (treatment p93 glazed)
      (available p94)
      (wood p94 teak)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (wood p95 pine)
      (treatment p95 varnished)
      (available p96)
      (wood p96 cherry)
      (surface-condition p96 smooth)
      (available p97)
      (wood p97 beech)
      (surface-condition p97 verysmooth)
      (available p98)
      (wood p98 mahogany)
      (treatment p98 varnished)
      (available p99)
      (wood p99 pine)
      (surface-condition p99 verysmooth)
      (available p100)
      (wood p100 pine)
      (surface-condition p100 smooth)
      (available p101)
      (wood p101 mahogany)
      (surface-condition p101 verysmooth)
      (available p102)
      (colour p102 red)
      (wood p102 cherry)
      (surface-condition p102 verysmooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 natural)
      (surface-condition p103 verysmooth)
      (available p104)
      (colour p104 white)
      (wood p104 teak)
      (surface-condition p104 smooth)
      (treatment p104 glazed)
      (available p105)
      (colour p105 white)
      (treatment p105 varnished)
      (available p106)
      (colour p106 green)
      (wood p106 teak)
      (surface-condition p106 smooth)
      (available p107)
      (colour p107 green)
      (wood p107 pine)
      (available p108)
      (colour p108 blue)
      (wood p108 pine)
      (surface-condition p108 verysmooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 mauve)
      (treatment p109 varnished)
      (available p110)
      (colour p110 white)
      (treatment p110 glazed)
      (available p111)
      (colour p111 mauve)
      (surface-condition p111 smooth)
      (available p112)
      (colour p112 mauve)
      (treatment p112 glazed)
      (available p113)
      (wood p113 walnut)
      (surface-condition p113 smooth)
      (available p114)
      (colour p114 mauve)
      (wood p114 oak)
      (treatment p114 glazed)
      (available p115)
      (wood p115 oak)
      (surface-condition p115 verysmooth)
      (available p116)
      (colour p116 green)
      (treatment p116 glazed)
      (available p117)
      (colour p117 mauve)
      (wood p117 mahogany)
      (available p118)
      (wood p118 beech)
      (surface-condition p118 verysmooth)
      (available p119)
      (colour p119 mauve)
      (wood p119 beech)
      (surface-condition p119 smooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 blue)
      (wood p120 oak)
      (surface-condition p120 smooth)
      (treatment p120 varnished)
      (available p121)
      (wood p121 walnut)
      (surface-condition p121 smooth)
      (treatment p121 glazed)
      (available p122)
      (colour p122 green)
      (surface-condition p122 verysmooth)
      (available p123)
      (wood p123 teak)
      (treatment p123 varnished)
      (available p124)
      (colour p124 green)
      (wood p124 teak)
      (available p125)
      (surface-condition p125 smooth)
      (treatment p125 glazed)
      (available p126)
      (colour p126 white)
      (surface-condition p126 verysmooth)
      (available p127)
      (colour p127 mauve)
      (surface-condition p127 smooth)
      (available p128)
      (colour p128 mauve)
      (wood p128 pine)
      (surface-condition p128 verysmooth)
      (treatment p128 varnished)
      (available p129)
      (colour p129 green)
      (wood p129 beech)
      (surface-condition p129 verysmooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 green)
      (wood p130 beech)
      (surface-condition p130 verysmooth)
      (treatment p130 varnished)
      (available p131)
      (colour p131 natural)
      (wood p131 pine)
      (surface-condition p131 smooth)
      (available p132)
      (colour p132 mauve)
      (surface-condition p132 smooth)
      (available p133)
      (colour p133 blue)
      (surface-condition p133 verysmooth)
      (available p134)
      (colour p134 white)
      (wood p134 oak)
      (available p135)
      (colour p135 mauve)
      (wood p135 beech)
      (surface-condition p135 smooth)
      (treatment p135 glazed)
      (available p136)
      (wood p136 pine)
      (surface-condition p136 verysmooth)
      (available p137)
      (colour p137 mauve)
      (surface-condition p137 verysmooth)
      (available p138)
      (wood p138 walnut)
      (surface-condition p138 smooth)
      (treatment p138 varnished)
      (available p139)
      (surface-condition p139 verysmooth)
      (treatment p139 varnished)
      (available p140)
      (colour p140 natural)
      (wood p140 mahogany)
      (surface-condition p140 verysmooth)
      (treatment p140 varnished)
      (available p141)
      (colour p141 white)
      (wood p141 oak)
      (available p142)
      (surface-condition p142 smooth)
      (treatment p142 glazed)
      (available p143)
      (colour p143 mauve)
      (surface-condition p143 verysmooth)
      (available p144)
      (wood p144 teak)
      (surface-condition p144 smooth)
      (treatment p144 varnished)
      (available p145)
      (colour p145 red)
      (wood p145 cherry)
      (surface-condition p145 smooth)
      (treatment p145 varnished)
      (available p146)
      (colour p146 black)
      (wood p146 cherry)
      (surface-condition p146 verysmooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 red)
      (wood p147 teak)
      (surface-condition p147 smooth)
      (treatment p147 glazed)
      (available p148)
      (wood p148 teak)
      (treatment p148 varnished)
      (available p149)
      (colour p149 natural)
      (wood p149 cherry)
      (surface-condition p149 smooth)
      (treatment p149 varnished)
      (available p150)
      (colour p150 natural)
      (wood p150 beech)
      (available p151)
      (colour p151 green)
      (wood p151 cherry)
      (surface-condition p151 smooth)
      (treatment p151 varnished)
      (available p152)
      (wood p152 oak)
      (treatment p152 glazed)
      (available p153)
      (surface-condition p153 smooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 natural)
      (surface-condition p154 verysmooth)
      (available p155)
      (colour p155 green)
      (treatment p155 glazed)
      (available p156)
      (wood p156 walnut)
      (surface-condition p156 verysmooth)
      (treatment p156 glazed)
      (available p157)
      (wood p157 oak)
      (treatment p157 varnished)
      (available p158)
      (wood p158 walnut)
      (treatment p158 glazed)
      (available p159)
      (colour p159 red)
      (wood p159 oak)
      (surface-condition p159 verysmooth)
      (treatment p159 glazed)
      (available p160)
      (colour p160 white)
      (surface-condition p160 smooth)
      (available p161)
      (colour p161 red)
      (wood p161 teak)
      (surface-condition p161 smooth)
      (treatment p161 glazed)
      (available p162)
      (wood p162 beech)
      (surface-condition p162 verysmooth)
      (available p163)
      (wood p163 walnut)
      (treatment p163 varnished)
      (available p164)
      (colour p164 natural)
      (wood p164 beech)
      (surface-condition p164 smooth)
      (available p165)
      (surface-condition p165 verysmooth)
      (treatment p165 varnished)
      (available p166)
      (colour p166 white)
      (wood p166 teak)
      (surface-condition p166 verysmooth)
      (treatment p166 varnished)
      (available p167)
      (colour p167 natural)
      (wood p167 mahogany)
      (available p168)
      (colour p168 mauve)
      (wood p168 oak)
      (treatment p168 glazed)
      (available p169)
      (colour p169 white)
      (surface-condition p169 verysmooth)
      (available p170)
      (colour p170 black)
      (wood p170 cherry)
      (treatment p170 glazed)
      (available p171)
      (colour p171 mauve)
      (surface-condition p171 smooth)
      (available p172)
      (colour p172 blue)
      (surface-condition p172 verysmooth)
      (available p173)
      (colour p173 mauve)
      (treatment p173 varnished)
      (available p174)
      (wood p174 beech)
      (surface-condition p174 smooth)
      (treatment p174 glazed)
      (available p175)
      (colour p175 black)
      (treatment p175 varnished)
      (available p176)
      (colour p176 red)
      (wood p176 teak)
      (surface-condition p176 verysmooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 natural)
      (wood p177 cherry)
      (surface-condition p177 smooth)
      (treatment p177 glazed)
      (available p178)
      (surface-condition p178 smooth)
      (treatment p178 glazed)
      (available p179)
      (wood p179 pine)
      (surface-condition p179 verysmooth)
      (available p180)
      (wood p180 cherry)
      (treatment p180 varnished)
      (available p181)
      (wood p181 teak)
      (treatment p181 glazed)
      (available p182)
      (wood p182 teak)
      (surface-condition p182 verysmooth)
      (treatment p182 varnished)
      (available p183)
      (surface-condition p183 verysmooth)
      (treatment p183 varnished)
      (available p184)
      (colour p184 white)
      (wood p184 cherry)
      (surface-condition p184 smooth)
      (treatment p184 glazed)
      (available p185)
      (colour p185 green)
      (wood p185 pine)
      (surface-condition p185 verysmooth)
      (treatment p185 varnished)
      (available p186)
      (colour p186 natural)
      (treatment p186 varnished)
      (available p187)
      (colour p187 blue)
      (wood p187 beech)
      (surface-condition p187 smooth)
      (treatment p187 glazed)
      (available p188)
      (wood p188 walnut)
      (surface-condition p188 smooth)
      (available p189)
      (colour p189 natural)
      (treatment p189 varnished)
      (available p190)
      (colour p190 blue)
      (treatment p190 glazed)
      (available p191)
      (colour p191 black)
      (wood p191 oak)
      (available p192)
      (colour p192 black)
      (wood p192 pine)
      (surface-condition p192 smooth)
      (treatment p192 varnished)
      (available p193)
      (colour p193 mauve)
      (treatment p193 glazed)
      (available p194)
      (colour p194 white)
      (wood p194 walnut)
      (surface-condition p194 smooth)
      (treatment p194 varnished)
      (available p195)
      (colour p195 black)
      (wood p195 pine)
      (surface-condition p195 smooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 natural)
      (wood p196 cherry)
      (surface-condition p196 verysmooth)
      (treatment p196 varnished)
      (available p197)
      (wood p197 walnut)
      (surface-condition p197 smooth)
      (treatment p197 glazed)
      (available p198)
      (surface-condition p198 smooth)
      (treatment p198 varnished)
      (available p199)
      (wood p199 pine)
      (surface-condition p199 verysmooth)
      (available p200)
      (colour p200 blue)
      (surface-condition p200 smooth)
      (treatment p200 varnished)
      (available p201)
      (colour p201 black)
      (wood p201 pine)
      (available p202)
      (colour p202 red)
      (wood p202 mahogany)
      (available p203)
      (colour p203 red)
      (treatment p203 varnished)
      (available p204)
      (colour p204 natural)
      (surface-condition p204 smooth)
      (available p205)
      (colour p205 green)
      (wood p205 mahogany)
      (surface-condition p205 smooth)
      (available p206)
      (colour p206 white)
      (treatment p206 glazed)
      (available p207)
      (colour p207 white)
      (wood p207 beech)
      (surface-condition p207 smooth)
      (treatment p207 glazed)
      (available p208)
      (colour p208 natural)
      (wood p208 walnut)
      (treatment p208 glazed)
      (available p209)
      (colour p209 black)
      (wood p209 beech)
      (surface-condition p209 verysmooth)
      (treatment p209 glazed)
      (available p210)
      (colour p210 white)
      (wood p210 cherry)
      (surface-condition p210 smooth)
      (treatment p210 glazed)
      (available p211)
      (wood p211 teak)
      (treatment p211 glazed)
      (available p212)
      (surface-condition p212 verysmooth)
      (treatment p212 varnished)
      (available p213)
      (wood p213 beech)
      (surface-condition p213 verysmooth)
      (available p214)
      (colour p214 white)
      (wood p214 oak)
      (surface-condition p214 verysmooth)
      (treatment p214 glazed)
      (available p215)
      (colour p215 blue)
      (wood p215 mahogany)
      (surface-condition p215 smooth)
      (treatment p215 glazed)
      (available p216)
      (colour p216 red)
      (wood p216 mahogany)
      (available p217)
      (colour p217 white)
      (wood p217 oak)
      (surface-condition p217 smooth)
      (treatment p217 glazed)
      (available p218)
      (colour p218 blue)
      (wood p218 pine)
      (available p219)
      (wood p219 oak)
      (surface-condition p219 smooth)
      (available p220)
      (colour p220 red)
      (surface-condition p220 smooth)
      (available p221)
      (wood p221 pine)
      (treatment p221 glazed)
      (available p222)
      (colour p222 black)
      (wood p222 oak)
      (surface-condition p222 verysmooth)
      (treatment p222 glazed)
      (available p223)
      (colour p223 blue)
      (surface-condition p223 smooth)
      (available p224)
      (colour p224 black)
      (wood p224 oak)
      (available p225)
      (colour p225 black)
      (wood p225 beech)
      (surface-condition p225 verysmooth)
      (treatment p225 glazed)
      (available p226)
      (wood p226 mahogany)
      (treatment p226 varnished)
      (available p227)
      (wood p227 pine)
      (surface-condition p227 verysmooth)
      (available p228)
      (colour p228 green)
      (surface-condition p228 verysmooth)
      (treatment p228 varnished)
      (available p229)
      (colour p229 red)
      (wood p229 walnut)
      (surface-condition p229 smooth)
      (available p230)
      (colour p230 blue)
      (surface-condition p230 smooth)
      (treatment p230 varnished)
      (available p231)
      (colour p231 white)
      (wood p231 beech)
      (available p232)
      (colour p232 red)
      (wood p232 teak)
      (surface-condition p232 verysmooth)
      (available p233)
      (colour p233 green)
      (surface-condition p233 verysmooth)
      (available p234)
      (surface-condition p234 smooth)
      (treatment p234 glazed)
      (available p235)
      (colour p235 black)
      (surface-condition p235 smooth)
      (available p236)
      (colour p236 white)
      (surface-condition p236 verysmooth)
      (available p237)
      (colour p237 mauve)
      (treatment p237 varnished)
      (available p238)
      (colour p238 blue)
      (surface-condition p238 smooth)
      (treatment p238 varnished)
      (available p239)
      (colour p239 blue)
      (surface-condition p239 verysmooth)
      (available p240)
      (colour p240 green)
      (wood p240 beech)
      (surface-condition p240 verysmooth)
      (treatment p240 varnished)
      (available p241)
      (wood p241 cherry)
      (surface-condition p241 verysmooth)
      (treatment p241 glazed)
      (available p242)
      (colour p242 red)
      (surface-condition p242 verysmooth)
      (available p243)
      (colour p243 black)
      (wood p243 mahogany)
      (treatment p243 glazed)
      (available p244)
      (colour p244 green)
      (treatment p244 varnished)
      (available p245)
      (colour p245 green)
      (wood p245 walnut)
      (treatment p245 glazed)
      (available p246)
      (colour p246 green)
      (surface-condition p246 verysmooth)
      (available p247)
      (colour p247 red)
      (wood p247 beech)
      (surface-condition p247 verysmooth)
      (available p248)
      (wood p248 teak)
      (surface-condition p248 verysmooth)
      (treatment p248 glazed)
      (available p249)
      (wood p249 cherry)
      (surface-condition p249 verysmooth)
      (available p250)
      (colour p250 mauve)
      (wood p250 cherry)
      (available p251)
      (colour p251 blue)
      (wood p251 walnut)
      (surface-condition p251 smooth)
      (available p252)
      (colour p252 mauve)
      (wood p252 walnut)
      (surface-condition p252 smooth)
      (treatment p252 varnished)
      (available p253)
      (colour p253 white)
      (wood p253 oak)
      (surface-condition p253 smooth)
      (available p254)
      (surface-condition p254 verysmooth)
      (treatment p254 glazed)
      (available p255)
      (surface-condition p255 verysmooth)
      (treatment p255 glazed)
      (available p256)
      (wood p256 mahogany)
      (treatment p256 glazed)
      (available p257)
      (colour p257 white)
      (wood p257 mahogany)
      (surface-condition p257 verysmooth)
      (treatment p257 varnished)
      (available p258)
      (colour p258 black)
      (surface-condition p258 smooth)
      (available p259)
      (colour p259 green)
      (surface-condition p259 smooth)
      (treatment p259 glazed)
      (available p260)
      (colour p260 green)
      (surface-condition p260 smooth)
      (treatment p260 varnished)
      (available p261)
      (colour p261 black)
      (wood p261 oak)
      (available p262)
      (colour p262 red)
      (wood p262 teak)
      (surface-condition p262 verysmooth)
      (treatment p262 varnished)
      (available p263)
      (surface-condition p263 verysmooth)
      (treatment p263 glazed)
      (available p264)
      (colour p264 black)
      (surface-condition p264 verysmooth)
      (available p265)
      (wood p265 pine)
      (treatment p265 varnished)
      (available p266)
      (colour p266 red)
      (surface-condition p266 smooth)
      (available p267)
      (wood p267 walnut)
      (surface-condition p267 verysmooth)
      (treatment p267 glazed)
      (available p268)
      (wood p268 oak)
      (treatment p268 glazed)
      (available p269)
      (wood p269 cherry)
      (surface-condition p269 verysmooth)
      (treatment p269 glazed)
      (available p270)
      (wood p270 cherry)
      (treatment p270 varnished)
      (available p271)
      (colour p271 natural)
      (wood p271 teak)
      (surface-condition p271 verysmooth)
      (treatment p271 glazed)
      (available p272)
      (surface-condition p272 smooth)
      (treatment p272 glazed)
      (available p273)
      (surface-condition p273 verysmooth)
      (treatment p273 glazed)
      (available p274)
      (colour p274 black)
      (wood p274 cherry)
      (surface-condition p274 verysmooth)
      (treatment p274 varnished)
      (available p275)
      (colour p275 black)
      (wood p275 walnut)
      (surface-condition p275 verysmooth)
      (treatment p275 varnished)
      (available p276)
      (colour p276 green)
      (surface-condition p276 verysmooth)
      (available p277)
      (colour p277 black)
      (wood p277 oak)
      (surface-condition p277 smooth)
      (treatment p277 glazed)
      (available p278)
      (colour p278 red)
      (wood p278 cherry)
      (surface-condition p278 verysmooth)
      (available p279)
      (surface-condition p279 verysmooth)
      (treatment p279 glazed)
      (available p280)
      (colour p280 mauve)
      (wood p280 mahogany)
      (treatment p280 varnished)
      (available p281)
      (surface-condition p281 smooth)
      (treatment p281 glazed)
      (available p282)
      (colour p282 natural)
      (treatment p282 glazed)
      (available p283)
      (colour p283 green)
      (surface-condition p283 smooth)
      (available p284)
      (colour p284 natural)
      (wood p284 teak)
      (surface-condition p284 verysmooth)
      (available p285)
      (colour p285 mauve)
      (wood p285 pine)
      (available p286)
      (colour p286 black)
      (wood p286 mahogany)
      (surface-condition p286 smooth)
      (treatment p286 glazed)
      (available p287)
      (colour p287 red)
      (treatment p287 glazed)
      (available p288)
      (colour p288 blue)
      (treatment p288 glazed)
      (available p289)
      (colour p289 blue)
      (wood p289 beech)
      (treatment p289 varnished)
      (available p290)
      (colour p290 red)
      (wood p290 cherry)
      (surface-condition p290 verysmooth)
      (available p291)
      (colour p291 red)
      (wood p291 pine)
      (surface-condition p291 smooth)
      (treatment p291 glazed)
      (available p292)
      (colour p292 blue)
      (wood p292 mahogany)
      (surface-condition p292 verysmooth)
      (available p293)
      (surface-condition p293 verysmooth)
      (treatment p293 varnished)
      (available p294)
      (colour p294 red)
      (surface-condition p294 verysmooth)
      (available p295)
      (colour p295 blue)
      (surface-condition p295 smooth)
      (available p296)
      (colour p296 black)
      (wood p296 teak)
      (surface-condition p296 verysmooth)
      (treatment p296 varnished)
      (available p297)
      (colour p297 blue)
      (wood p297 beech)
      (surface-condition p297 smooth)
      (treatment p297 glazed)
      (available p298)
      (surface-condition p298 smooth)
      (treatment p298 glazed)
    )
  )
  
)
