; woodworking task with 299 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 568774

(define (problem wood-prob-sat-110)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve black red blue white green - acolour
    walnut teak pine cherry beech mahogany oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 p278 p279 p280 p281 p282 p283 p284 p285 p286 p287 p288 p289 p290 p291 p292 p293 p294 p295 p296 p297 p298 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 b75 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
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
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (available p9)
    (colour p9 red)
    (wood p9 walnut)
    (surface-condition p9 verysmooth)
    (treatment p9 varnished)
    (goalsize p9 small)
    
    
    
    
    (available p10)
    (colour p10 mauve)
    (wood p10 cherry)
    (surface-condition p10 verysmooth)
    (treatment p10 varnished)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 natural)
    (wood p24 cherry)
    (surface-condition p24 verysmooth)
    (treatment p24 colourfragments)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 black)
    (wood p25 cherry)
    (surface-condition p25 rough)
    (treatment p25 glazed)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 natural)
    (wood p28 cherry)
    (surface-condition p28 smooth)
    (treatment p28 varnished)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 white)
    (wood p29 oak)
    (surface-condition p29 rough)
    (treatment p29 glazed)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 natural)
    (wood p31 pine)
    (surface-condition p31 rough)
    (treatment p31 varnished)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (available p40)
    (colour p40 black)
    (wood p40 mahogany)
    (surface-condition p40 smooth)
    (treatment p40 glazed)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (available p54)
    (colour p54 green)
    (wood p54 walnut)
    (surface-condition p54 smooth)
    (treatment p54 glazed)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (available p69)
    (colour p69 natural)
    (wood p69 teak)
    (surface-condition p69 verysmooth)
    (treatment p69 glazed)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (available p71)
    (colour p71 white)
    (wood p71 beech)
    (surface-condition p71 smooth)
    (treatment p71 varnished)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (available p82)
    (colour p82 green)
    (wood p82 walnut)
    (surface-condition p82 verysmooth)
    (treatment p82 glazed)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (available p85)
    (colour p85 white)
    (wood p85 mahogany)
    (surface-condition p85 rough)
    (treatment p85 varnished)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (available p90)
    (colour p90 blue)
    (wood p90 pine)
    (surface-condition p90 smooth)
    (treatment p90 glazed)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (available p94)
    (colour p94 white)
    (wood p94 cherry)
    (surface-condition p94 smooth)
    (treatment p94 colourfragments)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (available p102)
    (colour p102 black)
    (wood p102 walnut)
    (surface-condition p102 smooth)
    (treatment p102 colourfragments)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (available p105)
    (colour p105 natural)
    (wood p105 teak)
    (surface-condition p105 smooth)
    (treatment p105 colourfragments)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (available p108)
    (colour p108 mauve)
    (wood p108 cherry)
    (surface-condition p108 smooth)
    (treatment p108 colourfragments)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (available p112)
    (colour p112 black)
    (wood p112 pine)
    (surface-condition p112 smooth)
    (treatment p112 colourfragments)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (available p115)
    (colour p115 mauve)
    (wood p115 pine)
    (surface-condition p115 verysmooth)
    (treatment p115 colourfragments)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (available p121)
    (colour p121 red)
    (wood p121 teak)
    (surface-condition p121 smooth)
    (treatment p121 colourfragments)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 small)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (available p137)
    (colour p137 mauve)
    (wood p137 pine)
    (surface-condition p137 smooth)
    (treatment p137 glazed)
    (goalsize p137 large)
    
    
    
    
    (available p138)
    (colour p138 mauve)
    (wood p138 oak)
    (surface-condition p138 verysmooth)
    (treatment p138 varnished)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (available p141)
    (colour p141 red)
    (wood p141 mahogany)
    (surface-condition p141 verysmooth)
    (treatment p141 varnished)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (available p150)
    (colour p150 black)
    (wood p150 walnut)
    (surface-condition p150 smooth)
    (treatment p150 varnished)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (available p154)
    (colour p154 natural)
    (wood p154 pine)
    (surface-condition p154 smooth)
    (treatment p154 colourfragments)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (available p158)
    (colour p158 mauve)
    (wood p158 mahogany)
    (surface-condition p158 verysmooth)
    (treatment p158 glazed)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (available p166)
    (colour p166 white)
    (wood p166 walnut)
    (surface-condition p166 verysmooth)
    (treatment p166 glazed)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (available p170)
    (colour p170 red)
    (wood p170 oak)
    (surface-condition p170 rough)
    (treatment p170 colourfragments)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 small)
    
    
    
    
    (unused p172)
    (goalsize p172 medium)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (available p174)
    (colour p174 white)
    (wood p174 walnut)
    (surface-condition p174 smooth)
    (treatment p174 varnished)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 small)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (available p178)
    (colour p178 green)
    (wood p178 mahogany)
    (surface-condition p178 rough)
    (treatment p178 colourfragments)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (available p180)
    (colour p180 mauve)
    (wood p180 pine)
    (surface-condition p180 smooth)
    (treatment p180 varnished)
    (goalsize p180 large)
    
    
    
    
    (unused p181)
    (goalsize p181 large)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 small)
    
    
    
    
    (available p187)
    (colour p187 black)
    (wood p187 cherry)
    (surface-condition p187 verysmooth)
    (treatment p187 colourfragments)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 medium)
    
    
    
    
    (unused p189)
    (goalsize p189 large)
    
    
    
    
    (unused p190)
    (goalsize p190 large)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 small)
    
    
    
    
    (unused p196)
    (goalsize p196 small)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (available p200)
    (colour p200 natural)
    (wood p200 walnut)
    (surface-condition p200 rough)
    (treatment p200 colourfragments)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 large)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 medium)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 medium)
    
    
    
    
    (unused p209)
    (goalsize p209 large)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 small)
    
    
    
    
    (available p213)
    (colour p213 blue)
    (wood p213 beech)
    (surface-condition p213 rough)
    (treatment p213 varnished)
    (goalsize p213 medium)
    
    
    
    
    (unused p214)
    (goalsize p214 large)
    
    
    
    
    (available p215)
    (colour p215 red)
    (wood p215 teak)
    (surface-condition p215 rough)
    (treatment p215 colourfragments)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 small)
    
    
    
    
    (unused p217)
    (goalsize p217 medium)
    
    
    
    
    (unused p218)
    (goalsize p218 small)
    
    
    
    
    (unused p219)
    (goalsize p219 large)
    
    
    
    
    (unused p220)
    (goalsize p220 large)
    
    
    
    
    (unused p221)
    (goalsize p221 large)
    
    
    
    
    (available p222)
    (colour p222 natural)
    (wood p222 mahogany)
    (surface-condition p222 smooth)
    (treatment p222 varnished)
    (goalsize p222 large)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 medium)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (unused p227)
    (goalsize p227 medium)
    
    
    
    
    (unused p228)
    (goalsize p228 medium)
    
    
    
    
    (unused p229)
    (goalsize p229 small)
    
    
    
    
    (available p230)
    (colour p230 blue)
    (wood p230 oak)
    (surface-condition p230 rough)
    (treatment p230 glazed)
    (goalsize p230 small)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 large)
    
    
    
    
    (available p234)
    (colour p234 blue)
    (wood p234 teak)
    (surface-condition p234 verysmooth)
    (treatment p234 glazed)
    (goalsize p234 small)
    
    
    
    
    (available p235)
    (colour p235 natural)
    (wood p235 cherry)
    (surface-condition p235 smooth)
    (treatment p235 varnished)
    (goalsize p235 medium)
    
    
    
    
    (unused p236)
    (goalsize p236 large)
    
    
    
    
    (available p237)
    (colour p237 mauve)
    (wood p237 teak)
    (surface-condition p237 smooth)
    (treatment p237 glazed)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 small)
    
    
    
    
    (unused p239)
    (goalsize p239 large)
    
    
    
    
    (available p240)
    (colour p240 mauve)
    (wood p240 cherry)
    (surface-condition p240 rough)
    (treatment p240 varnished)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 medium)
    
    
    
    
    (unused p242)
    (goalsize p242 small)
    
    
    
    
    (available p243)
    (colour p243 red)
    (wood p243 pine)
    (surface-condition p243 smooth)
    (treatment p243 glazed)
    (goalsize p243 medium)
    
    
    
    
    (unused p244)
    (goalsize p244 large)
    
    
    
    
    (unused p245)
    (goalsize p245 small)
    
    
    
    
    (unused p246)
    (goalsize p246 medium)
    
    
    
    
    (available p247)
    (colour p247 green)
    (wood p247 walnut)
    (surface-condition p247 rough)
    (treatment p247 varnished)
    (goalsize p247 medium)
    
    
    
    
    (unused p248)
    (goalsize p248 small)
    
    
    
    
    (unused p249)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 large)
    
    
    
    
    (available p251)
    (colour p251 red)
    (wood p251 pine)
    (surface-condition p251 smooth)
    (treatment p251 varnished)
    (goalsize p251 medium)
    
    
    
    
    (unused p252)
    (goalsize p252 small)
    
    
    
    
    (unused p253)
    (goalsize p253 medium)
    
    
    
    
    (unused p254)
    (goalsize p254 small)
    
    
    
    
    (unused p255)
    (goalsize p255 medium)
    
    
    
    
    (unused p256)
    (goalsize p256 small)
    
    
    
    
    (unused p257)
    (goalsize p257 small)
    
    
    
    
    (unused p258)
    (goalsize p258 large)
    
    
    
    
    (unused p259)
    (goalsize p259 large)
    
    
    
    
    (available p260)
    (colour p260 natural)
    (wood p260 mahogany)
    (surface-condition p260 verysmooth)
    (treatment p260 colourfragments)
    (goalsize p260 small)
    
    
    
    
    (unused p261)
    (goalsize p261 medium)
    
    
    
    
    (unused p262)
    (goalsize p262 medium)
    
    
    
    
    (unused p263)
    (goalsize p263 large)
    
    
    
    
    (unused p264)
    (goalsize p264 small)
    
    
    
    
    (unused p265)
    (goalsize p265 medium)
    
    
    
    
    (available p266)
    (colour p266 natural)
    (wood p266 walnut)
    (surface-condition p266 smooth)
    (treatment p266 varnished)
    (goalsize p266 small)
    
    
    
    
    (unused p267)
    (goalsize p267 large)
    
    
    
    
    (available p268)
    (colour p268 mauve)
    (wood p268 mahogany)
    (surface-condition p268 verysmooth)
    (treatment p268 glazed)
    (goalsize p268 large)
    
    
    
    
    (unused p269)
    (goalsize p269 small)
    
    
    
    
    (unused p270)
    (goalsize p270 small)
    
    
    
    
    (unused p271)
    (goalsize p271 large)
    
    
    
    
    (unused p272)
    (goalsize p272 large)
    
    
    
    
    (unused p273)
    (goalsize p273 large)
    
    
    
    
    (unused p274)
    (goalsize p274 small)
    
    
    
    
    (unused p275)
    (goalsize p275 medium)
    
    
    
    
    (available p276)
    (colour p276 mauve)
    (wood p276 walnut)
    (surface-condition p276 smooth)
    (treatment p276 colourfragments)
    (goalsize p276 medium)
    
    
    
    
    (unused p277)
    (goalsize p277 small)
    
    
    
    
    (unused p278)
    (goalsize p278 medium)
    
    
    
    
    (available p279)
    (colour p279 black)
    (wood p279 cherry)
    (surface-condition p279 verysmooth)
    (treatment p279 colourfragments)
    (goalsize p279 large)
    
    
    
    
    (unused p280)
    (goalsize p280 small)
    
    
    
    
    (unused p281)
    (goalsize p281 medium)
    
    
    
    
    (unused p282)
    (goalsize p282 medium)
    
    
    
    
    (unused p283)
    (goalsize p283 medium)
    
    
    
    
    (unused p284)
    (goalsize p284 medium)
    
    
    
    
    (available p285)
    (colour p285 white)
    (wood p285 walnut)
    (surface-condition p285 smooth)
    (treatment p285 colourfragments)
    (goalsize p285 medium)
    
    
    
    
    (available p286)
    (colour p286 black)
    (wood p286 cherry)
    (surface-condition p286 verysmooth)
    (treatment p286 varnished)
    (goalsize p286 small)
    
    
    
    
    (unused p287)
    (goalsize p287 large)
    
    
    
    
    (available p288)
    (colour p288 green)
    (wood p288 cherry)
    (surface-condition p288 smooth)
    (treatment p288 glazed)
    (goalsize p288 large)
    
    
    
    
    (unused p289)
    (goalsize p289 medium)
    
    
    
    
    (unused p290)
    (goalsize p290 small)
    
    
    
    
    (unused p291)
    (goalsize p291 small)
    
    
    
    
    (unused p292)
    (goalsize p292 large)
    
    
    
    
    (unused p293)
    (goalsize p293 small)
    
    
    
    
    (unused p294)
    (goalsize p294 large)
    
    
    
    
    (unused p295)
    (goalsize p295 medium)
    
    
    
    
    (unused p296)
    (goalsize p296 small)
    
    
    
    
    (unused p297)
    (goalsize p297 large)
    
    
    
    
    (unused p298)
    (goalsize p298 medium)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s3)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 mahogany)
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
    (boardsize b13 s10)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s11)
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
    (boardsize b20 s5)
    (wood b20 oak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s8)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s8)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 oak)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s7)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s9)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s7)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 oak)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s10)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s11)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s10)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s8)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s5)
    (wood b33 pine)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s9)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s11)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s7)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s9)
    (wood b38 pine)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s4)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s8)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s9)
    (wood b42 walnut)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s11)
    (wood b43 walnut)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s9)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s9)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s6)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s8)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s10)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s8)
    (wood b49 walnut)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s7)
    (wood b50 walnut)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s8)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s7)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s6)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s10)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s11)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s10)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s12)
    (wood b58 teak)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s7)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s11)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s8)
    (wood b61 teak)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s7)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s6)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s7)
    (wood b64 beech)
    (surface-condition b64 smooth)
    (available b64)
    (boardsize b65 s8)
    (wood b65 beech)
    (surface-condition b65 smooth)
    (available b65)
    (boardsize b66 s8)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s8)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s9)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s8)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s7)
    (wood b70 beech)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s7)
    (wood b71 beech)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s6)
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
    (boardsize b75 s3)
    (wood b75 beech)
    (surface-condition b75 smooth)
    (available b75)
  )
  (:goal
    (and
      (available p0)
      (wood p0 pine)
      (surface-condition p0 verysmooth)
      (available p1)
      (colour p1 black)
      (wood p1 walnut)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 green)
      (treatment p2 varnished)
      (available p3)
      (colour p3 red)
      (wood p3 cherry)
      (treatment p3 varnished)
      (available p4)
      (wood p4 beech)
      (surface-condition p4 verysmooth)
      (available p5)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 red)
      (wood p6 walnut)
      (surface-condition p6 smooth)
      (available p7)
      (wood p7 pine)
      (treatment p7 varnished)
      (available p8)
      (colour p8 mauve)
      (wood p8 beech)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 blue)
      (wood p9 walnut)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (wood p10 cherry)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 natural)
      (wood p11 pine)
      (available p12)
      (colour p12 green)
      (wood p12 teak)
      (available p13)
      (colour p13 mauve)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 green)
      (surface-condition p14 verysmooth)
      (available p15)
      (colour p15 black)
      (wood p15 cherry)
      (treatment p15 glazed)
      (available p16)
      (wood p16 mahogany)
      (treatment p16 glazed)
      (available p17)
      (colour p17 red)
      (treatment p17 varnished)
      (available p18)
      (colour p18 green)
      (wood p18 beech)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (wood p19 teak)
      (surface-condition p19 smooth)
      (treatment p19 varnished)
      (available p20)
      (wood p20 beech)
      (treatment p20 glazed)
      (available p21)
      (colour p21 blue)
      (wood p21 pine)
      (surface-condition p21 smooth)
      (available p22)
      (colour p22 blue)
      (wood p22 walnut)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 green)
      (wood p23 teak)
      (available p24)
      (colour p24 green)
      (wood p24 cherry)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 white)
      (wood p25 cherry)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 white)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (wood p27 walnut)
      (treatment p27 glazed)
      (available p28)
      (colour p28 mauve)
      (wood p28 cherry)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 blue)
      (wood p29 oak)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 mauve)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 green)
      (wood p31 pine)
      (surface-condition p31 smooth)
      (available p32)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (wood p33 mahogany)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 green)
      (wood p34 pine)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 white)
      (treatment p35 glazed)
      (available p36)
      (colour p36 blue)
      (treatment p36 glazed)
      (available p37)
      (wood p37 pine)
      (surface-condition p37 smooth)
      (available p38)
      (colour p38 black)
      (surface-condition p38 smooth)
      (available p39)
      (wood p39 beech)
      (treatment p39 glazed)
      (available p40)
      (colour p40 white)
      (treatment p40 varnished)
      (available p41)
      (wood p41 mahogany)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 white)
      (wood p42 walnut)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 natural)
      (wood p43 cherry)
      (available p44)
      (colour p44 mauve)
      (wood p44 oak)
      (available p45)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (wood p46 oak)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (wood p47 teak)
      (treatment p47 varnished)
      (available p48)
      (colour p48 white)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 natural)
      (wood p49 teak)
      (available p50)
      (wood p50 mahogany)
      (surface-condition p50 verysmooth)
      (available p51)
      (wood p51 teak)
      (treatment p51 varnished)
      (available p52)
      (wood p52 walnut)
      (surface-condition p52 verysmooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 natural)
      (surface-condition p53 verysmooth)
      (available p54)
      (colour p54 red)
      (wood p54 walnut)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (wood p55 pine)
      (surface-condition p55 smooth)
      (available p56)
      (wood p56 walnut)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 red)
      (wood p57 cherry)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 black)
      (wood p58 pine)
      (surface-condition p58 smooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 natural)
      (wood p59 beech)
      (treatment p59 glazed)
      (available p60)
      (wood p60 beech)
      (surface-condition p60 smooth)
      (available p61)
      (colour p61 white)
      (wood p61 cherry)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (surface-condition p62 verysmooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 natural)
      (wood p63 teak)
      (surface-condition p63 smooth)
      (treatment p63 glazed)
      (available p64)
      (colour p64 red)
      (surface-condition p64 smooth)
      (available p65)
      (colour p65 blue)
      (wood p65 mahogany)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 white)
      (wood p66 walnut)
      (available p67)
      (colour p67 blue)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 green)
      (wood p68 beech)
      (surface-condition p68 verysmooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 white)
      (surface-condition p69 verysmooth)
      (available p70)
      (colour p70 red)
      (wood p70 walnut)
      (available p71)
      (wood p71 beech)
      (treatment p71 glazed)
      (available p72)
      (colour p72 mauve)
      (wood p72 pine)
      (surface-condition p72 smooth)
      (treatment p72 varnished)
      (available p73)
      (colour p73 black)
      (treatment p73 varnished)
      (available p74)
      (colour p74 white)
      (surface-condition p74 smooth)
      (available p75)
      (colour p75 black)
      (treatment p75 varnished)
      (available p76)
      (colour p76 natural)
      (wood p76 mahogany)
      (available p77)
      (colour p77 green)
      (wood p77 teak)
      (available p78)
      (colour p78 red)
      (wood p78 oak)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 red)
      (wood p79 cherry)
      (available p80)
      (colour p80 green)
      (wood p80 oak)
      (available p81)
      (colour p81 black)
      (treatment p81 glazed)
      (available p82)
      (colour p82 white)
      (wood p82 walnut)
      (available p83)
      (wood p83 teak)
      (surface-condition p83 smooth)
      (available p84)
      (colour p84 blue)
      (treatment p84 varnished)
      (available p85)
      (colour p85 green)
      (wood p85 mahogany)
      (treatment p85 glazed)
      (available p86)
      (surface-condition p86 verysmooth)
      (treatment p86 glazed)
      (available p87)
      (colour p87 blue)
      (wood p87 beech)
      (available p88)
      (surface-condition p88 verysmooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 red)
      (wood p89 pine)
      (surface-condition p89 verysmooth)
      (treatment p89 glazed)
      (available p90)
      (wood p90 pine)
      (treatment p90 varnished)
      (available p91)
      (colour p91 green)
      (wood p91 beech)
      (available p92)
      (colour p92 green)
      (wood p92 beech)
      (available p93)
      (colour p93 green)
      (wood p93 pine)
      (available p94)
      (colour p94 blue)
      (wood p94 cherry)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 red)
      (treatment p95 varnished)
      (available p96)
      (colour p96 natural)
      (treatment p96 varnished)
      (available p97)
      (colour p97 blue)
      (wood p97 pine)
      (surface-condition p97 smooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 white)
      (wood p98 mahogany)
      (surface-condition p98 smooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 natural)
      (wood p99 beech)
      (available p100)
      (colour p100 mauve)
      (wood p100 teak)
      (available p101)
      (colour p101 blue)
      (wood p101 beech)
      (available p102)
      (colour p102 natural)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (wood p103 walnut)
      (surface-condition p103 verysmooth)
      (available p104)
      (colour p104 red)
      (wood p104 beech)
      (surface-condition p104 verysmooth)
      (treatment p104 glazed)
      (available p105)
      (colour p105 blue)
      (wood p105 teak)
      (surface-condition p105 verysmooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 red)
      (wood p106 mahogany)
      (available p107)
      (colour p107 white)
      (wood p107 beech)
      (treatment p107 glazed)
      (available p108)
      (colour p108 blue)
      (wood p108 cherry)
      (available p109)
      (wood p109 cherry)
      (surface-condition p109 verysmooth)
      (available p110)
      (wood p110 oak)
      (treatment p110 glazed)
      (available p111)
      (colour p111 red)
      (wood p111 walnut)
      (treatment p111 glazed)
      (available p112)
      (colour p112 natural)
      (treatment p112 glazed)
      (available p113)
      (colour p113 red)
      (wood p113 teak)
      (surface-condition p113 verysmooth)
      (treatment p113 glazed)
      (available p114)
      (colour p114 mauve)
      (wood p114 walnut)
      (available p115)
      (colour p115 red)
      (treatment p115 glazed)
      (available p116)
      (surface-condition p116 verysmooth)
      (treatment p116 varnished)
      (available p117)
      (surface-condition p117 verysmooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 natural)
      (treatment p118 varnished)
      (available p119)
      (wood p119 pine)
      (surface-condition p119 verysmooth)
      (available p120)
      (colour p120 white)
      (surface-condition p120 verysmooth)
      (treatment p120 varnished)
      (available p121)
      (colour p121 green)
      (wood p121 teak)
      (surface-condition p121 smooth)
      (treatment p121 varnished)
      (available p122)
      (colour p122 white)
      (treatment p122 varnished)
      (available p123)
      (colour p123 natural)
      (wood p123 teak)
      (surface-condition p123 smooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 white)
      (wood p124 mahogany)
      (surface-condition p124 smooth)
      (treatment p124 varnished)
      (available p125)
      (wood p125 oak)
      (treatment p125 glazed)
      (available p126)
      (colour p126 mauve)
      (wood p126 teak)
      (surface-condition p126 smooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 natural)
      (wood p127 teak)
      (surface-condition p127 verysmooth)
      (treatment p127 varnished)
      (available p128)
      (colour p128 black)
      (surface-condition p128 verysmooth)
      (available p129)
      (surface-condition p129 verysmooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 black)
      (surface-condition p130 verysmooth)
      (treatment p130 varnished)
      (available p131)
      (wood p131 cherry)
      (treatment p131 glazed)
      (available p132)
      (wood p132 teak)
      (surface-condition p132 smooth)
      (treatment p132 varnished)
      (available p133)
      (colour p133 blue)
      (treatment p133 varnished)
      (available p134)
      (colour p134 mauve)
      (wood p134 cherry)
      (surface-condition p134 verysmooth)
      (treatment p134 varnished)
      (available p135)
      (colour p135 green)
      (treatment p135 varnished)
      (available p136)
      (colour p136 green)
      (wood p136 mahogany)
      (surface-condition p136 verysmooth)
      (treatment p136 glazed)
      (available p137)
      (colour p137 red)
      (treatment p137 glazed)
      (available p138)
      (colour p138 white)
      (surface-condition p138 smooth)
      (available p139)
      (colour p139 mauve)
      (wood p139 walnut)
      (available p140)
      (wood p140 walnut)
      (treatment p140 varnished)
      (available p141)
      (colour p141 mauve)
      (wood p141 mahogany)
      (treatment p141 varnished)
      (available p142)
      (wood p142 teak)
      (surface-condition p142 verysmooth)
      (available p143)
      (colour p143 red)
      (treatment p143 varnished)
      (available p144)
      (colour p144 white)
      (wood p144 pine)
      (available p145)
      (colour p145 white)
      (wood p145 beech)
      (surface-condition p145 verysmooth)
      (treatment p145 glazed)
      (available p146)
      (colour p146 white)
      (wood p146 oak)
      (surface-condition p146 verysmooth)
      (available p147)
      (wood p147 teak)
      (treatment p147 glazed)
      (available p148)
      (colour p148 green)
      (wood p148 beech)
      (surface-condition p148 verysmooth)
      (treatment p148 glazed)
      (available p149)
      (wood p149 walnut)
      (treatment p149 varnished)
      (available p150)
      (colour p150 red)
      (wood p150 walnut)
      (surface-condition p150 smooth)
      (treatment p150 varnished)
      (available p151)
      (colour p151 white)
      (wood p151 mahogany)
      (available p152)
      (wood p152 cherry)
      (surface-condition p152 verysmooth)
      (treatment p152 varnished)
      (available p153)
      (colour p153 natural)
      (wood p153 pine)
      (surface-condition p153 verysmooth)
      (treatment p153 varnished)
      (available p154)
      (surface-condition p154 smooth)
      (treatment p154 varnished)
      (available p155)
      (colour p155 mauve)
      (wood p155 walnut)
      (surface-condition p155 smooth)
      (treatment p155 glazed)
      (available p156)
      (wood p156 oak)
      (surface-condition p156 smooth)
      (available p157)
      (colour p157 red)
      (wood p157 mahogany)
      (surface-condition p157 smooth)
      (treatment p157 glazed)
      (available p158)
      (colour p158 black)
      (wood p158 mahogany)
      (surface-condition p158 smooth)
      (treatment p158 glazed)
      (available p159)
      (colour p159 black)
      (wood p159 walnut)
      (treatment p159 varnished)
      (available p160)
      (colour p160 green)
      (wood p160 cherry)
      (surface-condition p160 smooth)
      (treatment p160 varnished)
      (available p161)
      (surface-condition p161 verysmooth)
      (treatment p161 glazed)
      (available p162)
      (colour p162 red)
      (surface-condition p162 verysmooth)
      (available p163)
      (colour p163 white)
      (treatment p163 glazed)
      (available p164)
      (colour p164 white)
      (treatment p164 varnished)
      (available p165)
      (colour p165 green)
      (wood p165 beech)
      (surface-condition p165 verysmooth)
      (treatment p165 varnished)
      (available p166)
      (colour p166 natural)
      (wood p166 walnut)
      (surface-condition p166 smooth)
      (treatment p166 varnished)
      (available p167)
      (colour p167 red)
      (wood p167 teak)
      (surface-condition p167 verysmooth)
      (treatment p167 varnished)
      (available p168)
      (surface-condition p168 smooth)
      (treatment p168 glazed)
      (available p169)
      (colour p169 green)
      (wood p169 mahogany)
      (treatment p169 varnished)
      (available p170)
      (colour p170 black)
      (wood p170 oak)
      (available p171)
      (colour p171 natural)
      (wood p171 oak)
      (available p172)
      (colour p172 mauve)
      (wood p172 teak)
      (surface-condition p172 smooth)
      (available p173)
      (colour p173 blue)
      (wood p173 oak)
      (treatment p173 glazed)
      (available p174)
      (colour p174 red)
      (surface-condition p174 verysmooth)
      (available p175)
      (colour p175 blue)
      (treatment p175 varnished)
      (available p176)
      (colour p176 black)
      (wood p176 teak)
      (surface-condition p176 verysmooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 blue)
      (wood p177 mahogany)
      (surface-condition p177 verysmooth)
      (treatment p177 varnished)
      (available p178)
      (surface-condition p178 verysmooth)
      (treatment p178 glazed)
      (available p179)
      (colour p179 red)
      (surface-condition p179 smooth)
      (available p180)
      (wood p180 pine)
      (surface-condition p180 smooth)
      (treatment p180 glazed)
      (available p181)
      (surface-condition p181 smooth)
      (treatment p181 glazed)
      (available p182)
      (colour p182 blue)
      (treatment p182 varnished)
      (available p183)
      (colour p183 red)
      (wood p183 pine)
      (available p184)
      (wood p184 pine)
      (treatment p184 varnished)
      (available p185)
      (colour p185 white)
      (treatment p185 glazed)
      (available p186)
      (colour p186 blue)
      (wood p186 oak)
      (surface-condition p186 verysmooth)
      (treatment p186 varnished)
      (available p187)
      (colour p187 blue)
      (surface-condition p187 verysmooth)
      (available p188)
      (colour p188 black)
      (wood p188 cherry)
      (surface-condition p188 verysmooth)
      (treatment p188 glazed)
      (available p189)
      (surface-condition p189 verysmooth)
      (treatment p189 varnished)
      (available p190)
      (wood p190 teak)
      (treatment p190 glazed)
      (available p191)
      (colour p191 blue)
      (wood p191 beech)
      (available p192)
      (colour p192 red)
      (wood p192 oak)
      (available p193)
      (wood p193 beech)
      (surface-condition p193 verysmooth)
      (available p194)
      (colour p194 red)
      (surface-condition p194 smooth)
      (available p195)
      (surface-condition p195 verysmooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 green)
      (wood p196 pine)
      (available p197)
      (colour p197 black)
      (wood p197 oak)
      (surface-condition p197 smooth)
      (treatment p197 varnished)
      (available p198)
      (colour p198 black)
      (wood p198 walnut)
      (treatment p198 varnished)
      (available p199)
      (wood p199 walnut)
      (surface-condition p199 verysmooth)
      (available p200)
      (wood p200 walnut)
      (surface-condition p200 smooth)
      (available p201)
      (wood p201 pine)
      (treatment p201 glazed)
      (available p202)
      (wood p202 oak)
      (treatment p202 glazed)
      (available p203)
      (colour p203 white)
      (wood p203 walnut)
      (surface-condition p203 smooth)
      (available p204)
      (colour p204 natural)
      (surface-condition p204 verysmooth)
      (available p205)
      (colour p205 natural)
      (treatment p205 varnished)
      (available p206)
      (colour p206 green)
      (wood p206 beech)
      (surface-condition p206 verysmooth)
      (treatment p206 varnished)
      (available p207)
      (colour p207 red)
      (surface-condition p207 verysmooth)
      (available p208)
      (colour p208 blue)
      (wood p208 walnut)
      (surface-condition p208 verysmooth)
      (treatment p208 varnished)
      (available p209)
      (colour p209 blue)
      (surface-condition p209 smooth)
      (treatment p209 glazed)
      (available p210)
      (colour p210 natural)
      (surface-condition p210 smooth)
      (available p211)
      (colour p211 black)
      (surface-condition p211 verysmooth)
      (available p212)
      (colour p212 natural)
      (wood p212 mahogany)
      (treatment p212 glazed)
      (available p213)
      (colour p213 natural)
      (wood p213 beech)
      (surface-condition p213 smooth)
      (treatment p213 varnished)
      (available p214)
      (wood p214 walnut)
      (treatment p214 glazed)
      (available p215)
      (surface-condition p215 smooth)
      (treatment p215 varnished)
      (available p216)
      (colour p216 green)
      (wood p216 cherry)
      (treatment p216 varnished)
      (available p217)
      (colour p217 red)
      (wood p217 mahogany)
      (surface-condition p217 verysmooth)
      (treatment p217 glazed)
      (available p218)
      (colour p218 white)
      (wood p218 cherry)
      (surface-condition p218 smooth)
      (treatment p218 varnished)
      (available p219)
      (colour p219 red)
      (wood p219 pine)
      (surface-condition p219 verysmooth)
      (treatment p219 varnished)
      (available p220)
      (wood p220 teak)
      (surface-condition p220 smooth)
      (treatment p220 varnished)
      (available p221)
      (surface-condition p221 smooth)
      (treatment p221 glazed)
      (available p222)
      (colour p222 red)
      (wood p222 mahogany)
      (surface-condition p222 verysmooth)
      (available p223)
      (wood p223 beech)
      (surface-condition p223 verysmooth)
      (available p224)
      (colour p224 black)
      (wood p224 beech)
      (surface-condition p224 smooth)
      (available p225)
      (wood p225 teak)
      (surface-condition p225 verysmooth)
      (available p226)
      (colour p226 white)
      (wood p226 beech)
      (surface-condition p226 verysmooth)
      (treatment p226 glazed)
      (available p227)
      (colour p227 mauve)
      (wood p227 walnut)
      (available p228)
      (colour p228 white)
      (wood p228 teak)
      (surface-condition p228 verysmooth)
      (treatment p228 glazed)
      (available p229)
      (colour p229 red)
      (wood p229 teak)
      (surface-condition p229 smooth)
      (treatment p229 glazed)
      (available p230)
      (colour p230 mauve)
      (wood p230 oak)
      (surface-condition p230 verysmooth)
      (treatment p230 varnished)
      (available p231)
      (wood p231 teak)
      (surface-condition p231 smooth)
      (available p232)
      (colour p232 black)
      (wood p232 mahogany)
      (available p233)
      (colour p233 natural)
      (wood p233 walnut)
      (surface-condition p233 smooth)
      (treatment p233 glazed)
      (available p234)
      (surface-condition p234 verysmooth)
      (treatment p234 varnished)
      (available p235)
      (colour p235 blue)
      (wood p235 cherry)
      (surface-condition p235 smooth)
      (treatment p235 varnished)
      (available p236)
      (colour p236 mauve)
      (wood p236 cherry)
      (available p237)
      (colour p237 white)
      (wood p237 teak)
      (surface-condition p237 smooth)
      (treatment p237 glazed)
      (available p238)
      (colour p238 natural)
      (wood p238 oak)
      (surface-condition p238 smooth)
      (available p239)
      (colour p239 mauve)
      (wood p239 walnut)
      (available p240)
      (colour p240 green)
      (wood p240 cherry)
      (surface-condition p240 smooth)
      (treatment p240 varnished)
      (available p241)
      (colour p241 blue)
      (surface-condition p241 smooth)
      (available p242)
      (colour p242 green)
      (surface-condition p242 smooth)
      (available p243)
      (colour p243 green)
      (surface-condition p243 smooth)
      (available p244)
      (colour p244 white)
      (wood p244 mahogany)
      (surface-condition p244 verysmooth)
      (available p245)
      (colour p245 blue)
      (wood p245 pine)
      (surface-condition p245 smooth)
      (treatment p245 glazed)
      (available p246)
      (wood p246 mahogany)
      (treatment p246 glazed)
      (available p247)
      (colour p247 mauve)
      (surface-condition p247 verysmooth)
      (available p248)
      (wood p248 walnut)
      (treatment p248 glazed)
      (available p249)
      (wood p249 pine)
      (treatment p249 varnished)
      (available p250)
      (colour p250 red)
      (wood p250 walnut)
      (available p251)
      (surface-condition p251 smooth)
      (treatment p251 glazed)
      (available p252)
      (surface-condition p252 smooth)
      (treatment p252 varnished)
      (available p253)
      (colour p253 natural)
      (wood p253 oak)
      (available p254)
      (surface-condition p254 smooth)
      (treatment p254 varnished)
      (available p255)
      (colour p255 blue)
      (wood p255 oak)
      (available p256)
      (colour p256 blue)
      (surface-condition p256 smooth)
      (treatment p256 varnished)
      (available p257)
      (wood p257 pine)
      (treatment p257 varnished)
      (available p258)
      (colour p258 blue)
      (wood p258 teak)
      (available p259)
      (colour p259 green)
      (wood p259 pine)
      (available p260)
      (colour p260 black)
      (wood p260 mahogany)
      (available p261)
      (colour p261 red)
      (wood p261 cherry)
      (surface-condition p261 verysmooth)
      (available p262)
      (colour p262 green)
      (treatment p262 varnished)
      (available p263)
      (wood p263 oak)
      (surface-condition p263 smooth)
      (available p264)
      (colour p264 natural)
      (wood p264 beech)
      (surface-condition p264 verysmooth)
      (treatment p264 varnished)
      (available p265)
      (wood p265 cherry)
      (surface-condition p265 smooth)
      (available p266)
      (colour p266 green)
      (wood p266 walnut)
      (available p267)
      (colour p267 natural)
      (wood p267 oak)
      (available p268)
      (colour p268 black)
      (treatment p268 glazed)
      (available p269)
      (colour p269 black)
      (wood p269 cherry)
      (available p270)
      (colour p270 white)
      (surface-condition p270 verysmooth)
      (treatment p270 glazed)
      (available p271)
      (colour p271 red)
      (wood p271 teak)
      (available p272)
      (colour p272 mauve)
      (wood p272 oak)
      (treatment p272 varnished)
      (available p273)
      (wood p273 oak)
      (surface-condition p273 verysmooth)
      (treatment p273 varnished)
      (available p274)
      (colour p274 white)
      (wood p274 beech)
      (surface-condition p274 smooth)
      (treatment p274 glazed)
      (available p275)
      (surface-condition p275 smooth)
      (treatment p275 varnished)
      (available p276)
      (colour p276 red)
      (wood p276 walnut)
      (surface-condition p276 smooth)
      (treatment p276 varnished)
      (available p277)
      (wood p277 teak)
      (surface-condition p277 verysmooth)
      (treatment p277 glazed)
      (available p278)
      (colour p278 natural)
      (treatment p278 glazed)
      (available p279)
      (colour p279 natural)
      (wood p279 cherry)
      (surface-condition p279 verysmooth)
      (treatment p279 glazed)
      (available p280)
      (colour p280 blue)
      (surface-condition p280 smooth)
      (treatment p280 varnished)
      (available p281)
      (colour p281 green)
      (surface-condition p281 smooth)
      (available p282)
      (colour p282 red)
      (wood p282 mahogany)
      (treatment p282 varnished)
      (available p283)
      (wood p283 walnut)
      (surface-condition p283 verysmooth)
      (available p284)
      (colour p284 black)
      (wood p284 beech)
      (available p285)
      (surface-condition p285 smooth)
      (treatment p285 varnished)
      (available p286)
      (colour p286 white)
      (wood p286 cherry)
      (surface-condition p286 verysmooth)
      (treatment p286 glazed)
      (available p287)
      (wood p287 oak)
      (surface-condition p287 verysmooth)
      (available p288)
      (colour p288 black)
      (wood p288 cherry)
      (treatment p288 varnished)
      (available p289)
      (wood p289 mahogany)
      (surface-condition p289 smooth)
      (treatment p289 glazed)
      (available p290)
      (colour p290 blue)
      (treatment p290 glazed)
      (available p291)
      (wood p291 walnut)
      (treatment p291 varnished)
      (available p292)
      (colour p292 red)
      (surface-condition p292 smooth)
      (treatment p292 varnished)
      (available p293)
      (colour p293 natural)
      (wood p293 beech)
      (surface-condition p293 smooth)
      (treatment p293 varnished)
      (available p294)
      (colour p294 blue)
      (treatment p294 varnished)
      (available p295)
      (colour p295 mauve)
      (surface-condition p295 verysmooth)
      (available p296)
      (colour p296 red)
      (wood p296 beech)
      (surface-condition p296 smooth)
      (treatment p296 glazed)
      (available p297)
      (colour p297 green)
      (wood p297 beech)
      (surface-condition p297 smooth)
      (treatment p297 glazed)
      (available p298)
      (colour p298 white)
      (treatment p298 varnished)
    )
  )
  
)
