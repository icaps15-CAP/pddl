; woodworking task with 269 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 835101

(define (problem wood-prob-sat-100)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue red green black white mauve - acolour
    walnut teak pine mahogany oak cherry beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 - part
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 white)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
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
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (available p5)
    (colour p5 red)
    (wood p5 walnut)
    (surface-condition p5 smooth)
    (treatment p5 varnished)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 black)
    (wood p7 pine)
    (surface-condition p7 smooth)
    (treatment p7 varnished)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (available p9)
    (colour p9 blue)
    (wood p9 walnut)
    (surface-condition p9 smooth)
    (treatment p9 varnished)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 natural)
    (wood p21 pine)
    (surface-condition p21 smooth)
    (treatment p21 colourfragments)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 natural)
    (wood p37 oak)
    (surface-condition p37 verysmooth)
    (treatment p37 colourfragments)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (available p44)
    (colour p44 mauve)
    (wood p44 pine)
    (surface-condition p44 rough)
    (treatment p44 varnished)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (available p50)
    (colour p50 mauve)
    (wood p50 teak)
    (surface-condition p50 verysmooth)
    (treatment p50 colourfragments)
    (goalsize p50 small)
    
    
    
    
    (available p51)
    (colour p51 white)
    (wood p51 mahogany)
    (surface-condition p51 smooth)
    (treatment p51 glazed)
    (goalsize p51 large)
    
    
    
    
    (available p52)
    (colour p52 natural)
    (wood p52 walnut)
    (surface-condition p52 smooth)
    (treatment p52 varnished)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (available p58)
    (colour p58 blue)
    (wood p58 walnut)
    (surface-condition p58 smooth)
    (treatment p58 colourfragments)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (available p71)
    (colour p71 black)
    (wood p71 mahogany)
    (surface-condition p71 verysmooth)
    (treatment p71 varnished)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (available p77)
    (colour p77 red)
    (wood p77 beech)
    (surface-condition p77 verysmooth)
    (treatment p77 colourfragments)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (available p81)
    (colour p81 white)
    (wood p81 oak)
    (surface-condition p81 smooth)
    (treatment p81 varnished)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (available p90)
    (colour p90 white)
    (wood p90 teak)
    (surface-condition p90 rough)
    (treatment p90 glazed)
    (goalsize p90 small)
    
    
    
    
    (available p91)
    (colour p91 mauve)
    (wood p91 walnut)
    (surface-condition p91 smooth)
    (treatment p91 glazed)
    (goalsize p91 small)
    
    
    
    
    (available p92)
    (colour p92 red)
    (wood p92 oak)
    (surface-condition p92 smooth)
    (treatment p92 varnished)
    (goalsize p92 medium)
    
    
    
    
    (available p93)
    (colour p93 natural)
    (wood p93 pine)
    (surface-condition p93 verysmooth)
    (treatment p93 colourfragments)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
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
    
    
    
    
    (available p101)
    (colour p101 natural)
    (wood p101 walnut)
    (surface-condition p101 rough)
    (treatment p101 varnished)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (available p105)
    (colour p105 mauve)
    (wood p105 mahogany)
    (surface-condition p105 rough)
    (treatment p105 varnished)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
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
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (available p119)
    (colour p119 black)
    (wood p119 beech)
    (surface-condition p119 rough)
    (treatment p119 glazed)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (available p122)
    (colour p122 blue)
    (wood p122 mahogany)
    (surface-condition p122 verysmooth)
    (treatment p122 colourfragments)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (available p128)
    (colour p128 black)
    (wood p128 mahogany)
    (surface-condition p128 rough)
    (treatment p128 glazed)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (available p132)
    (colour p132 black)
    (wood p132 walnut)
    (surface-condition p132 verysmooth)
    (treatment p132 glazed)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (available p139)
    (colour p139 black)
    (wood p139 beech)
    (surface-condition p139 smooth)
    (treatment p139 colourfragments)
    (goalsize p139 medium)
    
    
    
    
    (available p140)
    (colour p140 white)
    (wood p140 teak)
    (surface-condition p140 rough)
    (treatment p140 glazed)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (available p142)
    (colour p142 natural)
    (wood p142 mahogany)
    (surface-condition p142 verysmooth)
    (treatment p142 varnished)
    (goalsize p142 large)
    
    
    
    
    (available p143)
    (colour p143 green)
    (wood p143 walnut)
    (surface-condition p143 smooth)
    (treatment p143 varnished)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (available p154)
    (colour p154 blue)
    (wood p154 walnut)
    (surface-condition p154 rough)
    (treatment p154 varnished)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (available p159)
    (colour p159 green)
    (wood p159 pine)
    (surface-condition p159 smooth)
    (treatment p159 varnished)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (available p164)
    (colour p164 blue)
    (wood p164 oak)
    (surface-condition p164 smooth)
    (treatment p164 varnished)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (available p169)
    (colour p169 black)
    (wood p169 pine)
    (surface-condition p169 rough)
    (treatment p169 colourfragments)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 large)
    
    
    
    
    (available p176)
    (colour p176 black)
    (wood p176 pine)
    (surface-condition p176 verysmooth)
    (treatment p176 varnished)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 medium)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (available p182)
    (colour p182 blue)
    (wood p182 walnut)
    (surface-condition p182 rough)
    (treatment p182 colourfragments)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (available p184)
    (colour p184 natural)
    (wood p184 beech)
    (surface-condition p184 verysmooth)
    (treatment p184 colourfragments)
    (goalsize p184 medium)
    
    
    
    
    (available p185)
    (colour p185 blue)
    (wood p185 walnut)
    (surface-condition p185 smooth)
    (treatment p185 varnished)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 small)
    
    
    
    
    (unused p187)
    (goalsize p187 medium)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (unused p191)
    (goalsize p191 large)
    
    
    
    
    (available p192)
    (colour p192 natural)
    (wood p192 oak)
    (surface-condition p192 rough)
    (treatment p192 varnished)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 small)
    
    
    
    
    (available p196)
    (colour p196 white)
    (wood p196 teak)
    (surface-condition p196 rough)
    (treatment p196 glazed)
    (goalsize p196 small)
    
    
    
    
    (available p197)
    (colour p197 red)
    (wood p197 mahogany)
    (surface-condition p197 smooth)
    (treatment p197 glazed)
    (goalsize p197 small)
    
    
    
    
    (unused p198)
    (goalsize p198 medium)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (available p203)
    (colour p203 green)
    (wood p203 pine)
    (surface-condition p203 smooth)
    (treatment p203 glazed)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 medium)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 large)
    
    
    
    
    (unused p215)
    (goalsize p215 large)
    
    
    
    
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
    
    
    
    
    (available p221)
    (colour p221 white)
    (wood p221 pine)
    (surface-condition p221 verysmooth)
    (treatment p221 colourfragments)
    (goalsize p221 large)
    
    
    
    
    (unused p222)
    (goalsize p222 large)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (available p224)
    (colour p224 black)
    (wood p224 teak)
    (surface-condition p224 smooth)
    (treatment p224 glazed)
    (goalsize p224 small)
    
    
    
    
    (unused p225)
    (goalsize p225 large)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (unused p227)
    (goalsize p227 large)
    
    
    
    
    (unused p228)
    (goalsize p228 large)
    
    
    
    
    (available p229)
    (colour p229 black)
    (wood p229 cherry)
    (surface-condition p229 verysmooth)
    (treatment p229 colourfragments)
    (goalsize p229 large)
    
    
    
    
    (unused p230)
    (goalsize p230 small)
    
    
    
    
    (available p231)
    (colour p231 blue)
    (wood p231 pine)
    (surface-condition p231 verysmooth)
    (treatment p231 colourfragments)
    (goalsize p231 medium)
    
    
    
    
    (unused p232)
    (goalsize p232 large)
    
    
    
    
    (unused p233)
    (goalsize p233 large)
    
    
    
    
    (unused p234)
    (goalsize p234 small)
    
    
    
    
    (unused p235)
    (goalsize p235 medium)
    
    
    
    
    (unused p236)
    (goalsize p236 large)
    
    
    
    
    (available p237)
    (colour p237 white)
    (wood p237 teak)
    (surface-condition p237 rough)
    (treatment p237 glazed)
    (goalsize p237 medium)
    
    
    
    
    (unused p238)
    (goalsize p238 small)
    
    
    
    
    (unused p239)
    (goalsize p239 large)
    
    
    
    
    (unused p240)
    (goalsize p240 small)
    
    
    
    
    (available p241)
    (colour p241 white)
    (wood p241 pine)
    (surface-condition p241 smooth)
    (treatment p241 colourfragments)
    (goalsize p241 small)
    
    
    
    
    (unused p242)
    (goalsize p242 medium)
    
    
    
    
    (unused p243)
    (goalsize p243 small)
    
    
    
    
    (available p244)
    (colour p244 natural)
    (wood p244 beech)
    (surface-condition p244 rough)
    (treatment p244 varnished)
    (goalsize p244 small)
    
    
    
    
    (unused p245)
    (goalsize p245 large)
    
    
    
    
    (unused p246)
    (goalsize p246 medium)
    
    
    
    
    (unused p247)
    (goalsize p247 medium)
    
    
    
    
    (unused p248)
    (goalsize p248 small)
    
    
    
    
    (available p249)
    (colour p249 blue)
    (wood p249 beech)
    (surface-condition p249 smooth)
    (treatment p249 varnished)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 small)
    
    
    
    
    (unused p251)
    (goalsize p251 large)
    
    
    
    
    (unused p252)
    (goalsize p252 medium)
    
    
    
    
    (unused p253)
    (goalsize p253 small)
    
    
    
    
    (unused p254)
    (goalsize p254 large)
    
    
    
    
    (available p255)
    (colour p255 blue)
    (wood p255 teak)
    (surface-condition p255 verysmooth)
    (treatment p255 glazed)
    (goalsize p255 large)
    
    
    
    
    (unused p256)
    (goalsize p256 large)
    
    
    
    
    (unused p257)
    (goalsize p257 medium)
    
    
    
    
    (unused p258)
    (goalsize p258 medium)
    
    
    
    
    (unused p259)
    (goalsize p259 small)
    
    
    
    
    (unused p260)
    (goalsize p260 medium)
    
    
    
    
    (unused p261)
    (goalsize p261 large)
    
    
    
    
    (available p262)
    (colour p262 green)
    (wood p262 oak)
    (surface-condition p262 smooth)
    (treatment p262 colourfragments)
    (goalsize p262 medium)
    
    
    
    
    (unused p263)
    (goalsize p263 medium)
    
    
    
    
    (unused p264)
    (goalsize p264 large)
    
    
    
    
    (unused p265)
    (goalsize p265 large)
    
    
    
    
    (unused p266)
    (goalsize p266 medium)
    
    
    
    
    (unused p267)
    (goalsize p267 medium)
    
    
    
    
    (unused p268)
    (goalsize p268 medium)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s11)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s1)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s4)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s10)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s6)
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
    (boardsize b15 s10)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s10)
    (wood b17 mahogany)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s6)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 oak)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s6)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 oak)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s6)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s10)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s4)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s11)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s9)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s11)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s8)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s10)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s6)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s10)
    (wood b34 pine)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s10)
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
    (boardsize b38 s6)
    (wood b38 pine)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s5)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s6)
    (wood b41 walnut)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s5)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s8)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s7)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s12)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s9)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s6)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s7)
    (wood b48 teak)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s9)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s8)
    (wood b50 teak)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s9)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s8)
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
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s9)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s6)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s8)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s11)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s10)
    (wood b61 beech)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s8)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s7)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s11)
    (wood b64 beech)
    (surface-condition b64 smooth)
    (available b64)
    (boardsize b65 s8)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s10)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s6)
    (wood b67 beech)
    (surface-condition b67 smooth)
    (available b67)
    (boardsize b68 s2)
    (wood b68 beech)
    (surface-condition b68 smooth)
    (available b68)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (wood p0 walnut)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 pine)
      (treatment p1 varnished)
      (available p2)
      (colour p2 white)
      (wood p2 beech)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 mahogany)
      (treatment p3 varnished)
      (available p4)
      (colour p4 red)
      (wood p4 beech)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 white)
      (wood p5 walnut)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 white)
      (surface-condition p6 verysmooth)
      (available p7)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (wood p8 teak)
      (surface-condition p8 verysmooth)
      (available p9)
      (colour p9 red)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 mauve)
      (wood p10 walnut)
      (available p11)
      (colour p11 green)
      (wood p11 mahogany)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 mauve)
      (wood p12 teak)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (wood p13 oak)
      (treatment p13 varnished)
      (available p14)
      (colour p14 green)
      (wood p14 mahogany)
      (available p15)
      (wood p15 walnut)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 black)
      (wood p16 mahogany)
      (available p17)
      (wood p17 beech)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 natural)
      (wood p18 teak)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 blue)
      (wood p19 pine)
      (available p20)
      (colour p20 natural)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 mauve)
      (wood p21 pine)
      (available p22)
      (colour p22 black)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 green)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 white)
      (surface-condition p24 smooth)
      (available p25)
      (wood p25 walnut)
      (treatment p25 varnished)
      (available p26)
      (wood p26 teak)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 white)
      (wood p27 beech)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 mauve)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 white)
      (wood p29 beech)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 green)
      (wood p30 beech)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 green)
      (wood p31 oak)
      (available p32)
      (colour p32 mauve)
      (wood p32 beech)
      (available p33)
      (colour p33 white)
      (surface-condition p33 smooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 white)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 white)
      (wood p35 teak)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (wood p36 mahogany)
      (treatment p36 varnished)
      (available p37)
      (colour p37 red)
      (wood p37 oak)
      (available p38)
      (colour p38 white)
      (treatment p38 varnished)
      (available p39)
      (colour p39 mauve)
      (wood p39 pine)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (wood p40 beech)
      (surface-condition p40 verysmooth)
      (available p41)
      (colour p41 mauve)
      (wood p41 mahogany)
      (treatment p41 glazed)
      (available p42)
      (colour p42 blue)
      (wood p42 mahogany)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 mauve)
      (surface-condition p43 verysmooth)
      (available p44)
      (colour p44 red)
      (wood p44 pine)
      (surface-condition p44 verysmooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 mauve)
      (wood p45 mahogany)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 blue)
      (treatment p46 glazed)
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
      (surface-condition p49 smooth)
      (available p50)
      (colour p50 black)
      (wood p50 teak)
      (treatment p50 varnished)
      (available p51)
      (colour p51 green)
      (wood p51 mahogany)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 blue)
      (surface-condition p52 smooth)
      (available p53)
      (wood p53 mahogany)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 black)
      (wood p54 walnut)
      (surface-condition p54 smooth)
      (available p55)
      (wood p55 oak)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 white)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 black)
      (wood p57 pine)
      (treatment p57 varnished)
      (available p58)
      (wood p58 walnut)
      (treatment p58 varnished)
      (available p59)
      (colour p59 black)
      (wood p59 beech)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (wood p60 mahogany)
      (treatment p60 varnished)
      (available p61)
      (colour p61 white)
      (wood p61 mahogany)
      (available p62)
      (colour p62 natural)
      (wood p62 teak)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 natural)
      (surface-condition p63 smooth)
      (available p64)
      (colour p64 mauve)
      (wood p64 oak)
      (surface-condition p64 smooth)
      (available p65)
      (colour p65 mauve)
      (wood p65 mahogany)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (wood p66 pine)
      (treatment p66 varnished)
      (available p67)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 green)
      (wood p68 mahogany)
      (available p69)
      (colour p69 mauve)
      (wood p69 oak)
      (available p70)
      (colour p70 white)
      (wood p70 teak)
      (available p71)
      (colour p71 green)
      (treatment p71 varnished)
      (available p72)
      (colour p72 natural)
      (wood p72 beech)
      (treatment p72 varnished)
      (available p73)
      (colour p73 blue)
      (surface-condition p73 smooth)
      (treatment p73 glazed)
      (available p74)
      (wood p74 oak)
      (treatment p74 varnished)
      (available p75)
      (colour p75 green)
      (wood p75 mahogany)
      (surface-condition p75 verysmooth)
      (treatment p75 varnished)
      (available p76)
      (colour p76 blue)
      (surface-condition p76 smooth)
      (available p77)
      (colour p77 green)
      (treatment p77 varnished)
      (available p78)
      (wood p78 oak)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 white)
      (surface-condition p79 smooth)
      (treatment p79 varnished)
      (available p80)
      (colour p80 blue)
      (surface-condition p80 verysmooth)
      (available p81)
      (colour p81 mauve)
      (wood p81 oak)
      (surface-condition p81 smooth)
      (treatment p81 glazed)
      (available p82)
      (wood p82 teak)
      (treatment p82 varnished)
      (available p83)
      (colour p83 natural)
      (wood p83 teak)
      (available p84)
      (colour p84 black)
      (wood p84 oak)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 natural)
      (surface-condition p85 verysmooth)
      (available p86)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 natural)
      (surface-condition p87 verysmooth)
      (available p88)
      (wood p88 beech)
      (surface-condition p88 smooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 green)
      (wood p89 mahogany)
      (surface-condition p89 smooth)
      (treatment p89 varnished)
      (available p90)
      (colour p90 natural)
      (wood p90 teak)
      (surface-condition p90 smooth)
      (treatment p90 varnished)
      (available p91)
      (wood p91 walnut)
      (surface-condition p91 verysmooth)
      (available p92)
      (colour p92 black)
      (surface-condition p92 smooth)
      (treatment p92 varnished)
      (available p93)
      (colour p93 green)
      (wood p93 pine)
      (treatment p93 varnished)
      (available p94)
      (colour p94 red)
      (surface-condition p94 verysmooth)
      (available p95)
      (colour p95 red)
      (wood p95 walnut)
      (surface-condition p95 smooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 green)
      (surface-condition p96 verysmooth)
      (available p97)
      (surface-condition p97 verysmooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 green)
      (wood p98 walnut)
      (available p99)
      (wood p99 teak)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (surface-condition p100 verysmooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 black)
      (wood p101 walnut)
      (surface-condition p101 smooth)
      (available p102)
      (colour p102 blue)
      (wood p102 teak)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (surface-condition p103 verysmooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 white)
      (surface-condition p104 smooth)
      (treatment p104 glazed)
      (available p105)
      (wood p105 mahogany)
      (surface-condition p105 verysmooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 black)
      (wood p106 cherry)
      (treatment p106 glazed)
      (available p107)
      (colour p107 blue)
      (wood p107 teak)
      (available p108)
      (surface-condition p108 verysmooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 mauve)
      (wood p109 walnut)
      (surface-condition p109 verysmooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 blue)
      (wood p110 teak)
      (surface-condition p110 smooth)
      (available p111)
      (colour p111 mauve)
      (treatment p111 glazed)
      (available p112)
      (wood p112 walnut)
      (surface-condition p112 smooth)
      (available p113)
      (colour p113 natural)
      (surface-condition p113 verysmooth)
      (available p114)
      (colour p114 natural)
      (wood p114 pine)
      (available p115)
      (colour p115 white)
      (wood p115 teak)
      (available p116)
      (colour p116 natural)
      (treatment p116 glazed)
      (available p117)
      (surface-condition p117 smooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 red)
      (wood p118 pine)
      (surface-condition p118 verysmooth)
      (treatment p118 glazed)
      (available p119)
      (colour p119 mauve)
      (wood p119 beech)
      (surface-condition p119 smooth)
      (treatment p119 glazed)
      (available p120)
      (colour p120 green)
      (wood p120 mahogany)
      (surface-condition p120 verysmooth)
      (treatment p120 varnished)
      (available p121)
      (wood p121 pine)
      (treatment p121 glazed)
      (available p122)
      (wood p122 mahogany)
      (surface-condition p122 smooth)
      (available p123)
      (colour p123 black)
      (wood p123 beech)
      (available p124)
      (wood p124 mahogany)
      (treatment p124 glazed)
      (available p125)
      (colour p125 red)
      (treatment p125 varnished)
      (available p126)
      (colour p126 black)
      (treatment p126 varnished)
      (available p127)
      (colour p127 white)
      (wood p127 walnut)
      (treatment p127 varnished)
      (available p128)
      (colour p128 red)
      (wood p128 mahogany)
      (surface-condition p128 smooth)
      (treatment p128 varnished)
      (available p129)
      (wood p129 pine)
      (treatment p129 varnished)
      (available p130)
      (colour p130 white)
      (wood p130 cherry)
      (surface-condition p130 verysmooth)
      (treatment p130 varnished)
      (available p131)
      (colour p131 white)
      (wood p131 teak)
      (surface-condition p131 verysmooth)
      (treatment p131 glazed)
      (available p132)
      (surface-condition p132 smooth)
      (treatment p132 glazed)
      (available p133)
      (wood p133 beech)
      (surface-condition p133 smooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 red)
      (surface-condition p134 smooth)
      (available p135)
      (wood p135 mahogany)
      (treatment p135 glazed)
      (available p136)
      (colour p136 red)
      (treatment p136 glazed)
      (available p137)
      (colour p137 natural)
      (wood p137 mahogany)
      (treatment p137 glazed)
      (available p138)
      (colour p138 blue)
      (surface-condition p138 verysmooth)
      (treatment p138 varnished)
      (available p139)
      (colour p139 red)
      (wood p139 beech)
      (surface-condition p139 smooth)
      (treatment p139 varnished)
      (available p140)
      (colour p140 natural)
      (wood p140 teak)
      (surface-condition p140 smooth)
      (treatment p140 glazed)
      (available p141)
      (colour p141 black)
      (surface-condition p141 smooth)
      (available p142)
      (wood p142 mahogany)
      (surface-condition p142 smooth)
      (treatment p142 glazed)
      (available p143)
      (surface-condition p143 smooth)
      (treatment p143 glazed)
      (available p144)
      (colour p144 black)
      (wood p144 oak)
      (available p145)
      (colour p145 black)
      (surface-condition p145 smooth)
      (available p146)
      (colour p146 red)
      (treatment p146 varnished)
      (available p147)
      (colour p147 black)
      (wood p147 pine)
      (surface-condition p147 verysmooth)
      (treatment p147 glazed)
      (available p148)
      (wood p148 mahogany)
      (treatment p148 varnished)
      (available p149)
      (colour p149 mauve)
      (wood p149 oak)
      (surface-condition p149 verysmooth)
      (treatment p149 varnished)
      (available p150)
      (surface-condition p150 smooth)
      (treatment p150 varnished)
      (available p151)
      (colour p151 white)
      (wood p151 mahogany)
      (treatment p151 varnished)
      (available p152)
      (colour p152 natural)
      (surface-condition p152 smooth)
      (available p153)
      (surface-condition p153 smooth)
      (treatment p153 glazed)
      (available p154)
      (wood p154 walnut)
      (treatment p154 glazed)
      (available p155)
      (colour p155 natural)
      (wood p155 oak)
      (available p156)
      (colour p156 white)
      (wood p156 walnut)
      (surface-condition p156 verysmooth)
      (treatment p156 glazed)
      (available p157)
      (colour p157 white)
      (wood p157 teak)
      (surface-condition p157 verysmooth)
      (treatment p157 glazed)
      (available p158)
      (colour p158 white)
      (treatment p158 glazed)
      (available p159)
      (colour p159 black)
      (wood p159 pine)
      (treatment p159 glazed)
      (available p160)
      (colour p160 white)
      (surface-condition p160 smooth)
      (available p161)
      (colour p161 green)
      (surface-condition p161 smooth)
      (treatment p161 glazed)
      (available p162)
      (wood p162 walnut)
      (surface-condition p162 smooth)
      (available p163)
      (colour p163 red)
      (wood p163 walnut)
      (surface-condition p163 verysmooth)
      (treatment p163 glazed)
      (available p164)
      (surface-condition p164 verysmooth)
      (treatment p164 varnished)
      (available p165)
      (colour p165 mauve)
      (treatment p165 varnished)
      (available p166)
      (wood p166 oak)
      (treatment p166 varnished)
      (available p167)
      (colour p167 green)
      (surface-condition p167 verysmooth)
      (available p168)
      (surface-condition p168 verysmooth)
      (treatment p168 glazed)
      (available p169)
      (colour p169 mauve)
      (wood p169 pine)
      (treatment p169 varnished)
      (available p170)
      (colour p170 white)
      (wood p170 mahogany)
      (surface-condition p170 verysmooth)
      (treatment p170 glazed)
      (available p171)
      (surface-condition p171 verysmooth)
      (treatment p171 varnished)
      (available p172)
      (colour p172 white)
      (wood p172 beech)
      (surface-condition p172 verysmooth)
      (treatment p172 varnished)
      (available p173)
      (colour p173 black)
      (wood p173 pine)
      (surface-condition p173 verysmooth)
      (available p174)
      (colour p174 white)
      (wood p174 oak)
      (surface-condition p174 smooth)
      (treatment p174 glazed)
      (available p175)
      (colour p175 natural)
      (wood p175 beech)
      (surface-condition p175 smooth)
      (treatment p175 glazed)
      (available p176)
      (colour p176 red)
      (wood p176 pine)
      (surface-condition p176 verysmooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 white)
      (surface-condition p177 smooth)
      (available p178)
      (colour p178 green)
      (wood p178 mahogany)
      (available p179)
      (wood p179 beech)
      (surface-condition p179 verysmooth)
      (available p180)
      (colour p180 black)
      (treatment p180 glazed)
      (available p181)
      (colour p181 white)
      (surface-condition p181 smooth)
      (treatment p181 varnished)
      (available p182)
      (wood p182 walnut)
      (treatment p182 varnished)
      (available p183)
      (wood p183 mahogany)
      (surface-condition p183 smooth)
      (available p184)
      (colour p184 blue)
      (surface-condition p184 verysmooth)
      (available p185)
      (colour p185 mauve)
      (treatment p185 varnished)
      (available p186)
      (wood p186 teak)
      (surface-condition p186 smooth)
      (available p187)
      (wood p187 mahogany)
      (treatment p187 glazed)
      (available p188)
      (wood p188 mahogany)
      (surface-condition p188 verysmooth)
      (treatment p188 glazed)
      (available p189)
      (colour p189 black)
      (wood p189 teak)
      (surface-condition p189 smooth)
      (treatment p189 varnished)
      (available p190)
      (wood p190 oak)
      (surface-condition p190 smooth)
      (available p191)
      (colour p191 white)
      (wood p191 teak)
      (available p192)
      (colour p192 black)
      (treatment p192 varnished)
      (available p193)
      (colour p193 white)
      (wood p193 teak)
      (surface-condition p193 verysmooth)
      (treatment p193 glazed)
      (available p194)
      (colour p194 mauve)
      (treatment p194 varnished)
      (available p195)
      (colour p195 red)
      (wood p195 mahogany)
      (surface-condition p195 verysmooth)
      (treatment p195 varnished)
      (available p196)
      (colour p196 green)
      (wood p196 teak)
      (surface-condition p196 smooth)
      (treatment p196 varnished)
      (available p197)
      (colour p197 natural)
      (treatment p197 varnished)
      (available p198)
      (colour p198 blue)
      (surface-condition p198 smooth)
      (available p199)
      (colour p199 green)
      (wood p199 teak)
      (surface-condition p199 verysmooth)
      (treatment p199 varnished)
      (available p200)
      (colour p200 mauve)
      (surface-condition p200 verysmooth)
      (available p201)
      (colour p201 mauve)
      (treatment p201 glazed)
      (available p202)
      (colour p202 black)
      (wood p202 pine)
      (treatment p202 varnished)
      (available p203)
      (wood p203 pine)
      (surface-condition p203 verysmooth)
      (available p204)
      (colour p204 red)
      (surface-condition p204 verysmooth)
      (available p205)
      (wood p205 pine)
      (treatment p205 glazed)
      (available p206)
      (colour p206 blue)
      (wood p206 mahogany)
      (surface-condition p206 verysmooth)
      (treatment p206 varnished)
      (available p207)
      (wood p207 pine)
      (surface-condition p207 smooth)
      (treatment p207 glazed)
      (available p208)
      (colour p208 red)
      (surface-condition p208 smooth)
      (treatment p208 glazed)
      (available p209)
      (colour p209 natural)
      (treatment p209 varnished)
      (available p210)
      (wood p210 beech)
      (surface-condition p210 smooth)
      (available p211)
      (wood p211 pine)
      (treatment p211 varnished)
      (available p212)
      (colour p212 red)
      (wood p212 pine)
      (surface-condition p212 smooth)
      (treatment p212 glazed)
      (available p213)
      (surface-condition p213 verysmooth)
      (treatment p213 varnished)
      (available p214)
      (colour p214 black)
      (treatment p214 glazed)
      (available p215)
      (wood p215 mahogany)
      (surface-condition p215 smooth)
      (treatment p215 glazed)
      (available p216)
      (wood p216 mahogany)
      (treatment p216 glazed)
      (available p217)
      (colour p217 red)
      (treatment p217 varnished)
      (available p218)
      (colour p218 blue)
      (wood p218 mahogany)
      (surface-condition p218 verysmooth)
      (treatment p218 varnished)
      (available p219)
      (wood p219 beech)
      (surface-condition p219 verysmooth)
      (available p220)
      (colour p220 white)
      (treatment p220 glazed)
      (available p221)
      (wood p221 pine)
      (treatment p221 glazed)
      (available p222)
      (wood p222 pine)
      (surface-condition p222 smooth)
      (available p223)
      (wood p223 pine)
      (surface-condition p223 verysmooth)
      (treatment p223 varnished)
      (available p224)
      (colour p224 mauve)
      (treatment p224 varnished)
      (available p225)
      (colour p225 green)
      (wood p225 cherry)
      (surface-condition p225 smooth)
      (treatment p225 varnished)
      (available p226)
      (colour p226 blue)
      (wood p226 pine)
      (available p227)
      (colour p227 black)
      (wood p227 teak)
      (available p228)
      (colour p228 green)
      (wood p228 oak)
      (available p229)
      (colour p229 white)
      (wood p229 cherry)
      (surface-condition p229 verysmooth)
      (available p230)
      (colour p230 black)
      (surface-condition p230 verysmooth)
      (available p231)
      (wood p231 pine)
      (surface-condition p231 smooth)
      (available p232)
      (colour p232 white)
      (wood p232 beech)
      (surface-condition p232 verysmooth)
      (treatment p232 varnished)
      (available p233)
      (colour p233 blue)
      (wood p233 pine)
      (surface-condition p233 smooth)
      (treatment p233 glazed)
      (available p234)
      (wood p234 teak)
      (surface-condition p234 verysmooth)
      (treatment p234 glazed)
      (available p235)
      (colour p235 red)
      (treatment p235 glazed)
      (available p236)
      (wood p236 pine)
      (treatment p236 glazed)
      (available p237)
      (wood p237 teak)
      (surface-condition p237 smooth)
      (available p238)
      (wood p238 beech)
      (surface-condition p238 smooth)
      (treatment p238 glazed)
      (available p239)
      (colour p239 natural)
      (treatment p239 glazed)
      (available p240)
      (colour p240 mauve)
      (wood p240 beech)
      (surface-condition p240 smooth)
      (treatment p240 glazed)
      (available p241)
      (colour p241 mauve)
      (wood p241 pine)
      (surface-condition p241 verysmooth)
      (treatment p241 glazed)
      (available p242)
      (colour p242 black)
      (surface-condition p242 verysmooth)
      (treatment p242 varnished)
      (available p243)
      (wood p243 pine)
      (treatment p243 varnished)
      (available p244)
      (colour p244 green)
      (treatment p244 glazed)
      (available p245)
      (colour p245 mauve)
      (wood p245 teak)
      (surface-condition p245 verysmooth)
      (treatment p245 glazed)
      (available p246)
      (colour p246 mauve)
      (surface-condition p246 verysmooth)
      (available p247)
      (wood p247 oak)
      (treatment p247 varnished)
      (available p248)
      (colour p248 white)
      (surface-condition p248 verysmooth)
      (treatment p248 glazed)
      (available p249)
      (colour p249 mauve)
      (wood p249 beech)
      (available p250)
      (colour p250 green)
      (treatment p250 varnished)
      (available p251)
      (colour p251 natural)
      (wood p251 teak)
      (surface-condition p251 verysmooth)
      (treatment p251 glazed)
      (available p252)
      (colour p252 red)
      (wood p252 pine)
      (available p253)
      (surface-condition p253 smooth)
      (treatment p253 varnished)
      (available p254)
      (colour p254 blue)
      (wood p254 teak)
      (surface-condition p254 smooth)
      (available p255)
      (colour p255 red)
      (treatment p255 glazed)
      (available p256)
      (wood p256 walnut)
      (treatment p256 varnished)
      (available p257)
      (colour p257 green)
      (surface-condition p257 smooth)
      (treatment p257 varnished)
      (available p258)
      (colour p258 green)
      (wood p258 mahogany)
      (surface-condition p258 smooth)
      (treatment p258 glazed)
      (available p259)
      (colour p259 mauve)
      (wood p259 oak)
      (available p260)
      (wood p260 pine)
      (surface-condition p260 smooth)
      (available p261)
      (colour p261 green)
      (wood p261 pine)
      (available p262)
      (wood p262 oak)
      (treatment p262 glazed)
      (available p263)
      (wood p263 oak)
      (surface-condition p263 verysmooth)
      (available p264)
      (wood p264 beech)
      (surface-condition p264 smooth)
      (treatment p264 glazed)
      (available p265)
      (wood p265 pine)
      (surface-condition p265 smooth)
      (treatment p265 glazed)
      (available p266)
      (colour p266 black)
      (surface-condition p266 verysmooth)
      (available p267)
      (colour p267 red)
      (wood p267 beech)
      (available p268)
      (wood p268 teak)
      (surface-condition p268 smooth)
    )
  )
  
)
