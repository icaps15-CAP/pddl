; woodworking task with 275 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 20660

(define (problem wood-prob-sat-102)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve green white black red blue - acolour
    teak mahogany beech pine oak walnut cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 - board
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
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 green)
    (has-colour glazer2 natural)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
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
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 natural)
    (wood p5 walnut)
    (surface-condition p5 verysmooth)
    (treatment p5 varnished)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 white)
    (wood p10 pine)
    (surface-condition p10 verysmooth)
    (treatment p10 colourfragments)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 mauve)
    (wood p13 beech)
    (surface-condition p13 smooth)
    (treatment p13 glazed)
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
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 black)
    (wood p24 pine)
    (surface-condition p24 smooth)
    (treatment p24 glazed)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 white)
    (wood p26 pine)
    (surface-condition p26 verysmooth)
    (treatment p26 varnished)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (available p33)
    (colour p33 red)
    (wood p33 mahogany)
    (surface-condition p33 verysmooth)
    (treatment p33 colourfragments)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (available p47)
    (colour p47 white)
    (wood p47 oak)
    (surface-condition p47 rough)
    (treatment p47 colourfragments)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
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
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (available p58)
    (colour p58 white)
    (wood p58 cherry)
    (surface-condition p58 rough)
    (treatment p58 varnished)
    (goalsize p58 medium)
    
    
    
    
    (available p59)
    (colour p59 natural)
    (wood p59 cherry)
    (surface-condition p59 smooth)
    (treatment p59 colourfragments)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (available p66)
    (colour p66 white)
    (wood p66 oak)
    (surface-condition p66 rough)
    (treatment p66 glazed)
    (goalsize p66 large)
    
    
    
    
    (available p67)
    (colour p67 black)
    (wood p67 oak)
    (surface-condition p67 rough)
    (treatment p67 varnished)
    (goalsize p67 large)
    
    
    
    
    (available p68)
    (colour p68 blue)
    (wood p68 pine)
    (surface-condition p68 verysmooth)
    (treatment p68 varnished)
    (goalsize p68 small)
    
    
    
    
    (available p69)
    (colour p69 mauve)
    (wood p69 beech)
    (surface-condition p69 smooth)
    (treatment p69 colourfragments)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (available p71)
    (colour p71 black)
    (wood p71 walnut)
    (surface-condition p71 verysmooth)
    (treatment p71 varnished)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (available p73)
    (colour p73 natural)
    (wood p73 cherry)
    (surface-condition p73 verysmooth)
    (treatment p73 colourfragments)
    (goalsize p73 medium)
    
    
    
    
    (available p74)
    (colour p74 mauve)
    (wood p74 teak)
    (surface-condition p74 verysmooth)
    (treatment p74 varnished)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (available p81)
    (colour p81 mauve)
    (wood p81 teak)
    (surface-condition p81 verysmooth)
    (treatment p81 glazed)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (available p84)
    (colour p84 blue)
    (wood p84 walnut)
    (surface-condition p84 rough)
    (treatment p84 glazed)
    (goalsize p84 large)
    
    
    
    
    (available p85)
    (colour p85 blue)
    (wood p85 teak)
    (surface-condition p85 verysmooth)
    (treatment p85 glazed)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (available p91)
    (colour p91 red)
    (wood p91 cherry)
    (surface-condition p91 rough)
    (treatment p91 varnished)
    (goalsize p91 medium)
    
    
    
    
    (available p92)
    (colour p92 black)
    (wood p92 cherry)
    (surface-condition p92 verysmooth)
    (treatment p92 varnished)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (available p94)
    (colour p94 white)
    (wood p94 mahogany)
    (surface-condition p94 smooth)
    (treatment p94 glazed)
    (goalsize p94 small)
    
    
    
    
    (available p95)
    (colour p95 black)
    (wood p95 walnut)
    (surface-condition p95 rough)
    (treatment p95 varnished)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (available p103)
    (colour p103 black)
    (wood p103 oak)
    (surface-condition p103 smooth)
    (treatment p103 glazed)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (available p118)
    (colour p118 green)
    (wood p118 oak)
    (surface-condition p118 verysmooth)
    (treatment p118 glazed)
    (goalsize p118 small)
    
    
    
    
    (available p119)
    (colour p119 blue)
    (wood p119 walnut)
    (surface-condition p119 verysmooth)
    (treatment p119 varnished)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (available p122)
    (colour p122 red)
    (wood p122 beech)
    (surface-condition p122 rough)
    (treatment p122 colourfragments)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 small)
    
    
    
    
    (available p130)
    (colour p130 white)
    (wood p130 walnut)
    (surface-condition p130 verysmooth)
    (treatment p130 colourfragments)
    (goalsize p130 large)
    
    
    
    
    (available p131)
    (colour p131 mauve)
    (wood p131 oak)
    (surface-condition p131 rough)
    (treatment p131 glazed)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (available p135)
    (colour p135 black)
    (wood p135 cherry)
    (surface-condition p135 smooth)
    (treatment p135 glazed)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 large)
    
    
    
    
    (available p139)
    (colour p139 green)
    (wood p139 walnut)
    (surface-condition p139 rough)
    (treatment p139 colourfragments)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (available p142)
    (colour p142 natural)
    (wood p142 walnut)
    (surface-condition p142 smooth)
    (treatment p142 glazed)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (available p147)
    (colour p147 black)
    (wood p147 walnut)
    (surface-condition p147 verysmooth)
    (treatment p147 glazed)
    (goalsize p147 small)
    
    
    
    
    (available p148)
    (colour p148 natural)
    (wood p148 teak)
    (surface-condition p148 smooth)
    (treatment p148 colourfragments)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (available p156)
    (colour p156 white)
    (wood p156 pine)
    (surface-condition p156 verysmooth)
    (treatment p156 glazed)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (available p159)
    (colour p159 natural)
    (wood p159 mahogany)
    (surface-condition p159 verysmooth)
    (treatment p159 colourfragments)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (available p166)
    (colour p166 mauve)
    (wood p166 cherry)
    (surface-condition p166 rough)
    (treatment p166 colourfragments)
    (goalsize p166 large)
    
    
    
    
    (available p167)
    (colour p167 red)
    (wood p167 mahogany)
    (surface-condition p167 verysmooth)
    (treatment p167 glazed)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (available p171)
    (colour p171 red)
    (wood p171 oak)
    (surface-condition p171 rough)
    (treatment p171 colourfragments)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (available p177)
    (colour p177 green)
    (wood p177 mahogany)
    (surface-condition p177 verysmooth)
    (treatment p177 varnished)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (available p179)
    (colour p179 natural)
    (wood p179 teak)
    (surface-condition p179 verysmooth)
    (treatment p179 varnished)
    (goalsize p179 small)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (available p184)
    (colour p184 black)
    (wood p184 walnut)
    (surface-condition p184 rough)
    (treatment p184 varnished)
    (goalsize p184 small)
    
    
    
    
    (available p185)
    (colour p185 blue)
    (wood p185 teak)
    (surface-condition p185 smooth)
    (treatment p185 colourfragments)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (available p189)
    (colour p189 white)
    (wood p189 walnut)
    (surface-condition p189 smooth)
    (treatment p189 colourfragments)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 medium)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (available p196)
    (colour p196 mauve)
    (wood p196 walnut)
    (surface-condition p196 smooth)
    (treatment p196 colourfragments)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (available p198)
    (colour p198 natural)
    (wood p198 oak)
    (surface-condition p198 smooth)
    (treatment p198 varnished)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 small)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
    (unused p204)
    (goalsize p204 medium)
    
    
    
    
    (available p205)
    (colour p205 black)
    (wood p205 beech)
    (surface-condition p205 smooth)
    (treatment p205 varnished)
    (goalsize p205 medium)
    
    
    
    
    (unused p206)
    (goalsize p206 medium)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 small)
    
    
    
    
    (unused p209)
    (goalsize p209 large)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 small)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 large)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 medium)
    
    
    
    
    (unused p217)
    (goalsize p217 small)
    
    
    
    
    (unused p218)
    (goalsize p218 medium)
    
    
    
    
    (unused p219)
    (goalsize p219 large)
    
    
    
    
    (unused p220)
    (goalsize p220 small)
    
    
    
    
    (available p221)
    (colour p221 mauve)
    (wood p221 oak)
    (surface-condition p221 rough)
    (treatment p221 glazed)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 large)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (available p224)
    (colour p224 white)
    (wood p224 oak)
    (surface-condition p224 rough)
    (treatment p224 varnished)
    (goalsize p224 large)
    
    
    
    
    (unused p225)
    (goalsize p225 large)
    
    
    
    
    (unused p226)
    (goalsize p226 large)
    
    
    
    
    (unused p227)
    (goalsize p227 large)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 small)
    
    
    
    
    (available p230)
    (colour p230 red)
    (wood p230 pine)
    (surface-condition p230 rough)
    (treatment p230 colourfragments)
    (goalsize p230 small)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 large)
    
    
    
    
    (unused p234)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 small)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (available p237)
    (colour p237 blue)
    (wood p237 pine)
    (surface-condition p237 rough)
    (treatment p237 glazed)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 small)
    
    
    
    
    (unused p239)
    (goalsize p239 medium)
    
    
    
    
    (unused p240)
    (goalsize p240 medium)
    
    
    
    
    (unused p241)
    (goalsize p241 small)
    
    
    
    
    (unused p242)
    (goalsize p242 large)
    
    
    
    
    (unused p243)
    (goalsize p243 medium)
    
    
    
    
    (unused p244)
    (goalsize p244 large)
    
    
    
    
    (unused p245)
    (goalsize p245 small)
    
    
    
    
    (unused p246)
    (goalsize p246 large)
    
    
    
    
    (unused p247)
    (goalsize p247 medium)
    
    
    
    
    (available p248)
    (colour p248 mauve)
    (wood p248 oak)
    (surface-condition p248 verysmooth)
    (treatment p248 colourfragments)
    (goalsize p248 large)
    
    
    
    
    (unused p249)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 medium)
    
    
    
    
    (unused p251)
    (goalsize p251 medium)
    
    
    
    
    (unused p252)
    (goalsize p252 small)
    
    
    
    
    (unused p253)
    (goalsize p253 large)
    
    
    
    
    (unused p254)
    (goalsize p254 small)
    
    
    
    
    (unused p255)
    (goalsize p255 small)
    
    
    
    
    (available p256)
    (colour p256 black)
    (wood p256 pine)
    (surface-condition p256 rough)
    (treatment p256 varnished)
    (goalsize p256 medium)
    
    
    
    
    (available p257)
    (colour p257 black)
    (wood p257 teak)
    (surface-condition p257 rough)
    (treatment p257 colourfragments)
    (goalsize p257 medium)
    
    
    
    
    (unused p258)
    (goalsize p258 medium)
    
    
    
    
    (unused p259)
    (goalsize p259 medium)
    
    
    
    
    (unused p260)
    (goalsize p260 small)
    
    
    
    
    (unused p261)
    (goalsize p261 small)
    
    
    
    
    (unused p262)
    (goalsize p262 medium)
    
    
    
    
    (unused p263)
    (goalsize p263 small)
    
    
    
    
    (unused p264)
    (goalsize p264 medium)
    
    
    
    
    (unused p265)
    (goalsize p265 medium)
    
    
    
    
    (unused p266)
    (goalsize p266 small)
    
    
    
    
    (unused p267)
    (goalsize p267 large)
    
    
    
    
    (unused p268)
    (goalsize p268 small)
    
    
    
    
    (unused p269)
    (goalsize p269 medium)
    
    
    
    
    (unused p270)
    (goalsize p270 medium)
    
    
    
    
    (unused p271)
    (goalsize p271 small)
    
    
    
    
    (unused p272)
    (goalsize p272 medium)
    
    
    
    
    (unused p273)
    (goalsize p273 large)
    
    
    
    
    (unused p274)
    (goalsize p274 small)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s4)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 mahogany)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s7)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s12)
    (wood b12 mahogany)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s7)
    (wood b13 mahogany)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s4)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 oak)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s8)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s9)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s6)
    (wood b22 oak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s7)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s11)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s11)
    (wood b26 oak)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s3)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s5)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s12)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s6)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s9)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s8)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s10)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s4)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s6)
    (wood b37 walnut)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s11)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s8)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s10)
    (wood b40 walnut)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s9)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s9)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s5)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s7)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s5)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s7)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s9)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s6)
    (wood b48 teak)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s11)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s9)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s6)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s4)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s7)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s6)
    (wood b55 teak)
    (surface-condition b55 smooth)
    (available b55)
    (boardsize b56 s12)
    (wood b56 teak)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s5)
    (wood b57 beech)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s6)
    (wood b58 beech)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s6)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s7)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s8)
    (wood b61 beech)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s6)
    (wood b62 beech)
    (surface-condition b62 smooth)
    (available b62)
    (boardsize b63 s9)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s12)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s7)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s8)
    (wood b66 beech)
    (surface-condition b66 smooth)
    (available b66)
    (boardsize b67 s6)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s1)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (treatment p0 glazed)
      (available p1)
      (wood p1 walnut)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 white)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 red)
      (surface-condition p3 verysmooth)
      (available p4)
      (colour p4 blue)
      (wood p4 beech)
      (surface-condition p4 verysmooth)
      (available p5)
      (colour p5 black)
      (wood p5 walnut)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 mauve)
      (wood p6 mahogany)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 natural)
      (wood p7 mahogany)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (wood p8 beech)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 mauve)
      (wood p9 beech)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 mauve)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 green)
      (wood p11 walnut)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 green)
      (wood p12 teak)
      (treatment p12 glazed)
      (available p13)
      (colour p13 white)
      (surface-condition p13 verysmooth)
      (available p14)
      (wood p14 pine)
      (treatment p14 varnished)
      (available p15)
      (colour p15 natural)
      (wood p15 oak)
      (available p16)
      (colour p16 mauve)
      (wood p16 oak)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 natural)
      (wood p17 teak)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 mauve)
      (wood p18 oak)
      (treatment p18 glazed)
      (available p19)
      (colour p19 red)
      (surface-condition p19 verysmooth)
      (available p20)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 natural)
      (wood p21 pine)
      (surface-condition p21 smooth)
      (available p22)
      (colour p22 natural)
      (wood p22 teak)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (wood p23 oak)
      (treatment p23 varnished)
      (available p24)
      (colour p24 mauve)
      (wood p24 pine)
      (available p25)
      (colour p25 black)
      (wood p25 walnut)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 natural)
      (treatment p26 varnished)
      (available p27)
      (wood p27 teak)
      (surface-condition p27 verysmooth)
      (available p28)
      (wood p28 beech)
      (surface-condition p28 smooth)
      (available p29)
      (colour p29 red)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 mauve)
      (wood p30 oak)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 green)
      (wood p31 pine)
      (surface-condition p31 verysmooth)
      (treatment p31 varnished)
      (available p32)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 green)
      (wood p33 mahogany)
      (treatment p33 glazed)
      (available p34)
      (colour p34 green)
      (wood p34 cherry)
      (surface-condition p34 verysmooth)
      (available p35)
      (colour p35 white)
      (surface-condition p35 smooth)
      (available p36)
      (colour p36 mauve)
      (wood p36 teak)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 natural)
      (wood p37 walnut)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 mauve)
      (treatment p38 varnished)
      (available p39)
      (colour p39 natural)
      (wood p39 mahogany)
      (available p40)
      (wood p40 walnut)
      (treatment p40 varnished)
      (available p41)
      (colour p41 blue)
      (wood p41 pine)
      (available p42)
      (colour p42 red)
      (wood p42 mahogany)
      (surface-condition p42 smooth)
      (available p43)
      (wood p43 mahogany)
      (treatment p43 varnished)
      (available p44)
      (colour p44 red)
      (treatment p44 glazed)
      (available p45)
      (colour p45 red)
      (treatment p45 varnished)
      (available p46)
      (colour p46 natural)
      (surface-condition p46 smooth)
      (available p47)
      (colour p47 natural)
      (treatment p47 varnished)
      (available p48)
      (colour p48 green)
      (wood p48 beech)
      (surface-condition p48 verysmooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 natural)
      (wood p49 oak)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (wood p50 teak)
      (treatment p50 varnished)
      (available p51)
      (colour p51 white)
      (wood p51 pine)
      (treatment p51 glazed)
      (available p52)
      (colour p52 mauve)
      (wood p52 teak)
      (available p53)
      (colour p53 blue)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (surface-condition p54 smooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 mauve)
      (treatment p55 varnished)
      (available p56)
      (colour p56 natural)
      (wood p56 teak)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 green)
      (wood p58 cherry)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (wood p59 cherry)
      (treatment p59 varnished)
      (available p60)
      (colour p60 red)
      (wood p60 pine)
      (available p61)
      (wood p61 beech)
      (treatment p61 varnished)
      (available p62)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 red)
      (wood p63 walnut)
      (surface-condition p63 verysmooth)
      (treatment p63 glazed)
      (available p64)
      (colour p64 red)
      (wood p64 oak)
      (treatment p64 glazed)
      (available p65)
      (colour p65 natural)
      (wood p65 pine)
      (surface-condition p65 smooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 natural)
      (treatment p66 glazed)
      (available p67)
      (colour p67 blue)
      (wood p67 oak)
      (available p68)
      (wood p68 pine)
      (surface-condition p68 smooth)
      (available p69)
      (colour p69 blue)
      (wood p69 beech)
      (available p70)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 mauve)
      (wood p71 walnut)
      (available p72)
      (surface-condition p72 verysmooth)
      (treatment p72 varnished)
      (available p73)
      (colour p73 blue)
      (wood p73 cherry)
      (surface-condition p73 verysmooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 white)
      (wood p74 teak)
      (available p75)
      (wood p75 pine)
      (surface-condition p75 smooth)
      (available p76)
      (colour p76 black)
      (wood p76 beech)
      (available p77)
      (wood p77 pine)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (surface-condition p78 smooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 white)
      (wood p79 beech)
      (surface-condition p79 verysmooth)
      (available p80)
      (colour p80 red)
      (surface-condition p80 verysmooth)
      (available p81)
      (colour p81 black)
      (wood p81 teak)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 green)
      (wood p82 pine)
      (treatment p82 varnished)
      (available p83)
      (colour p83 blue)
      (surface-condition p83 smooth)
      (available p84)
      (colour p84 white)
      (surface-condition p84 smooth)
      (treatment p84 glazed)
      (available p85)
      (wood p85 teak)
      (surface-condition p85 smooth)
      (treatment p85 varnished)
      (available p86)
      (colour p86 blue)
      (surface-condition p86 verysmooth)
      (available p87)
      (colour p87 natural)
      (wood p87 oak)
      (available p88)
      (colour p88 white)
      (wood p88 walnut)
      (surface-condition p88 smooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 white)
      (wood p89 walnut)
      (surface-condition p89 smooth)
      (treatment p89 varnished)
      (available p90)
      (wood p90 pine)
      (surface-condition p90 smooth)
      (available p91)
      (colour p91 white)
      (wood p91 cherry)
      (surface-condition p91 smooth)
      (treatment p91 glazed)
      (available p92)
      (colour p92 green)
      (surface-condition p92 verysmooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 red)
      (treatment p93 varnished)
      (available p94)
      (colour p94 blue)
      (wood p94 mahogany)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 mauve)
      (wood p95 walnut)
      (treatment p95 glazed)
      (available p96)
      (colour p96 black)
      (wood p96 mahogany)
      (surface-condition p96 verysmooth)
      (treatment p96 glazed)
      (available p97)
      (colour p97 natural)
      (wood p97 oak)
      (surface-condition p97 smooth)
      (treatment p97 varnished)
      (available p98)
      (colour p98 red)
      (wood p98 beech)
      (surface-condition p98 smooth)
      (treatment p98 glazed)
      (available p99)
      (colour p99 natural)
      (wood p99 oak)
      (available p100)
      (surface-condition p100 smooth)
      (treatment p100 varnished)
      (available p101)
      (wood p101 walnut)
      (surface-condition p101 smooth)
      (available p102)
      (colour p102 red)
      (treatment p102 glazed)
      (available p103)
      (colour p103 white)
      (treatment p103 varnished)
      (available p104)
      (wood p104 walnut)
      (surface-condition p104 smooth)
      (available p105)
      (wood p105 walnut)
      (surface-condition p105 smooth)
      (available p106)
      (colour p106 white)
      (surface-condition p106 smooth)
      (treatment p106 varnished)
      (available p107)
      (colour p107 red)
      (wood p107 oak)
      (available p108)
      (colour p108 red)
      (wood p108 mahogany)
      (surface-condition p108 smooth)
      (available p109)
      (colour p109 red)
      (wood p109 oak)
      (surface-condition p109 verysmooth)
      (treatment p109 glazed)
      (available p110)
      (colour p110 green)
      (wood p110 teak)
      (surface-condition p110 smooth)
      (treatment p110 glazed)
      (available p111)
      (wood p111 teak)
      (treatment p111 glazed)
      (available p112)
      (wood p112 mahogany)
      (surface-condition p112 verysmooth)
      (treatment p112 glazed)
      (available p113)
      (colour p113 green)
      (surface-condition p113 verysmooth)
      (available p114)
      (wood p114 oak)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (surface-condition p115 smooth)
      (treatment p115 varnished)
      (available p116)
      (colour p116 white)
      (wood p116 mahogany)
      (surface-condition p116 smooth)
      (treatment p116 varnished)
      (available p117)
      (wood p117 beech)
      (surface-condition p117 smooth)
      (treatment p117 glazed)
      (available p118)
      (colour p118 mauve)
      (wood p118 oak)
      (surface-condition p118 smooth)
      (available p119)
      (surface-condition p119 verysmooth)
      (treatment p119 glazed)
      (available p120)
      (wood p120 cherry)
      (surface-condition p120 verysmooth)
      (available p121)
      (wood p121 cherry)
      (surface-condition p121 smooth)
      (available p122)
      (colour p122 natural)
      (treatment p122 glazed)
      (available p123)
      (wood p123 mahogany)
      (surface-condition p123 smooth)
      (treatment p123 glazed)
      (available p124)
      (surface-condition p124 verysmooth)
      (treatment p124 glazed)
      (available p125)
      (colour p125 white)
      (wood p125 teak)
      (surface-condition p125 smooth)
      (treatment p125 glazed)
      (available p126)
      (surface-condition p126 smooth)
      (treatment p126 varnished)
      (available p127)
      (wood p127 cherry)
      (treatment p127 glazed)
      (available p128)
      (wood p128 teak)
      (surface-condition p128 verysmooth)
      (available p129)
      (colour p129 green)
      (wood p129 teak)
      (surface-condition p129 smooth)
      (available p130)
      (surface-condition p130 smooth)
      (treatment p130 varnished)
      (available p131)
      (colour p131 black)
      (wood p131 oak)
      (available p132)
      (colour p132 blue)
      (wood p132 mahogany)
      (treatment p132 glazed)
      (available p133)
      (colour p133 white)
      (wood p133 beech)
      (available p134)
      (colour p134 green)
      (wood p134 teak)
      (surface-condition p134 verysmooth)
      (treatment p134 varnished)
      (available p135)
      (colour p135 natural)
      (wood p135 cherry)
      (surface-condition p135 smooth)
      (treatment p135 glazed)
      (available p136)
      (colour p136 red)
      (wood p136 mahogany)
      (surface-condition p136 verysmooth)
      (available p137)
      (colour p137 black)
      (wood p137 beech)
      (available p138)
      (colour p138 red)
      (wood p138 oak)
      (available p139)
      (colour p139 mauve)
      (wood p139 walnut)
      (surface-condition p139 smooth)
      (available p140)
      (colour p140 natural)
      (surface-condition p140 verysmooth)
      (available p141)
      (colour p141 red)
      (wood p141 beech)
      (surface-condition p141 smooth)
      (treatment p141 glazed)
      (available p142)
      (colour p142 red)
      (surface-condition p142 verysmooth)
      (available p143)
      (colour p143 mauve)
      (treatment p143 glazed)
      (available p144)
      (wood p144 cherry)
      (surface-condition p144 smooth)
      (available p145)
      (wood p145 beech)
      (surface-condition p145 smooth)
      (available p146)
      (colour p146 green)
      (wood p146 pine)
      (surface-condition p146 smooth)
      (treatment p146 glazed)
      (available p147)
      (wood p147 walnut)
      (treatment p147 varnished)
      (available p148)
      (colour p148 blue)
      (wood p148 teak)
      (surface-condition p148 verysmooth)
      (treatment p148 varnished)
      (available p149)
      (colour p149 red)
      (wood p149 pine)
      (treatment p149 glazed)
      (available p150)
      (colour p150 blue)
      (surface-condition p150 smooth)
      (available p151)
      (colour p151 red)
      (wood p151 mahogany)
      (surface-condition p151 verysmooth)
      (treatment p151 varnished)
      (available p152)
      (wood p152 teak)
      (surface-condition p152 verysmooth)
      (treatment p152 varnished)
      (available p153)
      (colour p153 white)
      (surface-condition p153 smooth)
      (available p154)
      (colour p154 green)
      (wood p154 teak)
      (surface-condition p154 verysmooth)
      (treatment p154 glazed)
      (available p155)
      (colour p155 green)
      (surface-condition p155 verysmooth)
      (available p156)
      (wood p156 pine)
      (surface-condition p156 smooth)
      (available p157)
      (surface-condition p157 smooth)
      (treatment p157 glazed)
      (available p158)
      (wood p158 beech)
      (surface-condition p158 verysmooth)
      (available p159)
      (wood p159 mahogany)
      (surface-condition p159 smooth)
      (available p160)
      (colour p160 white)
      (wood p160 pine)
      (surface-condition p160 verysmooth)
      (treatment p160 varnished)
      (available p161)
      (colour p161 blue)
      (surface-condition p161 verysmooth)
      (available p162)
      (colour p162 red)
      (wood p162 beech)
      (treatment p162 varnished)
      (available p163)
      (colour p163 blue)
      (wood p163 mahogany)
      (available p164)
      (surface-condition p164 smooth)
      (treatment p164 varnished)
      (available p165)
      (colour p165 white)
      (wood p165 oak)
      (surface-condition p165 verysmooth)
      (treatment p165 glazed)
      (available p166)
      (colour p166 black)
      (wood p166 cherry)
      (available p167)
      (colour p167 natural)
      (surface-condition p167 verysmooth)
      (available p168)
      (surface-condition p168 smooth)
      (treatment p168 glazed)
      (available p169)
      (wood p169 oak)
      (surface-condition p169 verysmooth)
      (treatment p169 varnished)
      (available p170)
      (surface-condition p170 verysmooth)
      (treatment p170 glazed)
      (available p171)
      (colour p171 white)
      (wood p171 oak)
      (surface-condition p171 smooth)
      (available p172)
      (colour p172 black)
      (surface-condition p172 verysmooth)
      (available p173)
      (colour p173 natural)
      (wood p173 oak)
      (surface-condition p173 smooth)
      (available p174)
      (colour p174 black)
      (wood p174 teak)
      (treatment p174 glazed)
      (available p175)
      (colour p175 natural)
      (wood p175 teak)
      (surface-condition p175 smooth)
      (available p176)
      (colour p176 natural)
      (wood p176 pine)
      (surface-condition p176 smooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 mauve)
      (treatment p177 glazed)
      (available p178)
      (colour p178 green)
      (treatment p178 glazed)
      (available p179)
      (surface-condition p179 smooth)
      (treatment p179 glazed)
      (available p180)
      (colour p180 green)
      (treatment p180 varnished)
      (available p181)
      (wood p181 walnut)
      (surface-condition p181 smooth)
      (available p182)
      (wood p182 walnut)
      (surface-condition p182 smooth)
      (available p183)
      (wood p183 teak)
      (treatment p183 varnished)
      (available p184)
      (colour p184 white)
      (wood p184 walnut)
      (surface-condition p184 smooth)
      (treatment p184 glazed)
      (available p185)
      (wood p185 teak)
      (treatment p185 glazed)
      (available p186)
      (wood p186 walnut)
      (surface-condition p186 verysmooth)
      (available p187)
      (wood p187 teak)
      (treatment p187 varnished)
      (available p188)
      (wood p188 beech)
      (treatment p188 glazed)
      (available p189)
      (wood p189 walnut)
      (surface-condition p189 smooth)
      (treatment p189 varnished)
      (available p190)
      (surface-condition p190 smooth)
      (treatment p190 glazed)
      (available p191)
      (colour p191 green)
      (treatment p191 varnished)
      (available p192)
      (colour p192 mauve)
      (surface-condition p192 verysmooth)
      (available p193)
      (colour p193 green)
      (treatment p193 varnished)
      (available p194)
      (colour p194 blue)
      (treatment p194 glazed)
      (available p195)
      (colour p195 green)
      (wood p195 mahogany)
      (surface-condition p195 smooth)
      (treatment p195 varnished)
      (available p196)
      (colour p196 red)
      (surface-condition p196 verysmooth)
      (treatment p196 glazed)
      (available p197)
      (surface-condition p197 verysmooth)
      (treatment p197 glazed)
      (available p198)
      (colour p198 mauve)
      (wood p198 oak)
      (surface-condition p198 smooth)
      (treatment p198 varnished)
      (available p199)
      (colour p199 green)
      (wood p199 beech)
      (treatment p199 glazed)
      (available p200)
      (colour p200 green)
      (wood p200 beech)
      (available p201)
      (wood p201 mahogany)
      (surface-condition p201 smooth)
      (available p202)
      (colour p202 natural)
      (wood p202 beech)
      (surface-condition p202 smooth)
      (treatment p202 glazed)
      (available p203)
      (colour p203 mauve)
      (wood p203 teak)
      (surface-condition p203 verysmooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 black)
      (wood p204 pine)
      (surface-condition p204 smooth)
      (treatment p204 glazed)
      (available p205)
      (colour p205 red)
      (surface-condition p205 verysmooth)
      (available p206)
      (colour p206 blue)
      (wood p206 walnut)
      (treatment p206 varnished)
      (available p207)
      (colour p207 white)
      (wood p207 oak)
      (surface-condition p207 smooth)
      (treatment p207 varnished)
      (available p208)
      (colour p208 red)
      (surface-condition p208 smooth)
      (available p209)
      (colour p209 natural)
      (wood p209 pine)
      (surface-condition p209 smooth)
      (treatment p209 varnished)
      (available p210)
      (colour p210 blue)
      (treatment p210 varnished)
      (available p211)
      (colour p211 white)
      (surface-condition p211 verysmooth)
      (treatment p211 glazed)
      (available p212)
      (wood p212 walnut)
      (surface-condition p212 verysmooth)
      (treatment p212 glazed)
      (available p213)
      (wood p213 teak)
      (treatment p213 glazed)
      (available p214)
      (wood p214 mahogany)
      (surface-condition p214 verysmooth)
      (treatment p214 varnished)
      (available p215)
      (colour p215 natural)
      (treatment p215 glazed)
      (available p216)
      (colour p216 mauve)
      (wood p216 beech)
      (surface-condition p216 verysmooth)
      (treatment p216 glazed)
      (available p217)
      (colour p217 white)
      (wood p217 mahogany)
      (available p218)
      (wood p218 teak)
      (treatment p218 varnished)
      (available p219)
      (wood p219 mahogany)
      (treatment p219 varnished)
      (available p220)
      (surface-condition p220 smooth)
      (treatment p220 varnished)
      (available p221)
      (wood p221 oak)
      (surface-condition p221 verysmooth)
      (available p222)
      (colour p222 mauve)
      (surface-condition p222 smooth)
      (available p223)
      (colour p223 green)
      (wood p223 oak)
      (available p224)
      (colour p224 red)
      (wood p224 oak)
      (available p225)
      (colour p225 mauve)
      (wood p225 oak)
      (available p226)
      (colour p226 mauve)
      (wood p226 walnut)
      (surface-condition p226 smooth)
      (treatment p226 glazed)
      (available p227)
      (surface-condition p227 smooth)
      (treatment p227 varnished)
      (available p228)
      (colour p228 green)
      (wood p228 walnut)
      (surface-condition p228 verysmooth)
      (treatment p228 varnished)
      (available p229)
      (colour p229 natural)
      (wood p229 mahogany)
      (surface-condition p229 smooth)
      (treatment p229 glazed)
      (available p230)
      (colour p230 black)
      (surface-condition p230 verysmooth)
      (treatment p230 varnished)
      (available p231)
      (surface-condition p231 verysmooth)
      (treatment p231 glazed)
      (available p232)
      (colour p232 white)
      (treatment p232 glazed)
      (available p233)
      (colour p233 green)
      (surface-condition p233 smooth)
      (treatment p233 glazed)
      (available p234)
      (colour p234 blue)
      (wood p234 walnut)
      (available p235)
      (colour p235 green)
      (wood p235 mahogany)
      (available p236)
      (surface-condition p236 verysmooth)
      (treatment p236 varnished)
      (available p237)
      (colour p237 mauve)
      (wood p237 pine)
      (surface-condition p237 smooth)
      (treatment p237 glazed)
      (available p238)
      (wood p238 walnut)
      (surface-condition p238 verysmooth)
      (treatment p238 glazed)
      (available p239)
      (colour p239 red)
      (wood p239 mahogany)
      (surface-condition p239 verysmooth)
      (treatment p239 glazed)
      (available p240)
      (surface-condition p240 verysmooth)
      (treatment p240 varnished)
      (available p241)
      (surface-condition p241 verysmooth)
      (treatment p241 glazed)
      (available p242)
      (wood p242 mahogany)
      (treatment p242 varnished)
      (available p243)
      (surface-condition p243 smooth)
      (treatment p243 varnished)
      (available p244)
      (colour p244 mauve)
      (treatment p244 glazed)
      (available p245)
      (wood p245 walnut)
      (treatment p245 glazed)
      (available p246)
      (wood p246 pine)
      (surface-condition p246 smooth)
      (treatment p246 varnished)
      (available p247)
      (surface-condition p247 smooth)
      (treatment p247 varnished)
      (available p248)
      (wood p248 oak)
      (surface-condition p248 smooth)
      (treatment p248 glazed)
      (available p249)
      (surface-condition p249 smooth)
      (treatment p249 varnished)
      (available p250)
      (colour p250 green)
      (wood p250 cherry)
      (surface-condition p250 smooth)
      (treatment p250 varnished)
      (available p251)
      (colour p251 natural)
      (wood p251 mahogany)
      (surface-condition p251 verysmooth)
      (treatment p251 varnished)
      (available p252)
      (colour p252 white)
      (surface-condition p252 smooth)
      (available p253)
      (colour p253 black)
      (wood p253 oak)
      (treatment p253 glazed)
      (available p254)
      (colour p254 natural)
      (wood p254 oak)
      (surface-condition p254 smooth)
      (treatment p254 glazed)
      (available p255)
      (colour p255 white)
      (wood p255 pine)
      (surface-condition p255 smooth)
      (treatment p255 glazed)
      (available p256)
      (colour p256 white)
      (wood p256 pine)
      (surface-condition p256 smooth)
      (treatment p256 varnished)
      (available p257)
      (colour p257 red)
      (wood p257 teak)
      (surface-condition p257 verysmooth)
      (treatment p257 varnished)
      (available p258)
      (colour p258 white)
      (treatment p258 glazed)
      (available p259)
      (colour p259 blue)
      (wood p259 beech)
      (available p260)
      (wood p260 beech)
      (surface-condition p260 verysmooth)
      (available p261)
      (colour p261 red)
      (wood p261 oak)
      (surface-condition p261 verysmooth)
      (treatment p261 varnished)
      (available p262)
      (colour p262 natural)
      (treatment p262 glazed)
      (available p263)
      (wood p263 mahogany)
      (treatment p263 varnished)
      (available p264)
      (wood p264 beech)
      (treatment p264 glazed)
      (available p265)
      (colour p265 natural)
      (wood p265 beech)
      (surface-condition p265 verysmooth)
      (available p266)
      (wood p266 walnut)
      (treatment p266 glazed)
      (available p267)
      (colour p267 white)
      (treatment p267 varnished)
      (available p268)
      (wood p268 beech)
      (surface-condition p268 smooth)
      (available p269)
      (colour p269 white)
      (wood p269 cherry)
      (surface-condition p269 verysmooth)
      (treatment p269 glazed)
      (available p270)
      (colour p270 mauve)
      (wood p270 pine)
      (surface-condition p270 smooth)
      (treatment p270 varnished)
      (available p271)
      (wood p271 beech)
      (treatment p271 glazed)
      (available p272)
      (colour p272 blue)
      (treatment p272 varnished)
      (available p273)
      (wood p273 cherry)
      (surface-condition p273 verysmooth)
      (available p274)
      (colour p274 white)
      (wood p274 teak)
      (surface-condition p274 smooth)
      (treatment p274 glazed)
    )
  )
  
)
