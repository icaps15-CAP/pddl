; woodworking task with 266 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 876582

(define (problem wood-prob-sat-99)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red mauve blue green white black - acolour
    oak mahogany teak beech pine cherry walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer1 black)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
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
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
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
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (available p5)
    (colour p5 white)
    (wood p5 walnut)
    (surface-condition p5 verysmooth)
    (treatment p5 glazed)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 green)
    (wood p7 cherry)
    (surface-condition p7 verysmooth)
    (treatment p7 glazed)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (available p18)
    (colour p18 white)
    (wood p18 pine)
    (surface-condition p18 rough)
    (treatment p18 varnished)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (available p34)
    (colour p34 blue)
    (wood p34 pine)
    (surface-condition p34 verysmooth)
    (treatment p34 glazed)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 white)
    (wood p35 teak)
    (surface-condition p35 smooth)
    (treatment p35 varnished)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 mauve)
    (wood p36 cherry)
    (surface-condition p36 rough)
    (treatment p36 colourfragments)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (available p40)
    (colour p40 green)
    (wood p40 teak)
    (surface-condition p40 smooth)
    (treatment p40 glazed)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (available p49)
    (colour p49 green)
    (wood p49 mahogany)
    (surface-condition p49 rough)
    (treatment p49 varnished)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (available p51)
    (colour p51 green)
    (wood p51 cherry)
    (surface-condition p51 smooth)
    (treatment p51 varnished)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (available p53)
    (colour p53 green)
    (wood p53 teak)
    (surface-condition p53 smooth)
    (treatment p53 colourfragments)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (available p57)
    (colour p57 white)
    (wood p57 beech)
    (surface-condition p57 rough)
    (treatment p57 varnished)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (available p59)
    (colour p59 green)
    (wood p59 walnut)
    (surface-condition p59 smooth)
    (treatment p59 colourfragments)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (available p62)
    (colour p62 blue)
    (wood p62 cherry)
    (surface-condition p62 verysmooth)
    (treatment p62 colourfragments)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (available p78)
    (colour p78 red)
    (wood p78 walnut)
    (surface-condition p78 rough)
    (treatment p78 colourfragments)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (available p82)
    (colour p82 white)
    (wood p82 mahogany)
    (surface-condition p82 rough)
    (treatment p82 glazed)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (available p89)
    (colour p89 white)
    (wood p89 walnut)
    (surface-condition p89 smooth)
    (treatment p89 glazed)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (available p97)
    (colour p97 black)
    (wood p97 pine)
    (surface-condition p97 rough)
    (treatment p97 colourfragments)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (available p113)
    (colour p113 black)
    (wood p113 walnut)
    (surface-condition p113 smooth)
    (treatment p113 glazed)
    (goalsize p113 medium)
    
    
    
    
    (available p114)
    (colour p114 red)
    (wood p114 walnut)
    (surface-condition p114 rough)
    (treatment p114 colourfragments)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
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
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (available p129)
    (colour p129 natural)
    (wood p129 teak)
    (surface-condition p129 verysmooth)
    (treatment p129 colourfragments)
    (goalsize p129 medium)
    
    
    
    
    (available p130)
    (colour p130 white)
    (wood p130 mahogany)
    (surface-condition p130 verysmooth)
    (treatment p130 glazed)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (available p135)
    (colour p135 green)
    (wood p135 teak)
    (surface-condition p135 rough)
    (treatment p135 colourfragments)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (available p139)
    (colour p139 natural)
    (wood p139 oak)
    (surface-condition p139 verysmooth)
    (treatment p139 colourfragments)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (available p141)
    (colour p141 red)
    (wood p141 beech)
    (surface-condition p141 rough)
    (treatment p141 glazed)
    (goalsize p141 large)
    
    
    
    
    (available p142)
    (colour p142 white)
    (wood p142 cherry)
    (surface-condition p142 rough)
    (treatment p142 colourfragments)
    (goalsize p142 medium)
    
    
    
    
    (available p143)
    (colour p143 white)
    (wood p143 beech)
    (surface-condition p143 smooth)
    (treatment p143 colourfragments)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (available p145)
    (colour p145 blue)
    (wood p145 mahogany)
    (surface-condition p145 verysmooth)
    (treatment p145 varnished)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 small)
    
    
    
    
    (available p149)
    (colour p149 red)
    (wood p149 pine)
    (surface-condition p149 verysmooth)
    (treatment p149 colourfragments)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (available p152)
    (colour p152 natural)
    (wood p152 cherry)
    (surface-condition p152 rough)
    (treatment p152 varnished)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (available p159)
    (colour p159 red)
    (wood p159 oak)
    (surface-condition p159 rough)
    (treatment p159 colourfragments)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (available p167)
    (colour p167 black)
    (wood p167 cherry)
    (surface-condition p167 verysmooth)
    (treatment p167 varnished)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (available p171)
    (colour p171 natural)
    (wood p171 teak)
    (surface-condition p171 rough)
    (treatment p171 varnished)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 large)
    
    
    
    
    (available p175)
    (colour p175 blue)
    (wood p175 mahogany)
    (surface-condition p175 rough)
    (treatment p175 varnished)
    (goalsize p175 small)
    
    
    
    
    (available p176)
    (colour p176 natural)
    (wood p176 oak)
    (surface-condition p176 rough)
    (treatment p176 varnished)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (unused p181)
    (goalsize p181 large)
    
    
    
    
    (unused p182)
    (goalsize p182 large)
    
    
    
    
    (available p183)
    (colour p183 mauve)
    (wood p183 pine)
    (surface-condition p183 verysmooth)
    (treatment p183 colourfragments)
    (goalsize p183 medium)
    
    
    
    
    (available p184)
    (colour p184 green)
    (wood p184 mahogany)
    (surface-condition p184 rough)
    (treatment p184 colourfragments)
    (goalsize p184 medium)
    
    
    
    
    (unused p185)
    (goalsize p185 medium)
    
    
    
    
    (available p186)
    (colour p186 black)
    (wood p186 beech)
    (surface-condition p186 smooth)
    (treatment p186 glazed)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (available p193)
    (colour p193 green)
    (wood p193 walnut)
    (surface-condition p193 smooth)
    (treatment p193 colourfragments)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 small)
    
    
    
    
    (unused p197)
    (goalsize p197 small)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (unused p199)
    (goalsize p199 medium)
    
    
    
    
    (available p200)
    (colour p200 mauve)
    (wood p200 mahogany)
    (surface-condition p200 rough)
    (treatment p200 glazed)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 medium)
    
    
    
    
    (available p202)
    (colour p202 red)
    (wood p202 beech)
    (surface-condition p202 smooth)
    (treatment p202 varnished)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 medium)
    
    
    
    
    (unused p209)
    (goalsize p209 large)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (available p211)
    (colour p211 black)
    (wood p211 cherry)
    (surface-condition p211 verysmooth)
    (treatment p211 varnished)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 small)
    
    
    
    
    (available p213)
    (colour p213 green)
    (wood p213 cherry)
    (surface-condition p213 verysmooth)
    (treatment p213 varnished)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (available p215)
    (colour p215 blue)
    (wood p215 walnut)
    (surface-condition p215 smooth)
    (treatment p215 colourfragments)
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
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (available p223)
    (colour p223 white)
    (wood p223 oak)
    (surface-condition p223 verysmooth)
    (treatment p223 colourfragments)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (available p225)
    (colour p225 green)
    (wood p225 beech)
    (surface-condition p225 rough)
    (treatment p225 varnished)
    (goalsize p225 large)
    
    
    
    
    (unused p226)
    (goalsize p226 small)
    
    
    
    
    (unused p227)
    (goalsize p227 small)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 large)
    
    
    
    
    (unused p230)
    (goalsize p230 large)
    
    
    
    
    (unused p231)
    (goalsize p231 medium)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 large)
    
    
    
    
    (unused p234)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (unused p237)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 small)
    
    
    
    
    (available p239)
    (colour p239 white)
    (wood p239 mahogany)
    (surface-condition p239 rough)
    (treatment p239 colourfragments)
    (goalsize p239 small)
    
    
    
    
    (available p240)
    (colour p240 green)
    (wood p240 teak)
    (surface-condition p240 rough)
    (treatment p240 glazed)
    (goalsize p240 medium)
    
    
    
    
    (available p241)
    (colour p241 mauve)
    (wood p241 teak)
    (surface-condition p241 rough)
    (treatment p241 varnished)
    (goalsize p241 medium)
    
    
    
    
    (unused p242)
    (goalsize p242 medium)
    
    
    
    
    (available p243)
    (colour p243 black)
    (wood p243 beech)
    (surface-condition p243 rough)
    (treatment p243 colourfragments)
    (goalsize p243 small)
    
    
    
    
    (available p244)
    (colour p244 natural)
    (wood p244 teak)
    (surface-condition p244 rough)
    (treatment p244 varnished)
    (goalsize p244 small)
    
    
    
    
    (unused p245)
    (goalsize p245 medium)
    
    
    
    
    (unused p246)
    (goalsize p246 small)
    
    
    
    
    (unused p247)
    (goalsize p247 medium)
    
    
    
    
    (unused p248)
    (goalsize p248 large)
    
    
    
    
    (unused p249)
    (goalsize p249 small)
    
    
    
    
    (unused p250)
    (goalsize p250 medium)
    
    
    
    
    (available p251)
    (colour p251 red)
    (wood p251 cherry)
    (surface-condition p251 verysmooth)
    (treatment p251 glazed)
    (goalsize p251 medium)
    
    
    
    
    (unused p252)
    (goalsize p252 large)
    
    
    
    
    (unused p253)
    (goalsize p253 large)
    
    
    
    
    (unused p254)
    (goalsize p254 medium)
    
    
    
    
    (unused p255)
    (goalsize p255 small)
    
    
    
    
    (unused p256)
    (goalsize p256 large)
    
    
    
    
    (unused p257)
    (goalsize p257 medium)
    
    
    
    
    (unused p258)
    (goalsize p258 small)
    
    
    
    
    (unused p259)
    (goalsize p259 small)
    
    
    
    
    (unused p260)
    (goalsize p260 large)
    
    
    
    
    (unused p261)
    (goalsize p261 large)
    
    
    
    
    (unused p262)
    (goalsize p262 large)
    
    
    
    
    (unused p263)
    (goalsize p263 large)
    
    
    
    
    (unused p264)
    (goalsize p264 medium)
    
    
    
    
    (unused p265)
    (goalsize p265 small)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s6)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 cherry)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s4)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 cherry)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s9)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s5)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 mahogany)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s6)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s9)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s10)
    (wood b18 mahogany)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s9)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s11)
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
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s10)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s8)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s9)
    (wood b26 oak)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s6)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s11)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s11)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 pine)
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
    (boardsize b33 s8)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s3)
    (wood b35 pine)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s8)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s8)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s8)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s9)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s7)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s10)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s8)
    (wood b43 walnut)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s8)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s8)
    (wood b45 teak)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s7)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s8)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s9)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s10)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s7)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s8)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s10)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s6)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s2)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s6)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s7)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s8)
    (wood b57 beech)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s5)
    (wood b58 beech)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s6)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s8)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s8)
    (wood b61 beech)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s11)
    (wood b62 beech)
    (surface-condition b62 smooth)
    (available b62)
    (boardsize b63 s7)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s7)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s3)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
  )
  (:goal
    (and
      (available p0)
      (wood p0 teak)
      (treatment p0 glazed)
      (available p1)
      (colour p1 red)
      (wood p1 cherry)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 black)
      (treatment p2 varnished)
      (available p3)
      (wood p3 walnut)
      (treatment p3 varnished)
      (available p4)
      (wood p4 pine)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 red)
      (wood p5 walnut)
      (available p6)
      (colour p6 blue)
      (wood p6 beech)
      (surface-condition p6 smooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 natural)
      (wood p7 cherry)
      (available p8)
      (colour p8 black)
      (treatment p8 glazed)
      (available p9)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 mauve)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 green)
      (wood p12 teak)
      (available p13)
      (colour p13 red)
      (treatment p13 varnished)
      (available p14)
      (colour p14 mauve)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 walnut)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 mauve)
      (wood p16 pine)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 mauve)
      (treatment p17 varnished)
      (available p18)
      (colour p18 black)
      (wood p18 pine)
      (surface-condition p18 verysmooth)
      (available p19)
      (wood p19 beech)
      (treatment p19 glazed)
      (available p20)
      (colour p20 blue)
      (wood p20 cherry)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 blue)
      (treatment p21 glazed)
      (available p22)
      (colour p22 natural)
      (wood p22 beech)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 black)
      (wood p23 walnut)
      (available p24)
      (wood p24 walnut)
      (treatment p24 glazed)
      (available p25)
      (colour p25 red)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 red)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 white)
      (wood p27 cherry)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (wood p28 beech)
      (treatment p28 varnished)
      (available p29)
      (colour p29 black)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 green)
      (wood p30 mahogany)
      (treatment p30 glazed)
      (available p31)
      (wood p31 cherry)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 white)
      (wood p32 oak)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 mauve)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 black)
      (wood p34 pine)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (wood p35 teak)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 green)
      (treatment p36 glazed)
      (available p37)
      (colour p37 natural)
      (wood p37 mahogany)
      (available p38)
      (colour p38 green)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 mauve)
      (wood p39 cherry)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (wood p40 teak)
      (surface-condition p40 verysmooth)
      (available p41)
      (colour p41 black)
      (treatment p41 glazed)
      (available p42)
      (colour p42 green)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 blue)
      (wood p43 cherry)
      (surface-condition p43 smooth)
      (available p44)
      (colour p44 red)
      (wood p44 oak)
      (available p45)
      (wood p45 beech)
      (treatment p45 glazed)
      (available p46)
      (colour p46 red)
      (wood p46 mahogany)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (wood p47 mahogany)
      (treatment p47 glazed)
      (available p48)
      (colour p48 blue)
      (treatment p48 varnished)
      (available p49)
      (surface-condition p49 verysmooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 white)
      (surface-condition p50 verysmooth)
      (treatment p50 varnished)
      (available p51)
      (wood p51 cherry)
      (treatment p51 glazed)
      (available p52)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 red)
      (wood p53 teak)
      (available p54)
      (colour p54 black)
      (surface-condition p54 smooth)
      (treatment p54 varnished)
      (available p55)
      (wood p55 walnut)
      (surface-condition p55 smooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 red)
      (wood p56 beech)
      (available p57)
      (colour p57 black)
      (wood p57 beech)
      (available p58)
      (colour p58 white)
      (treatment p58 varnished)
      (available p59)
      (colour p59 white)
      (wood p59 walnut)
      (treatment p59 varnished)
      (available p60)
      (surface-condition p60 verysmooth)
      (treatment p60 glazed)
      (available p61)
      (colour p61 green)
      (treatment p61 glazed)
      (available p62)
      (colour p62 natural)
      (surface-condition p62 smooth)
      (available p63)
      (wood p63 mahogany)
      (surface-condition p63 verysmooth)
      (available p64)
      (colour p64 black)
      (treatment p64 glazed)
      (available p65)
      (colour p65 black)
      (surface-condition p65 verysmooth)
      (available p66)
      (wood p66 cherry)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 black)
      (surface-condition p67 verysmooth)
      (available p68)
      (colour p68 white)
      (wood p68 beech)
      (treatment p68 varnished)
      (available p69)
      (colour p69 blue)
      (surface-condition p69 smooth)
      (treatment p69 varnished)
      (available p70)
      (colour p70 blue)
      (wood p70 oak)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 red)
      (surface-condition p71 verysmooth)
      (treatment p71 glazed)
      (available p72)
      (colour p72 natural)
      (treatment p72 glazed)
      (available p73)
      (colour p73 blue)
      (wood p73 oak)
      (treatment p73 glazed)
      (available p74)
      (colour p74 red)
      (surface-condition p74 smooth)
      (treatment p74 glazed)
      (available p75)
      (wood p75 cherry)
      (treatment p75 glazed)
      (available p76)
      (colour p76 natural)
      (wood p76 beech)
      (available p77)
      (wood p77 walnut)
      (treatment p77 glazed)
      (available p78)
      (wood p78 walnut)
      (surface-condition p78 smooth)
      (treatment p78 glazed)
      (available p79)
      (wood p79 oak)
      (surface-condition p79 verysmooth)
      (available p80)
      (wood p80 beech)
      (surface-condition p80 smooth)
      (available p81)
      (colour p81 natural)
      (surface-condition p81 smooth)
      (available p82)
      (colour p82 blue)
      (wood p82 mahogany)
      (surface-condition p82 smooth)
      (treatment p82 varnished)
      (available p83)
      (wood p83 pine)
      (treatment p83 varnished)
      (available p84)
      (wood p84 mahogany)
      (surface-condition p84 verysmooth)
      (treatment p84 glazed)
      (available p85)
      (colour p85 red)
      (treatment p85 varnished)
      (available p86)
      (surface-condition p86 verysmooth)
      (treatment p86 glazed)
      (available p87)
      (wood p87 oak)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 black)
      (wood p88 oak)
      (treatment p88 glazed)
      (available p89)
      (colour p89 blue)
      (surface-condition p89 verysmooth)
      (available p90)
      (wood p90 oak)
      (treatment p90 glazed)
      (available p91)
      (colour p91 white)
      (wood p91 walnut)
      (available p92)
      (colour p92 white)
      (treatment p92 glazed)
      (available p93)
      (colour p93 natural)
      (surface-condition p93 verysmooth)
      (treatment p93 glazed)
      (available p94)
      (wood p94 oak)
      (treatment p94 glazed)
      (available p95)
      (surface-condition p95 smooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 blue)
      (wood p96 cherry)
      (surface-condition p96 smooth)
      (available p97)
      (surface-condition p97 verysmooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 red)
      (wood p98 mahogany)
      (treatment p98 varnished)
      (available p99)
      (colour p99 black)
      (wood p99 cherry)
      (surface-condition p99 smooth)
      (treatment p99 glazed)
      (available p100)
      (wood p100 teak)
      (surface-condition p100 smooth)
      (available p101)
      (colour p101 green)
      (wood p101 walnut)
      (surface-condition p101 verysmooth)
      (treatment p101 varnished)
      (available p102)
      (colour p102 green)
      (wood p102 cherry)
      (surface-condition p102 smooth)
      (treatment p102 glazed)
      (available p103)
      (surface-condition p103 smooth)
      (treatment p103 varnished)
      (available p104)
      (colour p104 green)
      (surface-condition p104 verysmooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 green)
      (wood p105 cherry)
      (surface-condition p105 smooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 mauve)
      (wood p106 beech)
      (surface-condition p106 smooth)
      (available p107)
      (colour p107 white)
      (surface-condition p107 smooth)
      (available p108)
      (colour p108 red)
      (wood p108 walnut)
      (surface-condition p108 smooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 blue)
      (surface-condition p109 verysmooth)
      (treatment p109 glazed)
      (available p110)
      (wood p110 cherry)
      (surface-condition p110 verysmooth)
      (available p111)
      (colour p111 red)
      (surface-condition p111 verysmooth)
      (treatment p111 varnished)
      (available p112)
      (colour p112 white)
      (surface-condition p112 verysmooth)
      (available p113)
      (wood p113 walnut)
      (surface-condition p113 verysmooth)
      (available p114)
      (colour p114 white)
      (wood p114 walnut)
      (available p115)
      (colour p115 natural)
      (wood p115 walnut)
      (surface-condition p115 verysmooth)
      (treatment p115 varnished)
      (available p116)
      (colour p116 natural)
      (wood p116 cherry)
      (surface-condition p116 smooth)
      (treatment p116 glazed)
      (available p117)
      (wood p117 beech)
      (surface-condition p117 verysmooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 blue)
      (surface-condition p118 verysmooth)
      (treatment p118 glazed)
      (available p119)
      (wood p119 beech)
      (surface-condition p119 verysmooth)
      (available p120)
      (colour p120 green)
      (surface-condition p120 verysmooth)
      (treatment p120 glazed)
      (available p121)
      (wood p121 beech)
      (treatment p121 glazed)
      (available p122)
      (colour p122 blue)
      (wood p122 beech)
      (surface-condition p122 smooth)
      (treatment p122 varnished)
      (available p123)
      (colour p123 white)
      (wood p123 pine)
      (treatment p123 glazed)
      (available p124)
      (wood p124 pine)
      (surface-condition p124 verysmooth)
      (available p125)
      (colour p125 black)
      (wood p125 cherry)
      (surface-condition p125 verysmooth)
      (treatment p125 varnished)
      (available p126)
      (wood p126 pine)
      (surface-condition p126 smooth)
      (available p127)
      (surface-condition p127 smooth)
      (treatment p127 glazed)
      (available p128)
      (colour p128 mauve)
      (wood p128 pine)
      (available p129)
      (colour p129 green)
      (wood p129 teak)
      (surface-condition p129 smooth)
      (treatment p129 glazed)
      (available p130)
      (colour p130 red)
      (surface-condition p130 verysmooth)
      (available p131)
      (surface-condition p131 smooth)
      (treatment p131 glazed)
      (available p132)
      (colour p132 natural)
      (wood p132 cherry)
      (available p133)
      (colour p133 white)
      (wood p133 cherry)
      (available p134)
      (surface-condition p134 smooth)
      (treatment p134 varnished)
      (available p135)
      (colour p135 natural)
      (wood p135 teak)
      (surface-condition p135 verysmooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 mauve)
      (treatment p136 varnished)
      (available p137)
      (wood p137 beech)
      (treatment p137 glazed)
      (available p138)
      (wood p138 oak)
      (surface-condition p138 verysmooth)
      (available p139)
      (colour p139 green)
      (surface-condition p139 verysmooth)
      (available p140)
      (colour p140 white)
      (wood p140 pine)
      (surface-condition p140 verysmooth)
      (treatment p140 glazed)
      (available p141)
      (colour p141 natural)
      (surface-condition p141 smooth)
      (available p142)
      (colour p142 black)
      (wood p142 cherry)
      (surface-condition p142 verysmooth)
      (treatment p142 glazed)
      (available p143)
      (colour p143 black)
      (wood p143 beech)
      (surface-condition p143 verysmooth)
      (available p144)
      (colour p144 red)
      (wood p144 mahogany)
      (surface-condition p144 smooth)
      (treatment p144 glazed)
      (available p145)
      (colour p145 black)
      (wood p145 mahogany)
      (available p146)
      (colour p146 green)
      (surface-condition p146 smooth)
      (available p147)
      (surface-condition p147 verysmooth)
      (treatment p147 glazed)
      (available p148)
      (wood p148 teak)
      (surface-condition p148 smooth)
      (available p149)
      (wood p149 pine)
      (surface-condition p149 smooth)
      (treatment p149 glazed)
      (available p150)
      (wood p150 teak)
      (surface-condition p150 verysmooth)
      (available p151)
      (surface-condition p151 verysmooth)
      (treatment p151 varnished)
      (available p152)
      (surface-condition p152 smooth)
      (treatment p152 varnished)
      (available p153)
      (colour p153 white)
      (surface-condition p153 smooth)
      (available p154)
      (colour p154 mauve)
      (wood p154 pine)
      (surface-condition p154 smooth)
      (treatment p154 glazed)
      (available p155)
      (colour p155 blue)
      (treatment p155 glazed)
      (available p156)
      (colour p156 black)
      (wood p156 mahogany)
      (available p157)
      (colour p157 mauve)
      (wood p157 cherry)
      (treatment p157 glazed)
      (available p158)
      (colour p158 natural)
      (wood p158 mahogany)
      (treatment p158 glazed)
      (available p159)
      (colour p159 black)
      (wood p159 oak)
      (surface-condition p159 verysmooth)
      (treatment p159 glazed)
      (available p160)
      (colour p160 blue)
      (treatment p160 varnished)
      (available p161)
      (wood p161 walnut)
      (surface-condition p161 smooth)
      (available p162)
      (wood p162 teak)
      (surface-condition p162 smooth)
      (available p163)
      (wood p163 pine)
      (surface-condition p163 verysmooth)
      (treatment p163 varnished)
      (available p164)
      (colour p164 green)
      (wood p164 oak)
      (surface-condition p164 verysmooth)
      (treatment p164 glazed)
      (available p165)
      (wood p165 cherry)
      (treatment p165 glazed)
      (available p166)
      (colour p166 green)
      (wood p166 mahogany)
      (surface-condition p166 verysmooth)
      (treatment p166 varnished)
      (available p167)
      (wood p167 cherry)
      (surface-condition p167 smooth)
      (available p168)
      (colour p168 mauve)
      (treatment p168 varnished)
      (available p169)
      (colour p169 green)
      (wood p169 walnut)
      (treatment p169 varnished)
      (available p170)
      (colour p170 mauve)
      (wood p170 teak)
      (surface-condition p170 verysmooth)
      (treatment p170 glazed)
      (available p171)
      (colour p171 red)
      (treatment p171 glazed)
      (available p172)
      (surface-condition p172 verysmooth)
      (treatment p172 varnished)
      (available p173)
      (wood p173 teak)
      (treatment p173 varnished)
      (available p174)
      (colour p174 natural)
      (wood p174 oak)
      (surface-condition p174 verysmooth)
      (treatment p174 glazed)
      (available p175)
      (surface-condition p175 smooth)
      (treatment p175 varnished)
      (available p176)
      (wood p176 oak)
      (treatment p176 glazed)
      (available p177)
      (colour p177 white)
      (surface-condition p177 verysmooth)
      (available p178)
      (wood p178 oak)
      (surface-condition p178 verysmooth)
      (available p179)
      (colour p179 white)
      (surface-condition p179 verysmooth)
      (available p180)
      (wood p180 cherry)
      (surface-condition p180 smooth)
      (available p181)
      (wood p181 teak)
      (surface-condition p181 verysmooth)
      (available p182)
      (colour p182 mauve)
      (wood p182 teak)
      (surface-condition p182 smooth)
      (treatment p182 glazed)
      (available p183)
      (colour p183 natural)
      (wood p183 pine)
      (surface-condition p183 smooth)
      (available p184)
      (wood p184 mahogany)
      (surface-condition p184 verysmooth)
      (available p185)
      (colour p185 mauve)
      (wood p185 beech)
      (available p186)
      (colour p186 red)
      (surface-condition p186 smooth)
      (available p187)
      (colour p187 black)
      (treatment p187 varnished)
      (available p188)
      (wood p188 beech)
      (surface-condition p188 smooth)
      (treatment p188 varnished)
      (available p189)
      (wood p189 teak)
      (surface-condition p189 smooth)
      (available p190)
      (colour p190 red)
      (wood p190 oak)
      (surface-condition p190 verysmooth)
      (treatment p190 varnished)
      (available p191)
      (wood p191 pine)
      (treatment p191 varnished)
      (available p192)
      (surface-condition p192 verysmooth)
      (treatment p192 varnished)
      (available p193)
      (wood p193 walnut)
      (treatment p193 glazed)
      (available p194)
      (colour p194 natural)
      (treatment p194 varnished)
      (available p195)
      (colour p195 natural)
      (surface-condition p195 smooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 blue)
      (treatment p196 glazed)
      (available p197)
      (colour p197 black)
      (wood p197 oak)
      (surface-condition p197 smooth)
      (available p198)
      (colour p198 mauve)
      (surface-condition p198 smooth)
      (available p199)
      (colour p199 natural)
      (wood p199 oak)
      (treatment p199 varnished)
      (available p200)
      (colour p200 black)
      (wood p200 mahogany)
      (surface-condition p200 smooth)
      (available p201)
      (wood p201 mahogany)
      (surface-condition p201 smooth)
      (available p202)
      (colour p202 black)
      (wood p202 beech)
      (available p203)
      (colour p203 red)
      (wood p203 oak)
      (surface-condition p203 verysmooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 white)
      (wood p204 walnut)
      (treatment p204 varnished)
      (available p205)
      (colour p205 red)
      (wood p205 pine)
      (surface-condition p205 verysmooth)
      (treatment p205 glazed)
      (available p206)
      (wood p206 pine)
      (surface-condition p206 verysmooth)
      (available p207)
      (colour p207 black)
      (wood p207 beech)
      (surface-condition p207 smooth)
      (treatment p207 varnished)
      (available p208)
      (colour p208 blue)
      (wood p208 teak)
      (surface-condition p208 verysmooth)
      (available p209)
      (colour p209 mauve)
      (treatment p209 varnished)
      (available p210)
      (wood p210 mahogany)
      (surface-condition p210 verysmooth)
      (available p211)
      (colour p211 mauve)
      (wood p211 cherry)
      (surface-condition p211 smooth)
      (treatment p211 varnished)
      (available p212)
      (wood p212 beech)
      (surface-condition p212 verysmooth)
      (treatment p212 glazed)
      (available p213)
      (colour p213 white)
      (surface-condition p213 verysmooth)
      (treatment p213 varnished)
      (available p214)
      (colour p214 black)
      (surface-condition p214 smooth)
      (treatment p214 glazed)
      (available p215)
      (colour p215 red)
      (wood p215 walnut)
      (available p216)
      (colour p216 mauve)
      (wood p216 teak)
      (available p217)
      (colour p217 red)
      (surface-condition p217 smooth)
      (available p218)
      (wood p218 pine)
      (treatment p218 glazed)
      (available p219)
      (wood p219 oak)
      (surface-condition p219 smooth)
      (available p220)
      (colour p220 green)
      (wood p220 walnut)
      (available p221)
      (colour p221 natural)
      (wood p221 cherry)
      (surface-condition p221 verysmooth)
      (treatment p221 glazed)
      (available p222)
      (surface-condition p222 smooth)
      (treatment p222 glazed)
      (available p223)
      (colour p223 black)
      (treatment p223 glazed)
      (available p224)
      (colour p224 mauve)
      (treatment p224 glazed)
      (available p225)
      (wood p225 beech)
      (treatment p225 glazed)
      (available p226)
      (colour p226 natural)
      (surface-condition p226 smooth)
      (available p227)
      (colour p227 natural)
      (wood p227 teak)
      (surface-condition p227 smooth)
      (treatment p227 glazed)
      (available p228)
      (surface-condition p228 verysmooth)
      (treatment p228 glazed)
      (available p229)
      (wood p229 oak)
      (treatment p229 varnished)
      (available p230)
      (surface-condition p230 verysmooth)
      (treatment p230 glazed)
      (available p231)
      (colour p231 green)
      (treatment p231 varnished)
      (available p232)
      (colour p232 white)
      (wood p232 beech)
      (treatment p232 varnished)
      (available p233)
      (colour p233 natural)
      (wood p233 teak)
      (surface-condition p233 verysmooth)
      (treatment p233 glazed)
      (available p234)
      (wood p234 pine)
      (treatment p234 glazed)
      (available p235)
      (colour p235 black)
      (surface-condition p235 smooth)
      (available p236)
      (colour p236 black)
      (wood p236 beech)
      (available p237)
      (colour p237 green)
      (treatment p237 glazed)
      (available p238)
      (surface-condition p238 smooth)
      (treatment p238 varnished)
      (available p239)
      (colour p239 green)
      (surface-condition p239 smooth)
      (treatment p239 varnished)
      (available p240)
      (colour p240 black)
      (treatment p240 glazed)
      (available p241)
      (wood p241 teak)
      (surface-condition p241 smooth)
      (treatment p241 glazed)
      (available p242)
      (surface-condition p242 verysmooth)
      (treatment p242 glazed)
      (available p243)
      (colour p243 white)
      (treatment p243 glazed)
      (available p244)
      (colour p244 mauve)
      (wood p244 teak)
      (surface-condition p244 smooth)
      (available p245)
      (wood p245 pine)
      (treatment p245 glazed)
      (available p246)
      (wood p246 pine)
      (treatment p246 glazed)
      (available p247)
      (wood p247 oak)
      (surface-condition p247 verysmooth)
      (available p248)
      (colour p248 green)
      (surface-condition p248 verysmooth)
      (available p249)
      (wood p249 teak)
      (surface-condition p249 smooth)
      (available p250)
      (colour p250 green)
      (wood p250 teak)
      (surface-condition p250 smooth)
      (treatment p250 glazed)
      (available p251)
      (surface-condition p251 smooth)
      (treatment p251 varnished)
      (available p252)
      (colour p252 red)
      (wood p252 walnut)
      (treatment p252 varnished)
      (available p253)
      (colour p253 mauve)
      (wood p253 mahogany)
      (available p254)
      (colour p254 red)
      (wood p254 pine)
      (surface-condition p254 verysmooth)
      (treatment p254 glazed)
      (available p255)
      (colour p255 blue)
      (wood p255 cherry)
      (surface-condition p255 smooth)
      (treatment p255 varnished)
      (available p256)
      (colour p256 green)
      (wood p256 teak)
      (surface-condition p256 verysmooth)
      (treatment p256 glazed)
      (available p257)
      (wood p257 oak)
      (surface-condition p257 smooth)
      (available p258)
      (colour p258 white)
      (wood p258 beech)
      (treatment p258 glazed)
      (available p259)
      (colour p259 natural)
      (wood p259 mahogany)
      (surface-condition p259 verysmooth)
      (treatment p259 varnished)
      (available p260)
      (surface-condition p260 smooth)
      (treatment p260 glazed)
      (available p261)
      (wood p261 cherry)
      (surface-condition p261 smooth)
      (available p262)
      (surface-condition p262 smooth)
      (treatment p262 glazed)
      (available p263)
      (colour p263 blue)
      (surface-condition p263 verysmooth)
      (available p264)
      (colour p264 black)
      (surface-condition p264 smooth)
      (treatment p264 varnished)
      (available p265)
      (wood p265 beech)
      (treatment p265 varnished)
    )
  )
  
)
