; woodworking task with 281 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 616347

(define (problem wood-prob-sat-198)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve black blue red green white - acolour
    walnut cherry oak mahogany beech teak pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 p278 p279 p280 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 b75 b76 b77 b78 b79 b80 b81 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
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
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 green)
    (wood p5 mahogany)
    (surface-condition p5 rough)
    (treatment p5 glazed)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 natural)
    (wood p22 teak)
    (surface-condition p22 verysmooth)
    (treatment p22 glazed)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (available p25)
    (colour p25 natural)
    (wood p25 mahogany)
    (surface-condition p25 rough)
    (treatment p25 varnished)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
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
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 green)
    (wood p36 oak)
    (surface-condition p36 smooth)
    (treatment p36 colourfragments)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (available p46)
    (colour p46 black)
    (wood p46 cherry)
    (surface-condition p46 smooth)
    (treatment p46 varnished)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (available p48)
    (colour p48 natural)
    (wood p48 oak)
    (surface-condition p48 smooth)
    (treatment p48 varnished)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
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
    (goalsize p57 large)
    
    
    
    
    (available p58)
    (colour p58 blue)
    (wood p58 oak)
    (surface-condition p58 rough)
    (treatment p58 colourfragments)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (available p60)
    (colour p60 blue)
    (wood p60 walnut)
    (surface-condition p60 verysmooth)
    (treatment p60 glazed)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (available p64)
    (colour p64 white)
    (wood p64 oak)
    (surface-condition p64 verysmooth)
    (treatment p64 colourfragments)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 black)
    (wood p67 walnut)
    (surface-condition p67 rough)
    (treatment p67 colourfragments)
    (goalsize p67 medium)
    
    
    
    
    (available p68)
    (colour p68 white)
    (wood p68 cherry)
    (surface-condition p68 verysmooth)
    (treatment p68 varnished)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (available p75)
    (colour p75 natural)
    (wood p75 teak)
    (surface-condition p75 rough)
    (treatment p75 glazed)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (available p77)
    (colour p77 white)
    (wood p77 pine)
    (surface-condition p77 verysmooth)
    (treatment p77 colourfragments)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (available p79)
    (colour p79 blue)
    (wood p79 walnut)
    (surface-condition p79 smooth)
    (treatment p79 glazed)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (available p82)
    (colour p82 white)
    (wood p82 cherry)
    (surface-condition p82 rough)
    (treatment p82 colourfragments)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (available p84)
    (colour p84 blue)
    (wood p84 beech)
    (surface-condition p84 smooth)
    (treatment p84 glazed)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (available p87)
    (colour p87 mauve)
    (wood p87 teak)
    (surface-condition p87 verysmooth)
    (treatment p87 colourfragments)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (available p90)
    (colour p90 blue)
    (wood p90 walnut)
    (surface-condition p90 smooth)
    (treatment p90 varnished)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (available p93)
    (colour p93 white)
    (wood p93 cherry)
    (surface-condition p93 verysmooth)
    (treatment p93 varnished)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (available p97)
    (colour p97 natural)
    (wood p97 pine)
    (surface-condition p97 rough)
    (treatment p97 colourfragments)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (available p99)
    (colour p99 red)
    (wood p99 cherry)
    (surface-condition p99 rough)
    (treatment p99 varnished)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (available p109)
    (colour p109 red)
    (wood p109 oak)
    (surface-condition p109 verysmooth)
    (treatment p109 varnished)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (available p112)
    (colour p112 black)
    (wood p112 teak)
    (surface-condition p112 smooth)
    (treatment p112 glazed)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (available p118)
    (colour p118 black)
    (wood p118 mahogany)
    (surface-condition p118 verysmooth)
    (treatment p118 glazed)
    (goalsize p118 large)
    
    
    
    
    (available p119)
    (colour p119 blue)
    (wood p119 beech)
    (surface-condition p119 rough)
    (treatment p119 varnished)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (available p136)
    (colour p136 white)
    (wood p136 beech)
    (surface-condition p136 smooth)
    (treatment p136 colourfragments)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (available p139)
    (colour p139 white)
    (wood p139 mahogany)
    (surface-condition p139 rough)
    (treatment p139 glazed)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (available p142)
    (colour p142 green)
    (wood p142 walnut)
    (surface-condition p142 verysmooth)
    (treatment p142 varnished)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (available p144)
    (colour p144 black)
    (wood p144 pine)
    (surface-condition p144 smooth)
    (treatment p144 colourfragments)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (available p149)
    (colour p149 blue)
    (wood p149 teak)
    (surface-condition p149 rough)
    (treatment p149 varnished)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (available p156)
    (colour p156 natural)
    (wood p156 pine)
    (surface-condition p156 rough)
    (treatment p156 colourfragments)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (available p159)
    (colour p159 green)
    (wood p159 mahogany)
    (surface-condition p159 rough)
    (treatment p159 colourfragments)
    (goalsize p159 small)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (available p170)
    (colour p170 white)
    (wood p170 oak)
    (surface-condition p170 rough)
    (treatment p170 colourfragments)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 large)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (available p181)
    (colour p181 green)
    (wood p181 cherry)
    (surface-condition p181 rough)
    (treatment p181 colourfragments)
    (goalsize p181 large)
    
    
    
    
    (unused p182)
    (goalsize p182 large)
    
    
    
    
    (available p183)
    (colour p183 white)
    (wood p183 mahogany)
    (surface-condition p183 rough)
    (treatment p183 colourfragments)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 small)
    
    
    
    
    (unused p187)
    (goalsize p187 medium)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 medium)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (available p195)
    (colour p195 black)
    (wood p195 mahogany)
    (surface-condition p195 rough)
    (treatment p195 colourfragments)
    (goalsize p195 large)
    
    
    
    
    (available p196)
    (colour p196 mauve)
    (wood p196 teak)
    (surface-condition p196 smooth)
    (treatment p196 glazed)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 small)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (available p207)
    (colour p207 mauve)
    (wood p207 teak)
    (surface-condition p207 rough)
    (treatment p207 glazed)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 medium)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (unused p213)
    (goalsize p213 medium)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (available p216)
    (colour p216 blue)
    (wood p216 pine)
    (surface-condition p216 smooth)
    (treatment p216 colourfragments)
    (goalsize p216 small)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 medium)
    
    
    
    
    (unused p219)
    (goalsize p219 small)
    
    
    
    
    (unused p220)
    (goalsize p220 small)
    
    
    
    
    (available p221)
    (colour p221 green)
    (wood p221 teak)
    (surface-condition p221 rough)
    (treatment p221 varnished)
    (goalsize p221 large)
    
    
    
    
    (unused p222)
    (goalsize p222 large)
    
    
    
    
    (unused p223)
    (goalsize p223 large)
    
    
    
    
    (unused p224)
    (goalsize p224 small)
    
    
    
    
    (unused p225)
    (goalsize p225 medium)
    
    
    
    
    (unused p226)
    (goalsize p226 small)
    
    
    
    
    (available p227)
    (colour p227 red)
    (wood p227 oak)
    (surface-condition p227 smooth)
    (treatment p227 colourfragments)
    (goalsize p227 medium)
    
    
    
    
    (unused p228)
    (goalsize p228 medium)
    
    
    
    
    (unused p229)
    (goalsize p229 small)
    
    
    
    
    (unused p230)
    (goalsize p230 small)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (unused p232)
    (goalsize p232 small)
    
    
    
    
    (unused p233)
    (goalsize p233 medium)
    
    
    
    
    (unused p234)
    (goalsize p234 large)
    
    
    
    
    (unused p235)
    (goalsize p235 medium)
    
    
    
    
    (available p236)
    (colour p236 white)
    (wood p236 cherry)
    (surface-condition p236 smooth)
    (treatment p236 glazed)
    (goalsize p236 medium)
    
    
    
    
    (unused p237)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (available p239)
    (colour p239 white)
    (wood p239 cherry)
    (surface-condition p239 rough)
    (treatment p239 varnished)
    (goalsize p239 small)
    
    
    
    
    (available p240)
    (colour p240 white)
    (wood p240 mahogany)
    (surface-condition p240 smooth)
    (treatment p240 glazed)
    (goalsize p240 large)
    
    
    
    
    (unused p241)
    (goalsize p241 medium)
    
    
    
    
    (unused p242)
    (goalsize p242 small)
    
    
    
    
    (unused p243)
    (goalsize p243 large)
    
    
    
    
    (unused p244)
    (goalsize p244 small)
    
    
    
    
    (unused p245)
    (goalsize p245 small)
    
    
    
    
    (unused p246)
    (goalsize p246 medium)
    
    
    
    
    (available p247)
    (colour p247 mauve)
    (wood p247 beech)
    (surface-condition p247 verysmooth)
    (treatment p247 colourfragments)
    (goalsize p247 small)
    
    
    
    
    (unused p248)
    (goalsize p248 large)
    
    
    
    
    (available p249)
    (colour p249 black)
    (wood p249 mahogany)
    (surface-condition p249 rough)
    (treatment p249 varnished)
    (goalsize p249 medium)
    
    
    
    
    (available p250)
    (colour p250 blue)
    (wood p250 mahogany)
    (surface-condition p250 rough)
    (treatment p250 colourfragments)
    (goalsize p250 small)
    
    
    
    
    (unused p251)
    (goalsize p251 medium)
    
    
    
    
    (unused p252)
    (goalsize p252 medium)
    
    
    
    
    (unused p253)
    (goalsize p253 large)
    
    
    
    
    (unused p254)
    (goalsize p254 small)
    
    
    
    
    (unused p255)
    (goalsize p255 small)
    
    
    
    
    (unused p256)
    (goalsize p256 medium)
    
    
    
    
    (unused p257)
    (goalsize p257 small)
    
    
    
    
    (unused p258)
    (goalsize p258 medium)
    
    
    
    
    (available p259)
    (colour p259 red)
    (wood p259 oak)
    (surface-condition p259 smooth)
    (treatment p259 varnished)
    (goalsize p259 large)
    
    
    
    
    (available p260)
    (colour p260 mauve)
    (wood p260 oak)
    (surface-condition p260 smooth)
    (treatment p260 varnished)
    (goalsize p260 medium)
    
    
    
    
    (unused p261)
    (goalsize p261 large)
    
    
    
    
    (unused p262)
    (goalsize p262 medium)
    
    
    
    
    (unused p263)
    (goalsize p263 medium)
    
    
    
    
    (unused p264)
    (goalsize p264 small)
    
    
    
    
    (available p265)
    (colour p265 white)
    (wood p265 cherry)
    (surface-condition p265 smooth)
    (treatment p265 varnished)
    (goalsize p265 small)
    
    
    
    
    (unused p266)
    (goalsize p266 large)
    
    
    
    
    (unused p267)
    (goalsize p267 large)
    
    
    
    
    (available p268)
    (colour p268 natural)
    (wood p268 mahogany)
    (surface-condition p268 rough)
    (treatment p268 glazed)
    (goalsize p268 medium)
    
    
    
    
    (unused p269)
    (goalsize p269 medium)
    
    
    
    
    (available p270)
    (colour p270 red)
    (wood p270 oak)
    (surface-condition p270 rough)
    (treatment p270 colourfragments)
    (goalsize p270 medium)
    
    
    
    
    (unused p271)
    (goalsize p271 medium)
    
    
    
    
    (unused p272)
    (goalsize p272 small)
    
    
    
    
    (unused p273)
    (goalsize p273 large)
    
    
    
    
    (unused p274)
    (goalsize p274 large)
    
    
    
    
    (available p275)
    (colour p275 mauve)
    (wood p275 walnut)
    (surface-condition p275 smooth)
    (treatment p275 varnished)
    (goalsize p275 medium)
    
    
    
    
    (available p276)
    (colour p276 green)
    (wood p276 walnut)
    (surface-condition p276 verysmooth)
    (treatment p276 colourfragments)
    (goalsize p276 small)
    
    
    
    
    (unused p277)
    (goalsize p277 medium)
    
    
    
    
    (unused p278)
    (goalsize p278 large)
    
    
    
    
    (unused p279)
    (goalsize p279 medium)
    
    
    
    
    (unused p280)
    (goalsize p280 large)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s8)
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
    (boardsize b6 s9)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s7)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s4)
    (wood b8 cherry)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s10)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s5)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s2)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s12)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s6)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s11)
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
    (boardsize b27 s4)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s9)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s9)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s4)
    (wood b30 oak)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s5)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s12)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s10)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 pine)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s8)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s6)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s11)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s9)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s9)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s9)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s8)
    (wood b41 pine)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s5)
    (wood b42 pine)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s12)
    (wood b43 pine)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s5)
    (wood b44 pine)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s10)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s7)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s5)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s9)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s10)
    (wood b49 walnut)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s6)
    (wood b50 walnut)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s4)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s8)
    (wood b52 walnut)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s8)
    (wood b53 walnut)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s6)
    (wood b54 walnut)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s11)
    (wood b55 walnut)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s9)
    (wood b56 walnut)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s4)
    (wood b57 walnut)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s9)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s6)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s8)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s11)
    (wood b61 teak)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s7)
    (wood b62 teak)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s7)
    (wood b63 teak)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s7)
    (wood b64 teak)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s9)
    (wood b65 teak)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s5)
    (wood b66 teak)
    (surface-condition b66 smooth)
    (available b66)
    (boardsize b67 s5)
    (wood b67 teak)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s8)
    (wood b68 teak)
    (surface-condition b68 smooth)
    (available b68)
    (boardsize b69 s7)
    (wood b69 teak)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s8)
    (wood b70 teak)
    (surface-condition b70 smooth)
    (available b70)
    (boardsize b71 s6)
    (wood b71 beech)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s9)
    (wood b72 beech)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s8)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
    (boardsize b74 s8)
    (wood b74 beech)
    (surface-condition b74 rough)
    (available b74)
    (boardsize b75 s9)
    (wood b75 beech)
    (surface-condition b75 rough)
    (available b75)
    (boardsize b76 s11)
    (wood b76 beech)
    (surface-condition b76 rough)
    (available b76)
    (boardsize b77 s8)
    (wood b77 beech)
    (surface-condition b77 rough)
    (available b77)
    (boardsize b78 s9)
    (wood b78 beech)
    (surface-condition b78 rough)
    (available b78)
    (boardsize b79 s5)
    (wood b79 beech)
    (surface-condition b79 rough)
    (available b79)
    (boardsize b80 s10)
    (wood b80 beech)
    (surface-condition b80 rough)
    (available b80)
    (boardsize b81 s7)
    (wood b81 beech)
    (surface-condition b81 rough)
    (available b81)
  )
  (:goal
    (and
      (available p0)
      (wood p0 pine)
      (surface-condition p0 smooth)
      (available p1)
      (wood p1 beech)
      (treatment p1 varnished)
      (available p2)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 walnut)
      (treatment p3 varnished)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 blue)
      (wood p5 mahogany)
      (surface-condition p5 verysmooth)
      (available p6)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (wood p7 teak)
      (treatment p7 glazed)
      (available p8)
      (wood p8 pine)
      (treatment p8 varnished)
      (available p9)
      (wood p9 teak)
      (surface-condition p9 verysmooth)
      (available p10)
      (colour p10 green)
      (wood p10 pine)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 mauve)
      (surface-condition p11 verysmooth)
      (available p12)
      (wood p12 cherry)
      (treatment p12 glazed)
      (available p13)
      (colour p13 red)
      (wood p13 mahogany)
      (available p14)
      (wood p14 teak)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 black)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (wood p17 beech)
      (treatment p17 glazed)
      (available p18)
      (colour p18 mauve)
      (wood p18 oak)
      (available p19)
      (wood p19 pine)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 mauve)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 black)
      (wood p21 beech)
      (surface-condition p21 verysmooth)
      (available p22)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 white)
      (wood p23 oak)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (wood p24 oak)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 red)
      (treatment p25 varnished)
      (available p26)
      (wood p26 pine)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 blue)
      (treatment p27 glazed)
      (available p28)
      (colour p28 red)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 red)
      (treatment p29 varnished)
      (available p30)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 mauve)
      (wood p31 beech)
      (available p32)
      (colour p32 mauve)
      (wood p32 cherry)
      (treatment p32 glazed)
      (available p33)
      (colour p33 blue)
      (treatment p33 glazed)
      (available p34)
      (colour p34 white)
      (treatment p34 glazed)
      (available p35)
      (colour p35 green)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 red)
      (treatment p36 glazed)
      (available p37)
      (colour p37 mauve)
      (surface-condition p37 verysmooth)
      (available p38)
      (wood p38 pine)
      (treatment p38 varnished)
      (available p39)
      (colour p39 mauve)
      (surface-condition p39 verysmooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 mauve)
      (wood p40 pine)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 blue)
      (wood p41 oak)
      (treatment p41 varnished)
      (available p42)
      (colour p42 natural)
      (wood p42 teak)
      (treatment p42 varnished)
      (available p43)
      (wood p43 walnut)
      (treatment p43 varnished)
      (available p44)
      (colour p44 white)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 green)
      (wood p45 teak)
      (surface-condition p45 smooth)
      (available p46)
      (wood p46 cherry)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 white)
      (wood p47 cherry)
      (available p48)
      (colour p48 white)
      (wood p48 oak)
      (surface-condition p48 verysmooth)
      (available p49)
      (wood p49 pine)
      (surface-condition p49 smooth)
      (available p50)
      (colour p50 green)
      (treatment p50 varnished)
      (available p51)
      (wood p51 teak)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 green)
      (wood p52 pine)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 white)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 blue)
      (surface-condition p54 smooth)
      (available p55)
      (colour p55 white)
      (wood p55 beech)
      (available p56)
      (colour p56 black)
      (wood p56 oak)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 red)
      (wood p57 beech)
      (treatment p57 varnished)
      (available p58)
      (wood p58 oak)
      (treatment p58 varnished)
      (available p59)
      (colour p59 black)
      (wood p59 pine)
      (available p60)
      (colour p60 green)
      (treatment p60 varnished)
      (available p61)
      (wood p61 beech)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 black)
      (wood p62 teak)
      (treatment p62 varnished)
      (available p63)
      (wood p63 cherry)
      (treatment p63 varnished)
      (available p64)
      (wood p64 oak)
      (treatment p64 varnished)
      (available p65)
      (colour p65 black)
      (surface-condition p65 smooth)
      (available p66)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (wood p67 walnut)
      (treatment p67 varnished)
      (available p68)
      (colour p68 green)
      (treatment p68 glazed)
      (available p69)
      (colour p69 red)
      (wood p69 pine)
      (surface-condition p69 verysmooth)
      (treatment p69 varnished)
      (available p70)
      (wood p70 oak)
      (surface-condition p70 smooth)
      (available p71)
      (colour p71 black)
      (treatment p71 glazed)
      (available p72)
      (colour p72 red)
      (wood p72 teak)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 green)
      (wood p73 cherry)
      (surface-condition p73 verysmooth)
      (available p74)
      (colour p74 blue)
      (surface-condition p74 smooth)
      (available p75)
      (colour p75 black)
      (wood p75 teak)
      (surface-condition p75 smooth)
      (treatment p75 varnished)
      (available p76)
      (wood p76 mahogany)
      (treatment p76 glazed)
      (available p77)
      (colour p77 mauve)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 red)
      (wood p78 mahogany)
      (surface-condition p78 verysmooth)
      (treatment p78 varnished)
      (available p79)
      (wood p79 walnut)
      (surface-condition p79 verysmooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 natural)
      (wood p80 teak)
      (surface-condition p80 smooth)
      (treatment p80 glazed)
      (available p81)
      (colour p81 white)
      (surface-condition p81 verysmooth)
      (available p82)
      (wood p82 cherry)
      (surface-condition p82 verysmooth)
      (available p83)
      (colour p83 natural)
      (wood p83 oak)
      (surface-condition p83 verysmooth)
      (treatment p83 glazed)
      (available p84)
      (wood p84 beech)
      (surface-condition p84 verysmooth)
      (available p85)
      (colour p85 green)
      (wood p85 walnut)
      (surface-condition p85 verysmooth)
      (treatment p85 varnished)
      (available p86)
      (wood p86 oak)
      (surface-condition p86 smooth)
      (available p87)
      (surface-condition p87 verysmooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 red)
      (surface-condition p88 verysmooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 blue)
      (treatment p89 glazed)
      (available p90)
      (colour p90 black)
      (wood p90 walnut)
      (treatment p90 glazed)
      (available p91)
      (colour p91 black)
      (wood p91 oak)
      (surface-condition p91 verysmooth)
      (treatment p91 glazed)
      (available p92)
      (colour p92 green)
      (treatment p92 varnished)
      (available p93)
      (colour p93 blue)
      (wood p93 cherry)
      (available p94)
      (wood p94 walnut)
      (surface-condition p94 smooth)
      (available p95)
      (wood p95 pine)
      (surface-condition p95 verysmooth)
      (available p96)
      (wood p96 walnut)
      (surface-condition p96 verysmooth)
      (treatment p96 glazed)
      (available p97)
      (colour p97 white)
      (wood p97 pine)
      (treatment p97 glazed)
      (available p98)
      (colour p98 mauve)
      (wood p98 teak)
      (surface-condition p98 smooth)
      (treatment p98 varnished)
      (available p99)
      (wood p99 cherry)
      (surface-condition p99 smooth)
      (available p100)
      (surface-condition p100 verysmooth)
      (treatment p100 glazed)
      (available p101)
      (wood p101 teak)
      (surface-condition p101 smooth)
      (available p102)
      (colour p102 blue)
      (wood p102 pine)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 green)
      (surface-condition p103 smooth)
      (treatment p103 varnished)
      (available p104)
      (wood p104 pine)
      (treatment p104 glazed)
      (available p105)
      (colour p105 mauve)
      (wood p105 walnut)
      (surface-condition p105 smooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 black)
      (wood p106 teak)
      (surface-condition p106 verysmooth)
      (available p107)
      (wood p107 mahogany)
      (surface-condition p107 verysmooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 white)
      (treatment p108 glazed)
      (available p109)
      (wood p109 oak)
      (surface-condition p109 smooth)
      (available p110)
      (colour p110 blue)
      (wood p110 teak)
      (surface-condition p110 verysmooth)
      (available p111)
      (colour p111 red)
      (surface-condition p111 smooth)
      (treatment p111 varnished)
      (available p112)
      (colour p112 natural)
      (wood p112 teak)
      (available p113)
      (wood p113 walnut)
      (surface-condition p113 verysmooth)
      (available p114)
      (surface-condition p114 verysmooth)
      (treatment p114 glazed)
      (available p115)
      (colour p115 mauve)
      (wood p115 pine)
      (available p116)
      (colour p116 red)
      (wood p116 cherry)
      (treatment p116 glazed)
      (available p117)
      (surface-condition p117 verysmooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 mauve)
      (treatment p118 glazed)
      (available p119)
      (colour p119 white)
      (treatment p119 glazed)
      (available p120)
      (colour p120 mauve)
      (wood p120 teak)
      (surface-condition p120 verysmooth)
      (treatment p120 glazed)
      (available p121)
      (colour p121 black)
      (wood p121 walnut)
      (treatment p121 varnished)
      (available p122)
      (colour p122 mauve)
      (wood p122 walnut)
      (treatment p122 glazed)
      (available p123)
      (colour p123 mauve)
      (surface-condition p123 smooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 mauve)
      (treatment p124 varnished)
      (available p125)
      (colour p125 black)
      (treatment p125 glazed)
      (available p126)
      (surface-condition p126 smooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 blue)
      (treatment p127 glazed)
      (available p128)
      (wood p128 oak)
      (treatment p128 glazed)
      (available p129)
      (wood p129 beech)
      (surface-condition p129 smooth)
      (available p130)
      (colour p130 natural)
      (surface-condition p130 verysmooth)
      (available p131)
      (colour p131 green)
      (wood p131 walnut)
      (available p132)
      (colour p132 green)
      (wood p132 pine)
      (available p133)
      (wood p133 walnut)
      (surface-condition p133 smooth)
      (treatment p133 varnished)
      (available p134)
      (colour p134 blue)
      (surface-condition p134 verysmooth)
      (available p135)
      (wood p135 beech)
      (surface-condition p135 smooth)
      (available p136)
      (surface-condition p136 verysmooth)
      (treatment p136 glazed)
      (available p137)
      (colour p137 natural)
      (wood p137 pine)
      (available p138)
      (colour p138 green)
      (wood p138 teak)
      (available p139)
      (wood p139 mahogany)
      (treatment p139 varnished)
      (available p140)
      (colour p140 black)
      (wood p140 teak)
      (surface-condition p140 verysmooth)
      (treatment p140 glazed)
      (available p141)
      (colour p141 natural)
      (wood p141 beech)
      (treatment p141 varnished)
      (available p142)
      (colour p142 blue)
      (surface-condition p142 verysmooth)
      (available p143)
      (colour p143 natural)
      (wood p143 oak)
      (surface-condition p143 verysmooth)
      (available p144)
      (colour p144 blue)
      (wood p144 pine)
      (surface-condition p144 verysmooth)
      (treatment p144 varnished)
      (available p145)
      (colour p145 blue)
      (wood p145 walnut)
      (surface-condition p145 smooth)
      (treatment p145 glazed)
      (available p146)
      (wood p146 pine)
      (surface-condition p146 verysmooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 black)
      (wood p147 teak)
      (available p148)
      (colour p148 green)
      (wood p148 walnut)
      (surface-condition p148 smooth)
      (treatment p148 varnished)
      (available p149)
      (colour p149 green)
      (wood p149 teak)
      (surface-condition p149 verysmooth)
      (treatment p149 varnished)
      (available p150)
      (colour p150 natural)
      (surface-condition p150 smooth)
      (available p151)
      (colour p151 mauve)
      (surface-condition p151 verysmooth)
      (available p152)
      (colour p152 natural)
      (surface-condition p152 verysmooth)
      (available p153)
      (wood p153 mahogany)
      (treatment p153 varnished)
      (available p154)
      (wood p154 pine)
      (treatment p154 varnished)
      (available p155)
      (colour p155 natural)
      (surface-condition p155 verysmooth)
      (available p156)
      (surface-condition p156 verysmooth)
      (treatment p156 varnished)
      (available p157)
      (colour p157 green)
      (wood p157 pine)
      (available p158)
      (colour p158 blue)
      (surface-condition p158 verysmooth)
      (available p159)
      (colour p159 blue)
      (wood p159 mahogany)
      (available p160)
      (colour p160 blue)
      (wood p160 teak)
      (treatment p160 glazed)
      (available p161)
      (wood p161 cherry)
      (surface-condition p161 verysmooth)
      (available p162)
      (colour p162 natural)
      (wood p162 beech)
      (surface-condition p162 verysmooth)
      (treatment p162 varnished)
      (available p163)
      (colour p163 mauve)
      (wood p163 beech)
      (surface-condition p163 verysmooth)
      (treatment p163 varnished)
      (available p164)
      (surface-condition p164 verysmooth)
      (treatment p164 glazed)
      (available p165)
      (colour p165 blue)
      (wood p165 teak)
      (surface-condition p165 smooth)
      (treatment p165 varnished)
      (available p166)
      (surface-condition p166 verysmooth)
      (treatment p166 varnished)
      (available p167)
      (colour p167 red)
      (wood p167 cherry)
      (surface-condition p167 smooth)
      (treatment p167 varnished)
      (available p168)
      (wood p168 teak)
      (surface-condition p168 verysmooth)
      (available p169)
      (colour p169 red)
      (treatment p169 glazed)
      (available p170)
      (colour p170 mauve)
      (wood p170 oak)
      (surface-condition p170 verysmooth)
      (treatment p170 glazed)
      (available p171)
      (colour p171 green)
      (wood p171 pine)
      (surface-condition p171 smooth)
      (treatment p171 glazed)
      (available p172)
      (colour p172 blue)
      (wood p172 beech)
      (surface-condition p172 verysmooth)
      (treatment p172 varnished)
      (available p173)
      (colour p173 blue)
      (wood p173 beech)
      (treatment p173 varnished)
      (available p174)
      (colour p174 red)
      (wood p174 beech)
      (surface-condition p174 smooth)
      (treatment p174 varnished)
      (available p175)
      (colour p175 red)
      (treatment p175 glazed)
      (available p176)
      (colour p176 blue)
      (wood p176 oak)
      (available p177)
      (surface-condition p177 verysmooth)
      (treatment p177 varnished)
      (available p178)
      (colour p178 natural)
      (wood p178 teak)
      (available p179)
      (colour p179 mauve)
      (surface-condition p179 smooth)
      (treatment p179 varnished)
      (available p180)
      (colour p180 white)
      (wood p180 mahogany)
      (treatment p180 varnished)
      (available p181)
      (colour p181 blue)
      (wood p181 cherry)
      (surface-condition p181 verysmooth)
      (treatment p181 glazed)
      (available p182)
      (colour p182 blue)
      (treatment p182 glazed)
      (available p183)
      (colour p183 red)
      (wood p183 mahogany)
      (treatment p183 glazed)
      (available p184)
      (colour p184 blue)
      (surface-condition p184 verysmooth)
      (available p185)
      (colour p185 white)
      (surface-condition p185 smooth)
      (treatment p185 glazed)
      (available p186)
      (colour p186 white)
      (wood p186 oak)
      (surface-condition p186 verysmooth)
      (treatment p186 varnished)
      (available p187)
      (colour p187 red)
      (wood p187 mahogany)
      (surface-condition p187 verysmooth)
      (treatment p187 glazed)
      (available p188)
      (colour p188 mauve)
      (treatment p188 glazed)
      (available p189)
      (wood p189 teak)
      (surface-condition p189 smooth)
      (available p190)
      (colour p190 red)
      (wood p190 walnut)
      (surface-condition p190 smooth)
      (treatment p190 varnished)
      (available p191)
      (colour p191 black)
      (wood p191 walnut)
      (available p192)
      (colour p192 white)
      (wood p192 teak)
      (available p193)
      (colour p193 mauve)
      (wood p193 mahogany)
      (surface-condition p193 smooth)
      (treatment p193 glazed)
      (available p194)
      (wood p194 beech)
      (surface-condition p194 smooth)
      (available p195)
      (colour p195 natural)
      (treatment p195 varnished)
      (available p196)
      (wood p196 teak)
      (surface-condition p196 verysmooth)
      (available p197)
      (colour p197 blue)
      (wood p197 oak)
      (surface-condition p197 smooth)
      (treatment p197 varnished)
      (available p198)
      (wood p198 beech)
      (treatment p198 varnished)
      (available p199)
      (colour p199 blue)
      (wood p199 mahogany)
      (treatment p199 varnished)
      (available p200)
      (wood p200 pine)
      (treatment p200 varnished)
      (available p201)
      (colour p201 green)
      (surface-condition p201 smooth)
      (available p202)
      (surface-condition p202 verysmooth)
      (treatment p202 varnished)
      (available p203)
      (colour p203 red)
      (surface-condition p203 verysmooth)
      (available p204)
      (wood p204 cherry)
      (surface-condition p204 smooth)
      (available p205)
      (colour p205 mauve)
      (wood p205 mahogany)
      (surface-condition p205 smooth)
      (available p206)
      (colour p206 blue)
      (wood p206 mahogany)
      (available p207)
      (colour p207 red)
      (surface-condition p207 verysmooth)
      (available p208)
      (surface-condition p208 smooth)
      (treatment p208 glazed)
      (available p209)
      (wood p209 beech)
      (treatment p209 varnished)
      (available p210)
      (wood p210 teak)
      (surface-condition p210 verysmooth)
      (available p211)
      (wood p211 cherry)
      (surface-condition p211 smooth)
      (available p212)
      (colour p212 mauve)
      (wood p212 oak)
      (surface-condition p212 smooth)
      (treatment p212 varnished)
      (available p213)
      (colour p213 blue)
      (wood p213 teak)
      (treatment p213 varnished)
      (available p214)
      (colour p214 natural)
      (surface-condition p214 smooth)
      (available p215)
      (colour p215 natural)
      (treatment p215 varnished)
      (available p216)
      (colour p216 natural)
      (wood p216 pine)
      (surface-condition p216 verysmooth)
      (treatment p216 varnished)
      (available p217)
      (colour p217 blue)
      (wood p217 oak)
      (surface-condition p217 verysmooth)
      (treatment p217 varnished)
      (available p218)
      (wood p218 beech)
      (treatment p218 glazed)
      (available p219)
      (colour p219 natural)
      (treatment p219 glazed)
      (available p220)
      (colour p220 blue)
      (wood p220 cherry)
      (available p221)
      (colour p221 natural)
      (wood p221 teak)
      (surface-condition p221 smooth)
      (treatment p221 glazed)
      (available p222)
      (colour p222 black)
      (wood p222 oak)
      (treatment p222 varnished)
      (available p223)
      (colour p223 black)
      (wood p223 walnut)
      (surface-condition p223 smooth)
      (treatment p223 varnished)
      (available p224)
      (colour p224 mauve)
      (treatment p224 glazed)
      (available p225)
      (colour p225 natural)
      (wood p225 oak)
      (surface-condition p225 smooth)
      (treatment p225 glazed)
      (available p226)
      (colour p226 green)
      (surface-condition p226 verysmooth)
      (treatment p226 varnished)
      (available p227)
      (colour p227 green)
      (surface-condition p227 verysmooth)
      (treatment p227 varnished)
      (available p228)
      (wood p228 oak)
      (treatment p228 glazed)
      (available p229)
      (colour p229 red)
      (wood p229 walnut)
      (surface-condition p229 verysmooth)
      (treatment p229 varnished)
      (available p230)
      (colour p230 white)
      (wood p230 pine)
      (surface-condition p230 verysmooth)
      (treatment p230 glazed)
      (available p231)
      (colour p231 mauve)
      (wood p231 oak)
      (surface-condition p231 smooth)
      (available p232)
      (colour p232 blue)
      (wood p232 walnut)
      (surface-condition p232 verysmooth)
      (available p233)
      (colour p233 mauve)
      (wood p233 cherry)
      (surface-condition p233 verysmooth)
      (treatment p233 glazed)
      (available p234)
      (colour p234 black)
      (wood p234 mahogany)
      (surface-condition p234 smooth)
      (available p235)
      (colour p235 white)
      (wood p235 mahogany)
      (surface-condition p235 verysmooth)
      (treatment p235 glazed)
      (available p236)
      (colour p236 green)
      (treatment p236 varnished)
      (available p237)
      (colour p237 mauve)
      (wood p237 oak)
      (available p238)
      (surface-condition p238 verysmooth)
      (treatment p238 glazed)
      (available p239)
      (colour p239 black)
      (surface-condition p239 smooth)
      (available p240)
      (surface-condition p240 verysmooth)
      (treatment p240 glazed)
      (available p241)
      (surface-condition p241 smooth)
      (treatment p241 varnished)
      (available p242)
      (colour p242 red)
      (treatment p242 glazed)
      (available p243)
      (colour p243 mauve)
      (wood p243 oak)
      (available p244)
      (surface-condition p244 verysmooth)
      (treatment p244 glazed)
      (available p245)
      (colour p245 white)
      (treatment p245 varnished)
      (available p246)
      (wood p246 beech)
      (surface-condition p246 verysmooth)
      (available p247)
      (colour p247 red)
      (wood p247 beech)
      (surface-condition p247 verysmooth)
      (treatment p247 glazed)
      (available p248)
      (surface-condition p248 smooth)
      (treatment p248 glazed)
      (available p249)
      (colour p249 mauve)
      (wood p249 mahogany)
      (surface-condition p249 verysmooth)
      (treatment p249 glazed)
      (available p250)
      (colour p250 red)
      (surface-condition p250 smooth)
      (treatment p250 glazed)
      (available p251)
      (colour p251 black)
      (wood p251 walnut)
      (surface-condition p251 smooth)
      (treatment p251 glazed)
      (available p252)
      (colour p252 natural)
      (wood p252 walnut)
      (surface-condition p252 verysmooth)
      (treatment p252 varnished)
      (available p253)
      (wood p253 pine)
      (treatment p253 glazed)
      (available p254)
      (wood p254 beech)
      (surface-condition p254 smooth)
      (available p255)
      (wood p255 oak)
      (surface-condition p255 smooth)
      (treatment p255 glazed)
      (available p256)
      (wood p256 oak)
      (surface-condition p256 verysmooth)
      (available p257)
      (wood p257 oak)
      (treatment p257 varnished)
      (available p258)
      (colour p258 blue)
      (wood p258 cherry)
      (surface-condition p258 verysmooth)
      (treatment p258 varnished)
      (available p259)
      (colour p259 black)
      (wood p259 oak)
      (surface-condition p259 smooth)
      (treatment p259 varnished)
      (available p260)
      (colour p260 natural)
      (wood p260 oak)
      (available p261)
      (colour p261 mauve)
      (surface-condition p261 verysmooth)
      (available p262)
      (wood p262 walnut)
      (surface-condition p262 smooth)
      (available p263)
      (colour p263 blue)
      (wood p263 cherry)
      (available p264)
      (colour p264 red)
      (wood p264 teak)
      (surface-condition p264 smooth)
      (treatment p264 varnished)
      (available p265)
      (wood p265 cherry)
      (surface-condition p265 smooth)
      (treatment p265 glazed)
      (available p266)
      (wood p266 teak)
      (surface-condition p266 verysmooth)
      (available p267)
      (colour p267 mauve)
      (wood p267 mahogany)
      (available p268)
      (colour p268 green)
      (surface-condition p268 smooth)
      (available p269)
      (colour p269 mauve)
      (surface-condition p269 smooth)
      (available p270)
      (colour p270 mauve)
      (wood p270 oak)
      (available p271)
      (colour p271 white)
      (wood p271 beech)
      (surface-condition p271 smooth)
      (treatment p271 glazed)
      (available p272)
      (colour p272 black)
      (surface-condition p272 smooth)
      (available p273)
      (colour p273 green)
      (treatment p273 varnished)
      (available p274)
      (colour p274 red)
      (wood p274 beech)
      (available p275)
      (wood p275 walnut)
      (surface-condition p275 smooth)
      (treatment p275 glazed)
      (available p276)
      (wood p276 walnut)
      (surface-condition p276 smooth)
      (available p277)
      (wood p277 walnut)
      (surface-condition p277 smooth)
      (available p278)
      (wood p278 walnut)
      (surface-condition p278 verysmooth)
      (available p279)
      (colour p279 green)
      (wood p279 pine)
      (available p280)
      (colour p280 mauve)
      (wood p280 teak)
      (surface-condition p280 verysmooth)
      (treatment p280 varnished)
    )
  )
  
)
