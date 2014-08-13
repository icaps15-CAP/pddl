; woodworking task with 263 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 808331

(define (problem wood-prob-sat-192)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green red mauve white blue black - acolour
    oak walnut pine beech teak cherry mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 blue)
    (wood p3 oak)
    (surface-condition p3 smooth)
    (treatment p3 colourfragments)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 green)
    (wood p11 pine)
    (surface-condition p11 rough)
    (treatment p11 varnished)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 white)
    (wood p12 oak)
    (surface-condition p12 rough)
    (treatment p12 glazed)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (available p14)
    (colour p14 green)
    (wood p14 mahogany)
    (surface-condition p14 smooth)
    (treatment p14 colourfragments)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (available p17)
    (colour p17 natural)
    (wood p17 teak)
    (surface-condition p17 smooth)
    (treatment p17 varnished)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (available p19)
    (colour p19 red)
    (wood p19 oak)
    (surface-condition p19 smooth)
    (treatment p19 colourfragments)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (available p26)
    (colour p26 red)
    (wood p26 oak)
    (surface-condition p26 verysmooth)
    (treatment p26 colourfragments)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 white)
    (wood p28 pine)
    (surface-condition p28 verysmooth)
    (treatment p28 varnished)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (available p34)
    (colour p34 black)
    (wood p34 cherry)
    (surface-condition p34 verysmooth)
    (treatment p34 glazed)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 natural)
    (wood p35 oak)
    (surface-condition p35 rough)
    (treatment p35 glazed)
    (goalsize p35 medium)
    
    
    
    
    (available p36)
    (colour p36 mauve)
    (wood p36 oak)
    (surface-condition p36 smooth)
    (treatment p36 colourfragments)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (available p41)
    (colour p41 red)
    (wood p41 cherry)
    (surface-condition p41 smooth)
    (treatment p41 varnished)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (available p52)
    (colour p52 black)
    (wood p52 walnut)
    (surface-condition p52 verysmooth)
    (treatment p52 glazed)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (available p54)
    (colour p54 black)
    (wood p54 pine)
    (surface-condition p54 smooth)
    (treatment p54 glazed)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (available p59)
    (colour p59 mauve)
    (wood p59 oak)
    (surface-condition p59 smooth)
    (treatment p59 varnished)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (available p67)
    (colour p67 mauve)
    (wood p67 cherry)
    (surface-condition p67 smooth)
    (treatment p67 glazed)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (available p75)
    (colour p75 green)
    (wood p75 cherry)
    (surface-condition p75 verysmooth)
    (treatment p75 glazed)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (available p81)
    (colour p81 mauve)
    (wood p81 beech)
    (surface-condition p81 verysmooth)
    (treatment p81 glazed)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (available p86)
    (colour p86 black)
    (wood p86 beech)
    (surface-condition p86 verysmooth)
    (treatment p86 glazed)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (available p100)
    (colour p100 green)
    (wood p100 cherry)
    (surface-condition p100 verysmooth)
    (treatment p100 colourfragments)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (available p115)
    (colour p115 natural)
    (wood p115 oak)
    (surface-condition p115 verysmooth)
    (treatment p115 varnished)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (available p117)
    (colour p117 green)
    (wood p117 oak)
    (surface-condition p117 verysmooth)
    (treatment p117 colourfragments)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (available p119)
    (colour p119 white)
    (wood p119 beech)
    (surface-condition p119 rough)
    (treatment p119 glazed)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 small)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
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
    (goalsize p139 large)
    
    
    
    
    (available p140)
    (colour p140 black)
    (wood p140 beech)
    (surface-condition p140 verysmooth)
    (treatment p140 varnished)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (available p143)
    (colour p143 mauve)
    (wood p143 mahogany)
    (surface-condition p143 rough)
    (treatment p143 colourfragments)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (available p145)
    (colour p145 blue)
    (wood p145 mahogany)
    (surface-condition p145 smooth)
    (treatment p145 colourfragments)
    (goalsize p145 medium)
    
    
    
    
    (available p146)
    (colour p146 red)
    (wood p146 walnut)
    (surface-condition p146 rough)
    (treatment p146 colourfragments)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (available p148)
    (colour p148 black)
    (wood p148 pine)
    (surface-condition p148 verysmooth)
    (treatment p148 glazed)
    (goalsize p148 medium)
    
    
    
    
    (available p149)
    (colour p149 black)
    (wood p149 mahogany)
    (surface-condition p149 rough)
    (treatment p149 glazed)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
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
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (available p160)
    (colour p160 red)
    (wood p160 walnut)
    (surface-condition p160 verysmooth)
    (treatment p160 varnished)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (available p167)
    (colour p167 red)
    (wood p167 teak)
    (surface-condition p167 rough)
    (treatment p167 varnished)
    (goalsize p167 small)
    
    
    
    
    (available p168)
    (colour p168 green)
    (wood p168 walnut)
    (surface-condition p168 rough)
    (treatment p168 colourfragments)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (available p170)
    (colour p170 white)
    (wood p170 pine)
    (surface-condition p170 rough)
    (treatment p170 varnished)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (available p172)
    (colour p172 green)
    (wood p172 cherry)
    (surface-condition p172 rough)
    (treatment p172 colourfragments)
    (goalsize p172 medium)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (available p176)
    (colour p176 white)
    (wood p176 walnut)
    (surface-condition p176 rough)
    (treatment p176 glazed)
    (goalsize p176 large)
    
    
    
    
    (available p177)
    (colour p177 black)
    (wood p177 oak)
    (surface-condition p177 verysmooth)
    (treatment p177 colourfragments)
    (goalsize p177 small)
    
    
    
    
    (available p178)
    (colour p178 blue)
    (wood p178 walnut)
    (surface-condition p178 rough)
    (treatment p178 glazed)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (available p180)
    (colour p180 mauve)
    (wood p180 teak)
    (surface-condition p180 smooth)
    (treatment p180 glazed)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (unused p185)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 small)
    
    
    
    
    (unused p187)
    (goalsize p187 medium)
    
    
    
    
    (unused p188)
    (goalsize p188 medium)
    
    
    
    
    (available p189)
    (colour p189 green)
    (wood p189 teak)
    (surface-condition p189 verysmooth)
    (treatment p189 varnished)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (available p191)
    (colour p191 green)
    (wood p191 cherry)
    (surface-condition p191 rough)
    (treatment p191 colourfragments)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (available p195)
    (colour p195 mauve)
    (wood p195 cherry)
    (surface-condition p195 rough)
    (treatment p195 glazed)
    (goalsize p195 medium)
    
    
    
    
    (available p196)
    (colour p196 white)
    (wood p196 beech)
    (surface-condition p196 smooth)
    (treatment p196 varnished)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (available p199)
    (colour p199 blue)
    (wood p199 beech)
    (surface-condition p199 verysmooth)
    (treatment p199 glazed)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 medium)
    
    
    
    
    (unused p202)
    (goalsize p202 small)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
    (unused p204)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (available p206)
    (colour p206 mauve)
    (wood p206 walnut)
    (surface-condition p206 verysmooth)
    (treatment p206 colourfragments)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 small)
    
    
    
    
    (available p209)
    (colour p209 blue)
    (wood p209 cherry)
    (surface-condition p209 smooth)
    (treatment p209 glazed)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (available p212)
    (colour p212 green)
    (wood p212 beech)
    (surface-condition p212 smooth)
    (treatment p212 varnished)
    (goalsize p212 medium)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (available p216)
    (colour p216 red)
    (wood p216 oak)
    (surface-condition p216 rough)
    (treatment p216 colourfragments)
    (goalsize p216 medium)
    
    
    
    
    (unused p217)
    (goalsize p217 small)
    
    
    
    
    (unused p218)
    (goalsize p218 small)
    
    
    
    
    (unused p219)
    (goalsize p219 large)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (available p221)
    (colour p221 red)
    (wood p221 mahogany)
    (surface-condition p221 smooth)
    (treatment p221 varnished)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (unused p224)
    (goalsize p224 small)
    
    
    
    
    (available p225)
    (colour p225 blue)
    (wood p225 teak)
    (surface-condition p225 smooth)
    (treatment p225 colourfragments)
    (goalsize p225 medium)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (unused p227)
    (goalsize p227 large)
    
    
    
    
    (available p228)
    (colour p228 red)
    (wood p228 beech)
    (surface-condition p228 smooth)
    (treatment p228 glazed)
    (goalsize p228 medium)
    
    
    
    
    (unused p229)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 small)
    
    
    
    
    (unused p234)
    (goalsize p234 large)
    
    
    
    
    (unused p235)
    (goalsize p235 medium)
    
    
    
    
    (available p236)
    (colour p236 white)
    (wood p236 cherry)
    (surface-condition p236 smooth)
    (treatment p236 colourfragments)
    (goalsize p236 large)
    
    
    
    
    (unused p237)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 small)
    
    
    
    
    (unused p239)
    (goalsize p239 medium)
    
    
    
    
    (unused p240)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 medium)
    
    
    
    
    (unused p242)
    (goalsize p242 medium)
    
    
    
    
    (unused p243)
    (goalsize p243 large)
    
    
    
    
    (unused p244)
    (goalsize p244 small)
    
    
    
    
    (unused p245)
    (goalsize p245 small)
    
    
    
    
    (unused p246)
    (goalsize p246 large)
    
    
    
    
    (unused p247)
    (goalsize p247 small)
    
    
    
    
    (unused p248)
    (goalsize p248 small)
    
    
    
    
    (unused p249)
    (goalsize p249 small)
    
    
    
    
    (available p250)
    (colour p250 mauve)
    (wood p250 mahogany)
    (surface-condition p250 rough)
    (treatment p250 glazed)
    (goalsize p250 medium)
    
    
    
    
    (unused p251)
    (goalsize p251 small)
    
    
    
    
    (unused p252)
    (goalsize p252 large)
    
    
    
    
    (available p253)
    (colour p253 green)
    (wood p253 teak)
    (surface-condition p253 smooth)
    (treatment p253 varnished)
    (goalsize p253 small)
    
    
    
    
    (unused p254)
    (goalsize p254 small)
    
    
    
    
    (unused p255)
    (goalsize p255 large)
    
    
    
    
    (unused p256)
    (goalsize p256 large)
    
    
    
    
    (unused p257)
    (goalsize p257 large)
    
    
    
    
    (unused p258)
    (goalsize p258 large)
    
    
    
    
    (available p259)
    (colour p259 natural)
    (wood p259 walnut)
    (surface-condition p259 rough)
    (treatment p259 colourfragments)
    (goalsize p259 large)
    
    
    
    
    (available p260)
    (colour p260 green)
    (wood p260 mahogany)
    (surface-condition p260 smooth)
    (treatment p260 colourfragments)
    (goalsize p260 small)
    
    
    
    
    (unused p261)
    (goalsize p261 medium)
    
    
    
    
    (available p262)
    (colour p262 natural)
    (wood p262 teak)
    (surface-condition p262 rough)
    (treatment p262 varnished)
    (goalsize p262 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s6)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s10)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s7)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s1)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s10)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s10)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s11)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s3)
    (wood b17 mahogany)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s9)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s7)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s10)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s6)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s8)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s2)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s8)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s7)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 pine)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s7)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s10)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s5)
    (wood b37 pine)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s7)
    (wood b38 walnut)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s9)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s9)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s11)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s8)
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
    (boardsize b45 s8)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s11)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s9)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s6)
    (wood b48 walnut)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s6)
    (wood b49 walnut)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s7)
    (wood b50 teak)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s6)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 teak)
    (surface-condition b52 rough)
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
    (boardsize b56 s9)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s12)
    (wood b57 teak)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s10)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s10)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s4)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s6)
    (wood b61 beech)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s9)
    (wood b62 beech)
    (surface-condition b62 smooth)
    (available b62)
    (boardsize b63 s5)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s7)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s9)
    (wood b65 beech)
    (surface-condition b65 smooth)
    (available b65)
    (boardsize b66 s7)
    (wood b66 beech)
    (surface-condition b66 smooth)
    (available b66)
    (boardsize b67 s8)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s8)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s8)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s7)
    (wood b70 beech)
    (surface-condition b70 smooth)
    (available b70)
    (boardsize b71 s7)
    (wood b71 beech)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s7)
    (wood b72 beech)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s9)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
    (boardsize b74 s6)
    (wood b74 beech)
    (surface-condition b74 rough)
    (available b74)
  )
  (:goal
    (and
      (available p0)
      (wood p0 mahogany)
      (treatment p0 varnished)
      (available p1)
      (colour p1 blue)
      (treatment p1 varnished)
      (available p2)
      (colour p2 white)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 black)
      (wood p3 oak)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 blue)
      (wood p4 oak)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 blue)
      (treatment p5 glazed)
      (available p6)
      (wood p6 pine)
      (surface-condition p6 verysmooth)
      (available p7)
      (colour p7 black)
      (wood p7 oak)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 natural)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 red)
      (wood p9 mahogany)
      (available p10)
      (colour p10 natural)
      (wood p10 beech)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 mauve)
      (treatment p11 glazed)
      (available p12)
      (wood p12 oak)
      (treatment p12 varnished)
      (available p13)
      (wood p13 walnut)
      (treatment p13 glazed)
      (available p14)
      (colour p14 blue)
      (wood p14 mahogany)
      (available p15)
      (colour p15 blue)
      (treatment p15 varnished)
      (available p16)
      (colour p16 green)
      (wood p16 beech)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (wood p17 teak)
      (surface-condition p17 verysmooth)
      (available p18)
      (colour p18 white)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 black)
      (wood p19 oak)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 black)
      (wood p20 cherry)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (wood p22 beech)
      (treatment p22 varnished)
      (available p23)
      (wood p23 walnut)
      (treatment p23 glazed)
      (available p24)
      (wood p24 mahogany)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (wood p25 beech)
      (surface-condition p25 smooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 white)
      (wood p26 oak)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 white)
      (surface-condition p27 verysmooth)
      (available p28)
      (colour p28 natural)
      (wood p28 pine)
      (surface-condition p28 smooth)
      (available p29)
      (wood p29 pine)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 blue)
      (treatment p30 glazed)
      (available p31)
      (colour p31 green)
      (treatment p31 varnished)
      (available p32)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (surface-condition p33 smooth)
      (treatment p33 varnished)
      (available p34)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 mauve)
      (wood p35 oak)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (wood p37 cherry)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 natural)
      (wood p38 walnut)
      (available p39)
      (surface-condition p39 smooth)
      (treatment p39 glazed)
      (available p40)
      (wood p40 pine)
      (surface-condition p40 verysmooth)
      (available p41)
      (wood p41 cherry)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 green)
      (wood p42 oak)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 mauve)
      (wood p43 teak)
      (treatment p43 glazed)
      (available p44)
      (surface-condition p44 verysmooth)
      (treatment p44 glazed)
      (available p45)
      (wood p45 beech)
      (surface-condition p45 smooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 mauve)
      (wood p46 pine)
      (surface-condition p46 smooth)
      (available p47)
      (surface-condition p47 verysmooth)
      (treatment p47 glazed)
      (available p48)
      (wood p48 teak)
      (treatment p48 varnished)
      (available p49)
      (colour p49 black)
      (wood p49 walnut)
      (surface-condition p49 smooth)
      (available p50)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 green)
      (wood p51 oak)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 natural)
      (wood p52 walnut)
      (available p53)
      (colour p53 blue)
      (surface-condition p53 verysmooth)
      (available p54)
      (colour p54 blue)
      (surface-condition p54 verysmooth)
      (available p55)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (surface-condition p56 verysmooth)
      (treatment p56 glazed)
      (available p57)
      (wood p57 beech)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 natural)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 green)
      (wood p59 oak)
      (treatment p59 varnished)
      (available p60)
      (wood p60 walnut)
      (surface-condition p60 smooth)
      (treatment p60 glazed)
      (available p61)
      (colour p61 white)
      (wood p61 pine)
      (surface-condition p61 smooth)
      (available p62)
      (colour p62 black)
      (surface-condition p62 verysmooth)
      (available p63)
      (colour p63 red)
      (surface-condition p63 verysmooth)
      (available p64)
      (colour p64 black)
      (surface-condition p64 verysmooth)
      (available p65)
      (wood p65 beech)
      (surface-condition p65 verysmooth)
      (available p66)
      (colour p66 blue)
      (treatment p66 varnished)
      (available p67)
      (colour p67 red)
      (wood p67 cherry)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 red)
      (wood p68 oak)
      (treatment p68 varnished)
      (available p69)
      (colour p69 green)
      (wood p69 walnut)
      (surface-condition p69 verysmooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 red)
      (treatment p70 varnished)
      (available p71)
      (surface-condition p71 verysmooth)
      (treatment p71 glazed)
      (available p72)
      (wood p72 walnut)
      (surface-condition p72 smooth)
      (available p73)
      (colour p73 blue)
      (wood p73 teak)
      (treatment p73 varnished)
      (available p74)
      (colour p74 blue)
      (surface-condition p74 verysmooth)
      (available p75)
      (colour p75 natural)
      (wood p75 cherry)
      (surface-condition p75 smooth)
      (treatment p75 varnished)
      (available p76)
      (colour p76 white)
      (wood p76 teak)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (wood p78 beech)
      (surface-condition p78 verysmooth)
      (available p79)
      (colour p79 natural)
      (wood p79 beech)
      (surface-condition p79 verysmooth)
      (treatment p79 varnished)
      (available p80)
      (surface-condition p80 verysmooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 red)
      (treatment p81 varnished)
      (available p82)
      (colour p82 white)
      (wood p82 mahogany)
      (available p83)
      (wood p83 pine)
      (surface-condition p83 verysmooth)
      (available p84)
      (colour p84 red)
      (treatment p84 varnished)
      (available p85)
      (colour p85 white)
      (wood p85 pine)
      (surface-condition p85 smooth)
      (treatment p85 varnished)
      (available p86)
      (colour p86 red)
      (treatment p86 varnished)
      (available p87)
      (colour p87 red)
      (surface-condition p87 verysmooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 mauve)
      (treatment p88 glazed)
      (available p89)
      (colour p89 green)
      (treatment p89 glazed)
      (available p90)
      (colour p90 mauve)
      (wood p90 walnut)
      (available p91)
      (colour p91 white)
      (wood p91 oak)
      (available p92)
      (colour p92 natural)
      (surface-condition p92 verysmooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 red)
      (surface-condition p93 verysmooth)
      (available p94)
      (colour p94 white)
      (treatment p94 varnished)
      (available p95)
      (colour p95 green)
      (wood p95 cherry)
      (surface-condition p95 verysmooth)
      (treatment p95 glazed)
      (available p96)
      (colour p96 mauve)
      (wood p96 oak)
      (surface-condition p96 verysmooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 green)
      (treatment p97 glazed)
      (available p98)
      (wood p98 walnut)
      (surface-condition p98 smooth)
      (available p99)
      (wood p99 walnut)
      (surface-condition p99 verysmooth)
      (available p100)
      (wood p100 cherry)
      (surface-condition p100 smooth)
      (available p101)
      (colour p101 blue)
      (wood p101 oak)
      (surface-condition p101 smooth)
      (treatment p101 varnished)
      (available p102)
      (colour p102 natural)
      (wood p102 beech)
      (surface-condition p102 smooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 green)
      (wood p103 pine)
      (surface-condition p103 smooth)
      (treatment p103 varnished)
      (available p104)
      (colour p104 blue)
      (treatment p104 glazed)
      (available p105)
      (colour p105 natural)
      (surface-condition p105 smooth)
      (available p106)
      (wood p106 oak)
      (surface-condition p106 smooth)
      (available p107)
      (wood p107 beech)
      (surface-condition p107 smooth)
      (available p108)
      (colour p108 natural)
      (wood p108 teak)
      (surface-condition p108 smooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 white)
      (treatment p109 varnished)
      (available p110)
      (colour p110 mauve)
      (surface-condition p110 smooth)
      (treatment p110 glazed)
      (available p111)
      (colour p111 green)
      (wood p111 beech)
      (available p112)
      (surface-condition p112 verysmooth)
      (treatment p112 varnished)
      (available p113)
      (colour p113 natural)
      (wood p113 pine)
      (surface-condition p113 smooth)
      (available p114)
      (colour p114 white)
      (treatment p114 glazed)
      (available p115)
      (colour p115 green)
      (surface-condition p115 smooth)
      (available p116)
      (wood p116 mahogany)
      (treatment p116 varnished)
      (available p117)
      (colour p117 blue)
      (treatment p117 glazed)
      (available p118)
      (surface-condition p118 smooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 red)
      (wood p119 beech)
      (surface-condition p119 smooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 mauve)
      (wood p120 pine)
      (surface-condition p120 smooth)
      (treatment p120 glazed)
      (available p121)
      (surface-condition p121 verysmooth)
      (treatment p121 varnished)
      (available p122)
      (colour p122 green)
      (treatment p122 glazed)
      (available p123)
      (colour p123 red)
      (wood p123 beech)
      (surface-condition p123 verysmooth)
      (available p124)
      (colour p124 mauve)
      (wood p124 pine)
      (available p125)
      (wood p125 walnut)
      (treatment p125 varnished)
      (available p126)
      (wood p126 oak)
      (treatment p126 glazed)
      (available p127)
      (wood p127 pine)
      (treatment p127 varnished)
      (available p128)
      (colour p128 white)
      (wood p128 cherry)
      (available p129)
      (colour p129 natural)
      (surface-condition p129 smooth)
      (available p130)
      (colour p130 mauve)
      (wood p130 walnut)
      (available p131)
      (wood p131 oak)
      (treatment p131 glazed)
      (available p132)
      (wood p132 teak)
      (surface-condition p132 smooth)
      (available p133)
      (colour p133 blue)
      (wood p133 mahogany)
      (surface-condition p133 smooth)
      (available p134)
      (surface-condition p134 verysmooth)
      (treatment p134 varnished)
      (available p135)
      (wood p135 teak)
      (surface-condition p135 smooth)
      (available p136)
      (colour p136 blue)
      (wood p136 teak)
      (surface-condition p136 smooth)
      (treatment p136 varnished)
      (available p137)
      (colour p137 red)
      (wood p137 mahogany)
      (surface-condition p137 smooth)
      (treatment p137 varnished)
      (available p138)
      (colour p138 natural)
      (surface-condition p138 smooth)
      (treatment p138 glazed)
      (available p139)
      (colour p139 white)
      (wood p139 pine)
      (available p140)
      (colour p140 white)
      (wood p140 beech)
      (available p141)
      (colour p141 natural)
      (wood p141 beech)
      (surface-condition p141 verysmooth)
      (available p142)
      (colour p142 red)
      (wood p142 teak)
      (available p143)
      (surface-condition p143 smooth)
      (treatment p143 varnished)
      (available p144)
      (colour p144 mauve)
      (wood p144 beech)
      (surface-condition p144 smooth)
      (treatment p144 glazed)
      (available p145)
      (colour p145 white)
      (surface-condition p145 verysmooth)
      (available p146)
      (colour p146 black)
      (wood p146 walnut)
      (available p147)
      (wood p147 cherry)
      (surface-condition p147 smooth)
      (treatment p147 glazed)
      (available p148)
      (colour p148 white)
      (surface-condition p148 verysmooth)
      (available p149)
      (colour p149 white)
      (wood p149 mahogany)
      (surface-condition p149 smooth)
      (available p150)
      (surface-condition p150 verysmooth)
      (treatment p150 varnished)
      (available p151)
      (surface-condition p151 verysmooth)
      (treatment p151 varnished)
      (available p152)
      (colour p152 mauve)
      (wood p152 beech)
      (surface-condition p152 verysmooth)
      (treatment p152 varnished)
      (available p153)
      (colour p153 black)
      (wood p153 teak)
      (surface-condition p153 verysmooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 blue)
      (surface-condition p154 verysmooth)
      (treatment p154 glazed)
      (available p155)
      (wood p155 cherry)
      (surface-condition p155 verysmooth)
      (available p156)
      (wood p156 mahogany)
      (treatment p156 varnished)
      (available p157)
      (colour p157 blue)
      (surface-condition p157 verysmooth)
      (treatment p157 glazed)
      (available p158)
      (wood p158 mahogany)
      (treatment p158 glazed)
      (available p159)
      (colour p159 mauve)
      (wood p159 mahogany)
      (surface-condition p159 smooth)
      (treatment p159 varnished)
      (available p160)
      (wood p160 walnut)
      (surface-condition p160 smooth)
      (available p161)
      (colour p161 natural)
      (wood p161 teak)
      (available p162)
      (colour p162 natural)
      (surface-condition p162 smooth)
      (available p163)
      (surface-condition p163 smooth)
      (treatment p163 glazed)
      (available p164)
      (colour p164 mauve)
      (surface-condition p164 smooth)
      (available p165)
      (colour p165 red)
      (wood p165 walnut)
      (available p166)
      (wood p166 beech)
      (surface-condition p166 smooth)
      (treatment p166 glazed)
      (available p167)
      (wood p167 teak)
      (treatment p167 glazed)
      (available p168)
      (colour p168 black)
      (surface-condition p168 smooth)
      (treatment p168 varnished)
      (available p169)
      (colour p169 white)
      (surface-condition p169 smooth)
      (available p170)
      (colour p170 mauve)
      (wood p170 pine)
      (surface-condition p170 verysmooth)
      (treatment p170 glazed)
      (available p171)
      (wood p171 oak)
      (treatment p171 varnished)
      (available p172)
      (wood p172 cherry)
      (treatment p172 varnished)
      (available p173)
      (colour p173 mauve)
      (wood p173 walnut)
      (available p174)
      (colour p174 red)
      (wood p174 oak)
      (surface-condition p174 verysmooth)
      (treatment p174 varnished)
      (available p175)
      (colour p175 white)
      (wood p175 mahogany)
      (treatment p175 varnished)
      (available p176)
      (surface-condition p176 smooth)
      (treatment p176 varnished)
      (available p177)
      (wood p177 oak)
      (surface-condition p177 smooth)
      (available p178)
      (colour p178 red)
      (wood p178 walnut)
      (surface-condition p178 smooth)
      (treatment p178 varnished)
      (available p179)
      (colour p179 black)
      (wood p179 oak)
      (available p180)
      (colour p180 natural)
      (wood p180 teak)
      (surface-condition p180 smooth)
      (treatment p180 varnished)
      (available p181)
      (colour p181 green)
      (surface-condition p181 verysmooth)
      (treatment p181 varnished)
      (available p182)
      (wood p182 teak)
      (treatment p182 varnished)
      (available p183)
      (wood p183 mahogany)
      (surface-condition p183 smooth)
      (treatment p183 varnished)
      (available p184)
      (colour p184 mauve)
      (wood p184 pine)
      (surface-condition p184 verysmooth)
      (treatment p184 glazed)
      (available p185)
      (surface-condition p185 verysmooth)
      (treatment p185 glazed)
      (available p186)
      (wood p186 mahogany)
      (surface-condition p186 smooth)
      (treatment p186 varnished)
      (available p187)
      (colour p187 red)
      (surface-condition p187 verysmooth)
      (treatment p187 glazed)
      (available p188)
      (colour p188 red)
      (wood p188 beech)
      (surface-condition p188 smooth)
      (treatment p188 glazed)
      (available p189)
      (surface-condition p189 smooth)
      (treatment p189 varnished)
      (available p190)
      (colour p190 red)
      (surface-condition p190 smooth)
      (available p191)
      (surface-condition p191 verysmooth)
      (treatment p191 varnished)
      (available p192)
      (colour p192 red)
      (wood p192 mahogany)
      (available p193)
      (colour p193 black)
      (treatment p193 varnished)
      (available p194)
      (wood p194 teak)
      (treatment p194 glazed)
      (available p195)
      (colour p195 blue)
      (surface-condition p195 smooth)
      (treatment p195 varnished)
      (available p196)
      (colour p196 natural)
      (wood p196 beech)
      (available p197)
      (colour p197 mauve)
      (wood p197 cherry)
      (treatment p197 varnished)
      (available p198)
      (surface-condition p198 verysmooth)
      (treatment p198 varnished)
      (available p199)
      (colour p199 mauve)
      (surface-condition p199 smooth)
      (available p200)
      (colour p200 mauve)
      (wood p200 cherry)
      (treatment p200 glazed)
      (available p201)
      (colour p201 blue)
      (treatment p201 glazed)
      (available p202)
      (colour p202 white)
      (surface-condition p202 smooth)
      (available p203)
      (wood p203 beech)
      (surface-condition p203 smooth)
      (available p204)
      (colour p204 natural)
      (wood p204 beech)
      (available p205)
      (colour p205 blue)
      (wood p205 pine)
      (surface-condition p205 verysmooth)
      (available p206)
      (wood p206 walnut)
      (treatment p206 varnished)
      (available p207)
      (colour p207 mauve)
      (treatment p207 varnished)
      (available p208)
      (colour p208 blue)
      (treatment p208 glazed)
      (available p209)
      (colour p209 natural)
      (surface-condition p209 verysmooth)
      (available p210)
      (wood p210 teak)
      (surface-condition p210 smooth)
      (treatment p210 varnished)
      (available p211)
      (wood p211 walnut)
      (surface-condition p211 smooth)
      (available p212)
      (wood p212 beech)
      (surface-condition p212 verysmooth)
      (available p213)
      (colour p213 red)
      (wood p213 teak)
      (available p214)
      (colour p214 blue)
      (wood p214 teak)
      (available p215)
      (wood p215 beech)
      (surface-condition p215 verysmooth)
      (available p216)
      (colour p216 natural)
      (surface-condition p216 verysmooth)
      (treatment p216 varnished)
      (available p217)
      (colour p217 black)
      (surface-condition p217 verysmooth)
      (available p218)
      (colour p218 black)
      (wood p218 walnut)
      (available p219)
      (colour p219 blue)
      (wood p219 beech)
      (surface-condition p219 smooth)
      (treatment p219 glazed)
      (available p220)
      (wood p220 beech)
      (surface-condition p220 verysmooth)
      (treatment p220 varnished)
      (available p221)
      (colour p221 green)
      (treatment p221 varnished)
      (available p222)
      (colour p222 red)
      (surface-condition p222 smooth)
      (treatment p222 glazed)
      (available p223)
      (colour p223 black)
      (wood p223 cherry)
      (surface-condition p223 verysmooth)
      (treatment p223 glazed)
      (available p224)
      (colour p224 blue)
      (surface-condition p224 verysmooth)
      (available p225)
      (colour p225 red)
      (surface-condition p225 verysmooth)
      (available p226)
      (wood p226 beech)
      (surface-condition p226 verysmooth)
      (available p227)
      (colour p227 white)
      (surface-condition p227 verysmooth)
      (treatment p227 varnished)
      (available p228)
      (colour p228 white)
      (wood p228 beech)
      (surface-condition p228 smooth)
      (treatment p228 glazed)
      (available p229)
      (colour p229 white)
      (wood p229 pine)
      (surface-condition p229 verysmooth)
      (treatment p229 varnished)
      (available p230)
      (colour p230 natural)
      (wood p230 oak)
      (surface-condition p230 verysmooth)
      (treatment p230 varnished)
      (available p231)
      (wood p231 cherry)
      (treatment p231 varnished)
      (available p232)
      (wood p232 teak)
      (treatment p232 varnished)
      (available p233)
      (colour p233 green)
      (wood p233 teak)
      (available p234)
      (colour p234 green)
      (wood p234 oak)
      (treatment p234 glazed)
      (available p235)
      (colour p235 blue)
      (treatment p235 varnished)
      (available p236)
      (colour p236 mauve)
      (wood p236 cherry)
      (surface-condition p236 smooth)
      (treatment p236 glazed)
      (available p237)
      (surface-condition p237 smooth)
      (treatment p237 glazed)
      (available p238)
      (colour p238 green)
      (wood p238 pine)
      (surface-condition p238 verysmooth)
      (treatment p238 varnished)
      (available p239)
      (surface-condition p239 verysmooth)
      (treatment p239 glazed)
      (available p240)
      (colour p240 blue)
      (wood p240 oak)
      (surface-condition p240 verysmooth)
      (treatment p240 varnished)
      (available p241)
      (wood p241 cherry)
      (surface-condition p241 verysmooth)
      (available p242)
      (wood p242 mahogany)
      (surface-condition p242 smooth)
      (available p243)
      (colour p243 red)
      (surface-condition p243 smooth)
      (available p244)
      (colour p244 white)
      (wood p244 teak)
      (surface-condition p244 verysmooth)
      (treatment p244 varnished)
      (available p245)
      (colour p245 green)
      (treatment p245 varnished)
      (available p246)
      (wood p246 teak)
      (treatment p246 varnished)
      (available p247)
      (wood p247 beech)
      (treatment p247 glazed)
      (available p248)
      (colour p248 mauve)
      (surface-condition p248 smooth)
      (available p249)
      (colour p249 mauve)
      (wood p249 teak)
      (available p250)
      (colour p250 natural)
      (wood p250 mahogany)
      (treatment p250 glazed)
      (available p251)
      (colour p251 black)
      (surface-condition p251 verysmooth)
      (available p252)
      (colour p252 red)
      (wood p252 pine)
      (surface-condition p252 smooth)
      (available p253)
      (wood p253 teak)
      (surface-condition p253 verysmooth)
      (treatment p253 glazed)
      (available p254)
      (wood p254 walnut)
      (surface-condition p254 smooth)
      (available p255)
      (surface-condition p255 smooth)
      (treatment p255 varnished)
      (available p256)
      (colour p256 black)
      (treatment p256 varnished)
      (available p257)
      (surface-condition p257 verysmooth)
      (treatment p257 glazed)
      (available p258)
      (colour p258 natural)
      (wood p258 walnut)
      (surface-condition p258 smooth)
      (treatment p258 varnished)
      (available p259)
      (colour p259 blue)
      (wood p259 walnut)
      (available p260)
      (colour p260 natural)
      (wood p260 mahogany)
      (available p261)
      (colour p261 green)
      (surface-condition p261 verysmooth)
      (available p262)
      (surface-condition p262 smooth)
      (treatment p262 varnished)
    )
  )
  
)
