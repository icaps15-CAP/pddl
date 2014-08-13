; woodworking task with 254 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 258254

(define (problem wood-prob-sat-189)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white green black red blue mauve - acolour
    walnut beech cherry mahogany oak pine teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 - part
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 black)
    (wood p0 mahogany)
    (surface-condition p0 rough)
    (treatment p0 varnished)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 blue)
    (wood p7 teak)
    (surface-condition p7 smooth)
    (treatment p7 glazed)
    (goalsize p7 medium)
    
    
    
    
    (available p8)
    (colour p8 blue)
    (wood p8 oak)
    (surface-condition p8 rough)
    (treatment p8 colourfragments)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 black)
    (wood p11 beech)
    (surface-condition p11 verysmooth)
    (treatment p11 colourfragments)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 red)
    (wood p12 pine)
    (surface-condition p12 rough)
    (treatment p12 colourfragments)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (available p19)
    (colour p19 black)
    (wood p19 beech)
    (surface-condition p19 smooth)
    (treatment p19 colourfragments)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (available p34)
    (colour p34 black)
    (wood p34 teak)
    (surface-condition p34 rough)
    (treatment p34 varnished)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 black)
    (wood p35 teak)
    (surface-condition p35 verysmooth)
    (treatment p35 colourfragments)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (available p55)
    (colour p55 mauve)
    (wood p55 oak)
    (surface-condition p55 rough)
    (treatment p55 glazed)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (available p57)
    (colour p57 natural)
    (wood p57 mahogany)
    (surface-condition p57 rough)
    (treatment p57 varnished)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (available p64)
    (colour p64 white)
    (wood p64 cherry)
    (surface-condition p64 verysmooth)
    (treatment p64 glazed)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (available p75)
    (colour p75 black)
    (wood p75 pine)
    (surface-condition p75 verysmooth)
    (treatment p75 varnished)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (available p84)
    (colour p84 black)
    (wood p84 pine)
    (surface-condition p84 rough)
    (treatment p84 varnished)
    (goalsize p84 large)
    
    
    
    
    (available p85)
    (colour p85 natural)
    (wood p85 oak)
    (surface-condition p85 smooth)
    (treatment p85 glazed)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (available p89)
    (colour p89 white)
    (wood p89 beech)
    (surface-condition p89 rough)
    (treatment p89 glazed)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (available p92)
    (colour p92 blue)
    (wood p92 beech)
    (surface-condition p92 smooth)
    (treatment p92 varnished)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (available p95)
    (colour p95 natural)
    (wood p95 oak)
    (surface-condition p95 rough)
    (treatment p95 colourfragments)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (available p102)
    (colour p102 black)
    (wood p102 beech)
    (surface-condition p102 verysmooth)
    (treatment p102 colourfragments)
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
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (available p110)
    (colour p110 natural)
    (wood p110 walnut)
    (surface-condition p110 smooth)
    (treatment p110 colourfragments)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (available p117)
    (colour p117 black)
    (wood p117 beech)
    (surface-condition p117 verysmooth)
    (treatment p117 colourfragments)
    (goalsize p117 small)
    
    
    
    
    (available p118)
    (colour p118 black)
    (wood p118 walnut)
    (surface-condition p118 smooth)
    (treatment p118 varnished)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (available p121)
    (colour p121 blue)
    (wood p121 walnut)
    (surface-condition p121 verysmooth)
    (treatment p121 varnished)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (available p129)
    (colour p129 blue)
    (wood p129 teak)
    (surface-condition p129 rough)
    (treatment p129 varnished)
    (goalsize p129 small)
    
    
    
    
    (available p130)
    (colour p130 red)
    (wood p130 oak)
    (surface-condition p130 verysmooth)
    (treatment p130 glazed)
    (goalsize p130 large)
    
    
    
    
    (available p131)
    (colour p131 green)
    (wood p131 teak)
    (surface-condition p131 smooth)
    (treatment p131 glazed)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (available p135)
    (colour p135 black)
    (wood p135 teak)
    (surface-condition p135 rough)
    (treatment p135 glazed)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (available p138)
    (colour p138 green)
    (wood p138 cherry)
    (surface-condition p138 rough)
    (treatment p138 colourfragments)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (available p141)
    (colour p141 white)
    (wood p141 mahogany)
    (surface-condition p141 rough)
    (treatment p141 varnished)
    (goalsize p141 large)
    
    
    
    
    (available p142)
    (colour p142 mauve)
    (wood p142 oak)
    (surface-condition p142 smooth)
    (treatment p142 colourfragments)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (available p151)
    (colour p151 mauve)
    (wood p151 cherry)
    (surface-condition p151 verysmooth)
    (treatment p151 glazed)
    (goalsize p151 small)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (available p153)
    (colour p153 natural)
    (wood p153 beech)
    (surface-condition p153 rough)
    (treatment p153 glazed)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (available p157)
    (colour p157 natural)
    (wood p157 mahogany)
    (surface-condition p157 smooth)
    (treatment p157 colourfragments)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
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
    (goalsize p167 medium)
    
    
    
    
    (available p168)
    (colour p168 blue)
    (wood p168 pine)
    (surface-condition p168 verysmooth)
    (treatment p168 varnished)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (available p172)
    (colour p172 mauve)
    (wood p172 oak)
    (surface-condition p172 rough)
    (treatment p172 glazed)
    (goalsize p172 medium)
    
    
    
    
    (available p173)
    (colour p173 red)
    (wood p173 walnut)
    (surface-condition p173 rough)
    (treatment p173 varnished)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 large)
    
    
    
    
    (available p176)
    (colour p176 black)
    (wood p176 beech)
    (surface-condition p176 smooth)
    (treatment p176 colourfragments)
    (goalsize p176 large)
    
    
    
    
    (available p177)
    (colour p177 mauve)
    (wood p177 teak)
    (surface-condition p177 verysmooth)
    (treatment p177 glazed)
    (goalsize p177 medium)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (available p180)
    (colour p180 black)
    (wood p180 teak)
    (surface-condition p180 smooth)
    (treatment p180 colourfragments)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (unused p185)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (available p189)
    (colour p189 blue)
    (wood p189 oak)
    (surface-condition p189 smooth)
    (treatment p189 glazed)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (available p193)
    (colour p193 green)
    (wood p193 oak)
    (surface-condition p193 rough)
    (treatment p193 colourfragments)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (available p195)
    (colour p195 mauve)
    (wood p195 beech)
    (surface-condition p195 verysmooth)
    (treatment p195 varnished)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 medium)
    
    
    
    
    (available p199)
    (colour p199 red)
    (wood p199 cherry)
    (surface-condition p199 smooth)
    (treatment p199 colourfragments)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 small)
    
    
    
    
    (available p201)
    (colour p201 mauve)
    (wood p201 mahogany)
    (surface-condition p201 smooth)
    (treatment p201 varnished)
    (goalsize p201 medium)
    
    
    
    
    (available p202)
    (colour p202 natural)
    (wood p202 beech)
    (surface-condition p202 smooth)
    (treatment p202 glazed)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 medium)
    
    
    
    
    (unused p204)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 medium)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (available p208)
    (colour p208 blue)
    (wood p208 mahogany)
    (surface-condition p208 smooth)
    (treatment p208 glazed)
    (goalsize p208 small)
    
    
    
    
    (available p209)
    (colour p209 blue)
    (wood p209 beech)
    (surface-condition p209 rough)
    (treatment p209 glazed)
    (goalsize p209 medium)
    
    
    
    
    (available p210)
    (colour p210 mauve)
    (wood p210 cherry)
    (surface-condition p210 smooth)
    (treatment p210 glazed)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 small)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 large)
    
    
    
    
    (unused p215)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 medium)
    
    
    
    
    (unused p219)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 large)
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 medium)
    
    
    
    
    (unused p223)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (available p225)
    (colour p225 mauve)
    (wood p225 oak)
    (surface-condition p225 smooth)
    (treatment p225 glazed)
    (goalsize p225 small)
    
    
    
    
    (available p226)
    (colour p226 red)
    (wood p226 oak)
    (surface-condition p226 smooth)
    (treatment p226 colourfragments)
    (goalsize p226 large)
    
    
    
    
    (unused p227)
    (goalsize p227 medium)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 large)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (unused p231)
    (goalsize p231 small)
    
    
    
    
    (available p232)
    (colour p232 white)
    (wood p232 cherry)
    (surface-condition p232 rough)
    (treatment p232 colourfragments)
    (goalsize p232 small)
    
    
    
    
    (unused p233)
    (goalsize p233 medium)
    
    
    
    
    (unused p234)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 medium)
    
    
    
    
    (unused p237)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 small)
    
    
    
    
    (unused p239)
    (goalsize p239 medium)
    
    
    
    
    (unused p240)
    (goalsize p240 large)
    
    
    
    
    (unused p241)
    (goalsize p241 small)
    
    
    
    
    (unused p242)
    (goalsize p242 medium)
    
    
    
    
    (unused p243)
    (goalsize p243 medium)
    
    
    
    
    (unused p244)
    (goalsize p244 medium)
    
    
    
    
    (unused p245)
    (goalsize p245 medium)
    
    
    
    
    (unused p246)
    (goalsize p246 medium)
    
    
    
    
    (unused p247)
    (goalsize p247 small)
    
    
    
    
    (unused p248)
    (goalsize p248 small)
    
    
    
    
    (unused p249)
    (goalsize p249 small)
    
    
    
    
    (unused p250)
    (goalsize p250 medium)
    
    
    
    
    (available p251)
    (colour p251 white)
    (wood p251 oak)
    (surface-condition p251 verysmooth)
    (treatment p251 varnished)
    (goalsize p251 large)
    
    
    
    
    (available p252)
    (colour p252 red)
    (wood p252 cherry)
    (surface-condition p252 rough)
    (treatment p252 glazed)
    (goalsize p252 small)
    
    
    
    
    (unused p253)
    (goalsize p253 large)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s5)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s6)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s11)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s4)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s6)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s10)
    (wood b15 mahogany)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 mahogany)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s7)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s6)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s10)
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
    (boardsize b24 s9)
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
    (boardsize b28 s9)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s6)
    (wood b29 oak)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s11)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s10)
    (wood b31 oak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s5)
    (wood b32 oak)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s7)
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
    (boardsize b36 s5)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s7)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s10)
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
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s7)
    (wood b42 pine)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s6)
    (wood b43 pine)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s9)
    (wood b44 pine)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s3)
    (wood b45 pine)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s9)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s7)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s6)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s7)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s7)
    (wood b50 walnut)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s8)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s12)
    (wood b52 walnut)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s6)
    (wood b53 walnut)
    (surface-condition b53 smooth)
    (available b53)
    (boardsize b54 s6)
    (wood b54 walnut)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s6)
    (wood b55 walnut)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s6)
    (wood b56 walnut)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s10)
    (wood b57 walnut)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s8)
    (wood b58 teak)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s5)
    (wood b59 teak)
    (surface-condition b59 smooth)
    (available b59)
    (boardsize b60 s6)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s9)
    (wood b61 teak)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s9)
    (wood b62 teak)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s9)
    (wood b63 teak)
    (surface-condition b63 smooth)
    (available b63)
    (boardsize b64 s5)
    (wood b64 teak)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s10)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s10)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s6)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s6)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s8)
    (wood b69 beech)
    (surface-condition b69 smooth)
    (available b69)
    (boardsize b70 s8)
    (wood b70 beech)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s8)
    (wood b71 beech)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s7)
    (wood b72 beech)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s2)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (wood p1 pine)
      (treatment p1 glazed)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 black)
      (wood p3 oak)
      (treatment p3 varnished)
      (available p4)
      (colour p4 mauve)
      (wood p4 walnut)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 red)
      (wood p5 oak)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (wood p6 mahogany)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 mauve)
      (surface-condition p7 verysmooth)
      (available p8)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 blue)
      (wood p9 cherry)
      (available p10)
      (colour p10 blue)
      (treatment p10 varnished)
      (available p11)
      (colour p11 green)
      (wood p11 beech)
      (available p12)
      (colour p12 green)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 natural)
      (wood p13 mahogany)
      (available p14)
      (wood p14 walnut)
      (treatment p14 varnished)
      (available p15)
      (colour p15 blue)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 natural)
      (treatment p16 glazed)
      (available p17)
      (colour p17 white)
      (wood p17 cherry)
      (treatment p17 glazed)
      (available p18)
      (colour p18 blue)
      (wood p18 beech)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 mauve)
      (wood p19 beech)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (wood p20 pine)
      (treatment p20 varnished)
      (available p21)
      (colour p21 green)
      (wood p21 mahogany)
      (treatment p21 glazed)
      (available p22)
      (colour p22 mauve)
      (surface-condition p22 smooth)
      (available p23)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 red)
      (wood p24 oak)
      (available p25)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 red)
      (wood p26 walnut)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 blue)
      (wood p27 walnut)
      (available p28)
      (wood p28 beech)
      (surface-condition p28 smooth)
      (available p29)
      (colour p29 blue)
      (wood p29 pine)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 black)
      (wood p30 teak)
      (treatment p30 glazed)
      (available p31)
      (colour p31 red)
      (wood p31 teak)
      (available p32)
      (wood p32 teak)
      (treatment p32 glazed)
      (available p33)
      (colour p33 green)
      (wood p33 walnut)
      (surface-condition p33 smooth)
      (treatment p33 varnished)
      (available p34)
      (wood p34 teak)
      (surface-condition p34 smooth)
      (available p35)
      (colour p35 blue)
      (wood p35 teak)
      (surface-condition p35 verysmooth)
      (available p36)
      (wood p36 walnut)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (wood p37 walnut)
      (treatment p37 glazed)
      (available p38)
      (colour p38 natural)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 red)
      (surface-condition p39 smooth)
      (available p40)
      (colour p40 white)
      (treatment p40 glazed)
      (available p41)
      (colour p41 natural)
      (treatment p41 glazed)
      (available p42)
      (colour p42 green)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 mauve)
      (surface-condition p43 smooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 mauve)
      (wood p44 cherry)
      (treatment p44 varnished)
      (available p45)
      (wood p45 oak)
      (treatment p45 glazed)
      (available p46)
      (wood p46 oak)
      (surface-condition p46 smooth)
      (available p47)
      (colour p47 white)
      (surface-condition p47 verysmooth)
      (available p48)
      (colour p48 green)
      (surface-condition p48 verysmooth)
      (treatment p48 glazed)
      (available p49)
      (wood p49 mahogany)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 red)
      (wood p50 oak)
      (available p51)
      (colour p51 mauve)
      (wood p51 walnut)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (wood p53 beech)
      (treatment p53 varnished)
      (available p54)
      (colour p54 red)
      (surface-condition p54 verysmooth)
      (available p55)
      (colour p55 green)
      (wood p55 oak)
      (available p56)
      (colour p56 natural)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 mauve)
      (wood p57 mahogany)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 red)
      (wood p58 teak)
      (surface-condition p58 smooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 black)
      (wood p59 pine)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (wood p60 cherry)
      (treatment p60 varnished)
      (available p61)
      (colour p61 red)
      (wood p61 oak)
      (surface-condition p61 smooth)
      (treatment p61 glazed)
      (available p62)
      (colour p62 black)
      (wood p62 cherry)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 blue)
      (wood p63 teak)
      (surface-condition p63 verysmooth)
      (treatment p63 glazed)
      (available p64)
      (wood p64 cherry)
      (treatment p64 varnished)
      (available p65)
      (wood p65 mahogany)
      (treatment p65 glazed)
      (available p66)
      (colour p66 red)
      (wood p66 cherry)
      (surface-condition p66 verysmooth)
      (available p67)
      (colour p67 mauve)
      (wood p67 cherry)
      (surface-condition p67 verysmooth)
      (available p68)
      (wood p68 walnut)
      (treatment p68 varnished)
      (available p69)
      (wood p69 beech)
      (treatment p69 glazed)
      (available p70)
      (colour p70 white)
      (wood p70 beech)
      (surface-condition p70 verysmooth)
      (available p71)
      (colour p71 white)
      (surface-condition p71 verysmooth)
      (treatment p71 varnished)
      (available p72)
      (wood p72 beech)
      (treatment p72 glazed)
      (available p73)
      (colour p73 white)
      (treatment p73 varnished)
      (available p74)
      (colour p74 red)
      (wood p74 pine)
      (treatment p74 glazed)
      (available p75)
      (colour p75 red)
      (treatment p75 glazed)
      (available p76)
      (colour p76 black)
      (wood p76 mahogany)
      (available p77)
      (colour p77 red)
      (wood p77 cherry)
      (available p78)
      (wood p78 oak)
      (surface-condition p78 smooth)
      (treatment p78 varnished)
      (available p79)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 natural)
      (wood p80 pine)
      (surface-condition p80 verysmooth)
      (treatment p80 varnished)
      (available p81)
      (wood p81 teak)
      (surface-condition p81 verysmooth)
      (available p82)
      (wood p82 oak)
      (surface-condition p82 verysmooth)
      (available p83)
      (wood p83 pine)
      (treatment p83 glazed)
      (available p84)
      (colour p84 natural)
      (wood p84 pine)
      (surface-condition p84 verysmooth)
      (treatment p84 glazed)
      (available p85)
      (colour p85 red)
      (treatment p85 varnished)
      (available p86)
      (colour p86 black)
      (wood p86 walnut)
      (surface-condition p86 smooth)
      (available p87)
      (colour p87 black)
      (surface-condition p87 smooth)
      (available p88)
      (wood p88 pine)
      (surface-condition p88 smooth)
      (available p89)
      (wood p89 beech)
      (surface-condition p89 verysmooth)
      (available p90)
      (colour p90 blue)
      (treatment p90 glazed)
      (available p91)
      (colour p91 black)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 black)
      (wood p92 beech)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (colour p93 green)
      (treatment p93 varnished)
      (available p94)
      (colour p94 green)
      (treatment p94 glazed)
      (available p95)
      (colour p95 green)
      (treatment p95 glazed)
      (available p96)
      (wood p96 pine)
      (treatment p96 varnished)
      (available p97)
      (wood p97 oak)
      (surface-condition p97 verysmooth)
      (available p98)
      (colour p98 red)
      (surface-condition p98 smooth)
      (available p99)
      (wood p99 beech)
      (surface-condition p99 verysmooth)
      (available p100)
      (colour p100 blue)
      (wood p100 oak)
      (surface-condition p100 verysmooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 white)
      (surface-condition p101 smooth)
      (available p102)
      (wood p102 beech)
      (surface-condition p102 smooth)
      (available p103)
      (colour p103 mauve)
      (wood p103 walnut)
      (surface-condition p103 verysmooth)
      (available p104)
      (wood p104 cherry)
      (treatment p104 varnished)
      (available p105)
      (colour p105 white)
      (treatment p105 glazed)
      (available p106)
      (wood p106 cherry)
      (treatment p106 varnished)
      (available p107)
      (colour p107 black)
      (treatment p107 varnished)
      (available p108)
      (wood p108 mahogany)
      (surface-condition p108 smooth)
      (available p109)
      (wood p109 mahogany)
      (surface-condition p109 smooth)
      (available p110)
      (wood p110 walnut)
      (treatment p110 glazed)
      (available p111)
      (colour p111 black)
      (wood p111 oak)
      (available p112)
      (wood p112 mahogany)
      (surface-condition p112 smooth)
      (treatment p112 varnished)
      (available p113)
      (wood p113 mahogany)
      (surface-condition p113 verysmooth)
      (available p114)
      (colour p114 mauve)
      (treatment p114 varnished)
      (available p115)
      (wood p115 pine)
      (surface-condition p115 verysmooth)
      (available p116)
      (colour p116 black)
      (wood p116 oak)
      (surface-condition p116 smooth)
      (treatment p116 varnished)
      (available p117)
      (colour p117 mauve)
      (wood p117 beech)
      (surface-condition p117 smooth)
      (available p118)
      (colour p118 natural)
      (wood p118 walnut)
      (available p119)
      (colour p119 red)
      (wood p119 mahogany)
      (available p120)
      (surface-condition p120 smooth)
      (treatment p120 glazed)
      (available p121)
      (colour p121 natural)
      (wood p121 walnut)
      (surface-condition p121 smooth)
      (treatment p121 glazed)
      (available p122)
      (colour p122 mauve)
      (wood p122 mahogany)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (colour p123 natural)
      (wood p123 cherry)
      (surface-condition p123 verysmooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 red)
      (surface-condition p124 smooth)
      (available p125)
      (colour p125 white)
      (wood p125 cherry)
      (available p126)
      (colour p126 mauve)
      (wood p126 mahogany)
      (surface-condition p126 verysmooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 white)
      (surface-condition p127 smooth)
      (available p128)
      (colour p128 white)
      (treatment p128 varnished)
      (available p129)
      (colour p129 white)
      (wood p129 teak)
      (surface-condition p129 smooth)
      (treatment p129 glazed)
      (available p130)
      (colour p130 blue)
      (wood p130 oak)
      (available p131)
      (wood p131 teak)
      (surface-condition p131 smooth)
      (treatment p131 varnished)
      (available p132)
      (colour p132 black)
      (treatment p132 varnished)
      (available p133)
      (colour p133 natural)
      (surface-condition p133 verysmooth)
      (treatment p133 varnished)
      (available p134)
      (wood p134 oak)
      (treatment p134 varnished)
      (available p135)
      (colour p135 white)
      (wood p135 teak)
      (available p136)
      (wood p136 oak)
      (treatment p136 glazed)
      (available p137)
      (colour p137 white)
      (wood p137 mahogany)
      (treatment p137 varnished)
      (available p138)
      (colour p138 mauve)
      (wood p138 cherry)
      (surface-condition p138 smooth)
      (treatment p138 glazed)
      (available p139)
      (colour p139 natural)
      (wood p139 beech)
      (surface-condition p139 verysmooth)
      (treatment p139 glazed)
      (available p140)
      (colour p140 red)
      (wood p140 walnut)
      (surface-condition p140 smooth)
      (available p141)
      (colour p141 black)
      (wood p141 mahogany)
      (treatment p141 varnished)
      (available p142)
      (colour p142 black)
      (wood p142 oak)
      (treatment p142 glazed)
      (available p143)
      (colour p143 mauve)
      (surface-condition p143 verysmooth)
      (available p144)
      (colour p144 white)
      (treatment p144 glazed)
      (available p145)
      (colour p145 mauve)
      (treatment p145 varnished)
      (available p146)
      (colour p146 natural)
      (treatment p146 varnished)
      (available p147)
      (colour p147 natural)
      (wood p147 pine)
      (treatment p147 glazed)
      (available p148)
      (surface-condition p148 verysmooth)
      (treatment p148 varnished)
      (available p149)
      (colour p149 natural)
      (surface-condition p149 verysmooth)
      (available p150)
      (colour p150 mauve)
      (surface-condition p150 verysmooth)
      (available p151)
      (colour p151 green)
      (treatment p151 varnished)
      (available p152)
      (surface-condition p152 smooth)
      (treatment p152 glazed)
      (available p153)
      (colour p153 red)
      (surface-condition p153 verysmooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 natural)
      (wood p154 beech)
      (surface-condition p154 smooth)
      (treatment p154 glazed)
      (available p155)
      (surface-condition p155 verysmooth)
      (treatment p155 glazed)
      (available p156)
      (wood p156 oak)
      (treatment p156 varnished)
      (available p157)
      (colour p157 white)
      (treatment p157 glazed)
      (available p158)
      (colour p158 natural)
      (wood p158 pine)
      (treatment p158 varnished)
      (available p159)
      (colour p159 green)
      (wood p159 pine)
      (treatment p159 varnished)
      (available p160)
      (surface-condition p160 verysmooth)
      (treatment p160 varnished)
      (available p161)
      (colour p161 white)
      (surface-condition p161 verysmooth)
      (available p162)
      (colour p162 blue)
      (surface-condition p162 verysmooth)
      (available p163)
      (colour p163 black)
      (wood p163 oak)
      (available p164)
      (colour p164 black)
      (wood p164 walnut)
      (surface-condition p164 verysmooth)
      (treatment p164 varnished)
      (available p165)
      (wood p165 pine)
      (surface-condition p165 smooth)
      (available p166)
      (colour p166 red)
      (wood p166 cherry)
      (surface-condition p166 smooth)
      (treatment p166 varnished)
      (available p167)
      (colour p167 natural)
      (wood p167 beech)
      (surface-condition p167 verysmooth)
      (treatment p167 glazed)
      (available p168)
      (colour p168 white)
      (surface-condition p168 smooth)
      (available p169)
      (colour p169 green)
      (treatment p169 varnished)
      (available p170)
      (surface-condition p170 verysmooth)
      (treatment p170 varnished)
      (available p171)
      (wood p171 walnut)
      (treatment p171 glazed)
      (available p172)
      (surface-condition p172 verysmooth)
      (treatment p172 varnished)
      (available p173)
      (colour p173 natural)
      (surface-condition p173 smooth)
      (available p174)
      (colour p174 natural)
      (wood p174 walnut)
      (treatment p174 varnished)
      (available p175)
      (surface-condition p175 verysmooth)
      (treatment p175 varnished)
      (available p176)
      (colour p176 white)
      (treatment p176 varnished)
      (available p177)
      (wood p177 teak)
      (surface-condition p177 smooth)
      (available p178)
      (colour p178 natural)
      (wood p178 beech)
      (available p179)
      (wood p179 teak)
      (surface-condition p179 smooth)
      (available p180)
      (wood p180 teak)
      (surface-condition p180 verysmooth)
      (available p181)
      (colour p181 red)
      (wood p181 mahogany)
      (surface-condition p181 smooth)
      (treatment p181 varnished)
      (available p182)
      (wood p182 cherry)
      (surface-condition p182 verysmooth)
      (treatment p182 glazed)
      (available p183)
      (colour p183 natural)
      (wood p183 pine)
      (treatment p183 glazed)
      (available p184)
      (colour p184 mauve)
      (treatment p184 varnished)
      (available p185)
      (colour p185 green)
      (wood p185 teak)
      (treatment p185 varnished)
      (available p186)
      (colour p186 black)
      (wood p186 mahogany)
      (available p187)
      (colour p187 mauve)
      (wood p187 mahogany)
      (surface-condition p187 verysmooth)
      (treatment p187 varnished)
      (available p188)
      (colour p188 green)
      (wood p188 oak)
      (available p189)
      (wood p189 oak)
      (surface-condition p189 verysmooth)
      (treatment p189 glazed)
      (available p190)
      (colour p190 blue)
      (wood p190 walnut)
      (available p191)
      (wood p191 oak)
      (treatment p191 glazed)
      (available p192)
      (colour p192 mauve)
      (wood p192 pine)
      (treatment p192 varnished)
      (available p193)
      (colour p193 blue)
      (wood p193 oak)
      (surface-condition p193 verysmooth)
      (available p194)
      (wood p194 teak)
      (treatment p194 glazed)
      (available p195)
      (surface-condition p195 verysmooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 natural)
      (treatment p196 varnished)
      (available p197)
      (colour p197 blue)
      (wood p197 pine)
      (treatment p197 glazed)
      (available p198)
      (colour p198 white)
      (surface-condition p198 smooth)
      (treatment p198 varnished)
      (available p199)
      (surface-condition p199 smooth)
      (treatment p199 glazed)
      (available p200)
      (colour p200 green)
      (wood p200 pine)
      (treatment p200 varnished)
      (available p201)
      (wood p201 mahogany)
      (surface-condition p201 verysmooth)
      (treatment p201 glazed)
      (available p202)
      (colour p202 blue)
      (treatment p202 glazed)
      (available p203)
      (colour p203 blue)
      (wood p203 pine)
      (treatment p203 varnished)
      (available p204)
      (colour p204 green)
      (wood p204 teak)
      (surface-condition p204 smooth)
      (treatment p204 varnished)
      (available p205)
      (colour p205 red)
      (wood p205 walnut)
      (available p206)
      (colour p206 mauve)
      (wood p206 teak)
      (surface-condition p206 verysmooth)
      (available p207)
      (colour p207 natural)
      (wood p207 oak)
      (surface-condition p207 verysmooth)
      (available p208)
      (colour p208 mauve)
      (treatment p208 glazed)
      (available p209)
      (colour p209 black)
      (treatment p209 varnished)
      (available p210)
      (colour p210 black)
      (surface-condition p210 smooth)
      (treatment p210 glazed)
      (available p211)
      (colour p211 natural)
      (surface-condition p211 verysmooth)
      (available p212)
      (colour p212 black)
      (surface-condition p212 verysmooth)
      (treatment p212 varnished)
      (available p213)
      (wood p213 beech)
      (surface-condition p213 smooth)
      (available p214)
      (colour p214 white)
      (surface-condition p214 smooth)
      (available p215)
      (colour p215 red)
      (wood p215 cherry)
      (surface-condition p215 verysmooth)
      (available p216)
      (wood p216 mahogany)
      (surface-condition p216 smooth)
      (available p217)
      (colour p217 natural)
      (treatment p217 varnished)
      (available p218)
      (colour p218 red)
      (wood p218 walnut)
      (surface-condition p218 verysmooth)
      (treatment p218 varnished)
      (available p219)
      (colour p219 red)
      (wood p219 mahogany)
      (treatment p219 varnished)
      (available p220)
      (surface-condition p220 smooth)
      (treatment p220 varnished)
      (available p221)
      (colour p221 black)
      (wood p221 mahogany)
      (surface-condition p221 verysmooth)
      (treatment p221 glazed)
      (available p222)
      (wood p222 pine)
      (treatment p222 varnished)
      (available p223)
      (colour p223 red)
      (wood p223 mahogany)
      (available p224)
      (wood p224 teak)
      (surface-condition p224 smooth)
      (treatment p224 glazed)
      (available p225)
      (colour p225 natural)
      (wood p225 oak)
      (available p226)
      (surface-condition p226 verysmooth)
      (treatment p226 varnished)
      (available p227)
      (wood p227 walnut)
      (treatment p227 varnished)
      (available p228)
      (wood p228 walnut)
      (treatment p228 varnished)
      (available p229)
      (surface-condition p229 smooth)
      (treatment p229 glazed)
      (available p230)
      (colour p230 black)
      (surface-condition p230 smooth)
      (available p231)
      (colour p231 white)
      (wood p231 beech)
      (available p232)
      (surface-condition p232 smooth)
      (treatment p232 glazed)
      (available p233)
      (wood p233 pine)
      (surface-condition p233 verysmooth)
      (available p234)
      (surface-condition p234 verysmooth)
      (treatment p234 glazed)
      (available p235)
      (colour p235 black)
      (wood p235 pine)
      (surface-condition p235 verysmooth)
      (treatment p235 glazed)
      (available p236)
      (colour p236 natural)
      (wood p236 beech)
      (treatment p236 varnished)
      (available p237)
      (colour p237 red)
      (wood p237 oak)
      (surface-condition p237 smooth)
      (treatment p237 varnished)
      (available p238)
      (wood p238 beech)
      (surface-condition p238 verysmooth)
      (available p239)
      (wood p239 walnut)
      (surface-condition p239 verysmooth)
      (available p240)
      (wood p240 pine)
      (treatment p240 varnished)
      (available p241)
      (wood p241 walnut)
      (treatment p241 glazed)
      (available p242)
      (colour p242 red)
      (wood p242 teak)
      (surface-condition p242 smooth)
      (treatment p242 varnished)
      (available p243)
      (colour p243 mauve)
      (wood p243 beech)
      (surface-condition p243 smooth)
      (treatment p243 varnished)
      (available p244)
      (colour p244 mauve)
      (wood p244 oak)
      (surface-condition p244 verysmooth)
      (treatment p244 glazed)
      (available p245)
      (wood p245 pine)
      (surface-condition p245 verysmooth)
      (treatment p245 glazed)
      (available p246)
      (colour p246 blue)
      (wood p246 oak)
      (surface-condition p246 smooth)
      (treatment p246 varnished)
      (available p247)
      (colour p247 white)
      (wood p247 teak)
      (surface-condition p247 verysmooth)
      (treatment p247 varnished)
      (available p248)
      (colour p248 green)
      (wood p248 beech)
      (surface-condition p248 verysmooth)
      (treatment p248 varnished)
      (available p249)
      (colour p249 blue)
      (surface-condition p249 smooth)
      (treatment p249 glazed)
      (available p250)
      (colour p250 blue)
      (wood p250 walnut)
      (available p251)
      (colour p251 mauve)
      (treatment p251 glazed)
      (available p252)
      (colour p252 mauve)
      (wood p252 cherry)
      (available p253)
      (colour p253 red)
      (wood p253 beech)
    )
  )
  
)
