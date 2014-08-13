; woodworking task with 284 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 797079

(define (problem wood-prob-sat-199)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue green mauve white black red - acolour
    mahogany beech walnut teak oak cherry pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 p278 p279 p280 p281 p282 p283 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 b75 b76 b77 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
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
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (available p2)
    (colour p2 white)
    (wood p2 teak)
    (surface-condition p2 smooth)
    (treatment p2 glazed)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (available p4)
    (colour p4 mauve)
    (wood p4 walnut)
    (surface-condition p4 rough)
    (treatment p4 colourfragments)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 blue)
    (wood p12 mahogany)
    (surface-condition p12 smooth)
    (treatment p12 glazed)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 mauve)
    (wood p14 oak)
    (surface-condition p14 verysmooth)
    (treatment p14 glazed)
    (goalsize p14 small)
    
    
    
    
    (available p15)
    (colour p15 mauve)
    (wood p15 beech)
    (surface-condition p15 rough)
    (treatment p15 colourfragments)
    (goalsize p15 small)
    
    
    
    
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
    
    
    
    
    (available p21)
    (colour p21 red)
    (wood p21 mahogany)
    (surface-condition p21 rough)
    (treatment p21 varnished)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 green)
    (wood p22 beech)
    (surface-condition p22 smooth)
    (treatment p22 colourfragments)
    (goalsize p22 medium)
    
    
    
    
    (available p23)
    (colour p23 black)
    (wood p23 mahogany)
    (surface-condition p23 smooth)
    (treatment p23 varnished)
    (goalsize p23 medium)
    
    
    
    
    (available p24)
    (colour p24 natural)
    (wood p24 pine)
    (surface-condition p24 rough)
    (treatment p24 varnished)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 black)
    (wood p35 mahogany)
    (surface-condition p35 rough)
    (treatment p35 colourfragments)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (available p41)
    (colour p41 blue)
    (wood p41 oak)
    (surface-condition p41 rough)
    (treatment p41 varnished)
    (goalsize p41 medium)
    
    
    
    
    (available p42)
    (colour p42 black)
    (wood p42 walnut)
    (surface-condition p42 verysmooth)
    (treatment p42 varnished)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (available p45)
    (colour p45 green)
    (wood p45 oak)
    (surface-condition p45 smooth)
    (treatment p45 varnished)
    (goalsize p45 large)
    
    
    
    
    (available p46)
    (colour p46 blue)
    (wood p46 mahogany)
    (surface-condition p46 verysmooth)
    (treatment p46 varnished)
    (goalsize p46 small)
    
    
    
    
    (available p47)
    (colour p47 green)
    (wood p47 mahogany)
    (surface-condition p47 smooth)
    (treatment p47 glazed)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (available p58)
    (colour p58 natural)
    (wood p58 walnut)
    (surface-condition p58 verysmooth)
    (treatment p58 glazed)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (available p62)
    (colour p62 natural)
    (wood p62 mahogany)
    (surface-condition p62 rough)
    (treatment p62 colourfragments)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (available p64)
    (colour p64 white)
    (wood p64 mahogany)
    (surface-condition p64 rough)
    (treatment p64 glazed)
    (goalsize p64 medium)
    
    
    
    
    (available p65)
    (colour p65 black)
    (wood p65 walnut)
    (surface-condition p65 rough)
    (treatment p65 glazed)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (available p70)
    (colour p70 black)
    (wood p70 teak)
    (surface-condition p70 smooth)
    (treatment p70 colourfragments)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (available p72)
    (colour p72 black)
    (wood p72 pine)
    (surface-condition p72 rough)
    (treatment p72 glazed)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (available p83)
    (colour p83 blue)
    (wood p83 beech)
    (surface-condition p83 smooth)
    (treatment p83 varnished)
    (goalsize p83 large)
    
    
    
    
    (available p84)
    (colour p84 natural)
    (wood p84 walnut)
    (surface-condition p84 rough)
    (treatment p84 glazed)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (available p87)
    (colour p87 red)
    (wood p87 teak)
    (surface-condition p87 verysmooth)
    (treatment p87 varnished)
    (goalsize p87 large)
    
    
    
    
    (available p88)
    (colour p88 red)
    (wood p88 beech)
    (surface-condition p88 smooth)
    (treatment p88 colourfragments)
    (goalsize p88 large)
    
    
    
    
    (available p89)
    (colour p89 black)
    (wood p89 walnut)
    (surface-condition p89 smooth)
    (treatment p89 glazed)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (available p93)
    (colour p93 mauve)
    (wood p93 pine)
    (surface-condition p93 verysmooth)
    (treatment p93 varnished)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (available p95)
    (colour p95 red)
    (wood p95 beech)
    (surface-condition p95 verysmooth)
    (treatment p95 varnished)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
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
    
    
    
    
    (available p113)
    (colour p113 red)
    (wood p113 teak)
    (surface-condition p113 rough)
    (treatment p113 varnished)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (available p115)
    (colour p115 white)
    (wood p115 teak)
    (surface-condition p115 smooth)
    (treatment p115 varnished)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (available p124)
    (colour p124 white)
    (wood p124 cherry)
    (surface-condition p124 rough)
    (treatment p124 colourfragments)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (available p132)
    (colour p132 green)
    (wood p132 cherry)
    (surface-condition p132 verysmooth)
    (treatment p132 colourfragments)
    (goalsize p132 small)
    
    
    
    
    (available p133)
    (colour p133 mauve)
    (wood p133 oak)
    (surface-condition p133 verysmooth)
    (treatment p133 colourfragments)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (available p149)
    (colour p149 red)
    (wood p149 teak)
    (surface-condition p149 verysmooth)
    (treatment p149 glazed)
    (goalsize p149 medium)
    
    
    
    
    (available p150)
    (colour p150 black)
    (wood p150 mahogany)
    (surface-condition p150 verysmooth)
    (treatment p150 colourfragments)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (available p155)
    (colour p155 blue)
    (wood p155 beech)
    (surface-condition p155 smooth)
    (treatment p155 varnished)
    (goalsize p155 medium)
    
    
    
    
    (available p156)
    (colour p156 red)
    (wood p156 beech)
    (surface-condition p156 rough)
    (treatment p156 glazed)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (available p158)
    (colour p158 mauve)
    (wood p158 oak)
    (surface-condition p158 verysmooth)
    (treatment p158 colourfragments)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (available p166)
    (colour p166 black)
    (wood p166 pine)
    (surface-condition p166 rough)
    (treatment p166 varnished)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 medium)
    
    
    
    
    (available p168)
    (colour p168 red)
    (wood p168 pine)
    (surface-condition p168 verysmooth)
    (treatment p168 glazed)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (available p170)
    (colour p170 green)
    (wood p170 cherry)
    (surface-condition p170 smooth)
    (treatment p170 glazed)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 small)
    
    
    
    
    (available p172)
    (colour p172 red)
    (wood p172 oak)
    (surface-condition p172 verysmooth)
    (treatment p172 varnished)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 large)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 large)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (available p184)
    (colour p184 mauve)
    (wood p184 teak)
    (surface-condition p184 verysmooth)
    (treatment p184 colourfragments)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 small)
    
    
    
    
    (available p186)
    (colour p186 green)
    (wood p186 cherry)
    (surface-condition p186 smooth)
    (treatment p186 varnished)
    (goalsize p186 small)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (available p193)
    (colour p193 natural)
    (wood p193 beech)
    (surface-condition p193 verysmooth)
    (treatment p193 colourfragments)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 small)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 large)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (available p205)
    (colour p205 white)
    (wood p205 beech)
    (surface-condition p205 smooth)
    (treatment p205 glazed)
    (goalsize p205 large)
    
    
    
    
    (unused p206)
    (goalsize p206 medium)
    
    
    
    
    (available p207)
    (colour p207 red)
    (wood p207 teak)
    (surface-condition p207 verysmooth)
    (treatment p207 varnished)
    (goalsize p207 medium)
    
    
    
    
    (available p208)
    (colour p208 mauve)
    (wood p208 beech)
    (surface-condition p208 smooth)
    (treatment p208 colourfragments)
    (goalsize p208 medium)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (available p212)
    (colour p212 green)
    (wood p212 teak)
    (surface-condition p212 smooth)
    (treatment p212 varnished)
    (goalsize p212 small)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 small)
    
    
    
    
    (unused p217)
    (goalsize p217 small)
    
    
    
    
    (unused p218)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 large)
    
    
    
    
    (unused p222)
    (goalsize p222 large)
    
    
    
    
    (available p223)
    (colour p223 black)
    (wood p223 oak)
    (surface-condition p223 verysmooth)
    (treatment p223 colourfragments)
    (goalsize p223 small)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 large)
    
    
    
    
    (unused p226)
    (goalsize p226 small)
    
    
    
    
    (available p227)
    (colour p227 natural)
    (wood p227 beech)
    (surface-condition p227 smooth)
    (treatment p227 varnished)
    (goalsize p227 large)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (available p229)
    (colour p229 red)
    (wood p229 cherry)
    (surface-condition p229 rough)
    (treatment p229 varnished)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 large)
    
    
    
    
    (unused p231)
    (goalsize p231 small)
    
    
    
    
    (available p232)
    (colour p232 natural)
    (wood p232 mahogany)
    (surface-condition p232 rough)
    (treatment p232 glazed)
    (goalsize p232 small)
    
    
    
    
    (unused p233)
    (goalsize p233 small)
    
    
    
    
    (unused p234)
    (goalsize p234 large)
    
    
    
    
    (available p235)
    (colour p235 mauve)
    (wood p235 oak)
    (surface-condition p235 smooth)
    (treatment p235 colourfragments)
    (goalsize p235 small)
    
    
    
    
    (unused p236)
    (goalsize p236 medium)
    
    
    
    
    (unused p237)
    (goalsize p237 medium)
    
    
    
    
    (available p238)
    (colour p238 blue)
    (wood p238 teak)
    (surface-condition p238 rough)
    (treatment p238 varnished)
    (goalsize p238 large)
    
    
    
    
    (unused p239)
    (goalsize p239 medium)
    
    
    
    
    (unused p240)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 small)
    
    
    
    
    (unused p242)
    (goalsize p242 small)
    
    
    
    
    (unused p243)
    (goalsize p243 small)
    
    
    
    
    (unused p244)
    (goalsize p244 medium)
    
    
    
    
    (unused p245)
    (goalsize p245 large)
    
    
    
    
    (unused p246)
    (goalsize p246 medium)
    
    
    
    
    (unused p247)
    (goalsize p247 small)
    
    
    
    
    (unused p248)
    (goalsize p248 medium)
    
    
    
    
    (unused p249)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 large)
    
    
    
    
    (unused p251)
    (goalsize p251 small)
    
    
    
    
    (available p252)
    (colour p252 green)
    (wood p252 walnut)
    (surface-condition p252 rough)
    (treatment p252 glazed)
    (goalsize p252 medium)
    
    
    
    
    (available p253)
    (colour p253 mauve)
    (wood p253 beech)
    (surface-condition p253 verysmooth)
    (treatment p253 glazed)
    (goalsize p253 small)
    
    
    
    
    (unused p254)
    (goalsize p254 medium)
    
    
    
    
    (available p255)
    (colour p255 green)
    (wood p255 cherry)
    (surface-condition p255 smooth)
    (treatment p255 colourfragments)
    (goalsize p255 large)
    
    
    
    
    (unused p256)
    (goalsize p256 large)
    
    
    
    
    (unused p257)
    (goalsize p257 small)
    
    
    
    
    (unused p258)
    (goalsize p258 small)
    
    
    
    
    (unused p259)
    (goalsize p259 large)
    
    
    
    
    (unused p260)
    (goalsize p260 small)
    
    
    
    
    (unused p261)
    (goalsize p261 medium)
    
    
    
    
    (unused p262)
    (goalsize p262 medium)
    
    
    
    
    (unused p263)
    (goalsize p263 large)
    
    
    
    
    (unused p264)
    (goalsize p264 large)
    
    
    
    
    (available p265)
    (colour p265 black)
    (wood p265 pine)
    (surface-condition p265 rough)
    (treatment p265 glazed)
    (goalsize p265 small)
    
    
    
    
    (unused p266)
    (goalsize p266 medium)
    
    
    
    
    (available p267)
    (colour p267 natural)
    (wood p267 mahogany)
    (surface-condition p267 smooth)
    (treatment p267 varnished)
    (goalsize p267 small)
    
    
    
    
    (unused p268)
    (goalsize p268 medium)
    
    
    
    
    (unused p269)
    (goalsize p269 medium)
    
    
    
    
    (available p270)
    (colour p270 blue)
    (wood p270 walnut)
    (surface-condition p270 verysmooth)
    (treatment p270 colourfragments)
    (goalsize p270 medium)
    
    
    
    
    (unused p271)
    (goalsize p271 medium)
    
    
    
    
    (unused p272)
    (goalsize p272 small)
    
    
    
    
    (unused p273)
    (goalsize p273 medium)
    
    
    
    
    (unused p274)
    (goalsize p274 large)
    
    
    
    
    (unused p275)
    (goalsize p275 small)
    
    
    
    
    (unused p276)
    (goalsize p276 medium)
    
    
    
    
    (unused p277)
    (goalsize p277 medium)
    
    
    
    
    (unused p278)
    (goalsize p278 large)
    
    
    
    
    (unused p279)
    (goalsize p279 medium)
    
    
    
    
    (unused p280)
    (goalsize p280 medium)
    
    
    
    
    (unused p281)
    (goalsize p281 small)
    
    
    
    
    (unused p282)
    (goalsize p282 large)
    
    
    
    
    (available p283)
    (colour p283 black)
    (wood p283 oak)
    (surface-condition p283 smooth)
    (treatment p283 glazed)
    (goalsize p283 large)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s10)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s10)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s6)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 cherry)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s5)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s6)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
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
    (boardsize b18 s9)
    (wood b18 mahogany)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s7)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 mahogany)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s10)
    (wood b22 mahogany)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s2)
    (wood b23 mahogany)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s7)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s7)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s5)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s10)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s9)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 oak)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s9)
    (wood b32 oak)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s8)
    (wood b33 oak)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 oak)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s5)
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
    (boardsize b38 s8)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s7)
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
    (boardsize b42 s7)
    (wood b42 pine)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s9)
    (wood b43 pine)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s6)
    (wood b44 pine)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s5)
    (wood b45 pine)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s7)
    (wood b46 pine)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s8)
    (wood b47 walnut)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s8)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s7)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s10)
    (wood b50 walnut)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s9)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 walnut)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s5)
    (wood b53 walnut)
    (surface-condition b53 smooth)
    (available b53)
    (boardsize b54 s6)
    (wood b54 walnut)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s10)
    (wood b55 walnut)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s4)
    (wood b56 walnut)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s9)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s6)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s7)
    (wood b59 teak)
    (surface-condition b59 smooth)
    (available b59)
    (boardsize b60 s9)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s9)
    (wood b61 teak)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s8)
    (wood b62 teak)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s8)
    (wood b63 teak)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s5)
    (wood b64 teak)
    (surface-condition b64 smooth)
    (available b64)
    (boardsize b65 s7)
    (wood b65 teak)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s7)
    (wood b66 teak)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s2)
    (wood b67 teak)
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
    (boardsize b70 s9)
    (wood b70 beech)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s7)
    (wood b71 beech)
    (surface-condition b71 smooth)
    (available b71)
    (boardsize b72 s9)
    (wood b72 beech)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s5)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
    (boardsize b74 s11)
    (wood b74 beech)
    (surface-condition b74 rough)
    (available b74)
    (boardsize b75 s8)
    (wood b75 beech)
    (surface-condition b75 rough)
    (available b75)
    (boardsize b76 s8)
    (wood b76 beech)
    (surface-condition b76 rough)
    (available b76)
    (boardsize b77 s5)
    (wood b77 beech)
    (surface-condition b77 smooth)
    (available b77)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (wood p1 beech)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 natural)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 white)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 black)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 natural)
      (wood p6 oak)
      (available p7)
      (colour p7 black)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 green)
      (treatment p8 varnished)
      (available p9)
      (colour p9 blue)
      (wood p9 walnut)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (wood p10 walnut)
      (treatment p10 varnished)
      (available p11)
      (wood p11 oak)
      (treatment p11 varnished)
      (available p12)
      (colour p12 natural)
      (wood p12 mahogany)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 white)
      (wood p13 oak)
      (available p14)
      (colour p14 white)
      (wood p14 oak)
      (available p15)
      (colour p15 black)
      (wood p15 beech)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 blue)
      (treatment p16 varnished)
      (available p17)
      (wood p17 cherry)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 red)
      (wood p18 beech)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 blue)
      (wood p19 teak)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 green)
      (wood p20 pine)
      (available p21)
      (colour p21 blue)
      (wood p21 mahogany)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 white)
      (wood p22 beech)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 green)
      (wood p23 mahogany)
      (surface-condition p23 verysmooth)
      (available p24)
      (wood p24 pine)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (wood p25 teak)
      (surface-condition p25 verysmooth)
      (available p26)
      (colour p26 black)
      (wood p26 cherry)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 white)
      (wood p27 cherry)
      (available p28)
      (colour p28 white)
      (surface-condition p28 verysmooth)
      (available p29)
      (wood p29 pine)
      (treatment p29 varnished)
      (available p30)
      (wood p30 teak)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 blue)
      (wood p31 cherry)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (wood p32 beech)
      (treatment p32 glazed)
      (available p33)
      (colour p33 blue)
      (wood p33 pine)
      (available p34)
      (wood p34 teak)
      (surface-condition p34 verysmooth)
      (available p35)
      (wood p35 mahogany)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 black)
      (treatment p36 glazed)
      (available p37)
      (colour p37 red)
      (wood p37 beech)
      (surface-condition p37 smooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 natural)
      (treatment p38 glazed)
      (available p39)
      (wood p39 beech)
      (treatment p39 glazed)
      (available p40)
      (wood p40 walnut)
      (treatment p40 varnished)
      (available p41)
      (colour p41 black)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 blue)
      (wood p42 walnut)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 blue)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 mauve)
      (surface-condition p44 smooth)
      (available p45)
      (colour p45 natural)
      (wood p45 oak)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 mauve)
      (treatment p46 varnished)
      (available p47)
      (colour p47 red)
      (wood p47 mahogany)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (wood p48 oak)
      (treatment p48 glazed)
      (available p49)
      (colour p49 red)
      (surface-condition p49 smooth)
      (available p50)
      (colour p50 mauve)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 black)
      (wood p51 oak)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 mauve)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 red)
      (surface-condition p53 verysmooth)
      (available p54)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 red)
      (wood p55 oak)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (surface-condition p56 verysmooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 mauve)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 green)
      (wood p58 walnut)
      (available p59)
      (wood p59 walnut)
      (treatment p59 glazed)
      (available p60)
      (colour p60 white)
      (wood p60 beech)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 mauve)
      (wood p61 pine)
      (surface-condition p61 smooth)
      (treatment p61 glazed)
      (available p62)
      (colour p62 black)
      (wood p62 mahogany)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 blue)
      (wood p63 cherry)
      (surface-condition p63 verysmooth)
      (treatment p63 glazed)
      (available p64)
      (colour p64 black)
      (treatment p64 glazed)
      (available p65)
      (colour p65 red)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 green)
      (wood p66 walnut)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (wood p67 oak)
      (surface-condition p67 verysmooth)
      (available p68)
      (colour p68 mauve)
      (treatment p68 glazed)
      (available p69)
      (surface-condition p69 verysmooth)
      (treatment p69 glazed)
      (available p70)
      (wood p70 teak)
      (surface-condition p70 verysmooth)
      (available p71)
      (wood p71 cherry)
      (surface-condition p71 smooth)
      (available p72)
      (colour p72 blue)
      (surface-condition p72 verysmooth)
      (available p73)
      (surface-condition p73 verysmooth)
      (treatment p73 glazed)
      (available p74)
      (colour p74 blue)
      (wood p74 mahogany)
      (treatment p74 glazed)
      (available p75)
      (wood p75 teak)
      (treatment p75 varnished)
      (available p76)
      (colour p76 blue)
      (wood p76 pine)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (colour p77 black)
      (wood p77 cherry)
      (surface-condition p77 verysmooth)
      (available p78)
      (colour p78 green)
      (wood p78 pine)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 blue)
      (wood p79 walnut)
      (surface-condition p79 smooth)
      (available p80)
      (colour p80 black)
      (surface-condition p80 smooth)
      (available p81)
      (colour p81 green)
      (wood p81 beech)
      (surface-condition p81 verysmooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 black)
      (surface-condition p82 verysmooth)
      (available p83)
      (wood p83 beech)
      (treatment p83 glazed)
      (available p84)
      (colour p84 blue)
      (wood p84 walnut)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (wood p85 walnut)
      (treatment p85 glazed)
      (available p86)
      (colour p86 green)
      (surface-condition p86 smooth)
      (available p87)
      (wood p87 teak)
      (surface-condition p87 smooth)
      (available p88)
      (wood p88 beech)
      (treatment p88 varnished)
      (available p89)
      (wood p89 walnut)
      (surface-condition p89 verysmooth)
      (treatment p89 varnished)
      (available p90)
      (wood p90 beech)
      (treatment p90 varnished)
      (available p91)
      (colour p91 green)
      (surface-condition p91 verysmooth)
      (available p92)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 blue)
      (wood p93 pine)
      (surface-condition p93 smooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 blue)
      (wood p94 mahogany)
      (surface-condition p94 verysmooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 white)
      (wood p95 beech)
      (available p96)
      (colour p96 white)
      (wood p96 teak)
      (surface-condition p96 smooth)
      (treatment p96 varnished)
      (available p97)
      (wood p97 pine)
      (surface-condition p97 smooth)
      (available p98)
      (colour p98 black)
      (wood p98 mahogany)
      (surface-condition p98 smooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 green)
      (wood p99 cherry)
      (available p100)
      (surface-condition p100 smooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 natural)
      (surface-condition p101 smooth)
      (available p102)
      (colour p102 red)
      (surface-condition p102 smooth)
      (available p103)
      (wood p103 oak)
      (surface-condition p103 smooth)
      (available p104)
      (colour p104 natural)
      (wood p104 mahogany)
      (treatment p104 varnished)
      (available p105)
      (wood p105 mahogany)
      (surface-condition p105 smooth)
      (available p106)
      (wood p106 walnut)
      (treatment p106 varnished)
      (available p107)
      (colour p107 green)
      (wood p107 walnut)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (wood p108 pine)
      (surface-condition p108 verysmooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 black)
      (wood p109 teak)
      (available p110)
      (wood p110 walnut)
      (treatment p110 varnished)
      (available p111)
      (wood p111 cherry)
      (treatment p111 varnished)
      (available p112)
      (colour p112 mauve)
      (wood p112 cherry)
      (surface-condition p112 verysmooth)
      (available p113)
      (colour p113 blue)
      (surface-condition p113 verysmooth)
      (available p114)
      (colour p114 red)
      (wood p114 teak)
      (available p115)
      (wood p115 teak)
      (treatment p115 glazed)
      (available p116)
      (surface-condition p116 smooth)
      (treatment p116 varnished)
      (available p117)
      (colour p117 white)
      (wood p117 mahogany)
      (available p118)
      (colour p118 mauve)
      (surface-condition p118 verysmooth)
      (available p119)
      (wood p119 cherry)
      (treatment p119 varnished)
      (available p120)
      (wood p120 beech)
      (surface-condition p120 smooth)
      (available p121)
      (colour p121 blue)
      (surface-condition p121 verysmooth)
      (available p122)
      (wood p122 cherry)
      (treatment p122 varnished)
      (available p123)
      (wood p123 mahogany)
      (treatment p123 varnished)
      (available p124)
      (colour p124 red)
      (wood p124 cherry)
      (treatment p124 glazed)
      (available p125)
      (colour p125 white)
      (wood p125 mahogany)
      (treatment p125 varnished)
      (available p126)
      (surface-condition p126 smooth)
      (treatment p126 varnished)
      (available p127)
      (colour p127 green)
      (surface-condition p127 smooth)
      (available p128)
      (colour p128 red)
      (wood p128 mahogany)
      (surface-condition p128 verysmooth)
      (treatment p128 varnished)
      (available p129)
      (wood p129 walnut)
      (treatment p129 glazed)
      (available p130)
      (wood p130 cherry)
      (treatment p130 varnished)
      (available p131)
      (colour p131 black)
      (wood p131 teak)
      (available p132)
      (colour p132 mauve)
      (wood p132 cherry)
      (surface-condition p132 verysmooth)
      (treatment p132 glazed)
      (available p133)
      (colour p133 natural)
      (wood p133 oak)
      (surface-condition p133 smooth)
      (treatment p133 glazed)
      (available p134)
      (surface-condition p134 smooth)
      (treatment p134 varnished)
      (available p135)
      (colour p135 green)
      (wood p135 oak)
      (surface-condition p135 verysmooth)
      (treatment p135 glazed)
      (available p136)
      (colour p136 black)
      (surface-condition p136 smooth)
      (available p137)
      (colour p137 white)
      (wood p137 teak)
      (surface-condition p137 smooth)
      (treatment p137 varnished)
      (available p138)
      (wood p138 beech)
      (surface-condition p138 verysmooth)
      (available p139)
      (wood p139 beech)
      (treatment p139 glazed)
      (available p140)
      (colour p140 red)
      (wood p140 teak)
      (surface-condition p140 smooth)
      (available p141)
      (colour p141 natural)
      (wood p141 cherry)
      (treatment p141 glazed)
      (available p142)
      (colour p142 blue)
      (surface-condition p142 smooth)
      (available p143)
      (colour p143 white)
      (surface-condition p143 verysmooth)
      (available p144)
      (wood p144 mahogany)
      (treatment p144 glazed)
      (available p145)
      (wood p145 teak)
      (surface-condition p145 verysmooth)
      (available p146)
      (colour p146 green)
      (surface-condition p146 verysmooth)
      (treatment p146 varnished)
      (available p147)
      (surface-condition p147 smooth)
      (treatment p147 glazed)
      (available p148)
      (surface-condition p148 verysmooth)
      (treatment p148 glazed)
      (available p149)
      (colour p149 natural)
      (wood p149 teak)
      (treatment p149 varnished)
      (available p150)
      (colour p150 mauve)
      (wood p150 mahogany)
      (surface-condition p150 verysmooth)
      (treatment p150 varnished)
      (available p151)
      (colour p151 white)
      (wood p151 cherry)
      (available p152)
      (colour p152 white)
      (wood p152 oak)
      (surface-condition p152 smooth)
      (available p153)
      (colour p153 black)
      (wood p153 teak)
      (surface-condition p153 verysmooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 red)
      (wood p154 mahogany)
      (treatment p154 varnished)
      (available p155)
      (colour p155 green)
      (treatment p155 glazed)
      (available p156)
      (surface-condition p156 verysmooth)
      (treatment p156 glazed)
      (available p157)
      (colour p157 natural)
      (wood p157 mahogany)
      (surface-condition p157 verysmooth)
      (treatment p157 glazed)
      (available p158)
      (colour p158 black)
      (wood p158 oak)
      (surface-condition p158 verysmooth)
      (available p159)
      (colour p159 black)
      (wood p159 oak)
      (treatment p159 varnished)
      (available p160)
      (colour p160 blue)
      (surface-condition p160 verysmooth)
      (treatment p160 varnished)
      (available p161)
      (wood p161 mahogany)
      (treatment p161 glazed)
      (available p162)
      (wood p162 teak)
      (surface-condition p162 smooth)
      (available p163)
      (surface-condition p163 smooth)
      (treatment p163 varnished)
      (available p164)
      (colour p164 mauve)
      (wood p164 teak)
      (surface-condition p164 smooth)
      (available p165)
      (colour p165 blue)
      (surface-condition p165 verysmooth)
      (available p166)
      (colour p166 white)
      (wood p166 pine)
      (surface-condition p166 smooth)
      (treatment p166 varnished)
      (available p167)
      (colour p167 natural)
      (surface-condition p167 verysmooth)
      (available p168)
      (colour p168 green)
      (wood p168 pine)
      (available p169)
      (colour p169 mauve)
      (wood p169 pine)
      (surface-condition p169 smooth)
      (treatment p169 glazed)
      (available p170)
      (surface-condition p170 verysmooth)
      (treatment p170 varnished)
      (available p171)
      (colour p171 white)
      (wood p171 teak)
      (treatment p171 varnished)
      (available p172)
      (colour p172 black)
      (wood p172 oak)
      (surface-condition p172 smooth)
      (treatment p172 varnished)
      (available p173)
      (colour p173 black)
      (wood p173 oak)
      (available p174)
      (colour p174 natural)
      (surface-condition p174 smooth)
      (available p175)
      (colour p175 green)
      (wood p175 oak)
      (surface-condition p175 verysmooth)
      (treatment p175 varnished)
      (available p176)
      (surface-condition p176 smooth)
      (treatment p176 glazed)
      (available p177)
      (wood p177 teak)
      (surface-condition p177 smooth)
      (available p178)
      (surface-condition p178 verysmooth)
      (treatment p178 glazed)
      (available p179)
      (colour p179 natural)
      (wood p179 beech)
      (available p180)
      (wood p180 pine)
      (surface-condition p180 verysmooth)
      (treatment p180 glazed)
      (available p181)
      (wood p181 walnut)
      (surface-condition p181 verysmooth)
      (available p182)
      (colour p182 red)
      (wood p182 walnut)
      (surface-condition p182 smooth)
      (treatment p182 glazed)
      (available p183)
      (colour p183 green)
      (wood p183 oak)
      (available p184)
      (colour p184 black)
      (wood p184 teak)
      (available p185)
      (wood p185 pine)
      (surface-condition p185 verysmooth)
      (available p186)
      (colour p186 natural)
      (treatment p186 glazed)
      (available p187)
      (surface-condition p187 verysmooth)
      (treatment p187 glazed)
      (available p188)
      (colour p188 black)
      (wood p188 cherry)
      (surface-condition p188 smooth)
      (available p189)
      (wood p189 cherry)
      (surface-condition p189 smooth)
      (treatment p189 glazed)
      (available p190)
      (wood p190 pine)
      (treatment p190 varnished)
      (available p191)
      (wood p191 teak)
      (surface-condition p191 smooth)
      (available p192)
      (colour p192 white)
      (wood p192 pine)
      (surface-condition p192 verysmooth)
      (treatment p192 varnished)
      (available p193)
      (colour p193 white)
      (wood p193 beech)
      (surface-condition p193 smooth)
      (treatment p193 glazed)
      (available p194)
      (colour p194 blue)
      (wood p194 beech)
      (surface-condition p194 verysmooth)
      (treatment p194 varnished)
      (available p195)
      (colour p195 green)
      (wood p195 mahogany)
      (surface-condition p195 smooth)
      (treatment p195 varnished)
      (available p196)
      (wood p196 cherry)
      (surface-condition p196 verysmooth)
      (treatment p196 glazed)
      (available p197)
      (colour p197 black)
      (wood p197 beech)
      (surface-condition p197 smooth)
      (treatment p197 glazed)
      (available p198)
      (colour p198 black)
      (treatment p198 varnished)
      (available p199)
      (wood p199 teak)
      (treatment p199 varnished)
      (available p200)
      (colour p200 green)
      (wood p200 teak)
      (surface-condition p200 smooth)
      (available p201)
      (colour p201 blue)
      (wood p201 teak)
      (surface-condition p201 verysmooth)
      (treatment p201 glazed)
      (available p202)
      (colour p202 mauve)
      (wood p202 beech)
      (surface-condition p202 smooth)
      (treatment p202 varnished)
      (available p203)
      (colour p203 blue)
      (wood p203 pine)
      (surface-condition p203 verysmooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 black)
      (treatment p204 glazed)
      (available p205)
      (colour p205 green)
      (treatment p205 varnished)
      (available p206)
      (colour p206 natural)
      (wood p206 pine)
      (surface-condition p206 smooth)
      (available p207)
      (colour p207 mauve)
      (treatment p207 glazed)
      (available p208)
      (colour p208 white)
      (surface-condition p208 smooth)
      (available p209)
      (wood p209 cherry)
      (surface-condition p209 verysmooth)
      (treatment p209 glazed)
      (available p210)
      (colour p210 natural)
      (wood p210 cherry)
      (surface-condition p210 verysmooth)
      (available p211)
      (colour p211 natural)
      (wood p211 walnut)
      (surface-condition p211 smooth)
      (available p212)
      (wood p212 teak)
      (treatment p212 glazed)
      (available p213)
      (colour p213 mauve)
      (wood p213 mahogany)
      (surface-condition p213 verysmooth)
      (treatment p213 varnished)
      (available p214)
      (colour p214 natural)
      (wood p214 mahogany)
      (surface-condition p214 smooth)
      (treatment p214 varnished)
      (available p215)
      (colour p215 white)
      (wood p215 teak)
      (surface-condition p215 smooth)
      (available p216)
      (wood p216 pine)
      (treatment p216 varnished)
      (available p217)
      (wood p217 cherry)
      (surface-condition p217 verysmooth)
      (available p218)
      (wood p218 mahogany)
      (surface-condition p218 smooth)
      (treatment p218 varnished)
      (available p219)
      (colour p219 green)
      (surface-condition p219 verysmooth)
      (available p220)
      (wood p220 walnut)
      (surface-condition p220 smooth)
      (available p221)
      (wood p221 mahogany)
      (surface-condition p221 smooth)
      (available p222)
      (colour p222 green)
      (wood p222 cherry)
      (surface-condition p222 verysmooth)
      (treatment p222 varnished)
      (available p223)
      (surface-condition p223 verysmooth)
      (treatment p223 glazed)
      (available p224)
      (wood p224 oak)
      (treatment p224 varnished)
      (available p225)
      (wood p225 mahogany)
      (treatment p225 varnished)
      (available p226)
      (colour p226 white)
      (wood p226 walnut)
      (surface-condition p226 smooth)
      (treatment p226 glazed)
      (available p227)
      (colour p227 blue)
      (wood p227 beech)
      (treatment p227 varnished)
      (available p228)
      (wood p228 walnut)
      (surface-condition p228 verysmooth)
      (available p229)
      (colour p229 green)
      (wood p229 cherry)
      (available p230)
      (wood p230 beech)
      (surface-condition p230 verysmooth)
      (available p231)
      (colour p231 black)
      (wood p231 pine)
      (surface-condition p231 smooth)
      (available p232)
      (colour p232 mauve)
      (wood p232 mahogany)
      (surface-condition p232 smooth)
      (treatment p232 varnished)
      (available p233)
      (colour p233 blue)
      (surface-condition p233 smooth)
      (available p234)
      (wood p234 pine)
      (surface-condition p234 verysmooth)
      (available p235)
      (colour p235 white)
      (wood p235 oak)
      (treatment p235 glazed)
      (available p236)
      (colour p236 mauve)
      (surface-condition p236 verysmooth)
      (treatment p236 glazed)
      (available p237)
      (colour p237 red)
      (surface-condition p237 verysmooth)
      (available p238)
      (colour p238 red)
      (wood p238 teak)
      (available p239)
      (colour p239 red)
      (wood p239 pine)
      (available p240)
      (wood p240 walnut)
      (surface-condition p240 verysmooth)
      (available p241)
      (wood p241 cherry)
      (surface-condition p241 verysmooth)
      (available p242)
      (colour p242 blue)
      (surface-condition p242 smooth)
      (available p243)
      (colour p243 red)
      (wood p243 pine)
      (surface-condition p243 verysmooth)
      (treatment p243 varnished)
      (available p244)
      (colour p244 mauve)
      (treatment p244 varnished)
      (available p245)
      (wood p245 oak)
      (treatment p245 varnished)
      (available p246)
      (wood p246 mahogany)
      (surface-condition p246 smooth)
      (available p247)
      (colour p247 natural)
      (wood p247 mahogany)
      (surface-condition p247 verysmooth)
      (treatment p247 varnished)
      (available p248)
      (wood p248 walnut)
      (surface-condition p248 smooth)
      (available p249)
      (colour p249 red)
      (wood p249 walnut)
      (surface-condition p249 smooth)
      (treatment p249 glazed)
      (available p250)
      (surface-condition p250 smooth)
      (treatment p250 glazed)
      (available p251)
      (colour p251 natural)
      (surface-condition p251 smooth)
      (available p252)
      (colour p252 natural)
      (surface-condition p252 verysmooth)
      (treatment p252 varnished)
      (available p253)
      (colour p253 blue)
      (surface-condition p253 smooth)
      (treatment p253 varnished)
      (available p254)
      (colour p254 mauve)
      (wood p254 cherry)
      (surface-condition p254 verysmooth)
      (treatment p254 glazed)
      (available p255)
      (colour p255 blue)
      (surface-condition p255 smooth)
      (available p256)
      (wood p256 teak)
      (treatment p256 varnished)
      (available p257)
      (wood p257 beech)
      (surface-condition p257 smooth)
      (treatment p257 varnished)
      (available p258)
      (wood p258 oak)
      (treatment p258 varnished)
      (available p259)
      (colour p259 mauve)
      (surface-condition p259 verysmooth)
      (treatment p259 varnished)
      (available p260)
      (colour p260 red)
      (surface-condition p260 smooth)
      (available p261)
      (colour p261 black)
      (surface-condition p261 smooth)
      (treatment p261 varnished)
      (available p262)
      (surface-condition p262 verysmooth)
      (treatment p262 glazed)
      (available p263)
      (wood p263 mahogany)
      (surface-condition p263 smooth)
      (treatment p263 varnished)
      (available p264)
      (colour p264 blue)
      (wood p264 teak)
      (surface-condition p264 verysmooth)
      (treatment p264 varnished)
      (available p265)
      (wood p265 pine)
      (surface-condition p265 smooth)
      (available p266)
      (colour p266 blue)
      (surface-condition p266 smooth)
      (available p267)
      (wood p267 mahogany)
      (treatment p267 glazed)
      (available p268)
      (wood p268 beech)
      (surface-condition p268 smooth)
      (available p269)
      (wood p269 pine)
      (surface-condition p269 smooth)
      (treatment p269 glazed)
      (available p270)
      (colour p270 green)
      (surface-condition p270 smooth)
      (available p271)
      (wood p271 mahogany)
      (surface-condition p271 verysmooth)
      (treatment p271 varnished)
      (available p272)
      (colour p272 red)
      (wood p272 teak)
      (surface-condition p272 verysmooth)
      (available p273)
      (colour p273 natural)
      (treatment p273 varnished)
      (available p274)
      (colour p274 green)
      (treatment p274 glazed)
      (available p275)
      (colour p275 white)
      (surface-condition p275 smooth)
      (available p276)
      (colour p276 blue)
      (wood p276 oak)
      (surface-condition p276 verysmooth)
      (treatment p276 varnished)
      (available p277)
      (wood p277 walnut)
      (treatment p277 glazed)
      (available p278)
      (colour p278 green)
      (wood p278 teak)
      (surface-condition p278 smooth)
      (treatment p278 varnished)
      (available p279)
      (wood p279 teak)
      (surface-condition p279 smooth)
      (available p280)
      (colour p280 red)
      (wood p280 cherry)
      (available p281)
      (colour p281 white)
      (wood p281 beech)
      (surface-condition p281 verysmooth)
      (treatment p281 varnished)
      (available p282)
      (colour p282 natural)
      (wood p282 cherry)
      (available p283)
      (colour p283 mauve)
      (surface-condition p283 smooth)
    )
  )
  
)
