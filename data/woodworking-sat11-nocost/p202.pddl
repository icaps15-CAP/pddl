; woodworking task with 293 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 212637

(define (problem wood-prob-sat-202)
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
    teak walnut beech mahogany oak pine cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 p278 p279 p280 p281 p282 p283 p284 p285 p286 p287 p288 p289 p290 p291 p292 - part
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
    (has-colour glazer0 blue)
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
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
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 blue)
    (wood p3 oak)
    (surface-condition p3 verysmooth)
    (treatment p3 colourfragments)
    (goalsize p3 medium)
    
    
    
    
    (available p4)
    (colour p4 black)
    (wood p4 walnut)
    (surface-condition p4 rough)
    (treatment p4 varnished)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (available p8)
    (colour p8 mauve)
    (wood p8 beech)
    (surface-condition p8 rough)
    (treatment p8 colourfragments)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 natural)
    (wood p10 beech)
    (surface-condition p10 rough)
    (treatment p10 varnished)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
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
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (available p33)
    (colour p33 red)
    (wood p33 walnut)
    (surface-condition p33 rough)
    (treatment p33 colourfragments)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (available p35)
    (colour p35 natural)
    (wood p35 oak)
    (surface-condition p35 verysmooth)
    (treatment p35 varnished)
    (goalsize p35 medium)
    
    
    
    
    (available p36)
    (colour p36 natural)
    (wood p36 cherry)
    (surface-condition p36 verysmooth)
    (treatment p36 glazed)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 green)
    (wood p38 mahogany)
    (surface-condition p38 smooth)
    (treatment p38 glazed)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (available p40)
    (colour p40 blue)
    (wood p40 cherry)
    (surface-condition p40 smooth)
    (treatment p40 glazed)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (available p45)
    (colour p45 natural)
    (wood p45 walnut)
    (surface-condition p45 smooth)
    (treatment p45 varnished)
    (goalsize p45 large)
    
    
    
    
    (available p46)
    (colour p46 black)
    (wood p46 teak)
    (surface-condition p46 smooth)
    (treatment p46 glazed)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (available p51)
    (colour p51 natural)
    (wood p51 cherry)
    (surface-condition p51 verysmooth)
    (treatment p51 glazed)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (available p57)
    (colour p57 white)
    (wood p57 oak)
    (surface-condition p57 rough)
    (treatment p57 glazed)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (available p60)
    (colour p60 mauve)
    (wood p60 oak)
    (surface-condition p60 rough)
    (treatment p60 varnished)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (available p85)
    (colour p85 red)
    (wood p85 cherry)
    (surface-condition p85 rough)
    (treatment p85 colourfragments)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (available p91)
    (colour p91 natural)
    (wood p91 cherry)
    (surface-condition p91 rough)
    (treatment p91 glazed)
    (goalsize p91 small)
    
    
    
    
    (available p92)
    (colour p92 white)
    (wood p92 oak)
    (surface-condition p92 rough)
    (treatment p92 glazed)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (available p95)
    (colour p95 natural)
    (wood p95 oak)
    (surface-condition p95 verysmooth)
    (treatment p95 glazed)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (available p103)
    (colour p103 red)
    (wood p103 mahogany)
    (surface-condition p103 rough)
    (treatment p103 colourfragments)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (available p105)
    (colour p105 mauve)
    (wood p105 oak)
    (surface-condition p105 rough)
    (treatment p105 colourfragments)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (available p109)
    (colour p109 white)
    (wood p109 walnut)
    (surface-condition p109 rough)
    (treatment p109 colourfragments)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (available p112)
    (colour p112 red)
    (wood p112 cherry)
    (surface-condition p112 rough)
    (treatment p112 colourfragments)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (available p116)
    (colour p116 natural)
    (wood p116 walnut)
    (surface-condition p116 rough)
    (treatment p116 varnished)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (available p121)
    (colour p121 green)
    (wood p121 beech)
    (surface-condition p121 verysmooth)
    (treatment p121 varnished)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (available p133)
    (colour p133 green)
    (wood p133 oak)
    (surface-condition p133 verysmooth)
    (treatment p133 varnished)
    (goalsize p133 medium)
    
    
    
    
    (available p134)
    (colour p134 white)
    (wood p134 beech)
    (surface-condition p134 rough)
    (treatment p134 colourfragments)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
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
    (colour p140 natural)
    (wood p140 beech)
    (surface-condition p140 rough)
    (treatment p140 colourfragments)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 large)
    
    
    
    
    (available p143)
    (colour p143 blue)
    (wood p143 beech)
    (surface-condition p143 rough)
    (treatment p143 colourfragments)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (available p150)
    (colour p150 red)
    (wood p150 teak)
    (surface-condition p150 smooth)
    (treatment p150 varnished)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (available p156)
    (colour p156 green)
    (wood p156 mahogany)
    (surface-condition p156 smooth)
    (treatment p156 varnished)
    (goalsize p156 large)
    
    
    
    
    (available p157)
    (colour p157 mauve)
    (wood p157 mahogany)
    (surface-condition p157 smooth)
    (treatment p157 colourfragments)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (available p170)
    (colour p170 natural)
    (wood p170 beech)
    (surface-condition p170 rough)
    (treatment p170 colourfragments)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (available p174)
    (colour p174 white)
    (wood p174 teak)
    (surface-condition p174 verysmooth)
    (treatment p174 glazed)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (available p176)
    (colour p176 natural)
    (wood p176 cherry)
    (surface-condition p176 smooth)
    (treatment p176 glazed)
    (goalsize p176 small)
    
    
    
    
    (available p177)
    (colour p177 red)
    (wood p177 mahogany)
    (surface-condition p177 rough)
    (treatment p177 colourfragments)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (unused p180)
    (goalsize p180 large)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (available p187)
    (colour p187 white)
    (wood p187 cherry)
    (surface-condition p187 verysmooth)
    (treatment p187 glazed)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (available p189)
    (colour p189 natural)
    (wood p189 walnut)
    (surface-condition p189 verysmooth)
    (treatment p189 colourfragments)
    (goalsize p189 large)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (available p191)
    (colour p191 green)
    (wood p191 teak)
    (surface-condition p191 rough)
    (treatment p191 colourfragments)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 small)
    
    
    
    
    (available p196)
    (colour p196 black)
    (wood p196 teak)
    (surface-condition p196 rough)
    (treatment p196 colourfragments)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 medium)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 medium)
    
    
    
    
    (available p202)
    (colour p202 green)
    (wood p202 cherry)
    (surface-condition p202 verysmooth)
    (treatment p202 varnished)
    (goalsize p202 medium)
    
    
    
    
    (available p203)
    (colour p203 white)
    (wood p203 teak)
    (surface-condition p203 rough)
    (treatment p203 colourfragments)
    (goalsize p203 large)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 large)
    
    
    
    
    (unused p206)
    (goalsize p206 medium)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 small)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (available p214)
    (colour p214 red)
    (wood p214 walnut)
    (surface-condition p214 rough)
    (treatment p214 varnished)
    (goalsize p214 small)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 medium)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (available p218)
    (colour p218 mauve)
    (wood p218 teak)
    (surface-condition p218 rough)
    (treatment p218 varnished)
    (goalsize p218 small)
    
    
    
    
    (available p219)
    (colour p219 green)
    (wood p219 beech)
    (surface-condition p219 smooth)
    (treatment p219 colourfragments)
    (goalsize p219 small)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 medium)
    
    
    
    
    (unused p223)
    (goalsize p223 large)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 large)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (available p227)
    (colour p227 blue)
    (wood p227 walnut)
    (surface-condition p227 verysmooth)
    (treatment p227 glazed)
    (goalsize p227 large)
    
    
    
    
    (unused p228)
    (goalsize p228 medium)
    
    
    
    
    (unused p229)
    (goalsize p229 small)
    
    
    
    
    (unused p230)
    (goalsize p230 large)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (available p232)
    (colour p232 white)
    (wood p232 mahogany)
    (surface-condition p232 smooth)
    (treatment p232 varnished)
    (goalsize p232 small)
    
    
    
    
    (available p233)
    (colour p233 natural)
    (wood p233 walnut)
    (surface-condition p233 rough)
    (treatment p233 colourfragments)
    (goalsize p233 medium)
    
    
    
    
    (unused p234)
    (goalsize p234 large)
    
    
    
    
    (available p235)
    (colour p235 white)
    (wood p235 oak)
    (surface-condition p235 smooth)
    (treatment p235 glazed)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (unused p237)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (unused p239)
    (goalsize p239 small)
    
    
    
    
    (unused p240)
    (goalsize p240 medium)
    
    
    
    
    (unused p241)
    (goalsize p241 small)
    
    
    
    
    (unused p242)
    (goalsize p242 large)
    
    
    
    
    (unused p243)
    (goalsize p243 large)
    
    
    
    
    (unused p244)
    (goalsize p244 medium)
    
    
    
    
    (available p245)
    (colour p245 mauve)
    (wood p245 teak)
    (surface-condition p245 verysmooth)
    (treatment p245 varnished)
    (goalsize p245 medium)
    
    
    
    
    (unused p246)
    (goalsize p246 small)
    
    
    
    
    (unused p247)
    (goalsize p247 large)
    
    
    
    
    (unused p248)
    (goalsize p248 large)
    
    
    
    
    (available p249)
    (colour p249 green)
    (wood p249 teak)
    (surface-condition p249 smooth)
    (treatment p249 varnished)
    (goalsize p249 small)
    
    
    
    
    (unused p250)
    (goalsize p250 large)
    
    
    
    
    (available p251)
    (colour p251 blue)
    (wood p251 teak)
    (surface-condition p251 verysmooth)
    (treatment p251 varnished)
    (goalsize p251 medium)
    
    
    
    
    (available p252)
    (colour p252 blue)
    (wood p252 cherry)
    (surface-condition p252 verysmooth)
    (treatment p252 varnished)
    (goalsize p252 medium)
    
    
    
    
    (unused p253)
    (goalsize p253 medium)
    
    
    
    
    (unused p254)
    (goalsize p254 medium)
    
    
    
    
    (unused p255)
    (goalsize p255 medium)
    
    
    
    
    (unused p256)
    (goalsize p256 small)
    
    
    
    
    (unused p257)
    (goalsize p257 medium)
    
    
    
    
    (unused p258)
    (goalsize p258 large)
    
    
    
    
    (unused p259)
    (goalsize p259 small)
    
    
    
    
    (available p260)
    (colour p260 mauve)
    (wood p260 teak)
    (surface-condition p260 verysmooth)
    (treatment p260 varnished)
    (goalsize p260 small)
    
    
    
    
    (unused p261)
    (goalsize p261 large)
    
    
    
    
    (available p262)
    (colour p262 green)
    (wood p262 mahogany)
    (surface-condition p262 rough)
    (treatment p262 varnished)
    (goalsize p262 large)
    
    
    
    
    (unused p263)
    (goalsize p263 small)
    
    
    
    
    (unused p264)
    (goalsize p264 medium)
    
    
    
    
    (unused p265)
    (goalsize p265 small)
    
    
    
    
    (unused p266)
    (goalsize p266 large)
    
    
    
    
    (unused p267)
    (goalsize p267 small)
    
    
    
    
    (unused p268)
    (goalsize p268 small)
    
    
    
    
    (unused p269)
    (goalsize p269 small)
    
    
    
    
    (unused p270)
    (goalsize p270 small)
    
    
    
    
    (unused p271)
    (goalsize p271 small)
    
    
    
    
    (available p272)
    (colour p272 blue)
    (wood p272 oak)
    (surface-condition p272 verysmooth)
    (treatment p272 glazed)
    (goalsize p272 medium)
    
    
    
    
    (unused p273)
    (goalsize p273 large)
    
    
    
    
    (unused p274)
    (goalsize p274 large)
    
    
    
    
    (available p275)
    (colour p275 green)
    (wood p275 walnut)
    (surface-condition p275 smooth)
    (treatment p275 glazed)
    (goalsize p275 medium)
    
    
    
    
    (unused p276)
    (goalsize p276 medium)
    
    
    
    
    (unused p277)
    (goalsize p277 small)
    
    
    
    
    (unused p278)
    (goalsize p278 medium)
    
    
    
    
    (unused p279)
    (goalsize p279 large)
    
    
    
    
    (unused p280)
    (goalsize p280 small)
    
    
    
    
    (unused p281)
    (goalsize p281 small)
    
    
    
    
    (available p282)
    (colour p282 green)
    (wood p282 beech)
    (surface-condition p282 smooth)
    (treatment p282 glazed)
    (goalsize p282 small)
    
    
    
    
    (unused p283)
    (goalsize p283 small)
    
    
    
    
    (unused p284)
    (goalsize p284 large)
    
    
    
    
    (available p285)
    (colour p285 blue)
    (wood p285 mahogany)
    (surface-condition p285 verysmooth)
    (treatment p285 glazed)
    (goalsize p285 medium)
    
    
    
    
    (unused p286)
    (goalsize p286 medium)
    
    
    
    
    (unused p287)
    (goalsize p287 large)
    
    
    
    
    (unused p288)
    (goalsize p288 large)
    
    
    
    
    (unused p289)
    (goalsize p289 large)
    
    
    
    
    (unused p290)
    (goalsize p290 small)
    
    
    
    
    (unused p291)
    (goalsize p291 small)
    
    
    
    
    (unused p292)
    (goalsize p292 large)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s11)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s10)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s11)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s4)
    (wood b11 cherry)
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
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s9)
    (wood b15 mahogany)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s6)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s10)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s9)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 mahogany)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 mahogany)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 mahogany)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 mahogany)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s2)
    (wood b25 mahogany)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s7)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s8)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s6)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s10)
    (wood b31 oak)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s10)
    (wood b32 oak)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s7)
    (wood b33 oak)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 oak)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 oak)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s9)
    (wood b36 oak)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s9)
    (wood b37 oak)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s10)
    (wood b38 oak)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s9)
    (wood b39 oak)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s5)
    (wood b40 oak)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s7)
    (wood b41 pine)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s6)
    (wood b42 pine)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s7)
    (wood b43 pine)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s6)
    (wood b44 pine)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s11)
    (wood b45 pine)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s9)
    (wood b46 pine)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s7)
    (wood b47 pine)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s7)
    (wood b48 pine)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s8)
    (wood b49 pine)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s5)
    (wood b50 pine)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s9)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 walnut)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s7)
    (wood b53 walnut)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s10)
    (wood b54 walnut)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s7)
    (wood b55 walnut)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s7)
    (wood b56 walnut)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s6)
    (wood b57 walnut)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s9)
    (wood b58 walnut)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s8)
    (wood b59 walnut)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s10)
    (wood b60 walnut)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s5)
    (wood b61 walnut)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s9)
    (wood b62 teak)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s9)
    (wood b63 teak)
    (surface-condition b63 smooth)
    (available b63)
    (boardsize b64 s9)
    (wood b64 teak)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s8)
    (wood b65 teak)
    (surface-condition b65 smooth)
    (available b65)
    (boardsize b66 s8)
    (wood b66 teak)
    (surface-condition b66 smooth)
    (available b66)
    (boardsize b67 s9)
    (wood b67 teak)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s6)
    (wood b68 teak)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s10)
    (wood b69 teak)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s10)
    (wood b70 teak)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s7)
    (wood b71 teak)
    (surface-condition b71 smooth)
    (available b71)
    (boardsize b72 s12)
    (wood b72 teak)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s6)
    (wood b73 teak)
    (surface-condition b73 rough)
    (available b73)
    (boardsize b74 s9)
    (wood b74 beech)
    (surface-condition b74 rough)
    (available b74)
    (boardsize b75 s7)
    (wood b75 beech)
    (surface-condition b75 smooth)
    (available b75)
    (boardsize b76 s7)
    (wood b76 beech)
    (surface-condition b76 smooth)
    (available b76)
    (boardsize b77 s8)
    (wood b77 beech)
    (surface-condition b77 rough)
    (available b77)
    (boardsize b78 s5)
    (wood b78 beech)
    (surface-condition b78 smooth)
    (available b78)
    (boardsize b79 s8)
    (wood b79 beech)
    (surface-condition b79 rough)
    (available b79)
    (boardsize b80 s5)
    (wood b80 beech)
    (surface-condition b80 rough)
    (available b80)
    (boardsize b81 s10)
    (wood b81 beech)
    (surface-condition b81 rough)
    (available b81)
    (boardsize b82 s10)
    (wood b82 beech)
    (surface-condition b82 smooth)
    (available b82)
    (boardsize b83 s9)
    (wood b83 beech)
    (surface-condition b83 rough)
    (available b83)
    (boardsize b84 s5)
    (wood b84 beech)
    (surface-condition b84 rough)
    (available b84)
  )
  (:goal
    (and
      (available p0)
      (wood p0 oak)
      (treatment p0 varnished)
      (available p1)
      (colour p1 black)
      (treatment p1 glazed)
      (available p2)
      (colour p2 green)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 green)
      (wood p3 oak)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (wood p4 walnut)
      (treatment p4 glazed)
      (available p5)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 mauve)
      (wood p6 beech)
      (surface-condition p6 verysmooth)
      (available p7)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 black)
      (wood p8 beech)
      (treatment p8 glazed)
      (available p9)
      (colour p9 white)
      (surface-condition p9 verysmooth)
      (available p10)
      (colour p10 red)
      (wood p10 beech)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 mauve)
      (treatment p12 glazed)
      (available p13)
      (colour p13 black)
      (wood p13 mahogany)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 red)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 mauve)
      (wood p15 pine)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 natural)
      (wood p16 walnut)
      (surface-condition p16 smooth)
      (available p17)
      (colour p17 mauve)
      (treatment p17 glazed)
      (available p18)
      (colour p18 black)
      (treatment p18 glazed)
      (available p19)
      (colour p19 green)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 black)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 blue)
      (wood p21 walnut)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (wood p22 teak)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 blue)
      (wood p23 cherry)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 green)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 natural)
      (wood p25 beech)
      (available p26)
      (wood p26 oak)
      (treatment p26 varnished)
      (available p27)
      (wood p27 teak)
      (treatment p27 varnished)
      (available p28)
      (colour p28 white)
      (surface-condition p28 smooth)
      (available p29)
      (wood p29 walnut)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 white)
      (wood p30 beech)
      (treatment p30 varnished)
      (available p31)
      (colour p31 white)
      (treatment p31 varnished)
      (available p32)
      (wood p32 oak)
      (treatment p32 glazed)
      (available p33)
      (colour p33 black)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 red)
      (wood p34 cherry)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 red)
      (surface-condition p35 smooth)
      (available p36)
      (colour p36 blue)
      (wood p36 cherry)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 blue)
      (wood p38 mahogany)
      (treatment p38 glazed)
      (available p39)
      (wood p39 pine)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 white)
      (wood p40 cherry)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 mauve)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 red)
      (wood p42 mahogany)
      (treatment p42 glazed)
      (available p43)
      (wood p43 beech)
      (surface-condition p43 smooth)
      (available p44)
      (wood p44 walnut)
      (treatment p44 glazed)
      (available p45)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 green)
      (treatment p46 glazed)
      (available p47)
      (colour p47 green)
      (wood p47 teak)
      (available p48)
      (colour p48 black)
      (wood p48 oak)
      (available p49)
      (colour p49 mauve)
      (surface-condition p49 smooth)
      (available p50)
      (colour p50 white)
      (surface-condition p50 smooth)
      (available p51)
      (wood p51 cherry)
      (surface-condition p51 smooth)
      (available p52)
      (wood p52 walnut)
      (surface-condition p52 verysmooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 natural)
      (wood p53 oak)
      (available p54)
      (colour p54 blue)
      (wood p54 beech)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (wood p55 oak)
      (treatment p55 varnished)
      (available p56)
      (colour p56 blue)
      (treatment p56 glazed)
      (available p57)
      (colour p57 blue)
      (wood p57 oak)
      (available p58)
      (wood p58 mahogany)
      (treatment p58 varnished)
      (available p59)
      (wood p59 mahogany)
      (surface-condition p59 smooth)
      (available p60)
      (colour p60 blue)
      (wood p60 oak)
      (available p61)
      (colour p61 blue)
      (wood p61 cherry)
      (surface-condition p61 smooth)
      (available p62)
      (colour p62 black)
      (wood p62 beech)
      (surface-condition p62 verysmooth)
      (treatment p62 glazed)
      (available p63)
      (wood p63 oak)
      (surface-condition p63 verysmooth)
      (available p64)
      (colour p64 mauve)
      (treatment p64 varnished)
      (available p65)
      (colour p65 white)
      (wood p65 mahogany)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (wood p66 cherry)
      (surface-condition p66 verysmooth)
      (available p67)
      (colour p67 white)
      (surface-condition p67 smooth)
      (available p68)
      (colour p68 blue)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 blue)
      (surface-condition p69 verysmooth)
      (treatment p69 varnished)
      (available p70)
      (surface-condition p70 smooth)
      (treatment p70 varnished)
      (available p71)
      (wood p71 pine)
      (treatment p71 varnished)
      (available p72)
      (wood p72 cherry)
      (surface-condition p72 smooth)
      (available p73)
      (colour p73 white)
      (wood p73 teak)
      (surface-condition p73 smooth)
      (available p74)
      (colour p74 mauve)
      (wood p74 oak)
      (surface-condition p74 smooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 green)
      (wood p75 walnut)
      (surface-condition p75 verysmooth)
      (treatment p75 glazed)
      (available p76)
      (colour p76 black)
      (wood p76 beech)
      (surface-condition p76 smooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 black)
      (treatment p77 glazed)
      (available p78)
      (wood p78 oak)
      (treatment p78 varnished)
      (available p79)
      (surface-condition p79 verysmooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 white)
      (wood p80 oak)
      (treatment p80 glazed)
      (available p81)
      (colour p81 blue)
      (wood p81 pine)
      (available p82)
      (wood p82 cherry)
      (surface-condition p82 verysmooth)
      (available p83)
      (surface-condition p83 smooth)
      (treatment p83 glazed)
      (available p84)
      (colour p84 white)
      (surface-condition p84 smooth)
      (treatment p84 glazed)
      (available p85)
      (wood p85 cherry)
      (treatment p85 glazed)
      (available p86)
      (colour p86 blue)
      (treatment p86 glazed)
      (available p87)
      (wood p87 teak)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 green)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (surface-condition p89 verysmooth)
      (treatment p89 glazed)
      (available p90)
      (wood p90 mahogany)
      (treatment p90 varnished)
      (available p91)
      (colour p91 red)
      (wood p91 cherry)
      (surface-condition p91 verysmooth)
      (available p92)
      (colour p92 black)
      (wood p92 oak)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (wood p93 cherry)
      (surface-condition p93 verysmooth)
      (available p94)
      (colour p94 black)
      (wood p94 pine)
      (available p95)
      (colour p95 black)
      (surface-condition p95 smooth)
      (available p96)
      (colour p96 blue)
      (surface-condition p96 smooth)
      (available p97)
      (wood p97 oak)
      (surface-condition p97 verysmooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 green)
      (surface-condition p98 verysmooth)
      (available p99)
      (colour p99 red)
      (wood p99 cherry)
      (treatment p99 glazed)
      (available p100)
      (colour p100 blue)
      (treatment p100 varnished)
      (available p101)
      (colour p101 black)
      (surface-condition p101 verysmooth)
      (treatment p101 varnished)
      (available p102)
      (surface-condition p102 verysmooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 green)
      (wood p103 mahogany)
      (available p104)
      (wood p104 walnut)
      (surface-condition p104 verysmooth)
      (available p105)
      (colour p105 black)
      (wood p105 oak)
      (surface-condition p105 smooth)
      (treatment p105 varnished)
      (available p106)
      (wood p106 beech)
      (surface-condition p106 smooth)
      (treatment p106 varnished)
      (available p107)
      (colour p107 natural)
      (surface-condition p107 verysmooth)
      (available p108)
      (colour p108 mauve)
      (wood p108 walnut)
      (surface-condition p108 smooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 green)
      (wood p109 walnut)
      (surface-condition p109 verysmooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 red)
      (treatment p110 varnished)
      (available p111)
      (colour p111 mauve)
      (surface-condition p111 verysmooth)
      (available p112)
      (colour p112 blue)
      (surface-condition p112 verysmooth)
      (available p113)
      (colour p113 black)
      (wood p113 cherry)
      (available p114)
      (colour p114 natural)
      (surface-condition p114 smooth)
      (available p115)
      (wood p115 teak)
      (treatment p115 varnished)
      (available p116)
      (colour p116 white)
      (wood p116 walnut)
      (available p117)
      (surface-condition p117 smooth)
      (treatment p117 glazed)
      (available p118)
      (surface-condition p118 smooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 red)
      (surface-condition p119 smooth)
      (available p120)
      (colour p120 white)
      (wood p120 cherry)
      (surface-condition p120 verysmooth)
      (treatment p120 glazed)
      (available p121)
      (colour p121 black)
      (wood p121 beech)
      (surface-condition p121 smooth)
      (treatment p121 varnished)
      (available p122)
      (colour p122 black)
      (wood p122 teak)
      (treatment p122 glazed)
      (available p123)
      (colour p123 mauve)
      (surface-condition p123 smooth)
      (treatment p123 glazed)
      (available p124)
      (colour p124 blue)
      (surface-condition p124 verysmooth)
      (available p125)
      (wood p125 walnut)
      (surface-condition p125 verysmooth)
      (available p126)
      (colour p126 natural)
      (wood p126 beech)
      (surface-condition p126 smooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 blue)
      (treatment p127 varnished)
      (available p128)
      (colour p128 white)
      (wood p128 cherry)
      (available p129)
      (wood p129 mahogany)
      (surface-condition p129 verysmooth)
      (treatment p129 varnished)
      (available p130)
      (wood p130 mahogany)
      (treatment p130 varnished)
      (available p131)
      (wood p131 oak)
      (surface-condition p131 smooth)
      (available p132)
      (colour p132 mauve)
      (wood p132 teak)
      (surface-condition p132 verysmooth)
      (treatment p132 varnished)
      (available p133)
      (colour p133 black)
      (surface-condition p133 smooth)
      (available p134)
      (wood p134 beech)
      (surface-condition p134 verysmooth)
      (available p135)
      (wood p135 walnut)
      (treatment p135 glazed)
      (available p136)
      (colour p136 green)
      (wood p136 teak)
      (surface-condition p136 verysmooth)
      (treatment p136 varnished)
      (available p137)
      (surface-condition p137 verysmooth)
      (treatment p137 glazed)
      (available p138)
      (colour p138 green)
      (treatment p138 varnished)
      (available p139)
      (colour p139 green)
      (wood p139 walnut)
      (available p140)
      (colour p140 mauve)
      (surface-condition p140 verysmooth)
      (available p141)
      (colour p141 green)
      (wood p141 beech)
      (surface-condition p141 smooth)
      (treatment p141 varnished)
      (available p142)
      (wood p142 mahogany)
      (surface-condition p142 smooth)
      (treatment p142 varnished)
      (available p143)
      (wood p143 beech)
      (surface-condition p143 verysmooth)
      (available p144)
      (colour p144 green)
      (treatment p144 varnished)
      (available p145)
      (surface-condition p145 smooth)
      (treatment p145 glazed)
      (available p146)
      (colour p146 green)
      (wood p146 teak)
      (available p147)
      (surface-condition p147 verysmooth)
      (treatment p147 varnished)
      (available p148)
      (colour p148 natural)
      (wood p148 teak)
      (surface-condition p148 smooth)
      (treatment p148 glazed)
      (available p149)
      (colour p149 blue)
      (wood p149 mahogany)
      (treatment p149 glazed)
      (available p150)
      (colour p150 white)
      (wood p150 teak)
      (surface-condition p150 verysmooth)
      (available p151)
      (wood p151 pine)
      (treatment p151 varnished)
      (available p152)
      (colour p152 black)
      (wood p152 cherry)
      (surface-condition p152 smooth)
      (available p153)
      (colour p153 natural)
      (wood p153 cherry)
      (available p154)
      (colour p154 natural)
      (wood p154 pine)
      (available p155)
      (colour p155 red)
      (surface-condition p155 smooth)
      (treatment p155 glazed)
      (available p156)
      (wood p156 mahogany)
      (surface-condition p156 verysmooth)
      (treatment p156 glazed)
      (available p157)
      (wood p157 mahogany)
      (treatment p157 glazed)
      (available p158)
      (wood p158 cherry)
      (treatment p158 glazed)
      (available p159)
      (colour p159 white)
      (treatment p159 glazed)
      (available p160)
      (wood p160 pine)
      (surface-condition p160 smooth)
      (treatment p160 varnished)
      (available p161)
      (colour p161 natural)
      (wood p161 cherry)
      (available p162)
      (colour p162 white)
      (wood p162 walnut)
      (surface-condition p162 smooth)
      (treatment p162 glazed)
      (available p163)
      (colour p163 green)
      (wood p163 walnut)
      (surface-condition p163 verysmooth)
      (treatment p163 glazed)
      (available p164)
      (colour p164 black)
      (wood p164 teak)
      (treatment p164 varnished)
      (available p165)
      (colour p165 blue)
      (wood p165 oak)
      (surface-condition p165 smooth)
      (treatment p165 glazed)
      (available p166)
      (colour p166 black)
      (surface-condition p166 smooth)
      (available p167)
      (colour p167 natural)
      (treatment p167 glazed)
      (available p168)
      (colour p168 natural)
      (wood p168 beech)
      (surface-condition p168 verysmooth)
      (treatment p168 varnished)
      (available p169)
      (colour p169 red)
      (surface-condition p169 verysmooth)
      (available p170)
      (colour p170 white)
      (wood p170 beech)
      (surface-condition p170 verysmooth)
      (available p171)
      (colour p171 green)
      (wood p171 cherry)
      (available p172)
      (wood p172 pine)
      (surface-condition p172 smooth)
      (available p173)
      (colour p173 mauve)
      (wood p173 walnut)
      (available p174)
      (colour p174 black)
      (wood p174 teak)
      (surface-condition p174 verysmooth)
      (treatment p174 glazed)
      (available p175)
      (wood p175 pine)
      (treatment p175 varnished)
      (available p176)
      (colour p176 green)
      (surface-condition p176 smooth)
      (available p177)
      (colour p177 natural)
      (surface-condition p177 smooth)
      (available p178)
      (colour p178 natural)
      (wood p178 beech)
      (surface-condition p178 verysmooth)
      (treatment p178 varnished)
      (available p179)
      (colour p179 mauve)
      (wood p179 beech)
      (surface-condition p179 verysmooth)
      (available p180)
      (surface-condition p180 verysmooth)
      (treatment p180 varnished)
      (available p181)
      (colour p181 blue)
      (wood p181 pine)
      (surface-condition p181 verysmooth)
      (treatment p181 glazed)
      (available p182)
      (colour p182 black)
      (treatment p182 varnished)
      (available p183)
      (colour p183 green)
      (wood p183 oak)
      (surface-condition p183 smooth)
      (treatment p183 varnished)
      (available p184)
      (colour p184 red)
      (surface-condition p184 smooth)
      (available p185)
      (wood p185 oak)
      (surface-condition p185 smooth)
      (available p186)
      (colour p186 white)
      (wood p186 mahogany)
      (surface-condition p186 smooth)
      (treatment p186 varnished)
      (available p187)
      (colour p187 red)
      (wood p187 cherry)
      (treatment p187 varnished)
      (available p188)
      (colour p188 mauve)
      (surface-condition p188 verysmooth)
      (treatment p188 varnished)
      (available p189)
      (colour p189 mauve)
      (wood p189 walnut)
      (surface-condition p189 smooth)
      (treatment p189 glazed)
      (available p190)
      (wood p190 beech)
      (surface-condition p190 smooth)
      (available p191)
      (colour p191 black)
      (surface-condition p191 smooth)
      (treatment p191 glazed)
      (available p192)
      (surface-condition p192 smooth)
      (treatment p192 glazed)
      (available p193)
      (wood p193 pine)
      (treatment p193 varnished)
      (available p194)
      (colour p194 black)
      (surface-condition p194 smooth)
      (treatment p194 varnished)
      (available p195)
      (colour p195 blue)
      (wood p195 mahogany)
      (available p196)
      (wood p196 teak)
      (surface-condition p196 verysmooth)
      (treatment p196 varnished)
      (available p197)
      (colour p197 black)
      (surface-condition p197 smooth)
      (treatment p197 varnished)
      (available p198)
      (wood p198 walnut)
      (surface-condition p198 smooth)
      (available p199)
      (colour p199 white)
      (surface-condition p199 verysmooth)
      (available p200)
      (colour p200 black)
      (wood p200 mahogany)
      (available p201)
      (colour p201 blue)
      (wood p201 walnut)
      (available p202)
      (wood p202 cherry)
      (treatment p202 glazed)
      (available p203)
      (wood p203 teak)
      (treatment p203 varnished)
      (available p204)
      (colour p204 blue)
      (wood p204 beech)
      (surface-condition p204 smooth)
      (available p205)
      (colour p205 white)
      (wood p205 pine)
      (available p206)
      (wood p206 walnut)
      (treatment p206 varnished)
      (available p207)
      (colour p207 natural)
      (treatment p207 varnished)
      (available p208)
      (surface-condition p208 smooth)
      (treatment p208 glazed)
      (available p209)
      (colour p209 black)
      (treatment p209 glazed)
      (available p210)
      (colour p210 green)
      (surface-condition p210 smooth)
      (available p211)
      (wood p211 mahogany)
      (surface-condition p211 verysmooth)
      (treatment p211 glazed)
      (available p212)
      (colour p212 blue)
      (treatment p212 varnished)
      (available p213)
      (colour p213 blue)
      (surface-condition p213 smooth)
      (available p214)
      (surface-condition p214 verysmooth)
      (treatment p214 glazed)
      (available p215)
      (colour p215 blue)
      (wood p215 oak)
      (available p216)
      (surface-condition p216 verysmooth)
      (treatment p216 varnished)
      (available p217)
      (colour p217 green)
      (treatment p217 glazed)
      (available p218)
      (colour p218 white)
      (wood p218 teak)
      (surface-condition p218 smooth)
      (treatment p218 glazed)
      (available p219)
      (colour p219 natural)
      (wood p219 beech)
      (surface-condition p219 smooth)
      (treatment p219 varnished)
      (available p220)
      (surface-condition p220 verysmooth)
      (treatment p220 varnished)
      (available p221)
      (wood p221 mahogany)
      (treatment p221 varnished)
      (available p222)
      (wood p222 cherry)
      (surface-condition p222 verysmooth)
      (treatment p222 glazed)
      (available p223)
      (colour p223 white)
      (wood p223 beech)
      (available p224)
      (colour p224 red)
      (treatment p224 varnished)
      (available p225)
      (wood p225 beech)
      (surface-condition p225 verysmooth)
      (treatment p225 glazed)
      (available p226)
      (colour p226 green)
      (wood p226 walnut)
      (surface-condition p226 smooth)
      (treatment p226 varnished)
      (available p227)
      (colour p227 black)
      (wood p227 walnut)
      (treatment p227 glazed)
      (available p228)
      (colour p228 black)
      (surface-condition p228 smooth)
      (available p229)
      (surface-condition p229 verysmooth)
      (treatment p229 varnished)
      (available p230)
      (colour p230 natural)
      (surface-condition p230 verysmooth)
      (available p231)
      (surface-condition p231 verysmooth)
      (treatment p231 glazed)
      (available p232)
      (wood p232 mahogany)
      (treatment p232 glazed)
      (available p233)
      (colour p233 black)
      (treatment p233 glazed)
      (available p234)
      (wood p234 cherry)
      (surface-condition p234 smooth)
      (treatment p234 glazed)
      (available p235)
      (colour p235 red)
      (surface-condition p235 smooth)
      (available p236)
      (colour p236 black)
      (treatment p236 varnished)
      (available p237)
      (surface-condition p237 smooth)
      (treatment p237 varnished)
      (available p238)
      (colour p238 mauve)
      (wood p238 teak)
      (surface-condition p238 smooth)
      (treatment p238 varnished)
      (available p239)
      (colour p239 red)
      (wood p239 walnut)
      (available p240)
      (colour p240 blue)
      (surface-condition p240 verysmooth)
      (treatment p240 varnished)
      (available p241)
      (colour p241 white)
      (treatment p241 varnished)
      (available p242)
      (colour p242 white)
      (wood p242 mahogany)
      (surface-condition p242 verysmooth)
      (treatment p242 varnished)
      (available p243)
      (colour p243 black)
      (surface-condition p243 verysmooth)
      (available p244)
      (colour p244 black)
      (wood p244 teak)
      (available p245)
      (wood p245 teak)
      (surface-condition p245 smooth)
      (available p246)
      (colour p246 white)
      (wood p246 cherry)
      (available p247)
      (colour p247 white)
      (surface-condition p247 smooth)
      (available p248)
      (colour p248 natural)
      (surface-condition p248 verysmooth)
      (available p249)
      (colour p249 white)
      (wood p249 teak)
      (surface-condition p249 smooth)
      (treatment p249 glazed)
      (available p250)
      (colour p250 green)
      (surface-condition p250 smooth)
      (available p251)
      (colour p251 black)
      (surface-condition p251 verysmooth)
      (available p252)
      (colour p252 white)
      (surface-condition p252 verysmooth)
      (available p253)
      (surface-condition p253 smooth)
      (treatment p253 glazed)
      (available p254)
      (wood p254 walnut)
      (surface-condition p254 smooth)
      (treatment p254 glazed)
      (available p255)
      (colour p255 white)
      (wood p255 walnut)
      (treatment p255 glazed)
      (available p256)
      (colour p256 red)
      (wood p256 beech)
      (surface-condition p256 verysmooth)
      (treatment p256 glazed)
      (available p257)
      (colour p257 mauve)
      (treatment p257 glazed)
      (available p258)
      (colour p258 white)
      (wood p258 pine)
      (surface-condition p258 verysmooth)
      (treatment p258 glazed)
      (available p259)
      (colour p259 natural)
      (wood p259 walnut)
      (surface-condition p259 smooth)
      (treatment p259 varnished)
      (available p260)
      (colour p260 green)
      (wood p260 teak)
      (surface-condition p260 smooth)
      (treatment p260 glazed)
      (available p261)
      (wood p261 oak)
      (treatment p261 varnished)
      (available p262)
      (colour p262 red)
      (wood p262 mahogany)
      (surface-condition p262 smooth)
      (treatment p262 glazed)
      (available p263)
      (wood p263 pine)
      (surface-condition p263 smooth)
      (treatment p263 glazed)
      (available p264)
      (wood p264 mahogany)
      (treatment p264 varnished)
      (available p265)
      (wood p265 pine)
      (surface-condition p265 smooth)
      (available p266)
      (colour p266 white)
      (wood p266 beech)
      (surface-condition p266 smooth)
      (available p267)
      (colour p267 red)
      (surface-condition p267 verysmooth)
      (treatment p267 varnished)
      (available p268)
      (colour p268 blue)
      (wood p268 mahogany)
      (available p269)
      (colour p269 white)
      (wood p269 walnut)
      (surface-condition p269 smooth)
      (treatment p269 varnished)
      (available p270)
      (wood p270 cherry)
      (surface-condition p270 verysmooth)
      (available p271)
      (colour p271 red)
      (wood p271 pine)
      (available p272)
      (wood p272 oak)
      (surface-condition p272 smooth)
      (available p273)
      (colour p273 mauve)
      (wood p273 oak)
      (available p274)
      (colour p274 mauve)
      (surface-condition p274 verysmooth)
      (treatment p274 glazed)
      (available p275)
      (wood p275 walnut)
      (surface-condition p275 verysmooth)
      (treatment p275 glazed)
      (available p276)
      (colour p276 black)
      (surface-condition p276 verysmooth)
      (available p277)
      (colour p277 green)
      (surface-condition p277 verysmooth)
      (treatment p277 glazed)
      (available p278)
      (colour p278 mauve)
      (treatment p278 varnished)
      (available p279)
      (colour p279 white)
      (surface-condition p279 verysmooth)
      (available p280)
      (colour p280 red)
      (wood p280 oak)
      (surface-condition p280 smooth)
      (treatment p280 glazed)
      (available p281)
      (colour p281 black)
      (wood p281 oak)
      (treatment p281 glazed)
      (available p282)
      (surface-condition p282 verysmooth)
      (treatment p282 glazed)
      (available p283)
      (colour p283 red)
      (wood p283 teak)
      (surface-condition p283 verysmooth)
      (treatment p283 glazed)
      (available p284)
      (colour p284 red)
      (wood p284 oak)
      (surface-condition p284 smooth)
      (treatment p284 varnished)
      (available p285)
      (colour p285 black)
      (wood p285 mahogany)
      (surface-condition p285 verysmooth)
      (available p286)
      (colour p286 white)
      (wood p286 cherry)
      (surface-condition p286 smooth)
      (treatment p286 glazed)
      (available p287)
      (colour p287 natural)
      (wood p287 mahogany)
      (treatment p287 glazed)
      (available p288)
      (colour p288 blue)
      (wood p288 pine)
      (treatment p288 glazed)
      (available p289)
      (colour p289 white)
      (wood p289 oak)
      (surface-condition p289 smooth)
      (treatment p289 varnished)
      (available p290)
      (colour p290 black)
      (surface-condition p290 verysmooth)
      (available p291)
      (colour p291 green)
      (wood p291 mahogany)
      (surface-condition p291 smooth)
      (treatment p291 glazed)
      (available p292)
      (colour p292 blue)
      (treatment p292 varnished)
    )
  )
  
)
