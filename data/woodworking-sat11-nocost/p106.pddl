; woodworking task with 287 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 116052

(define (problem wood-prob-sat-106)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white green red mauve black blue - acolour
    teak mahogany oak pine cherry beech walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 p278 p279 p280 p281 p282 p283 p284 p285 p286 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 - board
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
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (available p8)
    (colour p8 blue)
    (wood p8 mahogany)
    (surface-condition p8 verysmooth)
    (treatment p8 colourfragments)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 blue)
    (wood p21 oak)
    (surface-condition p21 verysmooth)
    (treatment p21 glazed)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (available p32)
    (colour p32 mauve)
    (wood p32 oak)
    (surface-condition p32 verysmooth)
    (treatment p32 colourfragments)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 green)
    (wood p33 cherry)
    (surface-condition p33 rough)
    (treatment p33 colourfragments)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (available p35)
    (colour p35 white)
    (wood p35 pine)
    (surface-condition p35 verysmooth)
    (treatment p35 varnished)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 white)
    (wood p37 walnut)
    (surface-condition p37 verysmooth)
    (treatment p37 glazed)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 natural)
    (wood p38 teak)
    (surface-condition p38 verysmooth)
    (treatment p38 glazed)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (available p49)
    (colour p49 black)
    (wood p49 oak)
    (surface-condition p49 rough)
    (treatment p49 varnished)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 black)
    (wood p66 mahogany)
    (surface-condition p66 rough)
    (treatment p66 varnished)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 blue)
    (wood p67 teak)
    (surface-condition p67 rough)
    (treatment p67 varnished)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (available p71)
    (colour p71 green)
    (wood p71 oak)
    (surface-condition p71 smooth)
    (treatment p71 colourfragments)
    (goalsize p71 large)
    
    
    
    
    (available p72)
    (colour p72 natural)
    (wood p72 oak)
    (surface-condition p72 smooth)
    (treatment p72 varnished)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (available p76)
    (colour p76 blue)
    (wood p76 teak)
    (surface-condition p76 rough)
    (treatment p76 colourfragments)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (available p84)
    (colour p84 black)
    (wood p84 cherry)
    (surface-condition p84 smooth)
    (treatment p84 varnished)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (available p86)
    (colour p86 white)
    (wood p86 cherry)
    (surface-condition p86 rough)
    (treatment p86 colourfragments)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (available p92)
    (colour p92 red)
    (wood p92 teak)
    (surface-condition p92 verysmooth)
    (treatment p92 varnished)
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
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (available p108)
    (colour p108 red)
    (wood p108 pine)
    (surface-condition p108 verysmooth)
    (treatment p108 colourfragments)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
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
    (goalsize p118 medium)
    
    
    
    
    (available p119)
    (colour p119 black)
    (wood p119 beech)
    (surface-condition p119 smooth)
    (treatment p119 glazed)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (available p124)
    (colour p124 black)
    (wood p124 oak)
    (surface-condition p124 rough)
    (treatment p124 varnished)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (available p128)
    (colour p128 white)
    (wood p128 oak)
    (surface-condition p128 smooth)
    (treatment p128 varnished)
    (goalsize p128 large)
    
    
    
    
    (available p129)
    (colour p129 white)
    (wood p129 walnut)
    (surface-condition p129 smooth)
    (treatment p129 colourfragments)
    (goalsize p129 small)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (available p131)
    (colour p131 green)
    (wood p131 cherry)
    (surface-condition p131 rough)
    (treatment p131 glazed)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (available p134)
    (colour p134 white)
    (wood p134 walnut)
    (surface-condition p134 verysmooth)
    (treatment p134 colourfragments)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (available p144)
    (colour p144 mauve)
    (wood p144 teak)
    (surface-condition p144 smooth)
    (treatment p144 colourfragments)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (available p147)
    (colour p147 green)
    (wood p147 oak)
    (surface-condition p147 rough)
    (treatment p147 colourfragments)
    (goalsize p147 small)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (available p150)
    (colour p150 red)
    (wood p150 teak)
    (surface-condition p150 verysmooth)
    (treatment p150 varnished)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (available p154)
    (colour p154 green)
    (wood p154 mahogany)
    (surface-condition p154 rough)
    (treatment p154 glazed)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (available p165)
    (colour p165 mauve)
    (wood p165 teak)
    (surface-condition p165 verysmooth)
    (treatment p165 glazed)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 medium)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (available p175)
    (colour p175 mauve)
    (wood p175 mahogany)
    (surface-condition p175 verysmooth)
    (treatment p175 glazed)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 small)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 large)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (available p182)
    (colour p182 black)
    (wood p182 pine)
    (surface-condition p182 verysmooth)
    (treatment p182 colourfragments)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (available p185)
    (colour p185 red)
    (wood p185 walnut)
    (surface-condition p185 verysmooth)
    (treatment p185 varnished)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 medium)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 large)
    
    
    
    
    (available p191)
    (colour p191 red)
    (wood p191 pine)
    (surface-condition p191 verysmooth)
    (treatment p191 colourfragments)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (available p195)
    (colour p195 black)
    (wood p195 teak)
    (surface-condition p195 rough)
    (treatment p195 varnished)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 medium)
    
    
    
    
    (available p197)
    (colour p197 red)
    (wood p197 pine)
    (surface-condition p197 rough)
    (treatment p197 varnished)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (unused p199)
    (goalsize p199 medium)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 small)
    
    
    
    
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
    
    
    
    
    (available p207)
    (colour p207 green)
    (wood p207 beech)
    (surface-condition p207 verysmooth)
    (treatment p207 glazed)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (available p210)
    (colour p210 red)
    (wood p210 beech)
    (surface-condition p210 verysmooth)
    (treatment p210 colourfragments)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (available p213)
    (colour p213 black)
    (wood p213 pine)
    (surface-condition p213 rough)
    (treatment p213 colourfragments)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 large)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 small)
    
    
    
    
    (unused p219)
    (goalsize p219 large)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 large)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (available p224)
    (colour p224 blue)
    (wood p224 beech)
    (surface-condition p224 smooth)
    (treatment p224 colourfragments)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 medium)
    
    
    
    
    (unused p226)
    (goalsize p226 small)
    
    
    
    
    (unused p227)
    (goalsize p227 small)
    
    
    
    
    (available p228)
    (colour p228 natural)
    (wood p228 oak)
    (surface-condition p228 rough)
    (treatment p228 varnished)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (unused p231)
    (goalsize p231 medium)
    
    
    
    
    (available p232)
    (colour p232 natural)
    (wood p232 beech)
    (surface-condition p232 smooth)
    (treatment p232 colourfragments)
    (goalsize p232 large)
    
    
    
    
    (unused p233)
    (goalsize p233 small)
    
    
    
    
    (unused p234)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 medium)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (unused p237)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (unused p239)
    (goalsize p239 large)
    
    
    
    
    (unused p240)
    (goalsize p240 medium)
    
    
    
    
    (unused p241)
    (goalsize p241 small)
    
    
    
    
    (unused p242)
    (goalsize p242 small)
    
    
    
    
    (available p243)
    (colour p243 green)
    (wood p243 beech)
    (surface-condition p243 verysmooth)
    (treatment p243 colourfragments)
    (goalsize p243 small)
    
    
    
    
    (unused p244)
    (goalsize p244 large)
    
    
    
    
    (unused p245)
    (goalsize p245 small)
    
    
    
    
    (unused p246)
    (goalsize p246 small)
    
    
    
    
    (available p247)
    (colour p247 white)
    (wood p247 pine)
    (surface-condition p247 rough)
    (treatment p247 varnished)
    (goalsize p247 medium)
    
    
    
    
    (available p248)
    (colour p248 natural)
    (wood p248 pine)
    (surface-condition p248 rough)
    (treatment p248 colourfragments)
    (goalsize p248 small)
    
    
    
    
    (available p249)
    (colour p249 blue)
    (wood p249 beech)
    (surface-condition p249 smooth)
    (treatment p249 varnished)
    (goalsize p249 small)
    
    
    
    
    (available p250)
    (colour p250 red)
    (wood p250 pine)
    (surface-condition p250 smooth)
    (treatment p250 varnished)
    (goalsize p250 small)
    
    
    
    
    (unused p251)
    (goalsize p251 medium)
    
    
    
    
    (unused p252)
    (goalsize p252 small)
    
    
    
    
    (unused p253)
    (goalsize p253 small)
    
    
    
    
    (unused p254)
    (goalsize p254 large)
    
    
    
    
    (unused p255)
    (goalsize p255 medium)
    
    
    
    
    (unused p256)
    (goalsize p256 medium)
    
    
    
    
    (unused p257)
    (goalsize p257 large)
    
    
    
    
    (unused p258)
    (goalsize p258 large)
    
    
    
    
    (unused p259)
    (goalsize p259 medium)
    
    
    
    
    (unused p260)
    (goalsize p260 small)
    
    
    
    
    (unused p261)
    (goalsize p261 large)
    
    
    
    
    (unused p262)
    (goalsize p262 large)
    
    
    
    
    (unused p263)
    (goalsize p263 large)
    
    
    
    
    (unused p264)
    (goalsize p264 small)
    
    
    
    
    (unused p265)
    (goalsize p265 large)
    
    
    
    
    (unused p266)
    (goalsize p266 small)
    
    
    
    
    (unused p267)
    (goalsize p267 small)
    
    
    
    
    (unused p268)
    (goalsize p268 large)
    
    
    
    
    (available p269)
    (colour p269 natural)
    (wood p269 oak)
    (surface-condition p269 verysmooth)
    (treatment p269 colourfragments)
    (goalsize p269 medium)
    
    
    
    
    (unused p270)
    (goalsize p270 large)
    
    
    
    
    (unused p271)
    (goalsize p271 large)
    
    
    
    
    (unused p272)
    (goalsize p272 small)
    
    
    
    
    (unused p273)
    (goalsize p273 medium)
    
    
    
    
    (unused p274)
    (goalsize p274 medium)
    
    
    
    
    (unused p275)
    (goalsize p275 medium)
    
    
    
    
    (unused p276)
    (goalsize p276 medium)
    
    
    
    
    (available p277)
    (colour p277 natural)
    (wood p277 walnut)
    (surface-condition p277 verysmooth)
    (treatment p277 colourfragments)
    (goalsize p277 medium)
    
    
    
    
    (unused p278)
    (goalsize p278 medium)
    
    
    
    
    (unused p279)
    (goalsize p279 medium)
    
    
    
    
    (unused p280)
    (goalsize p280 large)
    
    
    
    
    (unused p281)
    (goalsize p281 medium)
    
    
    
    
    (unused p282)
    (goalsize p282 large)
    
    
    
    
    (unused p283)
    (goalsize p283 small)
    
    
    
    
    (available p284)
    (colour p284 red)
    (wood p284 mahogany)
    (surface-condition p284 verysmooth)
    (treatment p284 varnished)
    (goalsize p284 small)
    
    
    
    
    (unused p285)
    (goalsize p285 large)
    
    
    
    
    (unused p286)
    (goalsize p286 medium)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
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
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s11)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s6)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s10)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s4)
    (wood b10 cherry)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s9)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s11)
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
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s10)
    (wood b17 mahogany)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s10)
    (wood b18 mahogany)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s8)
    (wood b19 mahogany)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s8)
    (wood b20 mahogany)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s7)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s6)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s7)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s7)
    (wood b26 oak)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s6)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s11)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s6)
    (wood b30 oak)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s5)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s7)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s8)
    (wood b33 pine)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s6)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s5)
    (wood b35 pine)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s10)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s7)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s10)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s8)
    (wood b39 pine)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s8)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s8)
    (wood b41 pine)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s2)
    (wood b42 pine)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s8)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s7)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s9)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s7)
    (wood b46 walnut)
    (surface-condition b46 smooth)
    (available b46)
    (boardsize b47 s9)
    (wood b47 walnut)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s8)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s6)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s9)
    (wood b50 walnut)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s8)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 walnut)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s8)
    (wood b53 walnut)
    (surface-condition b53 smooth)
    (available b53)
    (boardsize b54 s6)
    (wood b54 walnut)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s8)
    (wood b55 walnut)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s4)
    (wood b56 walnut)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s8)
    (wood b57 teak)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s8)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s6)
    (wood b59 teak)
    (surface-condition b59 smooth)
    (available b59)
    (boardsize b60 s8)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s7)
    (wood b61 teak)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s6)
    (wood b62 teak)
    (surface-condition b62 smooth)
    (available b62)
    (boardsize b63 s9)
    (wood b63 teak)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s5)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s10)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s10)
    (wood b66 beech)
    (surface-condition b66 smooth)
    (available b66)
    (boardsize b67 s9)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s8)
    (wood b68 beech)
    (surface-condition b68 smooth)
    (available b68)
    (boardsize b69 s9)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s4)
    (wood b70 beech)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s9)
    (wood b71 beech)
    (surface-condition b71 smooth)
    (available b71)
    (boardsize b72 s7)
    (wood b72 beech)
    (surface-condition b72 smooth)
    (available b72)
    (boardsize b73 s4)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 walnut)
      (surface-condition p0 verysmooth)
      (available p1)
      (wood p1 beech)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 natural)
      (wood p2 cherry)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 white)
      (wood p3 walnut)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (wood p4 cherry)
      (surface-condition p4 verysmooth)
      (available p5)
      (wood p5 cherry)
      (treatment p5 varnished)
      (available p6)
      (wood p6 oak)
      (treatment p6 glazed)
      (available p7)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 white)
      (wood p8 mahogany)
      (treatment p8 varnished)
      (available p9)
      (colour p9 white)
      (wood p9 cherry)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (wood p10 oak)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 green)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (surface-condition p12 smooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 natural)
      (wood p13 oak)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (wood p14 mahogany)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 blue)
      (wood p15 oak)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (surface-condition p16 verysmooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 red)
      (surface-condition p17 verysmooth)
      (available p18)
      (colour p18 black)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 white)
      (wood p19 oak)
      (surface-condition p19 smooth)
      (available p20)
      (wood p20 walnut)
      (treatment p20 glazed)
      (available p21)
      (wood p21 oak)
      (treatment p21 varnished)
      (available p22)
      (colour p22 black)
      (treatment p22 varnished)
      (available p23)
      (colour p23 mauve)
      (wood p23 cherry)
      (available p24)
      (colour p24 green)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 white)
      (wood p25 beech)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (wood p26 cherry)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 mauve)
      (wood p27 oak)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 white)
      (wood p28 oak)
      (available p29)
      (wood p29 walnut)
      (surface-condition p29 verysmooth)
      (available p30)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 mauve)
      (wood p31 walnut)
      (treatment p31 glazed)
      (available p32)
      (colour p32 white)
      (wood p32 oak)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (wood p33 cherry)
      (treatment p33 glazed)
      (available p34)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (wood p35 pine)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (wood p36 pine)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 natural)
      (surface-condition p37 verysmooth)
      (available p38)
      (colour p38 black)
      (surface-condition p38 verysmooth)
      (available p39)
      (colour p39 black)
      (wood p39 walnut)
      (available p40)
      (colour p40 red)
      (surface-condition p40 verysmooth)
      (available p41)
      (wood p41 mahogany)
      (treatment p41 varnished)
      (available p42)
      (colour p42 natural)
      (surface-condition p42 verysmooth)
      (available p43)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 black)
      (treatment p44 glazed)
      (available p45)
      (colour p45 red)
      (wood p45 mahogany)
      (available p46)
      (wood p46 pine)
      (surface-condition p46 smooth)
      (available p47)
      (wood p47 oak)
      (treatment p47 glazed)
      (available p48)
      (colour p48 mauve)
      (surface-condition p48 verysmooth)
      (available p49)
      (wood p49 oak)
      (surface-condition p49 verysmooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 white)
      (wood p50 beech)
      (surface-condition p50 verysmooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 mauve)
      (treatment p51 glazed)
      (available p52)
      (wood p52 cherry)
      (treatment p52 glazed)
      (available p53)
      (colour p53 blue)
      (surface-condition p53 verysmooth)
      (available p54)
      (colour p54 red)
      (surface-condition p54 smooth)
      (available p55)
      (surface-condition p55 smooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 blue)
      (wood p56 cherry)
      (available p57)
      (colour p57 red)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (wood p58 teak)
      (surface-condition p58 verysmooth)
      (available p59)
      (colour p59 mauve)
      (surface-condition p59 smooth)
      (available p60)
      (colour p60 green)
      (treatment p60 varnished)
      (available p61)
      (wood p61 walnut)
      (treatment p61 varnished)
      (available p62)
      (colour p62 red)
      (wood p62 cherry)
      (available p63)
      (colour p63 mauve)
      (wood p63 oak)
      (surface-condition p63 verysmooth)
      (treatment p63 varnished)
      (available p64)
      (wood p64 pine)
      (treatment p64 varnished)
      (available p65)
      (colour p65 blue)
      (surface-condition p65 smooth)
      (available p66)
      (colour p66 mauve)
      (wood p66 mahogany)
      (available p67)
      (colour p67 red)
      (surface-condition p67 smooth)
      (available p68)
      (wood p68 teak)
      (surface-condition p68 smooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 natural)
      (treatment p69 varnished)
      (available p70)
      (colour p70 white)
      (wood p70 beech)
      (available p71)
      (surface-condition p71 verysmooth)
      (treatment p71 varnished)
      (available p72)
      (colour p72 blue)
      (wood p72 oak)
      (surface-condition p72 verysmooth)
      (treatment p72 varnished)
      (available p73)
      (wood p73 mahogany)
      (surface-condition p73 verysmooth)
      (available p74)
      (surface-condition p74 verysmooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 white)
      (wood p75 oak)
      (available p76)
      (colour p76 natural)
      (treatment p76 glazed)
      (available p77)
      (colour p77 white)
      (wood p77 walnut)
      (treatment p77 glazed)
      (available p78)
      (colour p78 green)
      (wood p78 teak)
      (surface-condition p78 verysmooth)
      (treatment p78 varnished)
      (available p79)
      (colour p79 black)
      (wood p79 walnut)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 mauve)
      (treatment p80 glazed)
      (available p81)
      (colour p81 red)
      (wood p81 mahogany)
      (available p82)
      (colour p82 white)
      (treatment p82 varnished)
      (available p83)
      (wood p83 mahogany)
      (surface-condition p83 verysmooth)
      (treatment p83 glazed)
      (available p84)
      (colour p84 blue)
      (surface-condition p84 verysmooth)
      (available p85)
      (surface-condition p85 verysmooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 blue)
      (wood p86 cherry)
      (available p87)
      (colour p87 green)
      (treatment p87 glazed)
      (available p88)
      (wood p88 teak)
      (surface-condition p88 verysmooth)
      (available p89)
      (wood p89 beech)
      (treatment p89 glazed)
      (available p90)
      (wood p90 walnut)
      (surface-condition p90 verysmooth)
      (treatment p90 glazed)
      (available p91)
      (colour p91 green)
      (surface-condition p91 verysmooth)
      (available p92)
      (colour p92 green)
      (wood p92 teak)
      (available p93)
      (colour p93 red)
      (wood p93 oak)
      (treatment p93 varnished)
      (available p94)
      (colour p94 green)
      (wood p94 mahogany)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (surface-condition p95 verysmooth)
      (treatment p95 glazed)
      (available p96)
      (colour p96 blue)
      (wood p96 walnut)
      (surface-condition p96 verysmooth)
      (treatment p96 glazed)
      (available p97)
      (wood p97 mahogany)
      (treatment p97 varnished)
      (available p98)
      (colour p98 white)
      (wood p98 pine)
      (surface-condition p98 smooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 black)
      (wood p99 teak)
      (available p100)
      (colour p100 green)
      (surface-condition p100 smooth)
      (available p101)
      (wood p101 mahogany)
      (treatment p101 glazed)
      (available p102)
      (wood p102 beech)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (wood p103 oak)
      (surface-condition p103 smooth)
      (available p104)
      (wood p104 beech)
      (surface-condition p104 smooth)
      (available p105)
      (colour p105 black)
      (surface-condition p105 verysmooth)
      (available p106)
      (colour p106 red)
      (wood p106 mahogany)
      (surface-condition p106 verysmooth)
      (available p107)
      (colour p107 green)
      (surface-condition p107 smooth)
      (available p108)
      (wood p108 pine)
      (treatment p108 glazed)
      (available p109)
      (colour p109 natural)
      (wood p109 walnut)
      (surface-condition p109 smooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 green)
      (wood p110 walnut)
      (surface-condition p110 verysmooth)
      (treatment p110 glazed)
      (available p111)
      (colour p111 blue)
      (wood p111 oak)
      (treatment p111 glazed)
      (available p112)
      (colour p112 white)
      (wood p112 mahogany)
      (surface-condition p112 smooth)
      (treatment p112 varnished)
      (available p113)
      (colour p113 white)
      (wood p113 cherry)
      (available p114)
      (colour p114 black)
      (wood p114 cherry)
      (treatment p114 glazed)
      (available p115)
      (wood p115 beech)
      (surface-condition p115 smooth)
      (treatment p115 varnished)
      (available p116)
      (colour p116 black)
      (wood p116 mahogany)
      (surface-condition p116 smooth)
      (treatment p116 varnished)
      (available p117)
      (colour p117 red)
      (surface-condition p117 smooth)
      (treatment p117 glazed)
      (available p118)
      (wood p118 beech)
      (treatment p118 varnished)
      (available p119)
      (colour p119 green)
      (surface-condition p119 verysmooth)
      (treatment p119 varnished)
      (available p120)
      (wood p120 pine)
      (treatment p120 varnished)
      (available p121)
      (colour p121 mauve)
      (surface-condition p121 verysmooth)
      (available p122)
      (colour p122 red)
      (wood p122 cherry)
      (surface-condition p122 verysmooth)
      (available p123)
      (colour p123 white)
      (wood p123 teak)
      (available p124)
      (colour p124 blue)
      (wood p124 oak)
      (surface-condition p124 smooth)
      (treatment p124 glazed)
      (available p125)
      (wood p125 pine)
      (treatment p125 glazed)
      (available p126)
      (wood p126 walnut)
      (surface-condition p126 verysmooth)
      (available p127)
      (colour p127 mauve)
      (wood p127 mahogany)
      (surface-condition p127 smooth)
      (available p128)
      (colour p128 red)
      (wood p128 oak)
      (surface-condition p128 smooth)
      (treatment p128 varnished)
      (available p129)
      (colour p129 blue)
      (surface-condition p129 smooth)
      (treatment p129 varnished)
      (available p130)
      (wood p130 teak)
      (surface-condition p130 verysmooth)
      (available p131)
      (colour p131 white)
      (wood p131 cherry)
      (surface-condition p131 smooth)
      (treatment p131 glazed)
      (available p132)
      (colour p132 natural)
      (surface-condition p132 smooth)
      (available p133)
      (wood p133 walnut)
      (surface-condition p133 verysmooth)
      (available p134)
      (wood p134 walnut)
      (surface-condition p134 smooth)
      (available p135)
      (colour p135 mauve)
      (wood p135 teak)
      (surface-condition p135 smooth)
      (available p136)
      (colour p136 blue)
      (wood p136 pine)
      (surface-condition p136 smooth)
      (treatment p136 varnished)
      (available p137)
      (wood p137 walnut)
      (surface-condition p137 smooth)
      (treatment p137 varnished)
      (available p138)
      (colour p138 black)
      (wood p138 mahogany)
      (surface-condition p138 verysmooth)
      (treatment p138 glazed)
      (available p139)
      (colour p139 red)
      (wood p139 pine)
      (available p140)
      (colour p140 white)
      (wood p140 cherry)
      (available p141)
      (wood p141 oak)
      (surface-condition p141 smooth)
      (available p142)
      (wood p142 cherry)
      (treatment p142 varnished)
      (available p143)
      (surface-condition p143 smooth)
      (treatment p143 varnished)
      (available p144)
      (colour p144 natural)
      (surface-condition p144 smooth)
      (available p145)
      (colour p145 natural)
      (wood p145 walnut)
      (surface-condition p145 smooth)
      (treatment p145 glazed)
      (available p146)
      (wood p146 oak)
      (treatment p146 glazed)
      (available p147)
      (colour p147 black)
      (treatment p147 varnished)
      (available p148)
      (colour p148 red)
      (wood p148 cherry)
      (surface-condition p148 smooth)
      (treatment p148 varnished)
      (available p149)
      (surface-condition p149 smooth)
      (treatment p149 glazed)
      (available p150)
      (colour p150 white)
      (surface-condition p150 smooth)
      (available p151)
      (colour p151 red)
      (wood p151 walnut)
      (surface-condition p151 smooth)
      (treatment p151 glazed)
      (available p152)
      (colour p152 green)
      (treatment p152 glazed)
      (available p153)
      (colour p153 black)
      (wood p153 pine)
      (available p154)
      (surface-condition p154 smooth)
      (treatment p154 glazed)
      (available p155)
      (wood p155 beech)
      (surface-condition p155 verysmooth)
      (available p156)
      (wood p156 mahogany)
      (surface-condition p156 verysmooth)
      (treatment p156 varnished)
      (available p157)
      (colour p157 black)
      (wood p157 walnut)
      (surface-condition p157 smooth)
      (available p158)
      (surface-condition p158 smooth)
      (treatment p158 glazed)
      (available p159)
      (colour p159 blue)
      (wood p159 mahogany)
      (surface-condition p159 smooth)
      (available p160)
      (colour p160 red)
      (surface-condition p160 smooth)
      (available p161)
      (colour p161 blue)
      (wood p161 beech)
      (surface-condition p161 smooth)
      (treatment p161 glazed)
      (available p162)
      (colour p162 green)
      (surface-condition p162 smooth)
      (treatment p162 glazed)
      (available p163)
      (surface-condition p163 smooth)
      (treatment p163 varnished)
      (available p164)
      (wood p164 cherry)
      (treatment p164 varnished)
      (available p165)
      (colour p165 red)
      (wood p165 teak)
      (surface-condition p165 verysmooth)
      (treatment p165 varnished)
      (available p166)
      (colour p166 blue)
      (wood p166 oak)
      (surface-condition p166 smooth)
      (treatment p166 glazed)
      (available p167)
      (wood p167 walnut)
      (surface-condition p167 smooth)
      (available p168)
      (wood p168 beech)
      (treatment p168 varnished)
      (available p169)
      (wood p169 teak)
      (treatment p169 glazed)
      (available p170)
      (colour p170 green)
      (wood p170 beech)
      (surface-condition p170 smooth)
      (treatment p170 glazed)
      (available p171)
      (wood p171 pine)
      (surface-condition p171 verysmooth)
      (available p172)
      (colour p172 black)
      (wood p172 beech)
      (available p173)
      (colour p173 blue)
      (wood p173 beech)
      (surface-condition p173 smooth)
      (treatment p173 varnished)
      (available p174)
      (colour p174 red)
      (wood p174 walnut)
      (surface-condition p174 verysmooth)
      (treatment p174 varnished)
      (available p175)
      (wood p175 mahogany)
      (surface-condition p175 smooth)
      (available p176)
      (surface-condition p176 verysmooth)
      (treatment p176 glazed)
      (available p177)
      (surface-condition p177 smooth)
      (treatment p177 glazed)
      (available p178)
      (surface-condition p178 verysmooth)
      (treatment p178 varnished)
      (available p179)
      (colour p179 white)
      (wood p179 beech)
      (available p180)
      (surface-condition p180 smooth)
      (treatment p180 varnished)
      (available p181)
      (wood p181 mahogany)
      (surface-condition p181 verysmooth)
      (treatment p181 glazed)
      (available p182)
      (wood p182 pine)
      (surface-condition p182 smooth)
      (available p183)
      (wood p183 walnut)
      (surface-condition p183 smooth)
      (available p184)
      (colour p184 green)
      (surface-condition p184 verysmooth)
      (treatment p184 glazed)
      (available p185)
      (colour p185 natural)
      (wood p185 walnut)
      (available p186)
      (colour p186 black)
      (wood p186 mahogany)
      (surface-condition p186 verysmooth)
      (treatment p186 varnished)
      (available p187)
      (colour p187 green)
      (wood p187 walnut)
      (surface-condition p187 verysmooth)
      (treatment p187 glazed)
      (available p188)
      (colour p188 black)
      (wood p188 oak)
      (surface-condition p188 verysmooth)
      (available p189)
      (colour p189 green)
      (wood p189 walnut)
      (surface-condition p189 verysmooth)
      (treatment p189 varnished)
      (available p190)
      (colour p190 mauve)
      (wood p190 mahogany)
      (available p191)
      (colour p191 mauve)
      (treatment p191 glazed)
      (available p192)
      (colour p192 mauve)
      (wood p192 pine)
      (surface-condition p192 smooth)
      (treatment p192 varnished)
      (available p193)
      (colour p193 natural)
      (wood p193 pine)
      (treatment p193 varnished)
      (available p194)
      (colour p194 mauve)
      (surface-condition p194 smooth)
      (treatment p194 varnished)
      (available p195)
      (colour p195 mauve)
      (surface-condition p195 verysmooth)
      (treatment p195 varnished)
      (available p196)
      (wood p196 pine)
      (treatment p196 varnished)
      (available p197)
      (colour p197 blue)
      (wood p197 pine)
      (available p198)
      (surface-condition p198 smooth)
      (treatment p198 varnished)
      (available p199)
      (colour p199 mauve)
      (wood p199 teak)
      (surface-condition p199 smooth)
      (available p200)
      (wood p200 walnut)
      (surface-condition p200 verysmooth)
      (available p201)
      (surface-condition p201 verysmooth)
      (treatment p201 glazed)
      (available p202)
      (wood p202 beech)
      (surface-condition p202 verysmooth)
      (available p203)
      (colour p203 natural)
      (wood p203 oak)
      (surface-condition p203 smooth)
      (treatment p203 glazed)
      (available p204)
      (colour p204 black)
      (treatment p204 glazed)
      (available p205)
      (colour p205 red)
      (wood p205 mahogany)
      (surface-condition p205 smooth)
      (treatment p205 glazed)
      (available p206)
      (wood p206 teak)
      (surface-condition p206 verysmooth)
      (available p207)
      (colour p207 black)
      (treatment p207 glazed)
      (available p208)
      (wood p208 walnut)
      (treatment p208 glazed)
      (available p209)
      (colour p209 mauve)
      (wood p209 cherry)
      (surface-condition p209 verysmooth)
      (treatment p209 varnished)
      (available p210)
      (colour p210 white)
      (wood p210 beech)
      (surface-condition p210 verysmooth)
      (treatment p210 glazed)
      (available p211)
      (colour p211 mauve)
      (wood p211 beech)
      (surface-condition p211 verysmooth)
      (treatment p211 varnished)
      (available p212)
      (colour p212 green)
      (wood p212 pine)
      (available p213)
      (wood p213 pine)
      (treatment p213 varnished)
      (available p214)
      (colour p214 white)
      (surface-condition p214 verysmooth)
      (available p215)
      (wood p215 oak)
      (surface-condition p215 verysmooth)
      (available p216)
      (surface-condition p216 smooth)
      (treatment p216 glazed)
      (available p217)
      (wood p217 oak)
      (treatment p217 varnished)
      (available p218)
      (colour p218 black)
      (wood p218 cherry)
      (treatment p218 glazed)
      (available p219)
      (surface-condition p219 verysmooth)
      (treatment p219 glazed)
      (available p220)
      (colour p220 black)
      (surface-condition p220 verysmooth)
      (available p221)
      (colour p221 blue)
      (wood p221 beech)
      (surface-condition p221 verysmooth)
      (available p222)
      (colour p222 white)
      (wood p222 teak)
      (surface-condition p222 smooth)
      (treatment p222 glazed)
      (available p223)
      (colour p223 natural)
      (surface-condition p223 smooth)
      (available p224)
      (colour p224 natural)
      (surface-condition p224 verysmooth)
      (available p225)
      (surface-condition p225 smooth)
      (treatment p225 glazed)
      (available p226)
      (colour p226 blue)
      (wood p226 walnut)
      (surface-condition p226 smooth)
      (available p227)
      (colour p227 black)
      (surface-condition p227 smooth)
      (available p228)
      (wood p228 oak)
      (treatment p228 glazed)
      (available p229)
      (colour p229 black)
      (surface-condition p229 verysmooth)
      (available p230)
      (colour p230 white)
      (treatment p230 glazed)
      (available p231)
      (colour p231 red)
      (treatment p231 varnished)
      (available p232)
      (colour p232 mauve)
      (wood p232 beech)
      (surface-condition p232 verysmooth)
      (treatment p232 glazed)
      (available p233)
      (colour p233 white)
      (wood p233 cherry)
      (surface-condition p233 smooth)
      (available p234)
      (surface-condition p234 verysmooth)
      (treatment p234 varnished)
      (available p235)
      (colour p235 red)
      (wood p235 pine)
      (surface-condition p235 verysmooth)
      (available p236)
      (colour p236 white)
      (wood p236 teak)
      (available p237)
      (colour p237 black)
      (surface-condition p237 smooth)
      (available p238)
      (colour p238 mauve)
      (treatment p238 glazed)
      (available p239)
      (wood p239 oak)
      (treatment p239 glazed)
      (available p240)
      (colour p240 blue)
      (wood p240 beech)
      (surface-condition p240 smooth)
      (treatment p240 varnished)
      (available p241)
      (colour p241 green)
      (wood p241 pine)
      (available p242)
      (wood p242 beech)
      (treatment p242 varnished)
      (available p243)
      (colour p243 white)
      (treatment p243 varnished)
      (available p244)
      (colour p244 white)
      (surface-condition p244 verysmooth)
      (available p245)
      (colour p245 white)
      (surface-condition p245 verysmooth)
      (available p246)
      (wood p246 walnut)
      (surface-condition p246 verysmooth)
      (available p247)
      (colour p247 natural)
      (surface-condition p247 verysmooth)
      (available p248)
      (colour p248 black)
      (wood p248 pine)
      (available p249)
      (colour p249 black)
      (surface-condition p249 verysmooth)
      (available p250)
      (colour p250 green)
      (surface-condition p250 smooth)
      (available p251)
      (wood p251 mahogany)
      (surface-condition p251 smooth)
      (available p252)
      (colour p252 white)
      (wood p252 beech)
      (treatment p252 varnished)
      (available p253)
      (colour p253 mauve)
      (wood p253 pine)
      (surface-condition p253 smooth)
      (treatment p253 varnished)
      (available p254)
      (colour p254 natural)
      (treatment p254 varnished)
      (available p255)
      (colour p255 white)
      (wood p255 cherry)
      (surface-condition p255 verysmooth)
      (available p256)
      (colour p256 green)
      (wood p256 walnut)
      (surface-condition p256 smooth)
      (treatment p256 glazed)
      (available p257)
      (colour p257 mauve)
      (wood p257 cherry)
      (available p258)
      (surface-condition p258 verysmooth)
      (treatment p258 varnished)
      (available p259)
      (colour p259 green)
      (surface-condition p259 smooth)
      (available p260)
      (colour p260 white)
      (wood p260 beech)
      (available p261)
      (colour p261 white)
      (wood p261 beech)
      (available p262)
      (colour p262 black)
      (wood p262 teak)
      (surface-condition p262 verysmooth)
      (treatment p262 glazed)
      (available p263)
      (colour p263 green)
      (surface-condition p263 verysmooth)
      (available p264)
      (colour p264 white)
      (treatment p264 varnished)
      (available p265)
      (colour p265 black)
      (surface-condition p265 verysmooth)
      (available p266)
      (wood p266 pine)
      (surface-condition p266 verysmooth)
      (treatment p266 glazed)
      (available p267)
      (colour p267 blue)
      (treatment p267 varnished)
      (available p268)
      (wood p268 mahogany)
      (surface-condition p268 smooth)
      (available p269)
      (colour p269 mauve)
      (wood p269 oak)
      (surface-condition p269 verysmooth)
      (available p270)
      (colour p270 red)
      (wood p270 mahogany)
      (surface-condition p270 smooth)
      (treatment p270 varnished)
      (available p271)
      (colour p271 red)
      (wood p271 walnut)
      (surface-condition p271 verysmooth)
      (treatment p271 glazed)
      (available p272)
      (colour p272 black)
      (wood p272 beech)
      (surface-condition p272 verysmooth)
      (available p273)
      (wood p273 beech)
      (surface-condition p273 smooth)
      (treatment p273 varnished)
      (available p274)
      (colour p274 green)
      (treatment p274 varnished)
      (available p275)
      (colour p275 green)
      (surface-condition p275 verysmooth)
      (treatment p275 varnished)
      (available p276)
      (colour p276 mauve)
      (wood p276 oak)
      (surface-condition p276 smooth)
      (treatment p276 glazed)
      (available p277)
      (colour p277 green)
      (surface-condition p277 smooth)
      (available p278)
      (colour p278 green)
      (wood p278 pine)
      (treatment p278 varnished)
      (available p279)
      (wood p279 pine)
      (surface-condition p279 verysmooth)
      (available p280)
      (colour p280 red)
      (surface-condition p280 smooth)
      (treatment p280 varnished)
      (available p281)
      (surface-condition p281 verysmooth)
      (treatment p281 glazed)
      (available p282)
      (surface-condition p282 smooth)
      (treatment p282 varnished)
      (available p283)
      (colour p283 green)
      (treatment p283 varnished)
      (available p284)
      (colour p284 black)
      (wood p284 mahogany)
      (surface-condition p284 smooth)
      (treatment p284 glazed)
      (available p285)
      (colour p285 blue)
      (wood p285 mahogany)
      (available p286)
      (colour p286 natural)
      (surface-condition p286 verysmooth)
      (treatment p286 glazed)
    )
  )
  
)
