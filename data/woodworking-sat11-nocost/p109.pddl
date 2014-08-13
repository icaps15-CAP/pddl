; woodworking task with 296 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 502196

(define (problem wood-prob-sat-109)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green mauve red white blue black - acolour
    mahogany oak cherry beech walnut pine teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 p278 p279 p280 p281 p282 p283 p284 p285 p286 p287 p288 p289 p290 p291 p292 p293 p294 p295 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 black)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 mauve)
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
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 black)
    (wood p1 beech)
    (surface-condition p1 rough)
    (treatment p1 varnished)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 natural)
    (wood p4 cherry)
    (surface-condition p4 verysmooth)
    (treatment p4 glazed)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (available p8)
    (colour p8 red)
    (wood p8 teak)
    (surface-condition p8 verysmooth)
    (treatment p8 colourfragments)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 green)
    (wood p11 beech)
    (surface-condition p11 verysmooth)
    (treatment p11 varnished)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 blue)
    (wood p17 beech)
    (surface-condition p17 smooth)
    (treatment p17 glazed)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (available p23)
    (colour p23 natural)
    (wood p23 walnut)
    (surface-condition p23 smooth)
    (treatment p23 glazed)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 green)
    (wood p24 oak)
    (surface-condition p24 smooth)
    (treatment p24 varnished)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 white)
    (wood p28 cherry)
    (surface-condition p28 verysmooth)
    (treatment p28 glazed)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 white)
    (wood p29 beech)
    (surface-condition p29 rough)
    (treatment p29 varnished)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (available p38)
    (colour p38 black)
    (wood p38 mahogany)
    (surface-condition p38 rough)
    (treatment p38 colourfragments)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (available p40)
    (colour p40 mauve)
    (wood p40 walnut)
    (surface-condition p40 verysmooth)
    (treatment p40 colourfragments)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (available p42)
    (colour p42 red)
    (wood p42 pine)
    (surface-condition p42 smooth)
    (treatment p42 glazed)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (available p47)
    (colour p47 blue)
    (wood p47 teak)
    (surface-condition p47 smooth)
    (treatment p47 varnished)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (available p59)
    (colour p59 mauve)
    (wood p59 teak)
    (surface-condition p59 verysmooth)
    (treatment p59 glazed)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (available p65)
    (colour p65 green)
    (wood p65 cherry)
    (surface-condition p65 rough)
    (treatment p65 glazed)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (available p74)
    (colour p74 mauve)
    (wood p74 oak)
    (surface-condition p74 smooth)
    (treatment p74 colourfragments)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (available p82)
    (colour p82 mauve)
    (wood p82 walnut)
    (surface-condition p82 verysmooth)
    (treatment p82 colourfragments)
    (goalsize p82 medium)
    
    
    
    
    (available p83)
    (colour p83 red)
    (wood p83 walnut)
    (surface-condition p83 rough)
    (treatment p83 colourfragments)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (available p86)
    (colour p86 natural)
    (wood p86 mahogany)
    (surface-condition p86 verysmooth)
    (treatment p86 varnished)
    (goalsize p86 small)
    
    
    
    
    (available p87)
    (colour p87 white)
    (wood p87 teak)
    (surface-condition p87 smooth)
    (treatment p87 glazed)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (available p90)
    (colour p90 green)
    (wood p90 oak)
    (surface-condition p90 rough)
    (treatment p90 colourfragments)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (available p92)
    (colour p92 red)
    (wood p92 teak)
    (surface-condition p92 verysmooth)
    (treatment p92 colourfragments)
    (goalsize p92 large)
    
    
    
    
    (available p93)
    (colour p93 blue)
    (wood p93 mahogany)
    (surface-condition p93 smooth)
    (treatment p93 colourfragments)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (available p96)
    (colour p96 black)
    (wood p96 pine)
    (surface-condition p96 rough)
    (treatment p96 varnished)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (available p102)
    (colour p102 white)
    (wood p102 beech)
    (surface-condition p102 smooth)
    (treatment p102 colourfragments)
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
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (available p111)
    (colour p111 red)
    (wood p111 mahogany)
    (surface-condition p111 verysmooth)
    (treatment p111 glazed)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (available p120)
    (colour p120 natural)
    (wood p120 beech)
    (surface-condition p120 verysmooth)
    (treatment p120 colourfragments)
    (goalsize p120 large)
    
    
    
    
    (available p121)
    (colour p121 black)
    (wood p121 cherry)
    (surface-condition p121 rough)
    (treatment p121 varnished)
    (goalsize p121 large)
    
    
    
    
    (available p122)
    (colour p122 blue)
    (wood p122 pine)
    (surface-condition p122 verysmooth)
    (treatment p122 glazed)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (available p126)
    (colour p126 green)
    (wood p126 beech)
    (surface-condition p126 verysmooth)
    (treatment p126 glazed)
    (goalsize p126 medium)
    
    
    
    
    (available p127)
    (colour p127 black)
    (wood p127 teak)
    (surface-condition p127 verysmooth)
    (treatment p127 varnished)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (available p138)
    (colour p138 green)
    (wood p138 teak)
    (surface-condition p138 rough)
    (treatment p138 varnished)
    (goalsize p138 medium)
    
    
    
    
    (available p139)
    (colour p139 natural)
    (wood p139 beech)
    (surface-condition p139 verysmooth)
    (treatment p139 colourfragments)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (available p142)
    (colour p142 white)
    (wood p142 pine)
    (surface-condition p142 rough)
    (treatment p142 colourfragments)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (available p154)
    (colour p154 red)
    (wood p154 teak)
    (surface-condition p154 verysmooth)
    (treatment p154 glazed)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (available p156)
    (colour p156 blue)
    (wood p156 walnut)
    (surface-condition p156 verysmooth)
    (treatment p156 colourfragments)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (available p160)
    (colour p160 natural)
    (wood p160 pine)
    (surface-condition p160 verysmooth)
    (treatment p160 colourfragments)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (available p174)
    (colour p174 mauve)
    (wood p174 pine)
    (surface-condition p174 smooth)
    (treatment p174 colourfragments)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (available p176)
    (colour p176 red)
    (wood p176 beech)
    (surface-condition p176 smooth)
    (treatment p176 varnished)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (available p179)
    (colour p179 green)
    (wood p179 oak)
    (surface-condition p179 rough)
    (treatment p179 glazed)
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 large)
    
    
    
    
    (unused p182)
    (goalsize p182 large)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 small)
    
    
    
    
    (unused p185)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (unused p191)
    (goalsize p191 large)
    
    
    
    
    (available p192)
    (colour p192 blue)
    (wood p192 mahogany)
    (surface-condition p192 verysmooth)
    (treatment p192 glazed)
    (goalsize p192 medium)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
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
    (goalsize p201 large)
    
    
    
    
    (available p202)
    (colour p202 mauve)
    (wood p202 beech)
    (surface-condition p202 verysmooth)
    (treatment p202 glazed)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
    (available p204)
    (colour p204 red)
    (wood p204 oak)
    (surface-condition p204 smooth)
    (treatment p204 varnished)
    (goalsize p204 small)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (available p207)
    (colour p207 green)
    (wood p207 mahogany)
    (surface-condition p207 verysmooth)
    (treatment p207 colourfragments)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (available p209)
    (colour p209 blue)
    (wood p209 mahogany)
    (surface-condition p209 smooth)
    (treatment p209 colourfragments)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 medium)
    
    
    
    
    (unused p214)
    (goalsize p214 large)
    
    
    
    
    (available p215)
    (colour p215 white)
    (wood p215 mahogany)
    (surface-condition p215 smooth)
    (treatment p215 colourfragments)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 small)
    
    
    
    
    (available p218)
    (colour p218 black)
    (wood p218 oak)
    (surface-condition p218 verysmooth)
    (treatment p218 glazed)
    (goalsize p218 small)
    
    
    
    
    (unused p219)
    (goalsize p219 large)
    
    
    
    
    (unused p220)
    (goalsize p220 small)
    
    
    
    
    (unused p221)
    (goalsize p221 large)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (available p224)
    (colour p224 black)
    (wood p224 teak)
    (surface-condition p224 verysmooth)
    (treatment p224 colourfragments)
    (goalsize p224 large)
    
    
    
    
    (unused p225)
    (goalsize p225 small)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (unused p227)
    (goalsize p227 large)
    
    
    
    
    (available p228)
    (colour p228 white)
    (wood p228 cherry)
    (surface-condition p228 rough)
    (treatment p228 glazed)
    (goalsize p228 large)
    
    
    
    
    (unused p229)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 small)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (available p232)
    (colour p232 mauve)
    (wood p232 mahogany)
    (surface-condition p232 rough)
    (treatment p232 varnished)
    (goalsize p232 large)
    
    
    
    
    (unused p233)
    (goalsize p233 large)
    
    
    
    
    (available p234)
    (colour p234 red)
    (wood p234 teak)
    (surface-condition p234 rough)
    (treatment p234 glazed)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 medium)
    
    
    
    
    (available p236)
    (colour p236 mauve)
    (wood p236 beech)
    (surface-condition p236 verysmooth)
    (treatment p236 varnished)
    (goalsize p236 medium)
    
    
    
    
    (unused p237)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (available p239)
    (colour p239 natural)
    (wood p239 beech)
    (surface-condition p239 smooth)
    (treatment p239 glazed)
    (goalsize p239 small)
    
    
    
    
    (unused p240)
    (goalsize p240 medium)
    
    
    
    
    (available p241)
    (colour p241 white)
    (wood p241 walnut)
    (surface-condition p241 verysmooth)
    (treatment p241 glazed)
    (goalsize p241 small)
    
    
    
    
    (available p242)
    (colour p242 green)
    (wood p242 cherry)
    (surface-condition p242 smooth)
    (treatment p242 colourfragments)
    (goalsize p242 large)
    
    
    
    
    (unused p243)
    (goalsize p243 medium)
    
    
    
    
    (unused p244)
    (goalsize p244 large)
    
    
    
    
    (available p245)
    (colour p245 black)
    (wood p245 beech)
    (surface-condition p245 smooth)
    (treatment p245 glazed)
    (goalsize p245 medium)
    
    
    
    
    (unused p246)
    (goalsize p246 small)
    
    
    
    
    (unused p247)
    (goalsize p247 medium)
    
    
    
    
    (unused p248)
    (goalsize p248 small)
    
    
    
    
    (unused p249)
    (goalsize p249 small)
    
    
    
    
    (unused p250)
    (goalsize p250 small)
    
    
    
    
    (available p251)
    (colour p251 natural)
    (wood p251 cherry)
    (surface-condition p251 rough)
    (treatment p251 colourfragments)
    (goalsize p251 large)
    
    
    
    
    (unused p252)
    (goalsize p252 large)
    
    
    
    
    (unused p253)
    (goalsize p253 small)
    
    
    
    
    (unused p254)
    (goalsize p254 small)
    
    
    
    
    (unused p255)
    (goalsize p255 large)
    
    
    
    
    (unused p256)
    (goalsize p256 small)
    
    
    
    
    (unused p257)
    (goalsize p257 small)
    
    
    
    
    (unused p258)
    (goalsize p258 medium)
    
    
    
    
    (available p259)
    (colour p259 green)
    (wood p259 pine)
    (surface-condition p259 smooth)
    (treatment p259 colourfragments)
    (goalsize p259 large)
    
    
    
    
    (unused p260)
    (goalsize p260 medium)
    
    
    
    
    (unused p261)
    (goalsize p261 medium)
    
    
    
    
    (unused p262)
    (goalsize p262 small)
    
    
    
    
    (unused p263)
    (goalsize p263 medium)
    
    
    
    
    (unused p264)
    (goalsize p264 small)
    
    
    
    
    (unused p265)
    (goalsize p265 small)
    
    
    
    
    (unused p266)
    (goalsize p266 small)
    
    
    
    
    (unused p267)
    (goalsize p267 medium)
    
    
    
    
    (unused p268)
    (goalsize p268 small)
    
    
    
    
    (unused p269)
    (goalsize p269 small)
    
    
    
    
    (unused p270)
    (goalsize p270 small)
    
    
    
    
    (unused p271)
    (goalsize p271 small)
    
    
    
    
    (unused p272)
    (goalsize p272 small)
    
    
    
    
    (unused p273)
    (goalsize p273 small)
    
    
    
    
    (available p274)
    (colour p274 white)
    (wood p274 oak)
    (surface-condition p274 verysmooth)
    (treatment p274 glazed)
    (goalsize p274 medium)
    
    
    
    
    (unused p275)
    (goalsize p275 small)
    
    
    
    
    (unused p276)
    (goalsize p276 medium)
    
    
    
    
    (available p277)
    (colour p277 white)
    (wood p277 beech)
    (surface-condition p277 smooth)
    (treatment p277 glazed)
    (goalsize p277 small)
    
    
    
    
    (unused p278)
    (goalsize p278 small)
    
    
    
    
    (unused p279)
    (goalsize p279 medium)
    
    
    
    
    (available p280)
    (colour p280 green)
    (wood p280 beech)
    (surface-condition p280 smooth)
    (treatment p280 colourfragments)
    (goalsize p280 small)
    
    
    
    
    (unused p281)
    (goalsize p281 medium)
    
    
    
    
    (unused p282)
    (goalsize p282 medium)
    
    
    
    
    (available p283)
    (colour p283 natural)
    (wood p283 mahogany)
    (surface-condition p283 rough)
    (treatment p283 varnished)
    (goalsize p283 medium)
    
    
    
    
    (unused p284)
    (goalsize p284 small)
    
    
    
    
    (available p285)
    (colour p285 mauve)
    (wood p285 mahogany)
    (surface-condition p285 smooth)
    (treatment p285 glazed)
    (goalsize p285 small)
    
    
    
    
    (unused p286)
    (goalsize p286 small)
    
    
    
    
    (unused p287)
    (goalsize p287 large)
    
    
    
    
    (available p288)
    (colour p288 blue)
    (wood p288 walnut)
    (surface-condition p288 verysmooth)
    (treatment p288 colourfragments)
    (goalsize p288 small)
    
    
    
    
    (unused p289)
    (goalsize p289 small)
    
    
    
    
    (unused p290)
    (goalsize p290 large)
    
    
    
    
    (unused p291)
    (goalsize p291 small)
    
    
    
    
    (unused p292)
    (goalsize p292 medium)
    
    
    
    
    (unused p293)
    (goalsize p293 small)
    
    
    
    
    (available p294)
    (colour p294 mauve)
    (wood p294 beech)
    (surface-condition p294 verysmooth)
    (treatment p294 varnished)
    (goalsize p294 small)
    
    
    
    
    (unused p295)
    (goalsize p295 medium)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s6)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
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
    (boardsize b10 s8)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s1)
    (wood b11 cherry)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s7)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s8)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s6)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s6)
    (wood b19 mahogany)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s4)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s7)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s10)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s6)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s4)
    (wood b24 oak)
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
    (boardsize b27 s6)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s7)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 pine)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s7)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s8)
    (wood b32 pine)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s10)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s9)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s9)
    (wood b36 pine)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s8)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s11)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s4)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s7)
    (wood b40 walnut)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s7)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s7)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s5)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s9)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s8)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s10)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s8)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s7)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s7)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s10)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s8)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 teak)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s8)
    (wood b53 teak)
    (surface-condition b53 smooth)
    (available b53)
    (boardsize b54 s8)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s7)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s8)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s8)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s9)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s9)
    (wood b59 beech)
    (surface-condition b59 smooth)
    (available b59)
    (boardsize b60 s8)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s9)
    (wood b61 beech)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s7)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s9)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s8)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s7)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s4)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s9)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s12)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s8)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s8)
    (wood b70 beech)
    (surface-condition b70 smooth)
    (available b70)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (wood p0 teak)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 beech)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 mauve)
      (wood p2 teak)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 mauve)
      (surface-condition p3 verysmooth)
      (available p4)
      (colour p4 mauve)
      (wood p4 cherry)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (wood p5 beech)
      (treatment p5 glazed)
      (available p6)
      (colour p6 green)
      (surface-condition p6 smooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 mauve)
      (wood p7 pine)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 black)
      (wood p8 teak)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 mauve)
      (wood p9 walnut)
      (available p10)
      (colour p10 red)
      (wood p10 beech)
      (available p11)
      (colour p11 black)
      (wood p11 beech)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 blue)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 blue)
      (wood p13 cherry)
      (available p14)
      (colour p14 mauve)
      (wood p14 teak)
      (treatment p14 glazed)
      (available p15)
      (colour p15 black)
      (treatment p15 glazed)
      (available p16)
      (colour p16 green)
      (wood p16 mahogany)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 mauve)
      (wood p17 beech)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 natural)
      (wood p18 oak)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 black)
      (wood p19 oak)
      (available p20)
      (wood p20 teak)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 mauve)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 red)
      (wood p22 beech)
      (available p23)
      (colour p23 white)
      (surface-condition p23 smooth)
      (available p24)
      (colour p24 red)
      (surface-condition p24 smooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 green)
      (wood p25 mahogany)
      (surface-condition p25 smooth)
      (available p26)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 natural)
      (wood p27 teak)
      (surface-condition p27 verysmooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 mauve)
      (wood p28 cherry)
      (available p29)
      (colour p29 blue)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 white)
      (surface-condition p30 verysmooth)
      (available p31)
      (colour p31 natural)
      (treatment p31 glazed)
      (available p32)
      (colour p32 natural)
      (wood p32 oak)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (surface-condition p33 smooth)
      (treatment p33 glazed)
      (available p34)
      (wood p34 pine)
      (surface-condition p34 smooth)
      (available p35)
      (colour p35 green)
      (treatment p35 varnished)
      (available p36)
      (wood p36 cherry)
      (treatment p36 varnished)
      (available p37)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (wood p38 mahogany)
      (treatment p38 varnished)
      (available p39)
      (colour p39 white)
      (surface-condition p39 smooth)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (wood p42 pine)
      (treatment p42 varnished)
      (available p43)
      (wood p43 beech)
      (surface-condition p43 verysmooth)
      (available p44)
      (wood p44 beech)
      (treatment p44 varnished)
      (available p45)
      (colour p45 natural)
      (wood p45 walnut)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 natural)
      (wood p46 teak)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 natural)
      (treatment p47 glazed)
      (available p48)
      (colour p48 blue)
      (wood p48 walnut)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 black)
      (wood p49 walnut)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (wood p50 oak)
      (surface-condition p50 smooth)
      (treatment p50 varnished)
      (available p51)
      (wood p51 mahogany)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 red)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (wood p53 mahogany)
      (treatment p53 glazed)
      (available p54)
      (wood p54 oak)
      (treatment p54 glazed)
      (available p55)
      (colour p55 blue)
      (treatment p55 glazed)
      (available p56)
      (colour p56 black)
      (wood p56 mahogany)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 blue)
      (wood p57 mahogany)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 green)
      (wood p58 pine)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 red)
      (treatment p59 glazed)
      (available p60)
      (wood p60 pine)
      (treatment p60 glazed)
      (available p61)
      (colour p61 black)
      (wood p61 cherry)
      (surface-condition p61 smooth)
      (available p62)
      (colour p62 natural)
      (surface-condition p62 smooth)
      (available p63)
      (wood p63 walnut)
      (surface-condition p63 smooth)
      (treatment p63 glazed)
      (available p64)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 natural)
      (wood p65 cherry)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 blue)
      (treatment p66 varnished)
      (available p67)
      (colour p67 red)
      (wood p67 cherry)
      (treatment p67 glazed)
      (available p68)
      (colour p68 natural)
      (surface-condition p68 smooth)
      (available p69)
      (surface-condition p69 smooth)
      (treatment p69 glazed)
      (available p70)
      (wood p70 oak)
      (treatment p70 varnished)
      (available p71)
      (wood p71 pine)
      (surface-condition p71 verysmooth)
      (available p72)
      (wood p72 pine)
      (treatment p72 varnished)
      (available p73)
      (colour p73 mauve)
      (surface-condition p73 verysmooth)
      (available p74)
      (wood p74 oak)
      (treatment p74 varnished)
      (available p75)
      (colour p75 natural)
      (treatment p75 glazed)
      (available p76)
      (colour p76 red)
      (surface-condition p76 verysmooth)
      (treatment p76 glazed)
      (available p77)
      (wood p77 teak)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (wood p78 pine)
      (surface-condition p78 smooth)
      (available p79)
      (wood p79 cherry)
      (treatment p79 varnished)
      (available p80)
      (wood p80 mahogany)
      (surface-condition p80 smooth)
      (available p81)
      (colour p81 red)
      (wood p81 oak)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (colour p82 blue)
      (wood p82 walnut)
      (surface-condition p82 smooth)
      (available p83)
      (colour p83 black)
      (treatment p83 varnished)
      (available p84)
      (colour p84 red)
      (surface-condition p84 smooth)
      (available p85)
      (colour p85 white)
      (wood p85 beech)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 green)
      (wood p86 mahogany)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 natural)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 green)
      (wood p88 beech)
      (surface-condition p88 verysmooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 red)
      (wood p89 walnut)
      (surface-condition p89 smooth)
      (treatment p89 glazed)
      (available p90)
      (surface-condition p90 verysmooth)
      (treatment p90 glazed)
      (available p91)
      (wood p91 beech)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 natural)
      (surface-condition p92 verysmooth)
      (available p93)
      (colour p93 black)
      (surface-condition p93 verysmooth)
      (available p94)
      (colour p94 mauve)
      (wood p94 walnut)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (wood p95 teak)
      (surface-condition p95 verysmooth)
      (available p96)
      (colour p96 white)
      (wood p96 pine)
      (available p97)
      (colour p97 mauve)
      (treatment p97 glazed)
      (available p98)
      (surface-condition p98 smooth)
      (treatment p98 glazed)
      (available p99)
      (colour p99 red)
      (wood p99 pine)
      (surface-condition p99 smooth)
      (treatment p99 varnished)
      (available p100)
      (wood p100 oak)
      (surface-condition p100 smooth)
      (available p101)
      (colour p101 mauve)
      (wood p101 beech)
      (available p102)
      (colour p102 red)
      (wood p102 beech)
      (available p103)
      (colour p103 mauve)
      (wood p103 beech)
      (surface-condition p103 smooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 mauve)
      (surface-condition p104 verysmooth)
      (treatment p104 glazed)
      (available p105)
      (colour p105 red)
      (wood p105 pine)
      (treatment p105 varnished)
      (available p106)
      (colour p106 blue)
      (wood p106 walnut)
      (surface-condition p106 smooth)
      (available p107)
      (wood p107 teak)
      (surface-condition p107 verysmooth)
      (treatment p107 varnished)
      (available p108)
      (colour p108 black)
      (treatment p108 glazed)
      (available p109)
      (colour p109 white)
      (surface-condition p109 verysmooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 red)
      (wood p110 mahogany)
      (surface-condition p110 verysmooth)
      (available p111)
      (colour p111 mauve)
      (wood p111 mahogany)
      (surface-condition p111 verysmooth)
      (treatment p111 varnished)
      (available p112)
      (colour p112 blue)
      (wood p112 cherry)
      (available p113)
      (colour p113 green)
      (wood p113 pine)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 green)
      (wood p114 cherry)
      (available p115)
      (colour p115 blue)
      (wood p115 teak)
      (treatment p115 glazed)
      (available p116)
      (surface-condition p116 verysmooth)
      (treatment p116 glazed)
      (available p117)
      (colour p117 mauve)
      (treatment p117 glazed)
      (available p118)
      (wood p118 walnut)
      (treatment p118 varnished)
      (available p119)
      (colour p119 natural)
      (wood p119 oak)
      (surface-condition p119 smooth)
      (treatment p119 varnished)
      (available p120)
      (wood p120 beech)
      (surface-condition p120 verysmooth)
      (treatment p120 glazed)
      (available p121)
      (colour p121 red)
      (wood p121 cherry)
      (surface-condition p121 smooth)
      (treatment p121 glazed)
      (available p122)
      (wood p122 pine)
      (treatment p122 varnished)
      (available p123)
      (colour p123 blue)
      (wood p123 pine)
      (treatment p123 varnished)
      (available p124)
      (wood p124 mahogany)
      (surface-condition p124 smooth)
      (available p125)
      (colour p125 green)
      (surface-condition p125 smooth)
      (available p126)
      (colour p126 blue)
      (wood p126 beech)
      (available p127)
      (surface-condition p127 smooth)
      (treatment p127 glazed)
      (available p128)
      (colour p128 white)
      (wood p128 walnut)
      (surface-condition p128 verysmooth)
      (treatment p128 varnished)
      (available p129)
      (colour p129 blue)
      (surface-condition p129 verysmooth)
      (treatment p129 glazed)
      (available p130)
      (colour p130 black)
      (treatment p130 glazed)
      (available p131)
      (colour p131 blue)
      (wood p131 mahogany)
      (available p132)
      (colour p132 blue)
      (wood p132 beech)
      (surface-condition p132 verysmooth)
      (treatment p132 glazed)
      (available p133)
      (wood p133 teak)
      (surface-condition p133 verysmooth)
      (treatment p133 varnished)
      (available p134)
      (wood p134 pine)
      (surface-condition p134 verysmooth)
      (available p135)
      (colour p135 white)
      (surface-condition p135 smooth)
      (available p136)
      (colour p136 black)
      (wood p136 teak)
      (surface-condition p136 smooth)
      (available p137)
      (colour p137 red)
      (wood p137 cherry)
      (surface-condition p137 smooth)
      (treatment p137 glazed)
      (available p138)
      (wood p138 teak)
      (surface-condition p138 verysmooth)
      (treatment p138 glazed)
      (available p139)
      (colour p139 mauve)
      (wood p139 beech)
      (surface-condition p139 smooth)
      (treatment p139 glazed)
      (available p140)
      (wood p140 cherry)
      (treatment p140 varnished)
      (available p141)
      (surface-condition p141 verysmooth)
      (treatment p141 glazed)
      (available p142)
      (wood p142 pine)
      (treatment p142 glazed)
      (available p143)
      (colour p143 black)
      (wood p143 pine)
      (available p144)
      (wood p144 oak)
      (treatment p144 glazed)
      (available p145)
      (colour p145 natural)
      (wood p145 pine)
      (available p146)
      (colour p146 black)
      (wood p146 oak)
      (surface-condition p146 verysmooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 blue)
      (treatment p147 glazed)
      (available p148)
      (colour p148 green)
      (treatment p148 varnished)
      (available p149)
      (colour p149 natural)
      (surface-condition p149 smooth)
      (available p150)
      (colour p150 blue)
      (surface-condition p150 smooth)
      (available p151)
      (colour p151 white)
      (wood p151 walnut)
      (surface-condition p151 smooth)
      (treatment p151 varnished)
      (available p152)
      (colour p152 blue)
      (treatment p152 glazed)
      (available p153)
      (colour p153 natural)
      (surface-condition p153 smooth)
      (available p154)
      (wood p154 teak)
      (surface-condition p154 smooth)
      (available p155)
      (wood p155 cherry)
      (surface-condition p155 verysmooth)
      (treatment p155 glazed)
      (available p156)
      (colour p156 red)
      (surface-condition p156 smooth)
      (treatment p156 varnished)
      (available p157)
      (colour p157 green)
      (wood p157 oak)
      (surface-condition p157 verysmooth)
      (treatment p157 varnished)
      (available p158)
      (wood p158 cherry)
      (treatment p158 glazed)
      (available p159)
      (colour p159 red)
      (treatment p159 glazed)
      (available p160)
      (wood p160 pine)
      (treatment p160 varnished)
      (available p161)
      (colour p161 red)
      (wood p161 cherry)
      (surface-condition p161 verysmooth)
      (treatment p161 varnished)
      (available p162)
      (colour p162 mauve)
      (wood p162 oak)
      (treatment p162 varnished)
      (available p163)
      (colour p163 black)
      (wood p163 teak)
      (surface-condition p163 verysmooth)
      (available p164)
      (colour p164 green)
      (wood p164 walnut)
      (available p165)
      (colour p165 natural)
      (wood p165 oak)
      (surface-condition p165 smooth)
      (treatment p165 glazed)
      (available p166)
      (colour p166 red)
      (wood p166 cherry)
      (treatment p166 varnished)
      (available p167)
      (colour p167 red)
      (wood p167 pine)
      (surface-condition p167 verysmooth)
      (treatment p167 glazed)
      (available p168)
      (wood p168 beech)
      (surface-condition p168 verysmooth)
      (available p169)
      (wood p169 mahogany)
      (treatment p169 glazed)
      (available p170)
      (colour p170 black)
      (surface-condition p170 verysmooth)
      (available p171)
      (wood p171 pine)
      (treatment p171 glazed)
      (available p172)
      (colour p172 blue)
      (wood p172 cherry)
      (surface-condition p172 smooth)
      (treatment p172 varnished)
      (available p173)
      (colour p173 black)
      (wood p173 walnut)
      (surface-condition p173 verysmooth)
      (treatment p173 varnished)
      (available p174)
      (colour p174 red)
      (treatment p174 glazed)
      (available p175)
      (wood p175 oak)
      (treatment p175 varnished)
      (available p176)
      (colour p176 black)
      (wood p176 beech)
      (surface-condition p176 smooth)
      (treatment p176 varnished)
      (available p177)
      (colour p177 red)
      (treatment p177 varnished)
      (available p178)
      (colour p178 natural)
      (treatment p178 glazed)
      (available p179)
      (colour p179 mauve)
      (surface-condition p179 verysmooth)
      (available p180)
      (colour p180 mauve)
      (wood p180 cherry)
      (surface-condition p180 verysmooth)
      (treatment p180 glazed)
      (available p181)
      (colour p181 red)
      (wood p181 mahogany)
      (available p182)
      (colour p182 red)
      (surface-condition p182 verysmooth)
      (treatment p182 varnished)
      (available p183)
      (surface-condition p183 smooth)
      (treatment p183 glazed)
      (available p184)
      (colour p184 red)
      (wood p184 walnut)
      (surface-condition p184 smooth)
      (treatment p184 glazed)
      (available p185)
      (colour p185 blue)
      (surface-condition p185 verysmooth)
      (treatment p185 varnished)
      (available p186)
      (colour p186 red)
      (wood p186 pine)
      (surface-condition p186 smooth)
      (treatment p186 varnished)
      (available p187)
      (colour p187 blue)
      (wood p187 mahogany)
      (surface-condition p187 verysmooth)
      (treatment p187 glazed)
      (available p188)
      (colour p188 black)
      (treatment p188 glazed)
      (available p189)
      (colour p189 white)
      (surface-condition p189 verysmooth)
      (available p190)
      (colour p190 blue)
      (surface-condition p190 verysmooth)
      (available p191)
      (colour p191 green)
      (wood p191 beech)
      (available p192)
      (colour p192 white)
      (wood p192 mahogany)
      (surface-condition p192 smooth)
      (treatment p192 glazed)
      (available p193)
      (colour p193 blue)
      (wood p193 walnut)
      (surface-condition p193 smooth)
      (available p194)
      (colour p194 green)
      (surface-condition p194 verysmooth)
      (available p195)
      (colour p195 white)
      (wood p195 mahogany)
      (available p196)
      (colour p196 mauve)
      (surface-condition p196 smooth)
      (treatment p196 glazed)
      (available p197)
      (wood p197 pine)
      (treatment p197 varnished)
      (available p198)
      (colour p198 blue)
      (surface-condition p198 verysmooth)
      (treatment p198 varnished)
      (available p199)
      (colour p199 white)
      (treatment p199 glazed)
      (available p200)
      (colour p200 natural)
      (wood p200 teak)
      (surface-condition p200 verysmooth)
      (treatment p200 varnished)
      (available p201)
      (colour p201 blue)
      (treatment p201 varnished)
      (available p202)
      (colour p202 white)
      (treatment p202 glazed)
      (available p203)
      (wood p203 cherry)
      (treatment p203 glazed)
      (available p204)
      (colour p204 green)
      (wood p204 oak)
      (surface-condition p204 verysmooth)
      (treatment p204 glazed)
      (available p205)
      (colour p205 green)
      (treatment p205 glazed)
      (available p206)
      (colour p206 black)
      (surface-condition p206 smooth)
      (available p207)
      (colour p207 red)
      (wood p207 mahogany)
      (treatment p207 glazed)
      (available p208)
      (colour p208 black)
      (wood p208 teak)
      (surface-condition p208 verysmooth)
      (available p209)
      (colour p209 natural)
      (wood p209 mahogany)
      (surface-condition p209 smooth)
      (treatment p209 varnished)
      (available p210)
      (colour p210 white)
      (wood p210 pine)
      (surface-condition p210 verysmooth)
      (treatment p210 varnished)
      (available p211)
      (colour p211 black)
      (surface-condition p211 verysmooth)
      (available p212)
      (colour p212 natural)
      (treatment p212 glazed)
      (available p213)
      (surface-condition p213 smooth)
      (treatment p213 varnished)
      (available p214)
      (wood p214 beech)
      (treatment p214 glazed)
      (available p215)
      (colour p215 mauve)
      (wood p215 mahogany)
      (available p216)
      (colour p216 green)
      (wood p216 beech)
      (available p217)
      (wood p217 beech)
      (treatment p217 glazed)
      (available p218)
      (colour p218 mauve)
      (wood p218 oak)
      (treatment p218 varnished)
      (available p219)
      (colour p219 green)
      (wood p219 beech)
      (surface-condition p219 verysmooth)
      (treatment p219 varnished)
      (available p220)
      (surface-condition p220 smooth)
      (treatment p220 glazed)
      (available p221)
      (colour p221 green)
      (surface-condition p221 verysmooth)
      (treatment p221 varnished)
      (available p222)
      (colour p222 mauve)
      (wood p222 cherry)
      (surface-condition p222 smooth)
      (treatment p222 varnished)
      (available p223)
      (colour p223 red)
      (treatment p223 varnished)
      (available p224)
      (colour p224 blue)
      (surface-condition p224 verysmooth)
      (available p225)
      (colour p225 white)
      (wood p225 teak)
      (surface-condition p225 verysmooth)
      (treatment p225 glazed)
      (available p226)
      (colour p226 natural)
      (surface-condition p226 verysmooth)
      (available p227)
      (colour p227 black)
      (wood p227 teak)
      (available p228)
      (wood p228 cherry)
      (treatment p228 varnished)
      (available p229)
      (colour p229 black)
      (wood p229 walnut)
      (surface-condition p229 smooth)
      (treatment p229 varnished)
      (available p230)
      (surface-condition p230 smooth)
      (treatment p230 glazed)
      (available p231)
      (wood p231 pine)
      (treatment p231 glazed)
      (available p232)
      (wood p232 mahogany)
      (surface-condition p232 smooth)
      (available p233)
      (colour p233 white)
      (wood p233 mahogany)
      (treatment p233 varnished)
      (available p234)
      (colour p234 blue)
      (wood p234 teak)
      (surface-condition p234 verysmooth)
      (treatment p234 varnished)
      (available p235)
      (colour p235 white)
      (wood p235 teak)
      (available p236)
      (colour p236 black)
      (wood p236 beech)
      (surface-condition p236 verysmooth)
      (available p237)
      (wood p237 walnut)
      (surface-condition p237 smooth)
      (available p238)
      (colour p238 red)
      (surface-condition p238 verysmooth)
      (treatment p238 varnished)
      (available p239)
      (colour p239 green)
      (wood p239 beech)
      (available p240)
      (colour p240 black)
      (wood p240 teak)
      (surface-condition p240 smooth)
      (treatment p240 varnished)
      (available p241)
      (colour p241 blue)
      (treatment p241 varnished)
      (available p242)
      (wood p242 cherry)
      (surface-condition p242 smooth)
      (treatment p242 glazed)
      (available p243)
      (colour p243 black)
      (wood p243 beech)
      (surface-condition p243 verysmooth)
      (treatment p243 varnished)
      (available p244)
      (colour p244 mauve)
      (wood p244 beech)
      (treatment p244 varnished)
      (available p245)
      (colour p245 white)
      (wood p245 beech)
      (surface-condition p245 verysmooth)
      (treatment p245 varnished)
      (available p246)
      (surface-condition p246 smooth)
      (treatment p246 glazed)
      (available p247)
      (wood p247 teak)
      (treatment p247 varnished)
      (available p248)
      (colour p248 white)
      (wood p248 mahogany)
      (available p249)
      (colour p249 red)
      (wood p249 beech)
      (treatment p249 varnished)
      (available p250)
      (colour p250 natural)
      (wood p250 teak)
      (surface-condition p250 smooth)
      (available p251)
      (surface-condition p251 smooth)
      (treatment p251 glazed)
      (available p252)
      (surface-condition p252 smooth)
      (treatment p252 glazed)
      (available p253)
      (colour p253 black)
      (wood p253 cherry)
      (surface-condition p253 verysmooth)
      (available p254)
      (colour p254 blue)
      (wood p254 walnut)
      (surface-condition p254 smooth)
      (treatment p254 glazed)
      (available p255)
      (wood p255 teak)
      (surface-condition p255 verysmooth)
      (treatment p255 varnished)
      (available p256)
      (colour p256 red)
      (wood p256 walnut)
      (surface-condition p256 verysmooth)
      (treatment p256 glazed)
      (available p257)
      (colour p257 blue)
      (wood p257 beech)
      (surface-condition p257 verysmooth)
      (treatment p257 glazed)
      (available p258)
      (surface-condition p258 smooth)
      (treatment p258 varnished)
      (available p259)
      (colour p259 mauve)
      (treatment p259 varnished)
      (available p260)
      (wood p260 cherry)
      (treatment p260 varnished)
      (available p261)
      (wood p261 walnut)
      (treatment p261 varnished)
      (available p262)
      (colour p262 natural)
      (treatment p262 varnished)
      (available p263)
      (colour p263 mauve)
      (wood p263 beech)
      (treatment p263 varnished)
      (available p264)
      (colour p264 mauve)
      (wood p264 pine)
      (surface-condition p264 smooth)
      (treatment p264 glazed)
      (available p265)
      (colour p265 mauve)
      (treatment p265 varnished)
      (available p266)
      (wood p266 oak)
      (treatment p266 glazed)
      (available p267)
      (colour p267 green)
      (wood p267 beech)
      (surface-condition p267 smooth)
      (treatment p267 varnished)
      (available p268)
      (colour p268 red)
      (wood p268 teak)
      (surface-condition p268 verysmooth)
      (treatment p268 glazed)
      (available p269)
      (colour p269 green)
      (surface-condition p269 smooth)
      (treatment p269 varnished)
      (available p270)
      (colour p270 white)
      (surface-condition p270 verysmooth)
      (treatment p270 varnished)
      (available p271)
      (surface-condition p271 verysmooth)
      (treatment p271 varnished)
      (available p272)
      (colour p272 blue)
      (wood p272 mahogany)
      (surface-condition p272 smooth)
      (treatment p272 varnished)
      (available p273)
      (colour p273 blue)
      (wood p273 oak)
      (treatment p273 glazed)
      (available p274)
      (colour p274 mauve)
      (wood p274 oak)
      (available p275)
      (colour p275 blue)
      (wood p275 walnut)
      (surface-condition p275 verysmooth)
      (treatment p275 varnished)
      (available p276)
      (wood p276 mahogany)
      (surface-condition p276 smooth)
      (treatment p276 glazed)
      (available p277)
      (colour p277 blue)
      (treatment p277 glazed)
      (available p278)
      (colour p278 blue)
      (surface-condition p278 verysmooth)
      (available p279)
      (colour p279 natural)
      (wood p279 teak)
      (surface-condition p279 verysmooth)
      (treatment p279 glazed)
      (available p280)
      (colour p280 white)
      (treatment p280 glazed)
      (available p281)
      (wood p281 mahogany)
      (surface-condition p281 smooth)
      (available p282)
      (wood p282 cherry)
      (treatment p282 glazed)
      (available p283)
      (wood p283 mahogany)
      (surface-condition p283 smooth)
      (available p284)
      (colour p284 mauve)
      (surface-condition p284 smooth)
      (treatment p284 varnished)
      (available p285)
      (surface-condition p285 verysmooth)
      (treatment p285 glazed)
      (available p286)
      (colour p286 natural)
      (treatment p286 varnished)
      (available p287)
      (wood p287 beech)
      (surface-condition p287 smooth)
      (treatment p287 glazed)
      (available p288)
      (colour p288 white)
      (treatment p288 glazed)
      (available p289)
      (surface-condition p289 verysmooth)
      (treatment p289 varnished)
      (available p290)
      (colour p290 black)
      (treatment p290 varnished)
      (available p291)
      (colour p291 red)
      (surface-condition p291 verysmooth)
      (available p292)
      (colour p292 white)
      (surface-condition p292 smooth)
      (available p293)
      (colour p293 blue)
      (wood p293 beech)
      (surface-condition p293 verysmooth)
      (available p294)
      (wood p294 beech)
      (surface-condition p294 verysmooth)
      (treatment p294 glazed)
      (available p295)
      (colour p295 white)
      (treatment p295 glazed)
    )
  )
  
)
