; woodworking task with 278 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 264215

(define (problem wood-prob-sat-197)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white black blue green mauve red - acolour
    beech mahogany oak walnut cherry pine teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 - part
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
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
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (available p2)
    (colour p2 red)
    (wood p2 beech)
    (surface-condition p2 verysmooth)
    (treatment p2 colourfragments)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (available p8)
    (colour p8 green)
    (wood p8 cherry)
    (surface-condition p8 rough)
    (treatment p8 glazed)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (available p16)
    (colour p16 natural)
    (wood p16 pine)
    (surface-condition p16 smooth)
    (treatment p16 glazed)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 mauve)
    (wood p26 cherry)
    (surface-condition p26 smooth)
    (treatment p26 varnished)
    (goalsize p26 large)
    
    
    
    
    (available p27)
    (colour p27 mauve)
    (wood p27 walnut)
    (surface-condition p27 verysmooth)
    (treatment p27 colourfragments)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (available p34)
    (colour p34 natural)
    (wood p34 oak)
    (surface-condition p34 rough)
    (treatment p34 glazed)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 black)
    (wood p36 oak)
    (surface-condition p36 verysmooth)
    (treatment p36 colourfragments)
    (goalsize p36 large)
    
    
    
    
    (available p37)
    (colour p37 green)
    (wood p37 oak)
    (surface-condition p37 rough)
    (treatment p37 glazed)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (available p41)
    (colour p41 mauve)
    (wood p41 walnut)
    (surface-condition p41 verysmooth)
    (treatment p41 glazed)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (available p44)
    (colour p44 blue)
    (wood p44 walnut)
    (surface-condition p44 smooth)
    (treatment p44 colourfragments)
    (goalsize p44 medium)
    
    
    
    
    (available p45)
    (colour p45 mauve)
    (wood p45 teak)
    (surface-condition p45 smooth)
    (treatment p45 glazed)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (available p48)
    (colour p48 blue)
    (wood p48 cherry)
    (surface-condition p48 rough)
    (treatment p48 varnished)
    (goalsize p48 large)
    
    
    
    
    (available p49)
    (colour p49 natural)
    (wood p49 oak)
    (surface-condition p49 verysmooth)
    (treatment p49 colourfragments)
    (goalsize p49 small)
    
    
    
    
    (available p50)
    (colour p50 mauve)
    (wood p50 teak)
    (surface-condition p50 verysmooth)
    (treatment p50 glazed)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (available p60)
    (colour p60 mauve)
    (wood p60 pine)
    (surface-condition p60 rough)
    (treatment p60 colourfragments)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (available p64)
    (colour p64 red)
    (wood p64 beech)
    (surface-condition p64 smooth)
    (treatment p64 varnished)
    (goalsize p64 medium)
    
    
    
    
    (available p65)
    (colour p65 white)
    (wood p65 walnut)
    (surface-condition p65 rough)
    (treatment p65 colourfragments)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (available p75)
    (colour p75 natural)
    (wood p75 pine)
    (surface-condition p75 rough)
    (treatment p75 glazed)
    (goalsize p75 medium)
    
    
    
    
    (available p76)
    (colour p76 natural)
    (wood p76 teak)
    (surface-condition p76 smooth)
    (treatment p76 colourfragments)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (available p79)
    (colour p79 natural)
    (wood p79 pine)
    (surface-condition p79 smooth)
    (treatment p79 glazed)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (available p81)
    (colour p81 blue)
    (wood p81 cherry)
    (surface-condition p81 verysmooth)
    (treatment p81 glazed)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (available p89)
    (colour p89 green)
    (wood p89 mahogany)
    (surface-condition p89 verysmooth)
    (treatment p89 glazed)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (available p97)
    (colour p97 green)
    (wood p97 beech)
    (surface-condition p97 smooth)
    (treatment p97 colourfragments)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (available p100)
    (colour p100 blue)
    (wood p100 pine)
    (surface-condition p100 smooth)
    (treatment p100 glazed)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (available p102)
    (colour p102 red)
    (wood p102 walnut)
    (surface-condition p102 rough)
    (treatment p102 colourfragments)
    (goalsize p102 medium)
    
    
    
    
    (available p103)
    (colour p103 red)
    (wood p103 walnut)
    (surface-condition p103 smooth)
    (treatment p103 varnished)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (available p113)
    (colour p113 natural)
    (wood p113 walnut)
    (surface-condition p113 verysmooth)
    (treatment p113 varnished)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (available p117)
    (colour p117 white)
    (wood p117 oak)
    (surface-condition p117 rough)
    (treatment p117 varnished)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (available p120)
    (colour p120 blue)
    (wood p120 teak)
    (surface-condition p120 rough)
    (treatment p120 varnished)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (available p122)
    (colour p122 white)
    (wood p122 cherry)
    (surface-condition p122 verysmooth)
    (treatment p122 varnished)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (available p126)
    (colour p126 white)
    (wood p126 mahogany)
    (surface-condition p126 rough)
    (treatment p126 colourfragments)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (available p133)
    (colour p133 green)
    (wood p133 pine)
    (surface-condition p133 rough)
    (treatment p133 glazed)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (available p138)
    (colour p138 black)
    (wood p138 oak)
    (surface-condition p138 smooth)
    (treatment p138 varnished)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (available p147)
    (colour p147 white)
    (wood p147 cherry)
    (surface-condition p147 rough)
    (treatment p147 glazed)
    (goalsize p147 small)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (available p157)
    (colour p157 mauve)
    (wood p157 beech)
    (surface-condition p157 smooth)
    (treatment p157 varnished)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (available p164)
    (colour p164 mauve)
    (wood p164 cherry)
    (surface-condition p164 rough)
    (treatment p164 colourfragments)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 medium)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (available p172)
    (colour p172 red)
    (wood p172 walnut)
    (surface-condition p172 smooth)
    (treatment p172 colourfragments)
    (goalsize p172 medium)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
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
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 medium)
    
    
    
    
    (available p188)
    (colour p188 white)
    (wood p188 cherry)
    (surface-condition p188 smooth)
    (treatment p188 colourfragments)
    (goalsize p188 small)
    
    
    
    
    (available p189)
    (colour p189 red)
    (wood p189 oak)
    (surface-condition p189 rough)
    (treatment p189 colourfragments)
    (goalsize p189 small)
    
    
    
    
    (available p190)
    (colour p190 mauve)
    (wood p190 cherry)
    (surface-condition p190 smooth)
    (treatment p190 glazed)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 medium)
    
    
    
    
    (unused p193)
    (goalsize p193 large)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (available p196)
    (colour p196 white)
    (wood p196 oak)
    (surface-condition p196 rough)
    (treatment p196 colourfragments)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 small)
    
    
    
    
    (unused p198)
    (goalsize p198 medium)
    
    
    
    
    (unused p199)
    (goalsize p199 medium)
    
    
    
    
    (unused p200)
    (goalsize p200 small)
    
    
    
    
    (unused p201)
    (goalsize p201 small)
    
    
    
    
    (available p202)
    (colour p202 blue)
    (wood p202 cherry)
    (surface-condition p202 verysmooth)
    (treatment p202 colourfragments)
    (goalsize p202 small)
    
    
    
    
    (unused p203)
    (goalsize p203 medium)
    
    
    
    
    (unused p204)
    (goalsize p204 small)
    
    
    
    
    (available p205)
    (colour p205 white)
    (wood p205 teak)
    (surface-condition p205 verysmooth)
    (treatment p205 varnished)
    (goalsize p205 large)
    
    
    
    
    (unused p206)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (available p208)
    (colour p208 black)
    (wood p208 pine)
    (surface-condition p208 verysmooth)
    (treatment p208 colourfragments)
    (goalsize p208 small)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 medium)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 medium)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (unused p215)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 medium)
    
    
    
    
    (unused p217)
    (goalsize p217 small)
    
    
    
    
    (unused p218)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 small)
    
    
    
    
    (unused p220)
    (goalsize p220 small)
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 large)
    
    
    
    
    (available p223)
    (colour p223 mauve)
    (wood p223 beech)
    (surface-condition p223 verysmooth)
    (treatment p223 varnished)
    (goalsize p223 small)
    
    
    
    
    (unused p224)
    (goalsize p224 large)
    
    
    
    
    (unused p225)
    (goalsize p225 medium)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (unused p227)
    (goalsize p227 large)
    
    
    
    
    (unused p228)
    (goalsize p228 medium)
    
    
    
    
    (available p229)
    (colour p229 white)
    (wood p229 pine)
    (surface-condition p229 rough)
    (treatment p229 varnished)
    (goalsize p229 large)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (unused p232)
    (goalsize p232 small)
    
    
    
    
    (available p233)
    (colour p233 red)
    (wood p233 pine)
    (surface-condition p233 verysmooth)
    (treatment p233 colourfragments)
    (goalsize p233 large)
    
    
    
    
    (unused p234)
    (goalsize p234 large)
    
    
    
    
    (unused p235)
    (goalsize p235 small)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (unused p237)
    (goalsize p237 small)
    
    
    
    
    (available p238)
    (colour p238 black)
    (wood p238 teak)
    (surface-condition p238 smooth)
    (treatment p238 varnished)
    (goalsize p238 medium)
    
    
    
    
    (unused p239)
    (goalsize p239 large)
    
    
    
    
    (unused p240)
    (goalsize p240 large)
    
    
    
    
    (unused p241)
    (goalsize p241 large)
    
    
    
    
    (available p242)
    (colour p242 white)
    (wood p242 cherry)
    (surface-condition p242 smooth)
    (treatment p242 glazed)
    (goalsize p242 small)
    
    
    
    
    (unused p243)
    (goalsize p243 large)
    
    
    
    
    (unused p244)
    (goalsize p244 small)
    
    
    
    
    (unused p245)
    (goalsize p245 large)
    
    
    
    
    (unused p246)
    (goalsize p246 large)
    
    
    
    
    (unused p247)
    (goalsize p247 large)
    
    
    
    
    (unused p248)
    (goalsize p248 small)
    
    
    
    
    (unused p249)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 medium)
    
    
    
    
    (unused p251)
    (goalsize p251 large)
    
    
    
    
    (available p252)
    (colour p252 red)
    (wood p252 pine)
    (surface-condition p252 rough)
    (treatment p252 varnished)
    (goalsize p252 large)
    
    
    
    
    (unused p253)
    (goalsize p253 small)
    
    
    
    
    (unused p254)
    (goalsize p254 medium)
    
    
    
    
    (available p255)
    (colour p255 mauve)
    (wood p255 walnut)
    (surface-condition p255 smooth)
    (treatment p255 colourfragments)
    (goalsize p255 medium)
    
    
    
    
    (unused p256)
    (goalsize p256 small)
    
    
    
    
    (unused p257)
    (goalsize p257 medium)
    
    
    
    
    (unused p258)
    (goalsize p258 small)
    
    
    
    
    (unused p259)
    (goalsize p259 medium)
    
    
    
    
    (unused p260)
    (goalsize p260 small)
    
    
    
    
    (unused p261)
    (goalsize p261 medium)
    
    
    
    
    (unused p262)
    (goalsize p262 medium)
    
    
    
    
    (unused p263)
    (goalsize p263 small)
    
    
    
    
    (unused p264)
    (goalsize p264 large)
    
    
    
    
    (unused p265)
    (goalsize p265 large)
    
    
    
    
    (unused p266)
    (goalsize p266 small)
    
    
    
    
    (unused p267)
    (goalsize p267 medium)
    
    
    
    
    (unused p268)
    (goalsize p268 large)
    
    
    
    
    (available p269)
    (colour p269 mauve)
    (wood p269 beech)
    (surface-condition p269 verysmooth)
    (treatment p269 varnished)
    (goalsize p269 large)
    
    
    
    
    (unused p270)
    (goalsize p270 large)
    
    
    
    
    (available p271)
    (colour p271 white)
    (wood p271 pine)
    (surface-condition p271 verysmooth)
    (treatment p271 varnished)
    (goalsize p271 medium)
    
    
    
    
    (available p272)
    (colour p272 green)
    (wood p272 walnut)
    (surface-condition p272 rough)
    (treatment p272 glazed)
    (goalsize p272 medium)
    
    
    
    
    (unused p273)
    (goalsize p273 large)
    
    
    
    
    (unused p274)
    (goalsize p274 medium)
    
    
    
    
    (unused p275)
    (goalsize p275 medium)
    
    
    
    
    (unused p276)
    (goalsize p276 medium)
    
    
    
    
    (available p277)
    (colour p277 red)
    (wood p277 oak)
    (surface-condition p277 smooth)
    (treatment p277 colourfragments)
    (goalsize p277 medium)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s5)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s9)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s4)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s5)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s6)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 mahogany)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s2)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 oak)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s10)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s10)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s5)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s7)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s6)
    (wood b23 oak)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s6)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s11)
    (wood b25 oak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s7)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s6)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s8)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s7)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s6)
    (wood b34 pine)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s7)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s10)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s9)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s7)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s7)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s1)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s6)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s6)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s9)
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
    (boardsize b47 s10)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s7)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s9)
    (wood b49 walnut)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s9)
    (wood b50 walnut)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s9)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s6)
    (wood b52 walnut)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s12)
    (wood b53 walnut)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s7)
    (wood b54 walnut)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s10)
    (wood b55 teak)
    (surface-condition b55 smooth)
    (available b55)
    (boardsize b56 s8)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s8)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s7)
    (wood b58 teak)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s8)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s6)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s8)
    (wood b61 teak)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s10)
    (wood b62 teak)
    (surface-condition b62 smooth)
    (available b62)
    (boardsize b63 s7)
    (wood b63 teak)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s9)
    (wood b64 teak)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s8)
    (wood b65 teak)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s8)
    (wood b66 teak)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s8)
    (wood b67 teak)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s11)
    (wood b68 beech)
    (surface-condition b68 smooth)
    (available b68)
    (boardsize b69 s9)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s8)
    (wood b70 beech)
    (surface-condition b70 smooth)
    (available b70)
    (boardsize b71 s6)
    (wood b71 beech)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s8)
    (wood b72 beech)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s8)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
    (boardsize b74 s7)
    (wood b74 beech)
    (surface-condition b74 rough)
    (available b74)
    (boardsize b75 s9)
    (wood b75 beech)
    (surface-condition b75 rough)
    (available b75)
    (boardsize b76 s8)
    (wood b76 beech)
    (surface-condition b76 rough)
    (available b76)
    (boardsize b77 s8)
    (wood b77 beech)
    (surface-condition b77 rough)
    (available b77)
    (boardsize b78 s10)
    (wood b78 beech)
    (surface-condition b78 rough)
    (available b78)
    (boardsize b79 s7)
    (wood b79 beech)
    (surface-condition b79 rough)
    (available b79)
    (boardsize b80 s10)
    (wood b80 beech)
    (surface-condition b80 rough)
    (available b80)
    (boardsize b81 s1)
    (wood b81 beech)
    (surface-condition b81 rough)
    (available b81)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 teak)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 green)
      (wood p2 beech)
      (available p3)
      (colour p3 black)
      (wood p3 mahogany)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 white)
      (wood p4 oak)
      (available p5)
      (colour p5 blue)
      (wood p5 pine)
      (surface-condition p5 smooth)
      (available p6)
      (wood p6 pine)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 black)
      (wood p7 pine)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 red)
      (wood p8 cherry)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 natural)
      (wood p9 cherry)
      (available p10)
      (wood p10 walnut)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (wood p11 walnut)
      (treatment p11 glazed)
      (available p12)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 blue)
      (surface-condition p13 verysmooth)
      (treatment p13 glazed)
      (available p14)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 green)
      (treatment p15 glazed)
      (available p16)
      (colour p16 blue)
      (wood p16 pine)
      (available p17)
      (colour p17 mauve)
      (wood p17 beech)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 mahogany)
      (treatment p18 varnished)
      (available p19)
      (wood p19 walnut)
      (treatment p19 glazed)
      (available p20)
      (colour p20 red)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (wood p21 oak)
      (treatment p21 glazed)
      (available p22)
      (wood p22 cherry)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 blue)
      (wood p23 oak)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 blue)
      (treatment p24 glazed)
      (available p25)
      (colour p25 red)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 black)
      (wood p26 cherry)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 black)
      (wood p27 walnut)
      (available p28)
      (colour p28 blue)
      (wood p28 walnut)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 natural)
      (wood p30 beech)
      (available p31)
      (colour p31 black)
      (wood p31 cherry)
      (available p32)
      (colour p32 blue)
      (wood p32 oak)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (surface-condition p33 smooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 blue)
      (treatment p34 glazed)
      (available p35)
      (colour p35 green)
      (surface-condition p35 verysmooth)
      (available p36)
      (wood p36 oak)
      (surface-condition p36 smooth)
      (available p37)
      (colour p37 blue)
      (surface-condition p37 verysmooth)
      (available p38)
      (wood p38 beech)
      (surface-condition p38 smooth)
      (available p39)
      (colour p39 natural)
      (wood p39 beech)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (wood p40 mahogany)
      (surface-condition p40 verysmooth)
      (available p41)
      (colour p41 black)
      (treatment p41 varnished)
      (available p42)
      (colour p42 natural)
      (wood p42 beech)
      (available p43)
      (colour p43 white)
      (surface-condition p43 smooth)
      (available p44)
      (surface-condition p44 verysmooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 red)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (wood p46 beech)
      (surface-condition p46 verysmooth)
      (available p47)
      (colour p47 white)
      (wood p47 walnut)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 black)
      (wood p48 cherry)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 red)
      (wood p49 oak)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 red)
      (wood p50 teak)
      (surface-condition p50 verysmooth)
      (treatment p50 glazed)
      (available p51)
      (wood p51 beech)
      (surface-condition p51 smooth)
      (available p52)
      (colour p52 red)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 black)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 mauve)
      (wood p54 teak)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (wood p55 walnut)
      (treatment p55 glazed)
      (available p56)
      (colour p56 black)
      (treatment p56 varnished)
      (available p57)
      (colour p57 green)
      (wood p57 teak)
      (available p58)
      (colour p58 red)
      (surface-condition p58 verysmooth)
      (available p59)
      (wood p59 cherry)
      (treatment p59 glazed)
      (available p60)
      (wood p60 pine)
      (surface-condition p60 smooth)
      (available p61)
      (wood p61 mahogany)
      (treatment p61 varnished)
      (available p62)
      (colour p62 green)
      (wood p62 teak)
      (surface-condition p62 smooth)
      (available p63)
      (colour p63 mauve)
      (wood p63 beech)
      (surface-condition p63 verysmooth)
      (treatment p63 glazed)
      (available p64)
      (colour p64 blue)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (wood p65 walnut)
      (surface-condition p65 verysmooth)
      (available p66)
      (wood p66 oak)
      (surface-condition p66 verysmooth)
      (treatment p66 glazed)
      (available p67)
      (surface-condition p67 verysmooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 mauve)
      (wood p68 pine)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 mauve)
      (surface-condition p69 verysmooth)
      (treatment p69 varnished)
      (available p70)
      (surface-condition p70 smooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 green)
      (wood p71 oak)
      (surface-condition p71 verysmooth)
      (available p72)
      (wood p72 oak)
      (surface-condition p72 smooth)
      (available p73)
      (colour p73 red)
      (surface-condition p73 verysmooth)
      (available p74)
      (colour p74 blue)
      (wood p74 beech)
      (surface-condition p74 verysmooth)
      (treatment p74 varnished)
      (available p75)
      (wood p75 pine)
      (treatment p75 varnished)
      (available p76)
      (colour p76 black)
      (treatment p76 varnished)
      (available p77)
      (wood p77 walnut)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 mauve)
      (wood p78 cherry)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 blue)
      (treatment p79 varnished)
      (available p80)
      (wood p80 beech)
      (treatment p80 glazed)
      (available p81)
      (colour p81 white)
      (wood p81 cherry)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (wood p82 walnut)
      (treatment p82 varnished)
      (available p83)
      (surface-condition p83 smooth)
      (treatment p83 glazed)
      (available p84)
      (colour p84 black)
      (wood p84 beech)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (surface-condition p85 verysmooth)
      (treatment p85 varnished)
      (available p86)
      (wood p86 mahogany)
      (treatment p86 glazed)
      (available p87)
      (wood p87 walnut)
      (treatment p87 glazed)
      (available p88)
      (wood p88 oak)
      (surface-condition p88 verysmooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 natural)
      (wood p89 mahogany)
      (surface-condition p89 smooth)
      (treatment p89 varnished)
      (available p90)
      (wood p90 walnut)
      (surface-condition p90 smooth)
      (available p91)
      (colour p91 black)
      (wood p91 oak)
      (surface-condition p91 smooth)
      (treatment p91 glazed)
      (available p92)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (colour p93 natural)
      (wood p93 cherry)
      (surface-condition p93 verysmooth)
      (treatment p93 glazed)
      (available p94)
      (surface-condition p94 verysmooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 red)
      (treatment p95 glazed)
      (available p96)
      (colour p96 red)
      (surface-condition p96 smooth)
      (available p97)
      (colour p97 white)
      (surface-condition p97 verysmooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 natural)
      (surface-condition p98 verysmooth)
      (available p99)
      (colour p99 white)
      (wood p99 oak)
      (surface-condition p99 smooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 mauve)
      (surface-condition p100 verysmooth)
      (available p101)
      (colour p101 mauve)
      (wood p101 mahogany)
      (treatment p101 varnished)
      (available p102)
      (colour p102 white)
      (treatment p102 varnished)
      (available p103)
      (colour p103 natural)
      (wood p103 walnut)
      (treatment p103 glazed)
      (available p104)
      (colour p104 natural)
      (wood p104 teak)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 white)
      (wood p105 teak)
      (surface-condition p105 smooth)
      (available p106)
      (wood p106 teak)
      (treatment p106 varnished)
      (available p107)
      (colour p107 natural)
      (wood p107 teak)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (colour p108 natural)
      (wood p108 pine)
      (surface-condition p108 smooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 blue)
      (surface-condition p109 verysmooth)
      (treatment p109 glazed)
      (available p110)
      (colour p110 green)
      (wood p110 oak)
      (surface-condition p110 smooth)
      (treatment p110 varnished)
      (available p111)
      (colour p111 blue)
      (wood p111 pine)
      (surface-condition p111 smooth)
      (treatment p111 varnished)
      (available p112)
      (wood p112 beech)
      (surface-condition p112 verysmooth)
      (available p113)
      (wood p113 walnut)
      (surface-condition p113 smooth)
      (available p114)
      (wood p114 walnut)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (colour p115 red)
      (treatment p115 varnished)
      (available p116)
      (wood p116 pine)
      (treatment p116 varnished)
      (available p117)
      (surface-condition p117 smooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 blue)
      (treatment p118 glazed)
      (available p119)
      (colour p119 natural)
      (treatment p119 glazed)
      (available p120)
      (colour p120 green)
      (wood p120 teak)
      (surface-condition p120 smooth)
      (treatment p120 varnished)
      (available p121)
      (colour p121 red)
      (wood p121 pine)
      (treatment p121 varnished)
      (available p122)
      (colour p122 mauve)
      (wood p122 cherry)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (colour p123 natural)
      (treatment p123 glazed)
      (available p124)
      (wood p124 pine)
      (surface-condition p124 verysmooth)
      (available p125)
      (colour p125 red)
      (wood p125 pine)
      (available p126)
      (surface-condition p126 smooth)
      (treatment p126 varnished)
      (available p127)
      (colour p127 red)
      (wood p127 cherry)
      (surface-condition p127 verysmooth)
      (available p128)
      (wood p128 teak)
      (surface-condition p128 verysmooth)
      (treatment p128 varnished)
      (available p129)
      (surface-condition p129 smooth)
      (treatment p129 glazed)
      (available p130)
      (colour p130 green)
      (surface-condition p130 verysmooth)
      (available p131)
      (colour p131 mauve)
      (wood p131 beech)
      (treatment p131 glazed)
      (available p132)
      (colour p132 red)
      (surface-condition p132 smooth)
      (treatment p132 glazed)
      (available p133)
      (colour p133 white)
      (wood p133 pine)
      (surface-condition p133 smooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 mauve)
      (surface-condition p134 verysmooth)
      (available p135)
      (colour p135 black)
      (wood p135 teak)
      (surface-condition p135 smooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 white)
      (surface-condition p136 smooth)
      (treatment p136 varnished)
      (available p137)
      (colour p137 white)
      (treatment p137 varnished)
      (available p138)
      (colour p138 red)
      (wood p138 oak)
      (available p139)
      (colour p139 black)
      (treatment p139 varnished)
      (available p140)
      (colour p140 mauve)
      (wood p140 walnut)
      (available p141)
      (colour p141 white)
      (surface-condition p141 verysmooth)
      (available p142)
      (surface-condition p142 smooth)
      (treatment p142 varnished)
      (available p143)
      (wood p143 oak)
      (surface-condition p143 smooth)
      (available p144)
      (colour p144 natural)
      (wood p144 teak)
      (treatment p144 varnished)
      (available p145)
      (wood p145 oak)
      (surface-condition p145 verysmooth)
      (available p146)
      (colour p146 black)
      (wood p146 walnut)
      (surface-condition p146 smooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 blue)
      (treatment p147 varnished)
      (available p148)
      (colour p148 blue)
      (wood p148 oak)
      (surface-condition p148 verysmooth)
      (treatment p148 varnished)
      (available p149)
      (colour p149 natural)
      (wood p149 oak)
      (surface-condition p149 smooth)
      (treatment p149 varnished)
      (available p150)
      (colour p150 white)
      (wood p150 pine)
      (surface-condition p150 verysmooth)
      (treatment p150 varnished)
      (available p151)
      (colour p151 white)
      (wood p151 walnut)
      (surface-condition p151 smooth)
      (treatment p151 varnished)
      (available p152)
      (wood p152 oak)
      (surface-condition p152 smooth)
      (available p153)
      (wood p153 teak)
      (surface-condition p153 verysmooth)
      (treatment p153 glazed)
      (available p154)
      (colour p154 black)
      (treatment p154 glazed)
      (available p155)
      (colour p155 white)
      (treatment p155 glazed)
      (available p156)
      (colour p156 red)
      (wood p156 teak)
      (surface-condition p156 smooth)
      (treatment p156 varnished)
      (available p157)
      (wood p157 beech)
      (treatment p157 glazed)
      (available p158)
      (surface-condition p158 smooth)
      (treatment p158 varnished)
      (available p159)
      (wood p159 cherry)
      (surface-condition p159 verysmooth)
      (available p160)
      (colour p160 mauve)
      (wood p160 beech)
      (available p161)
      (wood p161 walnut)
      (surface-condition p161 smooth)
      (treatment p161 glazed)
      (available p162)
      (colour p162 white)
      (wood p162 cherry)
      (surface-condition p162 smooth)
      (treatment p162 varnished)
      (available p163)
      (wood p163 cherry)
      (surface-condition p163 smooth)
      (available p164)
      (colour p164 blue)
      (surface-condition p164 verysmooth)
      (treatment p164 varnished)
      (available p165)
      (wood p165 oak)
      (treatment p165 glazed)
      (available p166)
      (colour p166 blue)
      (wood p166 cherry)
      (surface-condition p166 verysmooth)
      (available p167)
      (colour p167 mauve)
      (wood p167 mahogany)
      (surface-condition p167 verysmooth)
      (treatment p167 varnished)
      (available p168)
      (colour p168 black)
      (wood p168 walnut)
      (surface-condition p168 smooth)
      (available p169)
      (colour p169 blue)
      (wood p169 cherry)
      (surface-condition p169 smooth)
      (available p170)
      (colour p170 white)
      (wood p170 teak)
      (surface-condition p170 verysmooth)
      (treatment p170 varnished)
      (available p171)
      (colour p171 red)
      (wood p171 beech)
      (surface-condition p171 verysmooth)
      (treatment p171 glazed)
      (available p172)
      (wood p172 walnut)
      (treatment p172 varnished)
      (available p173)
      (colour p173 mauve)
      (surface-condition p173 smooth)
      (available p174)
      (surface-condition p174 verysmooth)
      (treatment p174 glazed)
      (available p175)
      (wood p175 walnut)
      (surface-condition p175 smooth)
      (available p176)
      (colour p176 natural)
      (wood p176 beech)
      (surface-condition p176 smooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 black)
      (wood p177 teak)
      (available p178)
      (wood p178 oak)
      (surface-condition p178 verysmooth)
      (available p179)
      (wood p179 oak)
      (treatment p179 glazed)
      (available p180)
      (colour p180 natural)
      (wood p180 pine)
      (available p181)
      (colour p181 black)
      (wood p181 cherry)
      (treatment p181 glazed)
      (available p182)
      (colour p182 blue)
      (wood p182 oak)
      (surface-condition p182 verysmooth)
      (available p183)
      (surface-condition p183 smooth)
      (treatment p183 glazed)
      (available p184)
      (surface-condition p184 verysmooth)
      (treatment p184 glazed)
      (available p185)
      (colour p185 white)
      (surface-condition p185 smooth)
      (available p186)
      (colour p186 natural)
      (wood p186 walnut)
      (surface-condition p186 smooth)
      (available p187)
      (wood p187 teak)
      (surface-condition p187 smooth)
      (available p188)
      (colour p188 blue)
      (surface-condition p188 smooth)
      (available p189)
      (colour p189 white)
      (wood p189 oak)
      (surface-condition p189 smooth)
      (treatment p189 glazed)
      (available p190)
      (wood p190 cherry)
      (treatment p190 varnished)
      (available p191)
      (wood p191 cherry)
      (treatment p191 glazed)
      (available p192)
      (colour p192 green)
      (wood p192 pine)
      (treatment p192 varnished)
      (available p193)
      (colour p193 natural)
      (wood p193 beech)
      (surface-condition p193 verysmooth)
      (available p194)
      (colour p194 natural)
      (surface-condition p194 verysmooth)
      (treatment p194 glazed)
      (available p195)
      (colour p195 black)
      (treatment p195 glazed)
      (available p196)
      (colour p196 black)
      (treatment p196 glazed)
      (available p197)
      (colour p197 red)
      (surface-condition p197 verysmooth)
      (treatment p197 glazed)
      (available p198)
      (colour p198 green)
      (wood p198 teak)
      (treatment p198 glazed)
      (available p199)
      (surface-condition p199 smooth)
      (treatment p199 varnished)
      (available p200)
      (colour p200 mauve)
      (treatment p200 varnished)
      (available p201)
      (colour p201 black)
      (treatment p201 glazed)
      (available p202)
      (colour p202 black)
      (surface-condition p202 smooth)
      (treatment p202 varnished)
      (available p203)
      (colour p203 mauve)
      (wood p203 cherry)
      (available p204)
      (surface-condition p204 smooth)
      (treatment p204 varnished)
      (available p205)
      (colour p205 blue)
      (surface-condition p205 smooth)
      (available p206)
      (colour p206 blue)
      (surface-condition p206 verysmooth)
      (treatment p206 varnished)
      (available p207)
      (colour p207 mauve)
      (treatment p207 varnished)
      (available p208)
      (wood p208 pine)
      (surface-condition p208 verysmooth)
      (treatment p208 varnished)
      (available p209)
      (colour p209 green)
      (treatment p209 glazed)
      (available p210)
      (colour p210 black)
      (surface-condition p210 verysmooth)
      (available p211)
      (wood p211 cherry)
      (treatment p211 varnished)
      (available p212)
      (colour p212 blue)
      (surface-condition p212 smooth)
      (treatment p212 glazed)
      (available p213)
      (colour p213 blue)
      (wood p213 teak)
      (treatment p213 varnished)
      (available p214)
      (colour p214 red)
      (wood p214 mahogany)
      (surface-condition p214 smooth)
      (treatment p214 glazed)
      (available p215)
      (colour p215 blue)
      (wood p215 teak)
      (surface-condition p215 smooth)
      (treatment p215 glazed)
      (available p216)
      (colour p216 white)
      (wood p216 cherry)
      (surface-condition p216 verysmooth)
      (treatment p216 varnished)
      (available p217)
      (colour p217 red)
      (surface-condition p217 smooth)
      (available p218)
      (surface-condition p218 smooth)
      (treatment p218 glazed)
      (available p219)
      (wood p219 beech)
      (surface-condition p219 verysmooth)
      (treatment p219 glazed)
      (available p220)
      (wood p220 walnut)
      (surface-condition p220 verysmooth)
      (available p221)
      (wood p221 mahogany)
      (surface-condition p221 verysmooth)
      (treatment p221 glazed)
      (available p222)
      (colour p222 red)
      (wood p222 walnut)
      (surface-condition p222 verysmooth)
      (treatment p222 varnished)
      (available p223)
      (surface-condition p223 smooth)
      (treatment p223 glazed)
      (available p224)
      (surface-condition p224 verysmooth)
      (treatment p224 glazed)
      (available p225)
      (colour p225 red)
      (treatment p225 glazed)
      (available p226)
      (surface-condition p226 smooth)
      (treatment p226 glazed)
      (available p227)
      (surface-condition p227 smooth)
      (treatment p227 glazed)
      (available p228)
      (colour p228 black)
      (surface-condition p228 verysmooth)
      (available p229)
      (surface-condition p229 smooth)
      (treatment p229 varnished)
      (available p230)
      (colour p230 green)
      (surface-condition p230 smooth)
      (available p231)
      (wood p231 pine)
      (treatment p231 varnished)
      (available p232)
      (wood p232 oak)
      (surface-condition p232 verysmooth)
      (available p233)
      (wood p233 pine)
      (surface-condition p233 smooth)
      (available p234)
      (colour p234 red)
      (treatment p234 varnished)
      (available p235)
      (wood p235 mahogany)
      (treatment p235 varnished)
      (available p236)
      (colour p236 mauve)
      (treatment p236 varnished)
      (available p237)
      (colour p237 blue)
      (wood p237 teak)
      (surface-condition p237 verysmooth)
      (treatment p237 glazed)
      (available p238)
      (colour p238 red)
      (wood p238 teak)
      (surface-condition p238 smooth)
      (treatment p238 varnished)
      (available p239)
      (colour p239 natural)
      (wood p239 oak)
      (treatment p239 varnished)
      (available p240)
      (wood p240 beech)
      (treatment p240 glazed)
      (available p241)
      (surface-condition p241 verysmooth)
      (treatment p241 glazed)
      (available p242)
      (colour p242 blue)
      (surface-condition p242 smooth)
      (available p243)
      (colour p243 mauve)
      (surface-condition p243 smooth)
      (available p244)
      (surface-condition p244 verysmooth)
      (treatment p244 varnished)
      (available p245)
      (colour p245 red)
      (wood p245 walnut)
      (available p246)
      (wood p246 teak)
      (surface-condition p246 smooth)
      (available p247)
      (colour p247 black)
      (treatment p247 glazed)
      (available p248)
      (colour p248 green)
      (wood p248 teak)
      (surface-condition p248 verysmooth)
      (treatment p248 varnished)
      (available p249)
      (wood p249 mahogany)
      (surface-condition p249 smooth)
      (available p250)
      (colour p250 blue)
      (surface-condition p250 smooth)
      (treatment p250 varnished)
      (available p251)
      (colour p251 blue)
      (wood p251 beech)
      (surface-condition p251 verysmooth)
      (available p252)
      (colour p252 natural)
      (treatment p252 varnished)
      (available p253)
      (wood p253 oak)
      (surface-condition p253 verysmooth)
      (available p254)
      (colour p254 natural)
      (surface-condition p254 verysmooth)
      (available p255)
      (wood p255 walnut)
      (surface-condition p255 verysmooth)
      (available p256)
      (colour p256 blue)
      (surface-condition p256 smooth)
      (treatment p256 varnished)
      (available p257)
      (colour p257 red)
      (surface-condition p257 smooth)
      (available p258)
      (colour p258 white)
      (wood p258 mahogany)
      (surface-condition p258 verysmooth)
      (available p259)
      (surface-condition p259 smooth)
      (treatment p259 varnished)
      (available p260)
      (colour p260 white)
      (wood p260 mahogany)
      (treatment p260 glazed)
      (available p261)
      (wood p261 walnut)
      (surface-condition p261 verysmooth)
      (available p262)
      (colour p262 white)
      (wood p262 walnut)
      (surface-condition p262 smooth)
      (treatment p262 glazed)
      (available p263)
      (colour p263 mauve)
      (wood p263 mahogany)
      (treatment p263 glazed)
      (available p264)
      (colour p264 black)
      (wood p264 pine)
      (available p265)
      (wood p265 pine)
      (surface-condition p265 smooth)
      (treatment p265 varnished)
      (available p266)
      (colour p266 black)
      (surface-condition p266 verysmooth)
      (treatment p266 varnished)
      (available p267)
      (surface-condition p267 verysmooth)
      (treatment p267 glazed)
      (available p268)
      (wood p268 teak)
      (treatment p268 varnished)
      (available p269)
      (colour p269 white)
      (wood p269 beech)
      (surface-condition p269 verysmooth)
      (treatment p269 varnished)
      (available p270)
      (colour p270 green)
      (wood p270 walnut)
      (surface-condition p270 verysmooth)
      (treatment p270 varnished)
      (available p271)
      (colour p271 red)
      (wood p271 pine)
      (surface-condition p271 smooth)
      (treatment p271 glazed)
      (available p272)
      (colour p272 blue)
      (wood p272 walnut)
      (available p273)
      (colour p273 blue)
      (wood p273 mahogany)
      (surface-condition p273 smooth)
      (treatment p273 glazed)
      (available p274)
      (wood p274 beech)
      (surface-condition p274 smooth)
      (treatment p274 glazed)
      (available p275)
      (colour p275 red)
      (wood p275 teak)
      (surface-condition p275 verysmooth)
      (available p276)
      (wood p276 walnut)
      (treatment p276 varnished)
      (available p277)
      (colour p277 black)
      (wood p277 oak)
    )
  )
  
)
