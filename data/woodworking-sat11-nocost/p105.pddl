; woodworking task with 284 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 826006

(define (problem wood-prob-sat-105)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red white black blue green mauve - acolour
    walnut mahogany oak pine beech cherry teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 p278 p279 p280 p281 p282 p283 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer0 black)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 black)
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
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
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
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
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
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 black)
    (wood p10 teak)
    (surface-condition p10 smooth)
    (treatment p10 glazed)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 black)
    (wood p11 cherry)
    (surface-condition p11 verysmooth)
    (treatment p11 colourfragments)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 green)
    (wood p20 beech)
    (surface-condition p20 verysmooth)
    (treatment p20 glazed)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (available p23)
    (colour p23 green)
    (wood p23 pine)
    (surface-condition p23 verysmooth)
    (treatment p23 glazed)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 mauve)
    (wood p25 teak)
    (surface-condition p25 rough)
    (treatment p25 colourfragments)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (available p29)
    (colour p29 natural)
    (wood p29 cherry)
    (surface-condition p29 smooth)
    (treatment p29 varnished)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (available p33)
    (colour p33 blue)
    (wood p33 oak)
    (surface-condition p33 rough)
    (treatment p33 glazed)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 red)
    (wood p36 oak)
    (surface-condition p36 verysmooth)
    (treatment p36 colourfragments)
    (goalsize p36 medium)
    
    
    
    
    (available p37)
    (colour p37 black)
    (wood p37 oak)
    (surface-condition p37 smooth)
    (treatment p37 varnished)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (available p39)
    (colour p39 mauve)
    (wood p39 mahogany)
    (surface-condition p39 rough)
    (treatment p39 glazed)
    (goalsize p39 medium)
    
    
    
    
    (available p40)
    (colour p40 blue)
    (wood p40 walnut)
    (surface-condition p40 verysmooth)
    (treatment p40 colourfragments)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (available p43)
    (colour p43 white)
    (wood p43 beech)
    (surface-condition p43 rough)
    (treatment p43 glazed)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (available p53)
    (colour p53 white)
    (wood p53 walnut)
    (surface-condition p53 rough)
    (treatment p53 colourfragments)
    (goalsize p53 large)
    
    
    
    
    (available p54)
    (colour p54 red)
    (wood p54 pine)
    (surface-condition p54 smooth)
    (treatment p54 colourfragments)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (available p60)
    (colour p60 white)
    (wood p60 beech)
    (surface-condition p60 smooth)
    (treatment p60 varnished)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (available p71)
    (colour p71 blue)
    (wood p71 mahogany)
    (surface-condition p71 smooth)
    (treatment p71 colourfragments)
    (goalsize p71 large)
    
    
    
    
    (available p72)
    (colour p72 blue)
    (wood p72 pine)
    (surface-condition p72 verysmooth)
    (treatment p72 glazed)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (available p74)
    (colour p74 black)
    (wood p74 cherry)
    (surface-condition p74 smooth)
    (treatment p74 varnished)
    (goalsize p74 medium)
    
    
    
    
    (available p75)
    (colour p75 white)
    (wood p75 mahogany)
    (surface-condition p75 rough)
    (treatment p75 varnished)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (available p84)
    (colour p84 blue)
    (wood p84 pine)
    (surface-condition p84 verysmooth)
    (treatment p84 varnished)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (available p91)
    (colour p91 green)
    (wood p91 mahogany)
    (surface-condition p91 smooth)
    (treatment p91 varnished)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (available p94)
    (colour p94 natural)
    (wood p94 beech)
    (surface-condition p94 rough)
    (treatment p94 colourfragments)
    (goalsize p94 medium)
    
    
    
    
    (available p95)
    (colour p95 green)
    (wood p95 beech)
    (surface-condition p95 rough)
    (treatment p95 varnished)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (available p99)
    (colour p99 natural)
    (wood p99 mahogany)
    (surface-condition p99 verysmooth)
    (treatment p99 glazed)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (available p101)
    (colour p101 natural)
    (wood p101 beech)
    (surface-condition p101 smooth)
    (treatment p101 varnished)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (available p104)
    (colour p104 mauve)
    (wood p104 teak)
    (surface-condition p104 smooth)
    (treatment p104 glazed)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (available p106)
    (colour p106 white)
    (wood p106 teak)
    (surface-condition p106 rough)
    (treatment p106 glazed)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (available p110)
    (colour p110 natural)
    (wood p110 oak)
    (surface-condition p110 rough)
    (treatment p110 glazed)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (available p112)
    (colour p112 white)
    (wood p112 oak)
    (surface-condition p112 verysmooth)
    (treatment p112 colourfragments)
    (goalsize p112 small)
    
    
    
    
    (available p113)
    (colour p113 mauve)
    (wood p113 mahogany)
    (surface-condition p113 verysmooth)
    (treatment p113 varnished)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (available p115)
    (colour p115 mauve)
    (wood p115 beech)
    (surface-condition p115 rough)
    (treatment p115 glazed)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (available p117)
    (colour p117 mauve)
    (wood p117 cherry)
    (surface-condition p117 rough)
    (treatment p117 colourfragments)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (available p124)
    (colour p124 green)
    (wood p124 walnut)
    (surface-condition p124 rough)
    (treatment p124 varnished)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (available p134)
    (colour p134 green)
    (wood p134 pine)
    (surface-condition p134 rough)
    (treatment p134 glazed)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (available p136)
    (colour p136 blue)
    (wood p136 mahogany)
    (surface-condition p136 smooth)
    (treatment p136 glazed)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (available p153)
    (colour p153 white)
    (wood p153 mahogany)
    (surface-condition p153 rough)
    (treatment p153 glazed)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (available p160)
    (colour p160 red)
    (wood p160 beech)
    (surface-condition p160 verysmooth)
    (treatment p160 glazed)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (available p165)
    (colour p165 white)
    (wood p165 walnut)
    (surface-condition p165 rough)
    (treatment p165 colourfragments)
    (goalsize p165 small)
    
    
    
    
    (available p166)
    (colour p166 natural)
    (wood p166 cherry)
    (surface-condition p166 smooth)
    (treatment p166 colourfragments)
    (goalsize p166 medium)
    
    
    
    
    (available p167)
    (colour p167 natural)
    (wood p167 walnut)
    (surface-condition p167 smooth)
    (treatment p167 colourfragments)
    (goalsize p167 medium)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (available p171)
    (colour p171 natural)
    (wood p171 walnut)
    (surface-condition p171 smooth)
    (treatment p171 varnished)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 medium)
    
    
    
    
    (available p173)
    (colour p173 green)
    (wood p173 pine)
    (surface-condition p173 verysmooth)
    (treatment p173 glazed)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 large)
    
    
    
    
    (unused p176)
    (goalsize p176 small)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 large)
    
    
    
    
    (available p181)
    (colour p181 blue)
    (wood p181 cherry)
    (surface-condition p181 verysmooth)
    (treatment p181 varnished)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (available p183)
    (colour p183 blue)
    (wood p183 beech)
    (surface-condition p183 rough)
    (treatment p183 varnished)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 medium)
    
    
    
    
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
    (wood p192 pine)
    (surface-condition p192 rough)
    (treatment p192 glazed)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 large)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 small)
    
    
    
    
    (unused p197)
    (goalsize p197 small)
    
    
    
    
    (available p198)
    (colour p198 white)
    (wood p198 pine)
    (surface-condition p198 rough)
    (treatment p198 colourfragments)
    (goalsize p198 medium)
    
    
    
    
    (unused p199)
    (goalsize p199 medium)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 medium)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 medium)
    
    
    
    
    (unused p204)
    (goalsize p204 small)
    
    
    
    
    (available p205)
    (colour p205 white)
    (wood p205 walnut)
    (surface-condition p205 rough)
    (treatment p205 glazed)
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
    (goalsize p210 medium)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (available p212)
    (colour p212 red)
    (wood p212 beech)
    (surface-condition p212 verysmooth)
    (treatment p212 glazed)
    (goalsize p212 medium)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (available p214)
    (colour p214 black)
    (wood p214 oak)
    (surface-condition p214 rough)
    (treatment p214 glazed)
    (goalsize p214 small)
    
    
    
    
    (available p215)
    (colour p215 natural)
    (wood p215 pine)
    (surface-condition p215 verysmooth)
    (treatment p215 colourfragments)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 small)
    
    
    
    
    (unused p220)
    (goalsize p220 small)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (unused p224)
    (goalsize p224 small)
    
    
    
    
    (unused p225)
    (goalsize p225 medium)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (unused p227)
    (goalsize p227 large)
    
    
    
    
    (available p228)
    (colour p228 mauve)
    (wood p228 pine)
    (surface-condition p228 verysmooth)
    (treatment p228 varnished)
    (goalsize p228 large)
    
    
    
    
    (unused p229)
    (goalsize p229 small)
    
    
    
    
    (unused p230)
    (goalsize p230 large)
    
    
    
    
    (available p231)
    (colour p231 natural)
    (wood p231 beech)
    (surface-condition p231 rough)
    (treatment p231 glazed)
    (goalsize p231 medium)
    
    
    
    
    (available p232)
    (colour p232 mauve)
    (wood p232 cherry)
    (surface-condition p232 smooth)
    (treatment p232 varnished)
    (goalsize p232 large)
    
    
    
    
    (unused p233)
    (goalsize p233 medium)
    
    
    
    
    (available p234)
    (colour p234 natural)
    (wood p234 walnut)
    (surface-condition p234 smooth)
    (treatment p234 colourfragments)
    (goalsize p234 small)
    
    
    
    
    (unused p235)
    (goalsize p235 small)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (unused p237)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (unused p239)
    (goalsize p239 small)
    
    
    
    
    (unused p240)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 large)
    
    
    
    
    (unused p242)
    (goalsize p242 small)
    
    
    
    
    (unused p243)
    (goalsize p243 large)
    
    
    
    
    (unused p244)
    (goalsize p244 medium)
    
    
    
    
    (unused p245)
    (goalsize p245 small)
    
    
    
    
    (unused p246)
    (goalsize p246 small)
    
    
    
    
    (unused p247)
    (goalsize p247 large)
    
    
    
    
    (unused p248)
    (goalsize p248 small)
    
    
    
    
    (unused p249)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 large)
    
    
    
    
    (unused p251)
    (goalsize p251 large)
    
    
    
    
    (unused p252)
    (goalsize p252 small)
    
    
    
    
    (available p253)
    (colour p253 natural)
    (wood p253 pine)
    (surface-condition p253 smooth)
    (treatment p253 colourfragments)
    (goalsize p253 large)
    
    
    
    
    (unused p254)
    (goalsize p254 small)
    
    
    
    
    (unused p255)
    (goalsize p255 medium)
    
    
    
    
    (unused p256)
    (goalsize p256 medium)
    
    
    
    
    (unused p257)
    (goalsize p257 large)
    
    
    
    
    (unused p258)
    (goalsize p258 small)
    
    
    
    
    (available p259)
    (colour p259 natural)
    (wood p259 mahogany)
    (surface-condition p259 smooth)
    (treatment p259 colourfragments)
    (goalsize p259 small)
    
    
    
    
    (unused p260)
    (goalsize p260 small)
    
    
    
    
    (unused p261)
    (goalsize p261 large)
    
    
    
    
    (unused p262)
    (goalsize p262 large)
    
    
    
    
    (unused p263)
    (goalsize p263 large)
    
    
    
    
    (unused p264)
    (goalsize p264 large)
    
    
    
    
    (unused p265)
    (goalsize p265 small)
    
    
    
    
    (available p266)
    (colour p266 black)
    (wood p266 walnut)
    (surface-condition p266 smooth)
    (treatment p266 glazed)
    (goalsize p266 large)
    
    
    
    
    (available p267)
    (colour p267 green)
    (wood p267 mahogany)
    (surface-condition p267 rough)
    (treatment p267 colourfragments)
    (goalsize p267 small)
    
    
    
    
    (unused p268)
    (goalsize p268 medium)
    
    
    
    
    (unused p269)
    (goalsize p269 medium)
    
    
    
    
    (unused p270)
    (goalsize p270 medium)
    
    
    
    
    (available p271)
    (colour p271 green)
    (wood p271 cherry)
    (surface-condition p271 rough)
    (treatment p271 glazed)
    (goalsize p271 small)
    
    
    
    
    (unused p272)
    (goalsize p272 small)
    
    
    
    
    (available p273)
    (colour p273 natural)
    (wood p273 oak)
    (surface-condition p273 rough)
    (treatment p273 varnished)
    (goalsize p273 medium)
    
    
    
    
    (unused p274)
    (goalsize p274 large)
    
    
    
    
    (unused p275)
    (goalsize p275 large)
    
    
    
    
    (unused p276)
    (goalsize p276 small)
    
    
    
    
    (unused p277)
    (goalsize p277 medium)
    
    
    
    
    (unused p278)
    (goalsize p278 small)
    
    
    
    
    (unused p279)
    (goalsize p279 small)
    
    
    
    
    (unused p280)
    (goalsize p280 large)
    
    
    
    
    (unused p281)
    (goalsize p281 medium)
    
    
    
    
    (unused p282)
    (goalsize p282 medium)
    
    
    
    
    (unused p283)
    (goalsize p283 small)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s11)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s11)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s11)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s2)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s5)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 mahogany)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s6)
    (wood b17 mahogany)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s7)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s4)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s10)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s7)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s10)
    (wood b25 oak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s7)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s9)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s11)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s6)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s6)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s11)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s10)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s10)
    (wood b39 walnut)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s5)
    (wood b40 walnut)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s10)
    (wood b41 walnut)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s10)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s9)
    (wood b43 walnut)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s8)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s7)
    (wood b45 walnut)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s4)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s9)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s10)
    (wood b48 teak)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s8)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s8)
    (wood b50 teak)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s7)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s7)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s7)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s10)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s9)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s7)
    (wood b56 teak)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s8)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s7)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s2)
    (wood b59 teak)
    (surface-condition b59 smooth)
    (available b59)
    (boardsize b60 s8)
    (wood b60 beech)
    (surface-condition b60 smooth)
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
    (boardsize b64 s4)
    (wood b64 beech)
    (surface-condition b64 smooth)
    (available b64)
    (boardsize b65 s7)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s10)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s12)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s10)
    (wood b68 beech)
    (surface-condition b68 smooth)
    (available b68)
    (boardsize b69 s2)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
  )
  (:goal
    (and
      (available p0)
      (colour p0 red)
      (wood p0 teak)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 green)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 black)
      (wood p2 cherry)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (wood p3 teak)
      (treatment p3 glazed)
      (available p4)
      (colour p4 mauve)
      (wood p4 cherry)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 red)
      (wood p5 cherry)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 mauve)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 mauve)
      (wood p7 teak)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 mauve)
      (wood p8 cherry)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (wood p9 walnut)
      (treatment p9 glazed)
      (available p10)
      (colour p10 mauve)
      (surface-condition p10 verysmooth)
      (available p11)
      (colour p11 green)
      (wood p11 cherry)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (wood p13 oak)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 white)
      (wood p14 teak)
      (available p15)
      (colour p15 black)
      (treatment p15 glazed)
      (available p16)
      (colour p16 green)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 natural)
      (wood p17 oak)
      (available p18)
      (wood p18 teak)
      (treatment p18 glazed)
      (available p19)
      (colour p19 red)
      (treatment p19 varnished)
      (available p20)
      (colour p20 white)
      (wood p20 beech)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 blue)
      (wood p21 cherry)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (wood p22 teak)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 black)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (wood p24 teak)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 white)
      (wood p25 teak)
      (available p26)
      (colour p26 mauve)
      (wood p26 pine)
      (treatment p26 varnished)
      (available p27)
      (colour p27 green)
      (surface-condition p27 smooth)
      (available p28)
      (wood p28 teak)
      (treatment p28 glazed)
      (available p29)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 natural)
      (wood p30 oak)
      (available p31)
      (wood p31 teak)
      (surface-condition p31 verysmooth)
      (available p32)
      (wood p32 oak)
      (treatment p32 glazed)
      (available p33)
      (colour p33 white)
      (surface-condition p33 verysmooth)
      (available p34)
      (wood p34 cherry)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 mauve)
      (wood p35 pine)
      (available p36)
      (wood p36 oak)
      (treatment p36 varnished)
      (available p37)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 red)
      (wood p38 mahogany)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 black)
      (treatment p39 varnished)
      (available p40)
      (colour p40 natural)
      (wood p40 walnut)
      (available p41)
      (colour p41 blue)
      (wood p41 beech)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 white)
      (wood p42 oak)
      (surface-condition p42 verysmooth)
      (available p43)
      (colour p43 green)
      (wood p43 beech)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 mauve)
      (wood p44 beech)
      (surface-condition p44 verysmooth)
      (treatment p44 glazed)
      (available p45)
      (wood p45 oak)
      (surface-condition p45 verysmooth)
      (available p46)
      (wood p46 mahogany)
      (surface-condition p46 verysmooth)
      (available p47)
      (wood p47 walnut)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (colour p48 black)
      (wood p48 teak)
      (available p49)
      (wood p49 beech)
      (treatment p49 varnished)
      (available p50)
      (colour p50 green)
      (wood p50 pine)
      (surface-condition p50 verysmooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 green)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (wood p52 mahogany)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 natural)
      (wood p53 walnut)
      (surface-condition p53 verysmooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 black)
      (wood p54 pine)
      (surface-condition p54 smooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 blue)
      (surface-condition p55 verysmooth)
      (available p56)
      (colour p56 blue)
      (wood p56 walnut)
      (surface-condition p56 verysmooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 natural)
      (treatment p57 glazed)
      (available p58)
      (wood p58 pine)
      (treatment p58 glazed)
      (available p59)
      (wood p59 teak)
      (surface-condition p59 smooth)
      (available p60)
      (colour p60 blue)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 blue)
      (treatment p61 varnished)
      (available p62)
      (colour p62 white)
      (wood p62 teak)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 mauve)
      (wood p63 beech)
      (surface-condition p63 smooth)
      (treatment p63 glazed)
      (available p64)
      (surface-condition p64 smooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 red)
      (wood p65 beech)
      (treatment p65 varnished)
      (available p66)
      (colour p66 mauve)
      (treatment p66 varnished)
      (available p67)
      (wood p67 cherry)
      (treatment p67 varnished)
      (available p68)
      (wood p68 cherry)
      (treatment p68 varnished)
      (available p69)
      (wood p69 teak)
      (surface-condition p69 smooth)
      (available p70)
      (colour p70 natural)
      (wood p70 oak)
      (treatment p70 varnished)
      (available p71)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (colour p72 natural)
      (wood p72 pine)
      (surface-condition p72 smooth)
      (treatment p72 glazed)
      (available p73)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 red)
      (treatment p74 varnished)
      (available p75)
      (colour p75 green)
      (treatment p75 varnished)
      (available p76)
      (colour p76 natural)
      (wood p76 teak)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (wood p77 oak)
      (surface-condition p77 smooth)
      (available p78)
      (colour p78 red)
      (wood p78 walnut)
      (treatment p78 glazed)
      (available p79)
      (colour p79 green)
      (wood p79 pine)
      (surface-condition p79 smooth)
      (available p80)
      (colour p80 white)
      (surface-condition p80 verysmooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 green)
      (wood p81 walnut)
      (available p82)
      (colour p82 green)
      (treatment p82 varnished)
      (available p83)
      (colour p83 mauve)
      (wood p83 cherry)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 black)
      (surface-condition p84 smooth)
      (available p85)
      (wood p85 pine)
      (treatment p85 glazed)
      (available p86)
      (wood p86 teak)
      (surface-condition p86 smooth)
      (treatment p86 glazed)
      (available p87)
      (colour p87 white)
      (surface-condition p87 smooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 natural)
      (surface-condition p88 smooth)
      (available p89)
      (colour p89 natural)
      (wood p89 beech)
      (surface-condition p89 smooth)
      (treatment p89 glazed)
      (available p90)
      (wood p90 beech)
      (surface-condition p90 smooth)
      (treatment p90 glazed)
      (available p91)
      (wood p91 mahogany)
      (surface-condition p91 verysmooth)
      (available p92)
      (colour p92 red)
      (wood p92 mahogany)
      (surface-condition p92 verysmooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 black)
      (treatment p93 varnished)
      (available p94)
      (wood p94 beech)
      (surface-condition p94 smooth)
      (available p95)
      (colour p95 red)
      (treatment p95 varnished)
      (available p96)
      (colour p96 blue)
      (treatment p96 varnished)
      (available p97)
      (wood p97 beech)
      (surface-condition p97 verysmooth)
      (available p98)
      (colour p98 mauve)
      (surface-condition p98 verysmooth)
      (available p99)
      (wood p99 mahogany)
      (surface-condition p99 smooth)
      (available p100)
      (colour p100 black)
      (surface-condition p100 verysmooth)
      (available p101)
      (surface-condition p101 verysmooth)
      (treatment p101 varnished)
      (available p102)
      (colour p102 natural)
      (wood p102 pine)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (wood p103 walnut)
      (treatment p103 varnished)
      (available p104)
      (colour p104 blue)
      (wood p104 teak)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 green)
      (wood p105 mahogany)
      (surface-condition p105 smooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 red)
      (wood p106 teak)
      (surface-condition p106 verysmooth)
      (available p107)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (wood p108 cherry)
      (surface-condition p108 smooth)
      (available p109)
      (wood p109 teak)
      (surface-condition p109 smooth)
      (treatment p109 glazed)
      (available p110)
      (colour p110 white)
      (wood p110 oak)
      (treatment p110 varnished)
      (available p111)
      (surface-condition p111 verysmooth)
      (treatment p111 glazed)
      (available p112)
      (colour p112 blue)
      (wood p112 oak)
      (surface-condition p112 verysmooth)
      (available p113)
      (surface-condition p113 smooth)
      (treatment p113 varnished)
      (available p114)
      (surface-condition p114 verysmooth)
      (treatment p114 glazed)
      (available p115)
      (colour p115 natural)
      (wood p115 beech)
      (treatment p115 varnished)
      (available p116)
      (surface-condition p116 verysmooth)
      (treatment p116 glazed)
      (available p117)
      (wood p117 cherry)
      (surface-condition p117 verysmooth)
      (available p118)
      (colour p118 black)
      (surface-condition p118 verysmooth)
      (available p119)
      (colour p119 white)
      (wood p119 beech)
      (surface-condition p119 smooth)
      (treatment p119 glazed)
      (available p120)
      (colour p120 green)
      (surface-condition p120 smooth)
      (available p121)
      (colour p121 red)
      (wood p121 walnut)
      (surface-condition p121 verysmooth)
      (treatment p121 varnished)
      (available p122)
      (colour p122 blue)
      (wood p122 oak)
      (surface-condition p122 verysmooth)
      (treatment p122 glazed)
      (available p123)
      (wood p123 walnut)
      (surface-condition p123 smooth)
      (treatment p123 varnished)
      (available p124)
      (wood p124 walnut)
      (surface-condition p124 smooth)
      (available p125)
      (colour p125 black)
      (surface-condition p125 smooth)
      (available p126)
      (colour p126 mauve)
      (surface-condition p126 smooth)
      (available p127)
      (colour p127 natural)
      (wood p127 beech)
      (treatment p127 glazed)
      (available p128)
      (colour p128 blue)
      (surface-condition p128 smooth)
      (treatment p128 varnished)
      (available p129)
      (colour p129 mauve)
      (treatment p129 varnished)
      (available p130)
      (colour p130 red)
      (surface-condition p130 smooth)
      (available p131)
      (wood p131 beech)
      (surface-condition p131 smooth)
      (available p132)
      (wood p132 pine)
      (surface-condition p132 smooth)
      (available p133)
      (wood p133 teak)
      (surface-condition p133 smooth)
      (available p134)
      (colour p134 red)
      (wood p134 pine)
      (treatment p134 varnished)
      (available p135)
      (colour p135 green)
      (treatment p135 varnished)
      (available p136)
      (colour p136 green)
      (wood p136 mahogany)
      (surface-condition p136 smooth)
      (treatment p136 glazed)
      (available p137)
      (colour p137 red)
      (wood p137 teak)
      (surface-condition p137 verysmooth)
      (treatment p137 varnished)
      (available p138)
      (wood p138 oak)
      (treatment p138 varnished)
      (available p139)
      (colour p139 natural)
      (wood p139 teak)
      (available p140)
      (colour p140 green)
      (wood p140 beech)
      (treatment p140 glazed)
      (available p141)
      (wood p141 beech)
      (surface-condition p141 smooth)
      (available p142)
      (surface-condition p142 smooth)
      (treatment p142 varnished)
      (available p143)
      (colour p143 red)
      (treatment p143 varnished)
      (available p144)
      (colour p144 blue)
      (wood p144 pine)
      (surface-condition p144 verysmooth)
      (treatment p144 varnished)
      (available p145)
      (colour p145 white)
      (wood p145 teak)
      (surface-condition p145 verysmooth)
      (treatment p145 varnished)
      (available p146)
      (colour p146 black)
      (treatment p146 varnished)
      (available p147)
      (surface-condition p147 smooth)
      (treatment p147 glazed)
      (available p148)
      (wood p148 oak)
      (treatment p148 glazed)
      (available p149)
      (surface-condition p149 smooth)
      (treatment p149 varnished)
      (available p150)
      (colour p150 mauve)
      (treatment p150 varnished)
      (available p151)
      (colour p151 white)
      (wood p151 walnut)
      (surface-condition p151 smooth)
      (treatment p151 varnished)
      (available p152)
      (surface-condition p152 verysmooth)
      (treatment p152 glazed)
      (available p153)
      (colour p153 natural)
      (wood p153 mahogany)
      (surface-condition p153 smooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 mauve)
      (treatment p154 glazed)
      (available p155)
      (colour p155 mauve)
      (surface-condition p155 verysmooth)
      (available p156)
      (wood p156 teak)
      (treatment p156 varnished)
      (available p157)
      (wood p157 mahogany)
      (surface-condition p157 verysmooth)
      (treatment p157 glazed)
      (available p158)
      (colour p158 white)
      (treatment p158 varnished)
      (available p159)
      (surface-condition p159 smooth)
      (treatment p159 glazed)
      (available p160)
      (colour p160 white)
      (surface-condition p160 verysmooth)
      (available p161)
      (colour p161 black)
      (wood p161 cherry)
      (available p162)
      (wood p162 oak)
      (surface-condition p162 verysmooth)
      (treatment p162 glazed)
      (available p163)
      (wood p163 mahogany)
      (treatment p163 glazed)
      (available p164)
      (colour p164 green)
      (surface-condition p164 smooth)
      (available p165)
      (colour p165 blue)
      (wood p165 walnut)
      (surface-condition p165 smooth)
      (treatment p165 glazed)
      (available p166)
      (wood p166 cherry)
      (surface-condition p166 verysmooth)
      (treatment p166 glazed)
      (available p167)
      (colour p167 mauve)
      (wood p167 walnut)
      (treatment p167 glazed)
      (available p168)
      (surface-condition p168 smooth)
      (treatment p168 varnished)
      (available p169)
      (colour p169 blue)
      (surface-condition p169 smooth)
      (treatment p169 glazed)
      (available p170)
      (colour p170 white)
      (wood p170 teak)
      (available p171)
      (colour p171 green)
      (wood p171 walnut)
      (available p172)
      (wood p172 oak)
      (surface-condition p172 smooth)
      (available p173)
      (colour p173 natural)
      (wood p173 pine)
      (surface-condition p173 verysmooth)
      (treatment p173 glazed)
      (available p174)
      (wood p174 mahogany)
      (surface-condition p174 verysmooth)
      (available p175)
      (wood p175 oak)
      (surface-condition p175 verysmooth)
      (treatment p175 glazed)
      (available p176)
      (colour p176 black)
      (surface-condition p176 verysmooth)
      (available p177)
      (surface-condition p177 smooth)
      (treatment p177 glazed)
      (available p178)
      (wood p178 beech)
      (treatment p178 varnished)
      (available p179)
      (colour p179 black)
      (surface-condition p179 smooth)
      (available p180)
      (colour p180 black)
      (wood p180 mahogany)
      (surface-condition p180 smooth)
      (treatment p180 varnished)
      (available p181)
      (wood p181 cherry)
      (treatment p181 glazed)
      (available p182)
      (surface-condition p182 verysmooth)
      (treatment p182 glazed)
      (available p183)
      (colour p183 green)
      (wood p183 beech)
      (surface-condition p183 verysmooth)
      (treatment p183 glazed)
      (available p184)
      (wood p184 walnut)
      (surface-condition p184 smooth)
      (treatment p184 varnished)
      (available p185)
      (colour p185 black)
      (wood p185 walnut)
      (available p186)
      (wood p186 cherry)
      (surface-condition p186 verysmooth)
      (available p187)
      (colour p187 white)
      (wood p187 walnut)
      (surface-condition p187 verysmooth)
      (treatment p187 varnished)
      (available p188)
      (colour p188 natural)
      (surface-condition p188 smooth)
      (available p189)
      (surface-condition p189 verysmooth)
      (treatment p189 glazed)
      (available p190)
      (colour p190 blue)
      (surface-condition p190 smooth)
      (treatment p190 varnished)
      (available p191)
      (wood p191 oak)
      (surface-condition p191 verysmooth)
      (available p192)
      (colour p192 black)
      (surface-condition p192 verysmooth)
      (treatment p192 glazed)
      (available p193)
      (colour p193 black)
      (surface-condition p193 verysmooth)
      (treatment p193 glazed)
      (available p194)
      (colour p194 white)
      (wood p194 beech)
      (surface-condition p194 verysmooth)
      (treatment p194 glazed)
      (available p195)
      (colour p195 natural)
      (surface-condition p195 verysmooth)
      (treatment p195 varnished)
      (available p196)
      (colour p196 mauve)
      (treatment p196 varnished)
      (available p197)
      (colour p197 blue)
      (surface-condition p197 smooth)
      (available p198)
      (colour p198 black)
      (surface-condition p198 smooth)
      (available p199)
      (colour p199 blue)
      (wood p199 walnut)
      (surface-condition p199 smooth)
      (available p200)
      (wood p200 cherry)
      (treatment p200 varnished)
      (available p201)
      (colour p201 black)
      (treatment p201 glazed)
      (available p202)
      (colour p202 natural)
      (wood p202 cherry)
      (available p203)
      (colour p203 blue)
      (treatment p203 glazed)
      (available p204)
      (wood p204 pine)
      (surface-condition p204 smooth)
      (available p205)
      (wood p205 walnut)
      (surface-condition p205 verysmooth)
      (available p206)
      (colour p206 mauve)
      (treatment p206 varnished)
      (available p207)
      (colour p207 natural)
      (surface-condition p207 smooth)
      (available p208)
      (wood p208 walnut)
      (surface-condition p208 smooth)
      (available p209)
      (wood p209 mahogany)
      (surface-condition p209 verysmooth)
      (available p210)
      (wood p210 cherry)
      (treatment p210 varnished)
      (available p211)
      (colour p211 mauve)
      (wood p211 pine)
      (surface-condition p211 smooth)
      (treatment p211 varnished)
      (available p212)
      (wood p212 beech)
      (surface-condition p212 smooth)
      (available p213)
      (colour p213 natural)
      (surface-condition p213 verysmooth)
      (available p214)
      (wood p214 oak)
      (surface-condition p214 smooth)
      (treatment p214 varnished)
      (available p215)
      (colour p215 black)
      (wood p215 pine)
      (surface-condition p215 verysmooth)
      (available p216)
      (surface-condition p216 verysmooth)
      (treatment p216 glazed)
      (available p217)
      (colour p217 black)
      (wood p217 walnut)
      (surface-condition p217 smooth)
      (available p218)
      (colour p218 white)
      (surface-condition p218 verysmooth)
      (available p219)
      (colour p219 natural)
      (wood p219 pine)
      (treatment p219 varnished)
      (available p220)
      (wood p220 mahogany)
      (treatment p220 varnished)
      (available p221)
      (colour p221 red)
      (wood p221 cherry)
      (surface-condition p221 smooth)
      (treatment p221 glazed)
      (available p222)
      (colour p222 green)
      (wood p222 oak)
      (surface-condition p222 verysmooth)
      (treatment p222 varnished)
      (available p223)
      (surface-condition p223 verysmooth)
      (treatment p223 varnished)
      (available p224)
      (colour p224 green)
      (wood p224 pine)
      (surface-condition p224 smooth)
      (available p225)
      (colour p225 red)
      (surface-condition p225 smooth)
      (available p226)
      (wood p226 mahogany)
      (treatment p226 varnished)
      (available p227)
      (wood p227 beech)
      (surface-condition p227 verysmooth)
      (available p228)
      (wood p228 pine)
      (surface-condition p228 verysmooth)
      (treatment p228 glazed)
      (available p229)
      (wood p229 walnut)
      (surface-condition p229 smooth)
      (treatment p229 varnished)
      (available p230)
      (colour p230 black)
      (wood p230 cherry)
      (surface-condition p230 smooth)
      (treatment p230 varnished)
      (available p231)
      (wood p231 beech)
      (surface-condition p231 smooth)
      (treatment p231 varnished)
      (available p232)
      (colour p232 blue)
      (wood p232 cherry)
      (surface-condition p232 verysmooth)
      (treatment p232 glazed)
      (available p233)
      (colour p233 natural)
      (treatment p233 varnished)
      (available p234)
      (wood p234 walnut)
      (surface-condition p234 smooth)
      (treatment p234 glazed)
      (available p235)
      (colour p235 red)
      (wood p235 teak)
      (available p236)
      (colour p236 white)
      (wood p236 mahogany)
      (surface-condition p236 smooth)
      (available p237)
      (wood p237 beech)
      (surface-condition p237 smooth)
      (treatment p237 glazed)
      (available p238)
      (colour p238 green)
      (wood p238 cherry)
      (surface-condition p238 verysmooth)
      (available p239)
      (colour p239 red)
      (treatment p239 glazed)
      (available p240)
      (colour p240 red)
      (surface-condition p240 smooth)
      (treatment p240 varnished)
      (available p241)
      (colour p241 black)
      (wood p241 oak)
      (surface-condition p241 verysmooth)
      (treatment p241 varnished)
      (available p242)
      (colour p242 white)
      (treatment p242 varnished)
      (available p243)
      (colour p243 red)
      (surface-condition p243 verysmooth)
      (treatment p243 varnished)
      (available p244)
      (colour p244 white)
      (wood p244 pine)
      (surface-condition p244 verysmooth)
      (treatment p244 varnished)
      (available p245)
      (wood p245 mahogany)
      (surface-condition p245 verysmooth)
      (available p246)
      (colour p246 red)
      (surface-condition p246 verysmooth)
      (treatment p246 varnished)
      (available p247)
      (wood p247 pine)
      (treatment p247 glazed)
      (available p248)
      (wood p248 teak)
      (surface-condition p248 smooth)
      (available p249)
      (colour p249 black)
      (wood p249 beech)
      (available p250)
      (colour p250 green)
      (surface-condition p250 verysmooth)
      (available p251)
      (colour p251 black)
      (surface-condition p251 smooth)
      (available p252)
      (surface-condition p252 verysmooth)
      (treatment p252 varnished)
      (available p253)
      (colour p253 blue)
      (surface-condition p253 smooth)
      (available p254)
      (wood p254 mahogany)
      (surface-condition p254 verysmooth)
      (available p255)
      (colour p255 mauve)
      (wood p255 oak)
      (surface-condition p255 smooth)
      (treatment p255 glazed)
      (available p256)
      (wood p256 walnut)
      (surface-condition p256 verysmooth)
      (treatment p256 glazed)
      (available p257)
      (colour p257 black)
      (wood p257 oak)
      (surface-condition p257 verysmooth)
      (treatment p257 glazed)
      (available p258)
      (wood p258 walnut)
      (treatment p258 varnished)
      (available p259)
      (colour p259 mauve)
      (wood p259 mahogany)
      (surface-condition p259 verysmooth)
      (treatment p259 glazed)
      (available p260)
      (wood p260 oak)
      (surface-condition p260 verysmooth)
      (available p261)
      (colour p261 white)
      (wood p261 walnut)
      (available p262)
      (wood p262 oak)
      (treatment p262 varnished)
      (available p263)
      (colour p263 white)
      (wood p263 cherry)
      (surface-condition p263 smooth)
      (treatment p263 varnished)
      (available p264)
      (colour p264 blue)
      (wood p264 walnut)
      (treatment p264 glazed)
      (available p265)
      (colour p265 black)
      (surface-condition p265 verysmooth)
      (available p266)
      (colour p266 mauve)
      (treatment p266 glazed)
      (available p267)
      (colour p267 blue)
      (wood p267 mahogany)
      (surface-condition p267 smooth)
      (treatment p267 varnished)
      (available p268)
      (surface-condition p268 smooth)
      (treatment p268 varnished)
      (available p269)
      (colour p269 green)
      (wood p269 walnut)
      (surface-condition p269 verysmooth)
      (treatment p269 glazed)
      (available p270)
      (colour p270 black)
      (wood p270 oak)
      (surface-condition p270 smooth)
      (treatment p270 glazed)
      (available p271)
      (colour p271 mauve)
      (wood p271 cherry)
      (surface-condition p271 verysmooth)
      (treatment p271 glazed)
      (available p272)
      (colour p272 red)
      (wood p272 beech)
      (surface-condition p272 verysmooth)
      (treatment p272 glazed)
      (available p273)
      (colour p273 white)
      (wood p273 oak)
      (treatment p273 varnished)
      (available p274)
      (colour p274 red)
      (surface-condition p274 verysmooth)
      (available p275)
      (colour p275 green)
      (wood p275 beech)
      (surface-condition p275 verysmooth)
      (treatment p275 glazed)
      (available p276)
      (surface-condition p276 smooth)
      (treatment p276 varnished)
      (available p277)
      (wood p277 teak)
      (surface-condition p277 smooth)
      (treatment p277 glazed)
      (available p278)
      (wood p278 oak)
      (treatment p278 varnished)
      (available p279)
      (colour p279 blue)
      (treatment p279 glazed)
      (available p280)
      (wood p280 beech)
      (surface-condition p280 smooth)
      (available p281)
      (colour p281 red)
      (treatment p281 varnished)
      (available p282)
      (colour p282 natural)
      (wood p282 walnut)
      (available p283)
      (wood p283 beech)
      (surface-condition p283 smooth)
    )
  )
  
)
