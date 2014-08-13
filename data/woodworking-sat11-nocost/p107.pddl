; woodworking task with 290 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 818115

(define (problem wood-prob-sat-107)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue black green mauve white red - acolour
    beech oak cherry teak pine walnut mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 p278 p279 p280 p281 p282 p283 p284 p285 p286 p287 p288 p289 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
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
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 red)
    (wood p0 cherry)
    (surface-condition p0 smooth)
    (treatment p0 colourfragments)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (available p3)
    (colour p3 black)
    (wood p3 mahogany)
    (surface-condition p3 smooth)
    (treatment p3 colourfragments)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 black)
    (wood p24 beech)
    (surface-condition p24 rough)
    (treatment p24 varnished)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (available p26)
    (colour p26 mauve)
    (wood p26 teak)
    (surface-condition p26 smooth)
    (treatment p26 varnished)
    (goalsize p26 large)
    
    
    
    
    (available p27)
    (colour p27 natural)
    (wood p27 walnut)
    (surface-condition p27 smooth)
    (treatment p27 varnished)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 red)
    (wood p31 teak)
    (surface-condition p31 verysmooth)
    (treatment p31 glazed)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (available p35)
    (colour p35 white)
    (wood p35 teak)
    (surface-condition p35 rough)
    (treatment p35 glazed)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (available p39)
    (colour p39 blue)
    (wood p39 mahogany)
    (surface-condition p39 rough)
    (treatment p39 glazed)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (available p43)
    (colour p43 white)
    (wood p43 mahogany)
    (surface-condition p43 rough)
    (treatment p43 glazed)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (available p45)
    (colour p45 natural)
    (wood p45 teak)
    (surface-condition p45 smooth)
    (treatment p45 varnished)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (available p48)
    (colour p48 red)
    (wood p48 teak)
    (surface-condition p48 smooth)
    (treatment p48 colourfragments)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (available p51)
    (colour p51 natural)
    (wood p51 oak)
    (surface-condition p51 rough)
    (treatment p51 glazed)
    (goalsize p51 medium)
    
    
    
    
    (available p52)
    (colour p52 mauve)
    (wood p52 cherry)
    (surface-condition p52 smooth)
    (treatment p52 varnished)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (available p56)
    (colour p56 red)
    (wood p56 beech)
    (surface-condition p56 verysmooth)
    (treatment p56 glazed)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (available p62)
    (colour p62 white)
    (wood p62 mahogany)
    (surface-condition p62 rough)
    (treatment p62 varnished)
    (goalsize p62 medium)
    
    
    
    
    (available p63)
    (colour p63 green)
    (wood p63 teak)
    (surface-condition p63 verysmooth)
    (treatment p63 colourfragments)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (available p89)
    (colour p89 white)
    (wood p89 teak)
    (surface-condition p89 rough)
    (treatment p89 varnished)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (available p115)
    (colour p115 blue)
    (wood p115 cherry)
    (surface-condition p115 verysmooth)
    (treatment p115 varnished)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (available p117)
    (colour p117 mauve)
    (wood p117 pine)
    (surface-condition p117 rough)
    (treatment p117 varnished)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (available p125)
    (colour p125 mauve)
    (wood p125 beech)
    (surface-condition p125 rough)
    (treatment p125 colourfragments)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (available p127)
    (colour p127 mauve)
    (wood p127 cherry)
    (surface-condition p127 smooth)
    (treatment p127 colourfragments)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (available p129)
    (colour p129 black)
    (wood p129 pine)
    (surface-condition p129 verysmooth)
    (treatment p129 colourfragments)
    (goalsize p129 small)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (available p133)
    (colour p133 black)
    (wood p133 teak)
    (surface-condition p133 rough)
    (treatment p133 colourfragments)
    (goalsize p133 medium)
    
    
    
    
    (unused p134)
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
    
    
    
    
    (available p140)
    (colour p140 natural)
    (wood p140 mahogany)
    (surface-condition p140 verysmooth)
    (treatment p140 varnished)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (available p149)
    (colour p149 natural)
    (wood p149 cherry)
    (surface-condition p149 rough)
    (treatment p149 varnished)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (available p153)
    (colour p153 red)
    (wood p153 beech)
    (surface-condition p153 rough)
    (treatment p153 varnished)
    (goalsize p153 large)
    
    
    
    
    (available p154)
    (colour p154 blue)
    (wood p154 beech)
    (surface-condition p154 rough)
    (treatment p154 varnished)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (available p158)
    (colour p158 red)
    (wood p158 teak)
    (surface-condition p158 verysmooth)
    (treatment p158 glazed)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (available p166)
    (colour p166 black)
    (wood p166 cherry)
    (surface-condition p166 rough)
    (treatment p166 glazed)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 medium)
    
    
    
    
    (available p168)
    (colour p168 white)
    (wood p168 teak)
    (surface-condition p168 verysmooth)
    (treatment p168 varnished)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (available p170)
    (colour p170 blue)
    (wood p170 beech)
    (surface-condition p170 rough)
    (treatment p170 glazed)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 small)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (available p176)
    (colour p176 mauve)
    (wood p176 walnut)
    (surface-condition p176 smooth)
    (treatment p176 colourfragments)
    (goalsize p176 small)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (available p179)
    (colour p179 blue)
    (wood p179 oak)
    (surface-condition p179 verysmooth)
    (treatment p179 colourfragments)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (available p181)
    (colour p181 black)
    (wood p181 beech)
    (surface-condition p181 verysmooth)
    (treatment p181 varnished)
    (goalsize p181 small)
    
    
    
    
    (unused p182)
    (goalsize p182 large)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (available p187)
    (colour p187 mauve)
    (wood p187 pine)
    (surface-condition p187 verysmooth)
    (treatment p187 glazed)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 medium)
    
    
    
    
    (unused p189)
    (goalsize p189 large)
    
    
    
    
    (unused p190)
    (goalsize p190 large)
    
    
    
    
    (available p191)
    (colour p191 black)
    (wood p191 pine)
    (surface-condition p191 rough)
    (treatment p191 glazed)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 medium)
    
    
    
    
    (available p197)
    (colour p197 green)
    (wood p197 oak)
    (surface-condition p197 verysmooth)
    (treatment p197 colourfragments)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 small)
    
    
    
    
    (unused p202)
    (goalsize p202 large)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (available p204)
    (colour p204 blue)
    (wood p204 oak)
    (surface-condition p204 verysmooth)
    (treatment p204 colourfragments)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 large)
    
    
    
    
    (available p206)
    (colour p206 red)
    (wood p206 pine)
    (surface-condition p206 verysmooth)
    (treatment p206 glazed)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 small)
    
    
    
    
    (unused p209)
    (goalsize p209 large)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (available p214)
    (colour p214 white)
    (wood p214 pine)
    (surface-condition p214 smooth)
    (treatment p214 colourfragments)
    (goalsize p214 small)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 medium)
    
    
    
    
    (unused p217)
    (goalsize p217 small)
    
    
    
    
    (unused p218)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 small)
    
    
    
    
    (available p221)
    (colour p221 red)
    (wood p221 teak)
    (surface-condition p221 rough)
    (treatment p221 colourfragments)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (available p223)
    (colour p223 red)
    (wood p223 beech)
    (surface-condition p223 smooth)
    (treatment p223 colourfragments)
    (goalsize p223 large)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 small)
    
    
    
    
    (unused p226)
    (goalsize p226 large)
    
    
    
    
    (unused p227)
    (goalsize p227 small)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 large)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (available p231)
    (colour p231 green)
    (wood p231 mahogany)
    (surface-condition p231 rough)
    (treatment p231 varnished)
    (goalsize p231 medium)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 small)
    
    
    
    
    (unused p234)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 small)
    
    
    
    
    (available p236)
    (colour p236 green)
    (wood p236 walnut)
    (surface-condition p236 verysmooth)
    (treatment p236 colourfragments)
    (goalsize p236 large)
    
    
    
    
    (unused p237)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 large)
    
    
    
    
    (unused p239)
    (goalsize p239 medium)
    
    
    
    
    (unused p240)
    (goalsize p240 large)
    
    
    
    
    (unused p241)
    (goalsize p241 small)
    
    
    
    
    (unused p242)
    (goalsize p242 medium)
    
    
    
    
    (available p243)
    (colour p243 mauve)
    (wood p243 walnut)
    (surface-condition p243 smooth)
    (treatment p243 glazed)
    (goalsize p243 large)
    
    
    
    
    (unused p244)
    (goalsize p244 small)
    
    
    
    
    (unused p245)
    (goalsize p245 large)
    
    
    
    
    (unused p246)
    (goalsize p246 small)
    
    
    
    
    (available p247)
    (colour p247 blue)
    (wood p247 mahogany)
    (surface-condition p247 rough)
    (treatment p247 glazed)
    (goalsize p247 medium)
    
    
    
    
    (unused p248)
    (goalsize p248 small)
    
    
    
    
    (unused p249)
    (goalsize p249 small)
    
    
    
    
    (unused p250)
    (goalsize p250 small)
    
    
    
    
    (unused p251)
    (goalsize p251 small)
    
    
    
    
    (available p252)
    (colour p252 mauve)
    (wood p252 teak)
    (surface-condition p252 smooth)
    (treatment p252 varnished)
    (goalsize p252 medium)
    
    
    
    
    (unused p253)
    (goalsize p253 small)
    
    
    
    
    (unused p254)
    (goalsize p254 small)
    
    
    
    
    (unused p255)
    (goalsize p255 large)
    
    
    
    
    (unused p256)
    (goalsize p256 small)
    
    
    
    
    (unused p257)
    (goalsize p257 large)
    
    
    
    
    (unused p258)
    (goalsize p258 large)
    
    
    
    
    (unused p259)
    (goalsize p259 large)
    
    
    
    
    (available p260)
    (colour p260 green)
    (wood p260 teak)
    (surface-condition p260 smooth)
    (treatment p260 colourfragments)
    (goalsize p260 large)
    
    
    
    
    (unused p261)
    (goalsize p261 small)
    
    
    
    
    (unused p262)
    (goalsize p262 large)
    
    
    
    
    (unused p263)
    (goalsize p263 medium)
    
    
    
    
    (unused p264)
    (goalsize p264 small)
    
    
    
    
    (unused p265)
    (goalsize p265 medium)
    
    
    
    
    (available p266)
    (colour p266 red)
    (wood p266 cherry)
    (surface-condition p266 rough)
    (treatment p266 varnished)
    (goalsize p266 large)
    
    
    
    
    (unused p267)
    (goalsize p267 large)
    
    
    
    
    (available p268)
    (colour p268 white)
    (wood p268 walnut)
    (surface-condition p268 verysmooth)
    (treatment p268 varnished)
    (goalsize p268 medium)
    
    
    
    
    (available p269)
    (colour p269 red)
    (wood p269 mahogany)
    (surface-condition p269 verysmooth)
    (treatment p269 glazed)
    (goalsize p269 large)
    
    
    
    
    (unused p270)
    (goalsize p270 large)
    
    
    
    
    (unused p271)
    (goalsize p271 medium)
    
    
    
    
    (unused p272)
    (goalsize p272 medium)
    
    
    
    
    (unused p273)
    (goalsize p273 large)
    
    
    
    
    (unused p274)
    (goalsize p274 large)
    
    
    
    
    (unused p275)
    (goalsize p275 small)
    
    
    
    
    (unused p276)
    (goalsize p276 small)
    
    
    
    
    (unused p277)
    (goalsize p277 medium)
    
    
    
    
    (unused p278)
    (goalsize p278 large)
    
    
    
    
    (unused p279)
    (goalsize p279 small)
    
    
    
    
    (unused p280)
    (goalsize p280 medium)
    
    
    
    
    (unused p281)
    (goalsize p281 medium)
    
    
    
    
    (unused p282)
    (goalsize p282 small)
    
    
    
    
    (unused p283)
    (goalsize p283 large)
    
    
    
    
    (unused p284)
    (goalsize p284 large)
    
    
    
    
    (unused p285)
    (goalsize p285 large)
    
    
    
    
    (available p286)
    (colour p286 black)
    (wood p286 beech)
    (surface-condition p286 rough)
    (treatment p286 glazed)
    (goalsize p286 small)
    
    
    
    
    (unused p287)
    (goalsize p287 medium)
    
    
    
    
    (unused p288)
    (goalsize p288 small)
    
    
    
    
    (unused p289)
    (goalsize p289 small)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s7)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s11)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s5)
    (wood b8 cherry)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s9)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s4)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s11)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s6)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s12)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s10)
    (wood b21 mahogany)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s3)
    (wood b22 mahogany)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s9)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s11)
    (wood b26 oak)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s11)
    (wood b27 oak)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s9)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s11)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 oak)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s7)
    (wood b31 oak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s2)
    (wood b32 oak)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s7)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s9)
    (wood b34 pine)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s9)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s9)
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
    (boardsize b39 s8)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s9)
    (wood b41 pine)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s9)
    (wood b42 pine)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s8)
    (wood b43 pine)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s7)
    (wood b44 pine)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s1)
    (wood b45 pine)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s8)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s11)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s5)
    (wood b48 walnut)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s8)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s9)
    (wood b50 walnut)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s9)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s8)
    (wood b52 walnut)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s6)
    (wood b53 walnut)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s8)
    (wood b54 teak)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s7)
    (wood b55 teak)
    (surface-condition b55 smooth)
    (available b55)
    (boardsize b56 s4)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s10)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s9)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s8)
    (wood b59 teak)
    (surface-condition b59 smooth)
    (available b59)
    (boardsize b60 s10)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s11)
    (wood b61 teak)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s7)
    (wood b62 teak)
    (surface-condition b62 smooth)
    (available b62)
    (boardsize b63 s10)
    (wood b63 teak)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s7)
    (wood b64 teak)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s1)
    (wood b65 teak)
    (surface-condition b65 smooth)
    (available b65)
    (boardsize b66 s7)
    (wood b66 beech)
    (surface-condition b66 smooth)
    (available b66)
    (boardsize b67 s10)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s5)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s8)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s9)
    (wood b70 beech)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s5)
    (wood b71 beech)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s8)
    (wood b72 beech)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s4)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
  )
  (:goal
    (and
      (available p0)
      (wood p0 cherry)
      (surface-condition p0 verysmooth)
      (available p1)
      (wood p1 teak)
      (treatment p1 glazed)
      (available p2)
      (colour p2 black)
      (wood p2 oak)
      (treatment p2 varnished)
      (available p3)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 natural)
      (wood p4 teak)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 blue)
      (surface-condition p5 smooth)
      (available p6)
      (surface-condition p6 smooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 white)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (wood p8 walnut)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 green)
      (wood p9 cherry)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 red)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 black)
      (wood p11 pine)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 blue)
      (wood p12 pine)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 red)
      (treatment p13 glazed)
      (available p14)
      (colour p14 natural)
      (surface-condition p14 verysmooth)
      (available p15)
      (wood p15 beech)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (wood p17 mahogany)
      (treatment p17 glazed)
      (available p18)
      (colour p18 green)
      (treatment p18 varnished)
      (available p19)
      (colour p19 mauve)
      (treatment p19 glazed)
      (available p20)
      (colour p20 blue)
      (treatment p20 glazed)
      (available p21)
      (colour p21 natural)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 black)
      (wood p22 teak)
      (available p23)
      (colour p23 mauve)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 blue)
      (wood p24 beech)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 white)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 red)
      (wood p26 teak)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 red)
      (wood p27 walnut)
      (available p28)
      (colour p28 black)
      (wood p28 walnut)
      (treatment p28 glazed)
      (available p29)
      (colour p29 black)
      (wood p29 teak)
      (treatment p29 glazed)
      (available p30)
      (colour p30 green)
      (surface-condition p30 verysmooth)
      (available p31)
      (colour p31 mauve)
      (wood p31 teak)
      (available p32)
      (colour p32 natural)
      (wood p32 mahogany)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 red)
      (treatment p33 glazed)
      (available p34)
      (colour p34 green)
      (wood p34 teak)
      (treatment p34 varnished)
      (available p35)
      (colour p35 blue)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 red)
      (wood p36 mahogany)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 natural)
      (wood p38 cherry)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (wood p39 mahogany)
      (surface-condition p39 verysmooth)
      (available p40)
      (wood p40 cherry)
      (treatment p40 glazed)
      (available p41)
      (colour p41 mauve)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 red)
      (wood p42 cherry)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 red)
      (surface-condition p43 smooth)
      (available p44)
      (colour p44 black)
      (wood p44 teak)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (wood p45 teak)
      (surface-condition p45 verysmooth)
      (available p46)
      (wood p46 mahogany)
      (surface-condition p46 verysmooth)
      (treatment p46 glazed)
      (available p47)
      (wood p47 pine)
      (treatment p47 glazed)
      (available p48)
      (colour p48 natural)
      (wood p48 teak)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 natural)
      (wood p50 mahogany)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 red)
      (surface-condition p51 smooth)
      (available p52)
      (colour p52 green)
      (wood p52 cherry)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 natural)
      (wood p53 teak)
      (treatment p53 varnished)
      (available p54)
      (wood p54 beech)
      (surface-condition p54 verysmooth)
      (available p55)
      (colour p55 white)
      (wood p55 beech)
      (treatment p55 varnished)
      (available p56)
      (surface-condition p56 verysmooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 mauve)
      (wood p57 teak)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 white)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 mauve)
      (wood p59 mahogany)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 black)
      (wood p60 oak)
      (surface-condition p60 smooth)
      (available p61)
      (surface-condition p61 smooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 mauve)
      (wood p62 mahogany)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 white)
      (wood p63 teak)
      (surface-condition p63 verysmooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 green)
      (wood p64 mahogany)
      (surface-condition p64 verysmooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 natural)
      (wood p65 walnut)
      (available p66)
      (colour p66 red)
      (wood p66 pine)
      (available p67)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 blue)
      (treatment p68 glazed)
      (available p69)
      (wood p69 pine)
      (surface-condition p69 smooth)
      (available p70)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 white)
      (treatment p71 glazed)
      (available p72)
      (wood p72 oak)
      (surface-condition p72 smooth)
      (treatment p72 varnished)
      (available p73)
      (wood p73 walnut)
      (treatment p73 varnished)
      (available p74)
      (wood p74 pine)
      (surface-condition p74 smooth)
      (available p75)
      (colour p75 white)
      (wood p75 cherry)
      (available p76)
      (colour p76 blue)
      (wood p76 oak)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (colour p77 white)
      (wood p77 cherry)
      (available p78)
      (colour p78 black)
      (wood p78 teak)
      (surface-condition p78 verysmooth)
      (available p79)
      (colour p79 black)
      (surface-condition p79 verysmooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 natural)
      (wood p80 oak)
      (available p81)
      (colour p81 black)
      (wood p81 teak)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (surface-condition p82 smooth)
      (treatment p82 varnished)
      (available p83)
      (wood p83 pine)
      (treatment p83 glazed)
      (available p84)
      (colour p84 natural)
      (surface-condition p84 smooth)
      (available p85)
      (colour p85 blue)
      (treatment p85 glazed)
      (available p86)
      (colour p86 mauve)
      (treatment p86 varnished)
      (available p87)
      (colour p87 red)
      (surface-condition p87 smooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 blue)
      (wood p88 walnut)
      (treatment p88 glazed)
      (available p89)
      (colour p89 black)
      (treatment p89 glazed)
      (available p90)
      (colour p90 mauve)
      (wood p90 teak)
      (available p91)
      (colour p91 blue)
      (wood p91 pine)
      (surface-condition p91 smooth)
      (treatment p91 varnished)
      (available p92)
      (colour p92 red)
      (wood p92 mahogany)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (surface-condition p93 verysmooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 black)
      (wood p94 beech)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 red)
      (surface-condition p95 verysmooth)
      (treatment p95 glazed)
      (available p96)
      (colour p96 mauve)
      (wood p96 beech)
      (surface-condition p96 verysmooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 natural)
      (wood p97 walnut)
      (surface-condition p97 smooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 natural)
      (wood p98 mahogany)
      (available p99)
      (colour p99 red)
      (wood p99 cherry)
      (surface-condition p99 smooth)
      (available p100)
      (wood p100 walnut)
      (surface-condition p100 verysmooth)
      (available p101)
      (colour p101 white)
      (wood p101 walnut)
      (available p102)
      (wood p102 walnut)
      (surface-condition p102 verysmooth)
      (available p103)
      (colour p103 black)
      (wood p103 beech)
      (surface-condition p103 verysmooth)
      (treatment p103 varnished)
      (available p104)
      (colour p104 blue)
      (wood p104 mahogany)
      (available p105)
      (colour p105 green)
      (wood p105 mahogany)
      (treatment p105 varnished)
      (available p106)
      (wood p106 oak)
      (surface-condition p106 verysmooth)
      (available p107)
      (colour p107 mauve)
      (surface-condition p107 verysmooth)
      (treatment p107 varnished)
      (available p108)
      (wood p108 mahogany)
      (treatment p108 glazed)
      (available p109)
      (colour p109 green)
      (surface-condition p109 verysmooth)
      (available p110)
      (colour p110 natural)
      (wood p110 teak)
      (available p111)
      (colour p111 red)
      (treatment p111 glazed)
      (available p112)
      (colour p112 blue)
      (wood p112 mahogany)
      (available p113)
      (colour p113 mauve)
      (surface-condition p113 verysmooth)
      (available p114)
      (colour p114 natural)
      (surface-condition p114 verysmooth)
      (available p115)
      (surface-condition p115 verysmooth)
      (treatment p115 glazed)
      (available p116)
      (wood p116 beech)
      (surface-condition p116 verysmooth)
      (treatment p116 glazed)
      (available p117)
      (surface-condition p117 verysmooth)
      (treatment p117 varnished)
      (available p118)
      (wood p118 mahogany)
      (surface-condition p118 smooth)
      (available p119)
      (colour p119 red)
      (wood p119 teak)
      (surface-condition p119 smooth)
      (treatment p119 glazed)
      (available p120)
      (wood p120 pine)
      (surface-condition p120 verysmooth)
      (available p121)
      (wood p121 pine)
      (surface-condition p121 smooth)
      (available p122)
      (colour p122 natural)
      (wood p122 beech)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (surface-condition p123 smooth)
      (treatment p123 glazed)
      (available p124)
      (wood p124 walnut)
      (treatment p124 glazed)
      (available p125)
      (surface-condition p125 verysmooth)
      (treatment p125 glazed)
      (available p126)
      (surface-condition p126 smooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 blue)
      (wood p127 cherry)
      (surface-condition p127 verysmooth)
      (treatment p127 varnished)
      (available p128)
      (colour p128 natural)
      (wood p128 pine)
      (available p129)
      (colour p129 green)
      (wood p129 pine)
      (surface-condition p129 verysmooth)
      (treatment p129 glazed)
      (available p130)
      (wood p130 mahogany)
      (surface-condition p130 verysmooth)
      (available p131)
      (colour p131 blue)
      (surface-condition p131 verysmooth)
      (available p132)
      (wood p132 walnut)
      (surface-condition p132 verysmooth)
      (available p133)
      (surface-condition p133 smooth)
      (treatment p133 varnished)
      (available p134)
      (colour p134 mauve)
      (wood p134 teak)
      (surface-condition p134 smooth)
      (available p135)
      (colour p135 natural)
      (wood p135 cherry)
      (surface-condition p135 verysmooth)
      (available p136)
      (surface-condition p136 verysmooth)
      (treatment p136 varnished)
      (available p137)
      (surface-condition p137 verysmooth)
      (treatment p137 varnished)
      (available p138)
      (colour p138 black)
      (wood p138 beech)
      (treatment p138 varnished)
      (available p139)
      (surface-condition p139 verysmooth)
      (treatment p139 varnished)
      (available p140)
      (colour p140 black)
      (wood p140 mahogany)
      (available p141)
      (wood p141 cherry)
      (treatment p141 varnished)
      (available p142)
      (wood p142 teak)
      (treatment p142 glazed)
      (available p143)
      (wood p143 oak)
      (treatment p143 glazed)
      (available p144)
      (wood p144 pine)
      (treatment p144 glazed)
      (available p145)
      (wood p145 beech)
      (surface-condition p145 verysmooth)
      (treatment p145 glazed)
      (available p146)
      (surface-condition p146 verysmooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 red)
      (wood p147 mahogany)
      (surface-condition p147 verysmooth)
      (available p148)
      (colour p148 mauve)
      (wood p148 pine)
      (available p149)
      (colour p149 black)
      (wood p149 cherry)
      (available p150)
      (wood p150 oak)
      (surface-condition p150 smooth)
      (available p151)
      (wood p151 oak)
      (surface-condition p151 verysmooth)
      (available p152)
      (colour p152 red)
      (wood p152 beech)
      (available p153)
      (colour p153 green)
      (treatment p153 varnished)
      (available p154)
      (surface-condition p154 verysmooth)
      (treatment p154 glazed)
      (available p155)
      (colour p155 natural)
      (surface-condition p155 smooth)
      (available p156)
      (surface-condition p156 verysmooth)
      (treatment p156 varnished)
      (available p157)
      (colour p157 green)
      (surface-condition p157 verysmooth)
      (treatment p157 glazed)
      (available p158)
      (colour p158 white)
      (wood p158 teak)
      (surface-condition p158 smooth)
      (treatment p158 varnished)
      (available p159)
      (colour p159 blue)
      (wood p159 oak)
      (surface-condition p159 smooth)
      (treatment p159 glazed)
      (available p160)
      (wood p160 oak)
      (treatment p160 varnished)
      (available p161)
      (wood p161 cherry)
      (surface-condition p161 smooth)
      (available p162)
      (colour p162 white)
      (wood p162 mahogany)
      (surface-condition p162 smooth)
      (treatment p162 varnished)
      (available p163)
      (wood p163 mahogany)
      (surface-condition p163 smooth)
      (available p164)
      (colour p164 green)
      (wood p164 oak)
      (available p165)
      (colour p165 white)
      (treatment p165 varnished)
      (available p166)
      (colour p166 mauve)
      (wood p166 cherry)
      (available p167)
      (colour p167 blue)
      (treatment p167 varnished)
      (available p168)
      (colour p168 green)
      (surface-condition p168 smooth)
      (treatment p168 glazed)
      (available p169)
      (colour p169 blue)
      (surface-condition p169 smooth)
      (available p170)
      (colour p170 black)
      (treatment p170 varnished)
      (available p171)
      (colour p171 mauve)
      (wood p171 pine)
      (surface-condition p171 smooth)
      (treatment p171 glazed)
      (available p172)
      (colour p172 black)
      (surface-condition p172 verysmooth)
      (available p173)
      (wood p173 mahogany)
      (treatment p173 varnished)
      (available p174)
      (colour p174 green)
      (treatment p174 varnished)
      (available p175)
      (colour p175 mauve)
      (wood p175 oak)
      (available p176)
      (colour p176 green)
      (wood p176 walnut)
      (available p177)
      (wood p177 cherry)
      (treatment p177 glazed)
      (available p178)
      (wood p178 cherry)
      (treatment p178 glazed)
      (available p179)
      (colour p179 white)
      (wood p179 oak)
      (surface-condition p179 verysmooth)
      (treatment p179 glazed)
      (available p180)
      (wood p180 oak)
      (surface-condition p180 smooth)
      (available p181)
      (colour p181 red)
      (wood p181 beech)
      (available p182)
      (wood p182 mahogany)
      (surface-condition p182 verysmooth)
      (available p183)
      (colour p183 blue)
      (surface-condition p183 verysmooth)
      (available p184)
      (colour p184 black)
      (wood p184 pine)
      (surface-condition p184 smooth)
      (available p185)
      (colour p185 natural)
      (wood p185 walnut)
      (available p186)
      (colour p186 natural)
      (surface-condition p186 smooth)
      (available p187)
      (colour p187 natural)
      (surface-condition p187 smooth)
      (treatment p187 varnished)
      (available p188)
      (colour p188 green)
      (wood p188 oak)
      (available p189)
      (colour p189 green)
      (surface-condition p189 verysmooth)
      (available p190)
      (colour p190 black)
      (wood p190 walnut)
      (available p191)
      (colour p191 natural)
      (wood p191 pine)
      (surface-condition p191 smooth)
      (treatment p191 varnished)
      (available p192)
      (colour p192 black)
      (wood p192 pine)
      (available p193)
      (colour p193 white)
      (wood p193 oak)
      (surface-condition p193 verysmooth)
      (treatment p193 glazed)
      (available p194)
      (surface-condition p194 verysmooth)
      (treatment p194 varnished)
      (available p195)
      (surface-condition p195 smooth)
      (treatment p195 varnished)
      (available p196)
      (colour p196 white)
      (wood p196 teak)
      (available p197)
      (colour p197 white)
      (wood p197 oak)
      (surface-condition p197 smooth)
      (treatment p197 varnished)
      (available p198)
      (colour p198 white)
      (wood p198 pine)
      (treatment p198 varnished)
      (available p199)
      (wood p199 cherry)
      (surface-condition p199 smooth)
      (treatment p199 glazed)
      (available p200)
      (surface-condition p200 smooth)
      (treatment p200 glazed)
      (available p201)
      (colour p201 green)
      (wood p201 mahogany)
      (surface-condition p201 smooth)
      (treatment p201 glazed)
      (available p202)
      (colour p202 blue)
      (wood p202 mahogany)
      (surface-condition p202 verysmooth)
      (treatment p202 varnished)
      (available p203)
      (surface-condition p203 verysmooth)
      (treatment p203 glazed)
      (available p204)
      (colour p204 black)
      (wood p204 oak)
      (surface-condition p204 verysmooth)
      (treatment p204 glazed)
      (available p205)
      (wood p205 oak)
      (treatment p205 varnished)
      (available p206)
      (colour p206 green)
      (treatment p206 glazed)
      (available p207)
      (colour p207 red)
      (wood p207 teak)
      (surface-condition p207 verysmooth)
      (treatment p207 glazed)
      (available p208)
      (colour p208 blue)
      (surface-condition p208 verysmooth)
      (available p209)
      (wood p209 pine)
      (surface-condition p209 smooth)
      (treatment p209 glazed)
      (available p210)
      (surface-condition p210 verysmooth)
      (treatment p210 glazed)
      (available p211)
      (colour p211 blue)
      (treatment p211 glazed)
      (available p212)
      (colour p212 black)
      (wood p212 teak)
      (surface-condition p212 smooth)
      (treatment p212 varnished)
      (available p213)
      (colour p213 natural)
      (treatment p213 glazed)
      (available p214)
      (colour p214 green)
      (wood p214 pine)
      (surface-condition p214 verysmooth)
      (treatment p214 varnished)
      (available p215)
      (wood p215 oak)
      (surface-condition p215 verysmooth)
      (available p216)
      (colour p216 green)
      (wood p216 oak)
      (surface-condition p216 verysmooth)
      (treatment p216 varnished)
      (available p217)
      (colour p217 natural)
      (wood p217 mahogany)
      (available p218)
      (colour p218 white)
      (wood p218 pine)
      (surface-condition p218 smooth)
      (treatment p218 glazed)
      (available p219)
      (colour p219 blue)
      (wood p219 teak)
      (surface-condition p219 verysmooth)
      (treatment p219 glazed)
      (available p220)
      (colour p220 natural)
      (wood p220 pine)
      (surface-condition p220 verysmooth)
      (treatment p220 glazed)
      (available p221)
      (colour p221 white)
      (wood p221 teak)
      (surface-condition p221 verysmooth)
      (treatment p221 glazed)
      (available p222)
      (colour p222 blue)
      (wood p222 cherry)
      (available p223)
      (colour p223 white)
      (wood p223 beech)
      (surface-condition p223 smooth)
      (treatment p223 varnished)
      (available p224)
      (colour p224 red)
      (wood p224 cherry)
      (surface-condition p224 smooth)
      (treatment p224 glazed)
      (available p225)
      (colour p225 black)
      (wood p225 oak)
      (surface-condition p225 smooth)
      (treatment p225 varnished)
      (available p226)
      (colour p226 natural)
      (wood p226 oak)
      (available p227)
      (wood p227 teak)
      (treatment p227 varnished)
      (available p228)
      (wood p228 teak)
      (surface-condition p228 verysmooth)
      (available p229)
      (colour p229 black)
      (wood p229 walnut)
      (surface-condition p229 verysmooth)
      (treatment p229 varnished)
      (available p230)
      (colour p230 green)
      (surface-condition p230 verysmooth)
      (available p231)
      (wood p231 mahogany)
      (surface-condition p231 verysmooth)
      (available p232)
      (surface-condition p232 smooth)
      (treatment p232 varnished)
      (available p233)
      (colour p233 white)
      (wood p233 mahogany)
      (surface-condition p233 smooth)
      (treatment p233 glazed)
      (available p234)
      (colour p234 red)
      (wood p234 mahogany)
      (surface-condition p234 smooth)
      (treatment p234 varnished)
      (available p235)
      (colour p235 black)
      (treatment p235 glazed)
      (available p236)
      (colour p236 red)
      (surface-condition p236 verysmooth)
      (treatment p236 glazed)
      (available p237)
      (wood p237 pine)
      (surface-condition p237 smooth)
      (treatment p237 glazed)
      (available p238)
      (colour p238 blue)
      (surface-condition p238 smooth)
      (available p239)
      (colour p239 green)
      (wood p239 mahogany)
      (available p240)
      (colour p240 red)
      (wood p240 beech)
      (available p241)
      (wood p241 beech)
      (surface-condition p241 verysmooth)
      (treatment p241 glazed)
      (available p242)
      (wood p242 walnut)
      (treatment p242 glazed)
      (available p243)
      (colour p243 blue)
      (surface-condition p243 smooth)
      (treatment p243 varnished)
      (available p244)
      (wood p244 pine)
      (surface-condition p244 verysmooth)
      (available p245)
      (colour p245 natural)
      (wood p245 mahogany)
      (surface-condition p245 verysmooth)
      (treatment p245 glazed)
      (available p246)
      (colour p246 red)
      (wood p246 beech)
      (surface-condition p246 smooth)
      (treatment p246 glazed)
      (available p247)
      (wood p247 mahogany)
      (treatment p247 varnished)
      (available p248)
      (colour p248 green)
      (surface-condition p248 verysmooth)
      (available p249)
      (wood p249 walnut)
      (treatment p249 glazed)
      (available p250)
      (surface-condition p250 verysmooth)
      (treatment p250 glazed)
      (available p251)
      (colour p251 green)
      (surface-condition p251 verysmooth)
      (treatment p251 glazed)
      (available p252)
      (colour p252 black)
      (surface-condition p252 verysmooth)
      (treatment p252 varnished)
      (available p253)
      (colour p253 blue)
      (wood p253 mahogany)
      (available p254)
      (colour p254 natural)
      (wood p254 oak)
      (available p255)
      (colour p255 blue)
      (wood p255 beech)
      (surface-condition p255 smooth)
      (available p256)
      (wood p256 pine)
      (treatment p256 varnished)
      (available p257)
      (wood p257 mahogany)
      (treatment p257 glazed)
      (available p258)
      (colour p258 blue)
      (treatment p258 varnished)
      (available p259)
      (colour p259 black)
      (wood p259 beech)
      (surface-condition p259 verysmooth)
      (available p260)
      (colour p260 red)
      (wood p260 teak)
      (surface-condition p260 verysmooth)
      (treatment p260 varnished)
      (available p261)
      (colour p261 red)
      (wood p261 cherry)
      (surface-condition p261 verysmooth)
      (treatment p261 varnished)
      (available p262)
      (colour p262 white)
      (wood p262 cherry)
      (surface-condition p262 verysmooth)
      (treatment p262 varnished)
      (available p263)
      (wood p263 walnut)
      (treatment p263 varnished)
      (available p264)
      (colour p264 blue)
      (wood p264 walnut)
      (surface-condition p264 verysmooth)
      (treatment p264 glazed)
      (available p265)
      (colour p265 blue)
      (surface-condition p265 verysmooth)
      (available p266)
      (colour p266 natural)
      (wood p266 cherry)
      (surface-condition p266 verysmooth)
      (treatment p266 varnished)
      (available p267)
      (colour p267 mauve)
      (wood p267 beech)
      (available p268)
      (colour p268 green)
      (wood p268 walnut)
      (treatment p268 glazed)
      (available p269)
      (colour p269 blue)
      (wood p269 mahogany)
      (surface-condition p269 verysmooth)
      (available p270)
      (surface-condition p270 verysmooth)
      (treatment p270 glazed)
      (available p271)
      (wood p271 teak)
      (surface-condition p271 smooth)
      (available p272)
      (colour p272 blue)
      (wood p272 teak)
      (surface-condition p272 verysmooth)
      (treatment p272 varnished)
      (available p273)
      (colour p273 blue)
      (wood p273 beech)
      (surface-condition p273 verysmooth)
      (available p274)
      (colour p274 white)
      (surface-condition p274 smooth)
      (treatment p274 glazed)
      (available p275)
      (colour p275 black)
      (wood p275 cherry)
      (surface-condition p275 verysmooth)
      (available p276)
      (colour p276 blue)
      (treatment p276 glazed)
      (available p277)
      (colour p277 black)
      (surface-condition p277 smooth)
      (available p278)
      (colour p278 green)
      (wood p278 pine)
      (surface-condition p278 verysmooth)
      (available p279)
      (colour p279 black)
      (wood p279 cherry)
      (surface-condition p279 verysmooth)
      (treatment p279 varnished)
      (available p280)
      (colour p280 blue)
      (surface-condition p280 verysmooth)
      (available p281)
      (colour p281 black)
      (surface-condition p281 smooth)
      (available p282)
      (colour p282 red)
      (treatment p282 glazed)
      (available p283)
      (wood p283 cherry)
      (treatment p283 varnished)
      (available p284)
      (colour p284 green)
      (wood p284 mahogany)
      (available p285)
      (surface-condition p285 verysmooth)
      (treatment p285 varnished)
      (available p286)
      (colour p286 red)
      (wood p286 beech)
      (surface-condition p286 smooth)
      (treatment p286 glazed)
      (available p287)
      (colour p287 green)
      (wood p287 walnut)
      (available p288)
      (colour p288 black)
      (wood p288 mahogany)
      (surface-condition p288 smooth)
      (treatment p288 glazed)
      (available p289)
      (colour p289 white)
      (wood p289 teak)
      (surface-condition p289 verysmooth)
      (treatment p289 varnished)
    )
  )
  
)
