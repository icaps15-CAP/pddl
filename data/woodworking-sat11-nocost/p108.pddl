; woodworking task with 293 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 826489

(define (problem wood-prob-sat-108)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red blue white mauve black green - acolour
    oak walnut teak beech cherry mahogany pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 p278 p279 p280 p281 p282 p283 p284 p285 p286 p287 p288 p289 p290 p291 p292 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 - board
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
    (has-colour glazer0 green)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (available p8)
    (colour p8 white)
    (wood p8 oak)
    (surface-condition p8 verysmooth)
    (treatment p8 colourfragments)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (available p14)
    (colour p14 blue)
    (wood p14 beech)
    (surface-condition p14 rough)
    (treatment p14 varnished)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 red)
    (wood p15 walnut)
    (surface-condition p15 smooth)
    (treatment p15 colourfragments)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 green)
    (wood p17 oak)
    (surface-condition p17 smooth)
    (treatment p17 varnished)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 black)
    (wood p22 teak)
    (surface-condition p22 smooth)
    (treatment p22 colourfragments)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 blue)
    (wood p27 walnut)
    (surface-condition p27 verysmooth)
    (treatment p27 colourfragments)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 blue)
    (wood p28 mahogany)
    (surface-condition p28 smooth)
    (treatment p28 glazed)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (available p32)
    (colour p32 black)
    (wood p32 pine)
    (surface-condition p32 rough)
    (treatment p32 glazed)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 black)
    (wood p37 beech)
    (surface-condition p37 smooth)
    (treatment p37 glazed)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 black)
    (wood p38 oak)
    (surface-condition p38 smooth)
    (treatment p38 varnished)
    (goalsize p38 small)
    
    
    
    
    (available p39)
    (colour p39 blue)
    (wood p39 pine)
    (surface-condition p39 rough)
    (treatment p39 glazed)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (available p46)
    (colour p46 red)
    (wood p46 pine)
    (surface-condition p46 rough)
    (treatment p46 colourfragments)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (available p50)
    (colour p50 green)
    (wood p50 mahogany)
    (surface-condition p50 smooth)
    (treatment p50 glazed)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (available p59)
    (colour p59 red)
    (wood p59 cherry)
    (surface-condition p59 rough)
    (treatment p59 varnished)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (available p63)
    (colour p63 green)
    (wood p63 walnut)
    (surface-condition p63 verysmooth)
    (treatment p63 glazed)
    (goalsize p63 medium)
    
    
    
    
    (available p64)
    (colour p64 black)
    (wood p64 cherry)
    (surface-condition p64 verysmooth)
    (treatment p64 colourfragments)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (available p69)
    (colour p69 mauve)
    (wood p69 cherry)
    (surface-condition p69 rough)
    (treatment p69 colourfragments)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (available p80)
    (colour p80 green)
    (wood p80 pine)
    (surface-condition p80 verysmooth)
    (treatment p80 varnished)
    (goalsize p80 small)
    
    
    
    
    (available p81)
    (colour p81 blue)
    (wood p81 cherry)
    (surface-condition p81 verysmooth)
    (treatment p81 varnished)
    (goalsize p81 small)
    
    
    
    
    (available p82)
    (colour p82 mauve)
    (wood p82 cherry)
    (surface-condition p82 smooth)
    (treatment p82 glazed)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (available p85)
    (colour p85 mauve)
    (wood p85 beech)
    (surface-condition p85 smooth)
    (treatment p85 glazed)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (available p99)
    (colour p99 black)
    (wood p99 oak)
    (surface-condition p99 smooth)
    (treatment p99 colourfragments)
    (goalsize p99 small)
    
    
    
    
    (available p100)
    (colour p100 mauve)
    (wood p100 beech)
    (surface-condition p100 verysmooth)
    (treatment p100 glazed)
    (goalsize p100 large)
    
    
    
    
    (available p101)
    (colour p101 black)
    (wood p101 cherry)
    (surface-condition p101 smooth)
    (treatment p101 varnished)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (available p103)
    (colour p103 red)
    (wood p103 oak)
    (surface-condition p103 verysmooth)
    (treatment p103 glazed)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (available p107)
    (colour p107 green)
    (wood p107 walnut)
    (surface-condition p107 rough)
    (treatment p107 glazed)
    (goalsize p107 large)
    
    
    
    
    (available p108)
    (colour p108 mauve)
    (wood p108 mahogany)
    (surface-condition p108 rough)
    (treatment p108 varnished)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (available p116)
    (colour p116 green)
    (wood p116 beech)
    (surface-condition p116 smooth)
    (treatment p116 glazed)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (available p122)
    (colour p122 mauve)
    (wood p122 beech)
    (surface-condition p122 rough)
    (treatment p122 colourfragments)
    (goalsize p122 large)
    
    
    
    
    (available p123)
    (colour p123 green)
    (wood p123 walnut)
    (surface-condition p123 rough)
    (treatment p123 colourfragments)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (available p138)
    (colour p138 natural)
    (wood p138 cherry)
    (surface-condition p138 verysmooth)
    (treatment p138 varnished)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (available p145)
    (colour p145 natural)
    (wood p145 beech)
    (surface-condition p145 smooth)
    (treatment p145 colourfragments)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (available p157)
    (colour p157 natural)
    (wood p157 walnut)
    (surface-condition p157 smooth)
    (treatment p157 varnished)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (available p169)
    (colour p169 natural)
    (wood p169 pine)
    (surface-condition p169 smooth)
    (treatment p169 glazed)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (available p171)
    (colour p171 black)
    (wood p171 walnut)
    (surface-condition p171 verysmooth)
    (treatment p171 varnished)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (available p174)
    (colour p174 blue)
    (wood p174 pine)
    (surface-condition p174 smooth)
    (treatment p174 colourfragments)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 medium)
    
    
    
    
    (unused p178)
    (goalsize p178 medium)
    
    
    
    
    (available p179)
    (colour p179 natural)
    (wood p179 walnut)
    (surface-condition p179 verysmooth)
    (treatment p179 varnished)
    (goalsize p179 medium)
    
    
    
    
    (available p180)
    (colour p180 mauve)
    (wood p180 oak)
    (surface-condition p180 rough)
    (treatment p180 varnished)
    (goalsize p180 small)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (unused p184)
    (goalsize p184 small)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (available p186)
    (colour p186 white)
    (wood p186 oak)
    (surface-condition p186 verysmooth)
    (treatment p186 colourfragments)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (available p189)
    (colour p189 mauve)
    (wood p189 pine)
    (surface-condition p189 smooth)
    (treatment p189 varnished)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 large)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 medium)
    
    
    
    
    (available p197)
    (colour p197 black)
    (wood p197 teak)
    (surface-condition p197 rough)
    (treatment p197 varnished)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 small)
    
    
    
    
    (available p201)
    (colour p201 black)
    (wood p201 teak)
    (surface-condition p201 verysmooth)
    (treatment p201 glazed)
    (goalsize p201 large)
    
    
    
    
    (available p202)
    (colour p202 green)
    (wood p202 teak)
    (surface-condition p202 verysmooth)
    (treatment p202 colourfragments)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 medium)
    
    
    
    
    (unused p204)
    (goalsize p204 small)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (unused p211)
    (goalsize p211 medium)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (available p213)
    (colour p213 green)
    (wood p213 mahogany)
    (surface-condition p213 smooth)
    (treatment p213 varnished)
    (goalsize p213 large)
    
    
    
    
    (available p214)
    (colour p214 white)
    (wood p214 beech)
    (surface-condition p214 rough)
    (treatment p214 glazed)
    (goalsize p214 large)
    
    
    
    
    (unused p215)
    (goalsize p215 large)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 small)
    
    
    
    
    (available p219)
    (colour p219 green)
    (wood p219 teak)
    (surface-condition p219 rough)
    (treatment p219 colourfragments)
    (goalsize p219 medium)
    
    
    
    
    (available p220)
    (colour p220 green)
    (wood p220 teak)
    (surface-condition p220 smooth)
    (treatment p220 colourfragments)
    (goalsize p220 medium)
    
    
    
    
    (available p221)
    (colour p221 mauve)
    (wood p221 oak)
    (surface-condition p221 smooth)
    (treatment p221 glazed)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 small)
    
    
    
    
    (available p225)
    (colour p225 black)
    (wood p225 mahogany)
    (surface-condition p225 smooth)
    (treatment p225 varnished)
    (goalsize p225 small)
    
    
    
    
    (available p226)
    (colour p226 mauve)
    (wood p226 cherry)
    (surface-condition p226 smooth)
    (treatment p226 varnished)
    (goalsize p226 large)
    
    
    
    
    (available p227)
    (colour p227 mauve)
    (wood p227 beech)
    (surface-condition p227 rough)
    (treatment p227 glazed)
    (goalsize p227 small)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 large)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (available p231)
    (colour p231 blue)
    (wood p231 teak)
    (surface-condition p231 verysmooth)
    (treatment p231 colourfragments)
    (goalsize p231 small)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 medium)
    
    
    
    
    (available p234)
    (colour p234 mauve)
    (wood p234 pine)
    (surface-condition p234 smooth)
    (treatment p234 varnished)
    (goalsize p234 large)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (unused p237)
    (goalsize p237 medium)
    
    
    
    
    (unused p238)
    (goalsize p238 small)
    
    
    
    
    (available p239)
    (colour p239 natural)
    (wood p239 mahogany)
    (surface-condition p239 rough)
    (treatment p239 colourfragments)
    (goalsize p239 small)
    
    
    
    
    (unused p240)
    (goalsize p240 large)
    
    
    
    
    (unused p241)
    (goalsize p241 medium)
    
    
    
    
    (available p242)
    (colour p242 red)
    (wood p242 mahogany)
    (surface-condition p242 verysmooth)
    (treatment p242 glazed)
    (goalsize p242 large)
    
    
    
    
    (unused p243)
    (goalsize p243 small)
    
    
    
    
    (available p244)
    (colour p244 green)
    (wood p244 teak)
    (surface-condition p244 smooth)
    (treatment p244 colourfragments)
    (goalsize p244 small)
    
    
    
    
    (unused p245)
    (goalsize p245 medium)
    
    
    
    
    (unused p246)
    (goalsize p246 medium)
    
    
    
    
    (unused p247)
    (goalsize p247 large)
    
    
    
    
    (available p248)
    (colour p248 red)
    (wood p248 pine)
    (surface-condition p248 verysmooth)
    (treatment p248 colourfragments)
    (goalsize p248 medium)
    
    
    
    
    (unused p249)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 large)
    
    
    
    
    (available p251)
    (colour p251 black)
    (wood p251 teak)
    (surface-condition p251 smooth)
    (treatment p251 varnished)
    (goalsize p251 large)
    
    
    
    
    (available p252)
    (colour p252 natural)
    (wood p252 cherry)
    (surface-condition p252 smooth)
    (treatment p252 varnished)
    (goalsize p252 medium)
    
    
    
    
    (unused p253)
    (goalsize p253 large)
    
    
    
    
    (unused p254)
    (goalsize p254 small)
    
    
    
    
    (available p255)
    (colour p255 red)
    (wood p255 cherry)
    (surface-condition p255 rough)
    (treatment p255 colourfragments)
    (goalsize p255 small)
    
    
    
    
    (available p256)
    (colour p256 black)
    (wood p256 cherry)
    (surface-condition p256 smooth)
    (treatment p256 glazed)
    (goalsize p256 medium)
    
    
    
    
    (unused p257)
    (goalsize p257 small)
    
    
    
    
    (unused p258)
    (goalsize p258 small)
    
    
    
    
    (unused p259)
    (goalsize p259 small)
    
    
    
    
    (available p260)
    (colour p260 natural)
    (wood p260 oak)
    (surface-condition p260 verysmooth)
    (treatment p260 colourfragments)
    (goalsize p260 large)
    
    
    
    
    (unused p261)
    (goalsize p261 medium)
    
    
    
    
    (unused p262)
    (goalsize p262 medium)
    
    
    
    
    (available p263)
    (colour p263 black)
    (wood p263 pine)
    (surface-condition p263 verysmooth)
    (treatment p263 glazed)
    (goalsize p263 small)
    
    
    
    
    (unused p264)
    (goalsize p264 large)
    
    
    
    
    (unused p265)
    (goalsize p265 small)
    
    
    
    
    (available p266)
    (colour p266 green)
    (wood p266 mahogany)
    (surface-condition p266 smooth)
    (treatment p266 varnished)
    (goalsize p266 small)
    
    
    
    
    (unused p267)
    (goalsize p267 small)
    
    
    
    
    (unused p268)
    (goalsize p268 medium)
    
    
    
    
    (unused p269)
    (goalsize p269 small)
    
    
    
    
    (unused p270)
    (goalsize p270 small)
    
    
    
    
    (available p271)
    (colour p271 red)
    (wood p271 cherry)
    (surface-condition p271 rough)
    (treatment p271 colourfragments)
    (goalsize p271 small)
    
    
    
    
    (unused p272)
    (goalsize p272 small)
    
    
    
    
    (unused p273)
    (goalsize p273 medium)
    
    
    
    
    (available p274)
    (colour p274 red)
    (wood p274 mahogany)
    (surface-condition p274 smooth)
    (treatment p274 varnished)
    (goalsize p274 large)
    
    
    
    
    (unused p275)
    (goalsize p275 small)
    
    
    
    
    (unused p276)
    (goalsize p276 medium)
    
    
    
    
    (unused p277)
    (goalsize p277 large)
    
    
    
    
    (unused p278)
    (goalsize p278 small)
    
    
    
    
    (unused p279)
    (goalsize p279 medium)
    
    
    
    
    (available p280)
    (colour p280 red)
    (wood p280 pine)
    (surface-condition p280 rough)
    (treatment p280 glazed)
    (goalsize p280 medium)
    
    
    
    
    (unused p281)
    (goalsize p281 large)
    
    
    
    
    (unused p282)
    (goalsize p282 large)
    
    
    
    
    (unused p283)
    (goalsize p283 small)
    
    
    
    
    (unused p284)
    (goalsize p284 medium)
    
    
    
    
    (unused p285)
    (goalsize p285 medium)
    
    
    
    
    (unused p286)
    (goalsize p286 medium)
    
    
    
    
    (unused p287)
    (goalsize p287 large)
    
    
    
    
    (unused p288)
    (goalsize p288 medium)
    
    
    
    
    (unused p289)
    (goalsize p289 medium)
    
    
    
    
    (unused p290)
    (goalsize p290 small)
    
    
    
    
    (unused p291)
    (goalsize p291 small)
    
    
    
    
    (unused p292)
    (goalsize p292 small)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s11)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s10)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s5)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s6)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s6)
    (wood b8 cherry)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s8)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 cherry)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s7)
    (wood b12 cherry)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s6)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s6)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s10)
    (wood b18 mahogany)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s11)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s2)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s10)
    (wood b22 oak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s8)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s11)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s9)
    (wood b25 oak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s9)
    (wood b26 oak)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s7)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s11)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s6)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s7)
    (wood b31 pine)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s9)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 pine)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s8)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s11)
    (wood b35 pine)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s9)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s5)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s4)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s6)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s7)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s8)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s5)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s8)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s8)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s7)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s6)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s5)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s8)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s10)
    (wood b49 teak)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s10)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s7)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s7)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s9)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s7)
    (wood b54 teak)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s7)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s7)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s8)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s8)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s6)
    (wood b59 beech)
    (surface-condition b59 smooth)
    (available b59)
    (boardsize b60 s7)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s8)
    (wood b61 beech)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s9)
    (wood b62 beech)
    (surface-condition b62 smooth)
    (available b62)
    (boardsize b63 s8)
    (wood b63 beech)
    (surface-condition b63 smooth)
    (available b63)
    (boardsize b64 s10)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s9)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s7)
    (wood b66 beech)
    (surface-condition b66 smooth)
    (available b66)
    (boardsize b67 s11)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s6)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s4)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (wood p0 beech)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 black)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 black)
      (wood p2 beech)
      (treatment p2 glazed)
      (available p3)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 blue)
      (wood p4 pine)
      (available p5)
      (colour p5 red)
      (wood p5 cherry)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 black)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 black)
      (wood p7 oak)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 green)
      (treatment p8 varnished)
      (available p9)
      (colour p9 blue)
      (wood p9 beech)
      (available p10)
      (colour p10 black)
      (wood p10 walnut)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 white)
      (wood p12 beech)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 blue)
      (surface-condition p13 smooth)
      (available p14)
      (wood p14 beech)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 blue)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 black)
      (treatment p16 varnished)
      (available p17)
      (wood p17 oak)
      (surface-condition p17 verysmooth)
      (available p18)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 black)
      (wood p19 pine)
      (surface-condition p19 smooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 blue)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 red)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 blue)
      (surface-condition p22 verysmooth)
      (available p23)
      (wood p23 beech)
      (treatment p23 varnished)
      (available p24)
      (colour p24 black)
      (wood p24 teak)
      (available p25)
      (colour p25 black)
      (wood p25 pine)
      (available p26)
      (colour p26 natural)
      (wood p26 teak)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 white)
      (wood p27 walnut)
      (surface-condition p27 verysmooth)
      (treatment p27 varnished)
      (available p28)
      (wood p28 mahogany)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 black)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 red)
      (wood p30 beech)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 black)
      (wood p31 mahogany)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 white)
      (wood p32 pine)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 mauve)
      (treatment p33 varnished)
      (available p34)
      (wood p34 mahogany)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 black)
      (wood p35 walnut)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 mauve)
      (wood p36 walnut)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 red)
      (wood p37 beech)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 mauve)
      (wood p38 oak)
      (available p39)
      (colour p39 natural)
      (wood p39 pine)
      (surface-condition p39 verysmooth)
      (treatment p39 glazed)
      (available p40)
      (wood p40 cherry)
      (surface-condition p40 verysmooth)
      (available p41)
      (colour p41 blue)
      (wood p41 oak)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (surface-condition p42 smooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 blue)
      (surface-condition p43 smooth)
      (available p44)
      (colour p44 green)
      (wood p44 teak)
      (available p45)
      (colour p45 blue)
      (wood p45 mahogany)
      (available p46)
      (wood p46 pine)
      (surface-condition p46 verysmooth)
      (treatment p46 glazed)
      (available p47)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 black)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 mauve)
      (wood p49 oak)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 mauve)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 mauve)
      (wood p51 pine)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 black)
      (wood p52 teak)
      (treatment p52 glazed)
      (available p53)
      (surface-condition p53 smooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 green)
      (wood p54 cherry)
      (available p55)
      (colour p55 blue)
      (surface-condition p55 smooth)
      (treatment p55 varnished)
      (available p56)
      (surface-condition p56 smooth)
      (treatment p56 varnished)
      (available p57)
      (wood p57 pine)
      (surface-condition p57 verysmooth)
      (available p58)
      (colour p58 white)
      (wood p58 beech)
      (surface-condition p58 verysmooth)
      (treatment p58 varnished)
      (available p59)
      (wood p59 cherry)
      (surface-condition p59 verysmooth)
      (available p60)
      (colour p60 white)
      (wood p60 cherry)
      (available p61)
      (wood p61 cherry)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 natural)
      (wood p62 walnut)
      (available p63)
      (wood p63 walnut)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 mauve)
      (wood p64 cherry)
      (treatment p64 varnished)
      (available p65)
      (wood p65 cherry)
      (treatment p65 glazed)
      (available p66)
      (colour p66 blue)
      (wood p66 mahogany)
      (available p67)
      (colour p67 white)
      (treatment p67 glazed)
      (available p68)
      (colour p68 green)
      (treatment p68 varnished)
      (available p69)
      (surface-condition p69 smooth)
      (treatment p69 varnished)
      (available p70)
      (wood p70 beech)
      (surface-condition p70 verysmooth)
      (available p71)
      (wood p71 teak)
      (surface-condition p71 smooth)
      (treatment p71 glazed)
      (available p72)
      (colour p72 white)
      (treatment p72 varnished)
      (available p73)
      (colour p73 red)
      (treatment p73 glazed)
      (available p74)
      (colour p74 natural)
      (wood p74 cherry)
      (available p75)
      (colour p75 black)
      (surface-condition p75 smooth)
      (available p76)
      (wood p76 mahogany)
      (surface-condition p76 smooth)
      (available p77)
      (wood p77 cherry)
      (treatment p77 glazed)
      (available p78)
      (colour p78 natural)
      (wood p78 mahogany)
      (surface-condition p78 smooth)
      (treatment p78 varnished)
      (available p79)
      (colour p79 red)
      (wood p79 cherry)
      (available p80)
      (colour p80 red)
      (wood p80 pine)
      (available p81)
      (colour p81 black)
      (surface-condition p81 smooth)
      (available p82)
      (colour p82 natural)
      (wood p82 cherry)
      (surface-condition p82 verysmooth)
      (available p83)
      (colour p83 natural)
      (wood p83 teak)
      (surface-condition p83 smooth)
      (available p84)
      (colour p84 black)
      (treatment p84 glazed)
      (available p85)
      (colour p85 blue)
      (surface-condition p85 verysmooth)
      (available p86)
      (colour p86 natural)
      (wood p86 beech)
      (surface-condition p86 verysmooth)
      (available p87)
      (colour p87 blue)
      (treatment p87 glazed)
      (available p88)
      (surface-condition p88 smooth)
      (treatment p88 glazed)
      (available p89)
      (wood p89 cherry)
      (treatment p89 varnished)
      (available p90)
      (colour p90 red)
      (treatment p90 varnished)
      (available p91)
      (colour p91 white)
      (surface-condition p91 verysmooth)
      (treatment p91 varnished)
      (available p92)
      (wood p92 oak)
      (surface-condition p92 smooth)
      (available p93)
      (wood p93 oak)
      (surface-condition p93 smooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 green)
      (surface-condition p94 verysmooth)
      (available p95)
      (colour p95 black)
      (wood p95 pine)
      (surface-condition p95 verysmooth)
      (treatment p95 varnished)
      (available p96)
      (wood p96 teak)
      (surface-condition p96 verysmooth)
      (available p97)
      (colour p97 blue)
      (wood p97 mahogany)
      (surface-condition p97 smooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 green)
      (surface-condition p98 verysmooth)
      (available p99)
      (colour p99 blue)
      (wood p99 oak)
      (available p100)
      (colour p100 blue)
      (wood p100 beech)
      (available p101)
      (colour p101 natural)
      (wood p101 cherry)
      (available p102)
      (colour p102 black)
      (wood p102 walnut)
      (available p103)
      (surface-condition p103 verysmooth)
      (treatment p103 varnished)
      (available p104)
      (colour p104 black)
      (surface-condition p104 smooth)
      (available p105)
      (wood p105 pine)
      (surface-condition p105 smooth)
      (available p106)
      (colour p106 green)
      (wood p106 cherry)
      (available p107)
      (colour p107 white)
      (wood p107 walnut)
      (available p108)
      (surface-condition p108 verysmooth)
      (treatment p108 glazed)
      (available p109)
      (surface-condition p109 smooth)
      (treatment p109 glazed)
      (available p110)
      (colour p110 green)
      (treatment p110 glazed)
      (available p111)
      (colour p111 mauve)
      (wood p111 cherry)
      (surface-condition p111 verysmooth)
      (available p112)
      (colour p112 mauve)
      (surface-condition p112 verysmooth)
      (treatment p112 glazed)
      (available p113)
      (colour p113 natural)
      (treatment p113 varnished)
      (available p114)
      (colour p114 blue)
      (treatment p114 glazed)
      (available p115)
      (colour p115 green)
      (wood p115 oak)
      (surface-condition p115 verysmooth)
      (treatment p115 varnished)
      (available p116)
      (surface-condition p116 verysmooth)
      (treatment p116 varnished)
      (available p117)
      (colour p117 mauve)
      (treatment p117 varnished)
      (available p118)
      (colour p118 black)
      (wood p118 teak)
      (surface-condition p118 verysmooth)
      (treatment p118 varnished)
      (available p119)
      (wood p119 teak)
      (surface-condition p119 verysmooth)
      (treatment p119 glazed)
      (available p120)
      (colour p120 black)
      (wood p120 mahogany)
      (surface-condition p120 smooth)
      (available p121)
      (wood p121 beech)
      (surface-condition p121 verysmooth)
      (treatment p121 glazed)
      (available p122)
      (colour p122 green)
      (wood p122 beech)
      (surface-condition p122 verysmooth)
      (treatment p122 varnished)
      (available p123)
      (colour p123 blue)
      (wood p123 walnut)
      (surface-condition p123 verysmooth)
      (available p124)
      (colour p124 white)
      (surface-condition p124 smooth)
      (available p125)
      (surface-condition p125 verysmooth)
      (treatment p125 glazed)
      (available p126)
      (wood p126 teak)
      (surface-condition p126 smooth)
      (treatment p126 varnished)
      (available p127)
      (colour p127 red)
      (surface-condition p127 smooth)
      (treatment p127 glazed)
      (available p128)
      (surface-condition p128 smooth)
      (treatment p128 glazed)
      (available p129)
      (surface-condition p129 verysmooth)
      (treatment p129 glazed)
      (available p130)
      (colour p130 red)
      (wood p130 oak)
      (treatment p130 glazed)
      (available p131)
      (surface-condition p131 verysmooth)
      (treatment p131 varnished)
      (available p132)
      (colour p132 white)
      (wood p132 mahogany)
      (available p133)
      (wood p133 pine)
      (treatment p133 varnished)
      (available p134)
      (wood p134 cherry)
      (surface-condition p134 smooth)
      (available p135)
      (colour p135 red)
      (wood p135 pine)
      (treatment p135 varnished)
      (available p136)
      (wood p136 pine)
      (surface-condition p136 verysmooth)
      (available p137)
      (wood p137 walnut)
      (treatment p137 glazed)
      (available p138)
      (colour p138 white)
      (treatment p138 glazed)
      (available p139)
      (colour p139 natural)
      (wood p139 pine)
      (surface-condition p139 smooth)
      (treatment p139 glazed)
      (available p140)
      (colour p140 red)
      (wood p140 oak)
      (surface-condition p140 smooth)
      (treatment p140 glazed)
      (available p141)
      (colour p141 mauve)
      (surface-condition p141 smooth)
      (available p142)
      (colour p142 black)
      (treatment p142 varnished)
      (available p143)
      (colour p143 red)
      (surface-condition p143 smooth)
      (available p144)
      (surface-condition p144 verysmooth)
      (treatment p144 glazed)
      (available p145)
      (colour p145 blue)
      (treatment p145 glazed)
      (available p146)
      (colour p146 black)
      (surface-condition p146 smooth)
      (available p147)
      (colour p147 mauve)
      (wood p147 mahogany)
      (surface-condition p147 verysmooth)
      (treatment p147 varnished)
      (available p148)
      (colour p148 white)
      (wood p148 pine)
      (treatment p148 glazed)
      (available p149)
      (wood p149 beech)
      (surface-condition p149 verysmooth)
      (available p150)
      (colour p150 natural)
      (treatment p150 varnished)
      (available p151)
      (surface-condition p151 smooth)
      (treatment p151 varnished)
      (available p152)
      (colour p152 natural)
      (treatment p152 varnished)
      (available p153)
      (colour p153 black)
      (treatment p153 varnished)
      (available p154)
      (surface-condition p154 smooth)
      (treatment p154 glazed)
      (available p155)
      (colour p155 black)
      (surface-condition p155 smooth)
      (available p156)
      (colour p156 white)
      (wood p156 cherry)
      (surface-condition p156 verysmooth)
      (treatment p156 glazed)
      (available p157)
      (wood p157 walnut)
      (surface-condition p157 smooth)
      (treatment p157 glazed)
      (available p158)
      (colour p158 mauve)
      (wood p158 cherry)
      (surface-condition p158 smooth)
      (treatment p158 glazed)
      (available p159)
      (colour p159 natural)
      (wood p159 mahogany)
      (surface-condition p159 verysmooth)
      (treatment p159 varnished)
      (available p160)
      (colour p160 mauve)
      (wood p160 mahogany)
      (surface-condition p160 smooth)
      (available p161)
      (colour p161 blue)
      (wood p161 cherry)
      (available p162)
      (colour p162 white)
      (wood p162 teak)
      (available p163)
      (wood p163 cherry)
      (treatment p163 varnished)
      (available p164)
      (wood p164 beech)
      (surface-condition p164 verysmooth)
      (available p165)
      (wood p165 mahogany)
      (surface-condition p165 verysmooth)
      (treatment p165 varnished)
      (available p166)
      (colour p166 black)
      (surface-condition p166 verysmooth)
      (available p167)
      (colour p167 red)
      (treatment p167 glazed)
      (available p168)
      (wood p168 beech)
      (surface-condition p168 smooth)
      (available p169)
      (wood p169 pine)
      (surface-condition p169 verysmooth)
      (available p170)
      (colour p170 green)
      (surface-condition p170 smooth)
      (available p171)
      (colour p171 blue)
      (treatment p171 glazed)
      (available p172)
      (colour p172 blue)
      (wood p172 beech)
      (surface-condition p172 smooth)
      (treatment p172 varnished)
      (available p173)
      (surface-condition p173 smooth)
      (treatment p173 glazed)
      (available p174)
      (colour p174 white)
      (surface-condition p174 verysmooth)
      (treatment p174 varnished)
      (available p175)
      (colour p175 mauve)
      (treatment p175 glazed)
      (available p176)
      (colour p176 mauve)
      (surface-condition p176 smooth)
      (treatment p176 glazed)
      (available p177)
      (surface-condition p177 verysmooth)
      (treatment p177 glazed)
      (available p178)
      (colour p178 blue)
      (wood p178 oak)
      (surface-condition p178 verysmooth)
      (treatment p178 glazed)
      (available p179)
      (colour p179 red)
      (treatment p179 glazed)
      (available p180)
      (colour p180 natural)
      (surface-condition p180 verysmooth)
      (treatment p180 varnished)
      (available p181)
      (wood p181 walnut)
      (surface-condition p181 verysmooth)
      (available p182)
      (colour p182 black)
      (surface-condition p182 verysmooth)
      (available p183)
      (colour p183 blue)
      (surface-condition p183 verysmooth)
      (available p184)
      (surface-condition p184 smooth)
      (treatment p184 varnished)
      (available p185)
      (colour p185 red)
      (wood p185 oak)
      (available p186)
      (wood p186 oak)
      (treatment p186 glazed)
      (available p187)
      (surface-condition p187 verysmooth)
      (treatment p187 varnished)
      (available p188)
      (colour p188 white)
      (wood p188 walnut)
      (surface-condition p188 verysmooth)
      (available p189)
      (colour p189 black)
      (wood p189 pine)
      (surface-condition p189 smooth)
      (available p190)
      (colour p190 red)
      (wood p190 beech)
      (available p191)
      (wood p191 cherry)
      (surface-condition p191 smooth)
      (available p192)
      (colour p192 natural)
      (wood p192 oak)
      (surface-condition p192 smooth)
      (treatment p192 glazed)
      (available p193)
      (surface-condition p193 verysmooth)
      (treatment p193 varnished)
      (available p194)
      (colour p194 mauve)
      (wood p194 teak)
      (available p195)
      (wood p195 cherry)
      (surface-condition p195 verysmooth)
      (available p196)
      (wood p196 walnut)
      (surface-condition p196 verysmooth)
      (treatment p196 varnished)
      (available p197)
      (wood p197 teak)
      (surface-condition p197 verysmooth)
      (available p198)
      (colour p198 red)
      (wood p198 beech)
      (available p199)
      (colour p199 natural)
      (surface-condition p199 smooth)
      (available p200)
      (colour p200 mauve)
      (surface-condition p200 verysmooth)
      (treatment p200 glazed)
      (available p201)
      (wood p201 teak)
      (surface-condition p201 smooth)
      (treatment p201 varnished)
      (available p202)
      (colour p202 mauve)
      (surface-condition p202 verysmooth)
      (available p203)
      (colour p203 green)
      (surface-condition p203 verysmooth)
      (available p204)
      (colour p204 white)
      (wood p204 cherry)
      (surface-condition p204 smooth)
      (treatment p204 varnished)
      (available p205)
      (colour p205 natural)
      (wood p205 mahogany)
      (treatment p205 glazed)
      (available p206)
      (wood p206 oak)
      (surface-condition p206 smooth)
      (treatment p206 varnished)
      (available p207)
      (surface-condition p207 verysmooth)
      (treatment p207 glazed)
      (available p208)
      (wood p208 oak)
      (surface-condition p208 verysmooth)
      (treatment p208 varnished)
      (available p209)
      (colour p209 blue)
      (wood p209 beech)
      (treatment p209 varnished)
      (available p210)
      (wood p210 cherry)
      (surface-condition p210 smooth)
      (treatment p210 glazed)
      (available p211)
      (colour p211 blue)
      (treatment p211 glazed)
      (available p212)
      (surface-condition p212 smooth)
      (treatment p212 glazed)
      (available p213)
      (colour p213 natural)
      (surface-condition p213 verysmooth)
      (available p214)
      (surface-condition p214 verysmooth)
      (treatment p214 glazed)
      (available p215)
      (colour p215 white)
      (wood p215 cherry)
      (surface-condition p215 verysmooth)
      (treatment p215 varnished)
      (available p216)
      (wood p216 beech)
      (surface-condition p216 smooth)
      (treatment p216 glazed)
      (available p217)
      (wood p217 oak)
      (treatment p217 glazed)
      (available p218)
      (wood p218 pine)
      (surface-condition p218 smooth)
      (treatment p218 glazed)
      (available p219)
      (surface-condition p219 verysmooth)
      (treatment p219 glazed)
      (available p220)
      (colour p220 white)
      (wood p220 teak)
      (surface-condition p220 verysmooth)
      (treatment p220 glazed)
      (available p221)
      (wood p221 oak)
      (treatment p221 varnished)
      (available p222)
      (colour p222 red)
      (surface-condition p222 verysmooth)
      (available p223)
      (colour p223 black)
      (wood p223 pine)
      (surface-condition p223 verysmooth)
      (treatment p223 glazed)
      (available p224)
      (colour p224 red)
      (treatment p224 varnished)
      (available p225)
      (colour p225 mauve)
      (wood p225 mahogany)
      (surface-condition p225 smooth)
      (treatment p225 varnished)
      (available p226)
      (colour p226 natural)
      (wood p226 cherry)
      (available p227)
      (colour p227 blue)
      (wood p227 beech)
      (surface-condition p227 smooth)
      (treatment p227 glazed)
      (available p228)
      (surface-condition p228 verysmooth)
      (treatment p228 glazed)
      (available p229)
      (wood p229 beech)
      (treatment p229 glazed)
      (available p230)
      (colour p230 natural)
      (wood p230 teak)
      (available p231)
      (colour p231 red)
      (wood p231 teak)
      (surface-condition p231 verysmooth)
      (treatment p231 glazed)
      (available p232)
      (wood p232 walnut)
      (surface-condition p232 verysmooth)
      (treatment p232 varnished)
      (available p233)
      (wood p233 beech)
      (surface-condition p233 smooth)
      (treatment p233 varnished)
      (available p234)
      (wood p234 pine)
      (treatment p234 glazed)
      (available p235)
      (wood p235 walnut)
      (treatment p235 glazed)
      (available p236)
      (wood p236 cherry)
      (surface-condition p236 verysmooth)
      (available p237)
      (colour p237 natural)
      (wood p237 beech)
      (surface-condition p237 verysmooth)
      (treatment p237 glazed)
      (available p238)
      (colour p238 natural)
      (surface-condition p238 smooth)
      (available p239)
      (colour p239 mauve)
      (treatment p239 varnished)
      (available p240)
      (colour p240 white)
      (wood p240 beech)
      (surface-condition p240 smooth)
      (treatment p240 varnished)
      (available p241)
      (colour p241 mauve)
      (surface-condition p241 verysmooth)
      (treatment p241 varnished)
      (available p242)
      (colour p242 blue)
      (wood p242 mahogany)
      (available p243)
      (colour p243 white)
      (treatment p243 varnished)
      (available p244)
      (colour p244 black)
      (surface-condition p244 verysmooth)
      (treatment p244 glazed)
      (available p245)
      (colour p245 red)
      (wood p245 pine)
      (treatment p245 varnished)
      (available p246)
      (colour p246 mauve)
      (wood p246 teak)
      (surface-condition p246 verysmooth)
      (treatment p246 varnished)
      (available p247)
      (wood p247 cherry)
      (surface-condition p247 verysmooth)
      (treatment p247 varnished)
      (available p248)
      (colour p248 black)
      (wood p248 pine)
      (surface-condition p248 smooth)
      (available p249)
      (colour p249 white)
      (wood p249 teak)
      (treatment p249 varnished)
      (available p250)
      (colour p250 black)
      (wood p250 cherry)
      (surface-condition p250 verysmooth)
      (treatment p250 varnished)
      (available p251)
      (colour p251 red)
      (surface-condition p251 smooth)
      (available p252)
      (surface-condition p252 verysmooth)
      (treatment p252 glazed)
      (available p253)
      (colour p253 blue)
      (treatment p253 glazed)
      (available p254)
      (colour p254 natural)
      (surface-condition p254 verysmooth)
      (treatment p254 glazed)
      (available p255)
      (colour p255 green)
      (wood p255 cherry)
      (surface-condition p255 verysmooth)
      (treatment p255 glazed)
      (available p256)
      (colour p256 blue)
      (wood p256 cherry)
      (surface-condition p256 verysmooth)
      (treatment p256 glazed)
      (available p257)
      (colour p257 natural)
      (wood p257 walnut)
      (surface-condition p257 verysmooth)
      (treatment p257 varnished)
      (available p258)
      (wood p258 walnut)
      (surface-condition p258 smooth)
      (available p259)
      (colour p259 mauve)
      (surface-condition p259 verysmooth)
      (available p260)
      (colour p260 black)
      (wood p260 oak)
      (surface-condition p260 verysmooth)
      (treatment p260 glazed)
      (available p261)
      (wood p261 teak)
      (treatment p261 varnished)
      (available p262)
      (colour p262 red)
      (surface-condition p262 smooth)
      (treatment p262 varnished)
      (available p263)
      (colour p263 green)
      (wood p263 pine)
      (surface-condition p263 smooth)
      (treatment p263 glazed)
      (available p264)
      (surface-condition p264 smooth)
      (treatment p264 glazed)
      (available p265)
      (colour p265 mauve)
      (surface-condition p265 smooth)
      (treatment p265 glazed)
      (available p266)
      (colour p266 natural)
      (surface-condition p266 verysmooth)
      (treatment p266 glazed)
      (available p267)
      (colour p267 white)
      (wood p267 beech)
      (surface-condition p267 smooth)
      (treatment p267 varnished)
      (available p268)
      (wood p268 oak)
      (treatment p268 varnished)
      (available p269)
      (colour p269 red)
      (wood p269 cherry)
      (available p270)
      (colour p270 white)
      (wood p270 mahogany)
      (surface-condition p270 smooth)
      (available p271)
      (surface-condition p271 smooth)
      (treatment p271 glazed)
      (available p272)
      (colour p272 white)
      (treatment p272 varnished)
      (available p273)
      (colour p273 green)
      (wood p273 cherry)
      (surface-condition p273 verysmooth)
      (treatment p273 varnished)
      (available p274)
      (colour p274 black)
      (wood p274 mahogany)
      (surface-condition p274 verysmooth)
      (treatment p274 varnished)
      (available p275)
      (colour p275 blue)
      (treatment p275 varnished)
      (available p276)
      (colour p276 natural)
      (surface-condition p276 verysmooth)
      (available p277)
      (colour p277 red)
      (wood p277 pine)
      (available p278)
      (colour p278 blue)
      (wood p278 beech)
      (surface-condition p278 verysmooth)
      (treatment p278 glazed)
      (available p279)
      (colour p279 red)
      (wood p279 pine)
      (surface-condition p279 verysmooth)
      (treatment p279 varnished)
      (available p280)
      (colour p280 white)
      (wood p280 pine)
      (surface-condition p280 verysmooth)
      (treatment p280 glazed)
      (available p281)
      (colour p281 red)
      (surface-condition p281 verysmooth)
      (treatment p281 glazed)
      (available p282)
      (colour p282 mauve)
      (wood p282 pine)
      (surface-condition p282 smooth)
      (treatment p282 varnished)
      (available p283)
      (colour p283 white)
      (surface-condition p283 smooth)
      (treatment p283 glazed)
      (available p284)
      (colour p284 mauve)
      (treatment p284 varnished)
      (available p285)
      (wood p285 pine)
      (treatment p285 glazed)
      (available p286)
      (colour p286 mauve)
      (surface-condition p286 verysmooth)
      (available p287)
      (colour p287 black)
      (wood p287 pine)
      (surface-condition p287 smooth)
      (available p288)
      (colour p288 white)
      (surface-condition p288 verysmooth)
      (treatment p288 varnished)
      (available p289)
      (colour p289 blue)
      (treatment p289 glazed)
      (available p290)
      (wood p290 cherry)
      (treatment p290 varnished)
      (available p291)
      (wood p291 pine)
      (surface-condition p291 verysmooth)
      (available p292)
      (colour p292 blue)
      (wood p292 pine)
      (surface-condition p292 verysmooth)
      (treatment p292 glazed)
    )
  )
  
)
