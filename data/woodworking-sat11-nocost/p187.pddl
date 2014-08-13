; woodworking task with 248 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 496821

(define (problem wood-prob-sat-187)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green blue black red white mauve - acolour
    oak mahogany pine teak walnut cherry beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
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
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (available p0)
    (colour p0 green)
    (wood p0 walnut)
    (surface-condition p0 verysmooth)
    (treatment p0 colourfragments)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 blue)
    (wood p1 oak)
    (surface-condition p1 rough)
    (treatment p1 glazed)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (available p4)
    (colour p4 natural)
    (wood p4 mahogany)
    (surface-condition p4 verysmooth)
    (treatment p4 glazed)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 natural)
    (wood p12 cherry)
    (surface-condition p12 smooth)
    (treatment p12 colourfragments)
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
    (goalsize p17 medium)
    
    
    
    
    (available p18)
    (colour p18 red)
    (wood p18 pine)
    (surface-condition p18 rough)
    (treatment p18 glazed)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (available p22)
    (colour p22 black)
    (wood p22 beech)
    (surface-condition p22 smooth)
    (treatment p22 varnished)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 red)
    (wood p25 cherry)
    (surface-condition p25 rough)
    (treatment p25 glazed)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (available p27)
    (colour p27 white)
    (wood p27 mahogany)
    (surface-condition p27 verysmooth)
    (treatment p27 colourfragments)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 black)
    (wood p28 teak)
    (surface-condition p28 verysmooth)
    (treatment p28 glazed)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (available p45)
    (colour p45 black)
    (wood p45 beech)
    (surface-condition p45 rough)
    (treatment p45 varnished)
    (goalsize p45 small)
    
    
    
    
    (available p46)
    (colour p46 white)
    (wood p46 pine)
    (surface-condition p46 verysmooth)
    (treatment p46 colourfragments)
    (goalsize p46 small)
    
    
    
    
    (available p47)
    (colour p47 red)
    (wood p47 walnut)
    (surface-condition p47 smooth)
    (treatment p47 colourfragments)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (available p58)
    (colour p58 natural)
    (wood p58 cherry)
    (surface-condition p58 verysmooth)
    (treatment p58 glazed)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (available p63)
    (colour p63 black)
    (wood p63 mahogany)
    (surface-condition p63 verysmooth)
    (treatment p63 glazed)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 mauve)
    (wood p65 pine)
    (surface-condition p65 verysmooth)
    (treatment p65 colourfragments)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (available p69)
    (colour p69 natural)
    (wood p69 cherry)
    (surface-condition p69 smooth)
    (treatment p69 varnished)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (available p80)
    (colour p80 mauve)
    (wood p80 walnut)
    (surface-condition p80 rough)
    (treatment p80 varnished)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (available p86)
    (colour p86 green)
    (wood p86 walnut)
    (surface-condition p86 rough)
    (treatment p86 glazed)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (available p92)
    (colour p92 natural)
    (wood p92 teak)
    (surface-condition p92 smooth)
    (treatment p92 glazed)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (available p96)
    (colour p96 black)
    (wood p96 beech)
    (surface-condition p96 rough)
    (treatment p96 colourfragments)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (available p114)
    (colour p114 natural)
    (wood p114 pine)
    (surface-condition p114 verysmooth)
    (treatment p114 varnished)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (available p118)
    (colour p118 white)
    (wood p118 mahogany)
    (surface-condition p118 smooth)
    (treatment p118 varnished)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (available p120)
    (colour p120 red)
    (wood p120 walnut)
    (surface-condition p120 smooth)
    (treatment p120 varnished)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (available p129)
    (colour p129 white)
    (wood p129 mahogany)
    (surface-condition p129 verysmooth)
    (treatment p129 colourfragments)
    (goalsize p129 small)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (available p140)
    (colour p140 black)
    (wood p140 pine)
    (surface-condition p140 smooth)
    (treatment p140 varnished)
    (goalsize p140 large)
    
    
    
    
    (available p141)
    (colour p141 green)
    (wood p141 mahogany)
    (surface-condition p141 smooth)
    (treatment p141 varnished)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (available p145)
    (colour p145 blue)
    (wood p145 oak)
    (surface-condition p145 smooth)
    (treatment p145 glazed)
    (goalsize p145 large)
    
    
    
    
    (available p146)
    (colour p146 mauve)
    (wood p146 teak)
    (surface-condition p146 smooth)
    (treatment p146 colourfragments)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (available p149)
    (colour p149 blue)
    (wood p149 oak)
    (surface-condition p149 rough)
    (treatment p149 colourfragments)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (available p155)
    (colour p155 blue)
    (wood p155 cherry)
    (surface-condition p155 verysmooth)
    (treatment p155 varnished)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (available p158)
    (colour p158 blue)
    (wood p158 teak)
    (surface-condition p158 verysmooth)
    (treatment p158 colourfragments)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (available p161)
    (colour p161 blue)
    (wood p161 oak)
    (surface-condition p161 smooth)
    (treatment p161 glazed)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (available p163)
    (colour p163 white)
    (wood p163 walnut)
    (surface-condition p163 smooth)
    (treatment p163 varnished)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (available p165)
    (colour p165 red)
    (wood p165 walnut)
    (surface-condition p165 verysmooth)
    (treatment p165 colourfragments)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (available p167)
    (colour p167 natural)
    (wood p167 cherry)
    (surface-condition p167 rough)
    (treatment p167 varnished)
    (goalsize p167 medium)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (available p172)
    (colour p172 green)
    (wood p172 oak)
    (surface-condition p172 rough)
    (treatment p172 glazed)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 large)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (available p177)
    (colour p177 mauve)
    (wood p177 walnut)
    (surface-condition p177 rough)
    (treatment p177 glazed)
    (goalsize p177 medium)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 large)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (unused p184)
    (goalsize p184 small)
    
    
    
    
    (available p185)
    (colour p185 black)
    (wood p185 cherry)
    (surface-condition p185 rough)
    (treatment p185 varnished)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 small)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (available p189)
    (colour p189 mauve)
    (wood p189 oak)
    (surface-condition p189 verysmooth)
    (treatment p189 glazed)
    (goalsize p189 large)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (available p193)
    (colour p193 black)
    (wood p193 cherry)
    (surface-condition p193 smooth)
    (treatment p193 glazed)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 small)
    
    
    
    
    (unused p196)
    (goalsize p196 small)
    
    
    
    
    (available p197)
    (colour p197 red)
    (wood p197 teak)
    (surface-condition p197 rough)
    (treatment p197 glazed)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 medium)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 small)
    
    
    
    
    (available p203)
    (colour p203 blue)
    (wood p203 pine)
    (surface-condition p203 smooth)
    (treatment p203 colourfragments)
    (goalsize p203 medium)
    
    
    
    
    (available p204)
    (colour p204 white)
    (wood p204 walnut)
    (surface-condition p204 smooth)
    (treatment p204 colourfragments)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (available p208)
    (colour p208 natural)
    (wood p208 walnut)
    (surface-condition p208 smooth)
    (treatment p208 colourfragments)
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
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (available p215)
    (colour p215 red)
    (wood p215 beech)
    (surface-condition p215 verysmooth)
    (treatment p215 colourfragments)
    (goalsize p215 small)
    
    
    
    
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
    (goalsize p222 medium)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (unused p224)
    (goalsize p224 large)
    
    
    
    
    (unused p225)
    (goalsize p225 medium)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (available p227)
    (colour p227 green)
    (wood p227 beech)
    (surface-condition p227 smooth)
    (treatment p227 colourfragments)
    (goalsize p227 medium)
    
    
    
    
    (unused p228)
    (goalsize p228 medium)
    
    
    
    
    (available p229)
    (colour p229 mauve)
    (wood p229 walnut)
    (surface-condition p229 rough)
    (treatment p229 glazed)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (unused p231)
    (goalsize p231 small)
    
    
    
    
    (unused p232)
    (goalsize p232 small)
    
    
    
    
    (unused p233)
    (goalsize p233 small)
    
    
    
    
    (unused p234)
    (goalsize p234 medium)
    
    
    
    
    (available p235)
    (colour p235 natural)
    (wood p235 teak)
    (surface-condition p235 rough)
    (treatment p235 colourfragments)
    (goalsize p235 medium)
    
    
    
    
    (available p236)
    (colour p236 natural)
    (wood p236 cherry)
    (surface-condition p236 rough)
    (treatment p236 varnished)
    (goalsize p236 large)
    
    
    
    
    (available p237)
    (colour p237 green)
    (wood p237 beech)
    (surface-condition p237 smooth)
    (treatment p237 colourfragments)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (unused p239)
    (goalsize p239 large)
    
    
    
    
    (unused p240)
    (goalsize p240 medium)
    
    
    
    
    (unused p241)
    (goalsize p241 small)
    
    
    
    
    (unused p242)
    (goalsize p242 medium)
    
    
    
    
    (unused p243)
    (goalsize p243 small)
    
    
    
    
    (unused p244)
    (goalsize p244 medium)
    
    
    
    
    (unused p245)
    (goalsize p245 medium)
    
    
    
    
    (unused p246)
    (goalsize p246 medium)
    
    
    
    
    (unused p247)
    (goalsize p247 medium)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s5)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s2)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s12)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s7)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s8)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s11)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s6)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s8)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s8)
    (wood b17 mahogany)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s8)
    (wood b18 mahogany)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s10)
    (wood b19 mahogany)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s1)
    (wood b20 mahogany)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s7)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s5)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s9)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s11)
    (wood b26 oak)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s5)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s8)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s10)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s10)
    (wood b30 pine)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s8)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s9)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s6)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s6)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s10)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s9)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s10)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s8)
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
    (boardsize b42 s4)
    (wood b42 pine)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s6)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s6)
    (wood b44 walnut)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s7)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s7)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s10)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s5)
    (wood b48 walnut)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s9)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s9)
    (wood b50 walnut)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s7)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s8)
    (wood b52 walnut)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s3)
    (wood b53 walnut)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s6)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s6)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s6)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s7)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s9)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s10)
    (wood b59 teak)
    (surface-condition b59 smooth)
    (available b59)
    (boardsize b60 s9)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s8)
    (wood b61 teak)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s7)
    (wood b62 teak)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s6)
    (wood b63 teak)
    (surface-condition b63 smooth)
    (available b63)
    (boardsize b64 s6)
    (wood b64 teak)
    (surface-condition b64 smooth)
    (available b64)
    (boardsize b65 s10)
    (wood b65 beech)
    (surface-condition b65 smooth)
    (available b65)
    (boardsize b66 s7)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s7)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s6)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s6)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s10)
    (wood b70 beech)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s9)
    (wood b71 beech)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s3)
    (wood b72 beech)
    (surface-condition b72 rough)
    (available b72)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (surface-condition p0 smooth)
      (available p1)
      (colour p1 red)
      (wood p1 oak)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 pine)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 black)
      (treatment p4 varnished)
      (available p5)
      (colour p5 red)
      (wood p5 pine)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (surface-condition p6 verysmooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 mauve)
      (wood p7 pine)
      (available p8)
      (colour p8 natural)
      (wood p8 cherry)
      (available p9)
      (colour p9 white)
      (wood p9 beech)
      (treatment p9 varnished)
      (available p10)
      (wood p10 pine)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 black)
      (treatment p11 glazed)
      (available p12)
      (colour p12 blue)
      (treatment p12 glazed)
      (available p13)
      (colour p13 red)
      (wood p13 beech)
      (treatment p13 glazed)
      (available p14)
      (colour p14 red)
      (wood p14 mahogany)
      (surface-condition p14 smooth)
      (treatment p14 varnished)
      (available p15)
      (wood p15 teak)
      (treatment p15 varnished)
      (available p16)
      (colour p16 red)
      (surface-condition p16 smooth)
      (available p17)
      (wood p17 mahogany)
      (treatment p17 varnished)
      (available p18)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 black)
      (wood p19 oak)
      (available p20)
      (wood p20 oak)
      (surface-condition p20 verysmooth)
      (available p21)
      (wood p21 walnut)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 natural)
      (treatment p22 varnished)
      (available p23)
      (wood p23 walnut)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 mauve)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 white)
      (treatment p25 varnished)
      (available p26)
      (colour p26 natural)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (wood p28 teak)
      (surface-condition p28 smooth)
      (available p29)
      (wood p29 pine)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 white)
      (wood p30 walnut)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 natural)
      (treatment p31 varnished)
      (available p32)
      (colour p32 green)
      (wood p32 cherry)
      (available p33)
      (wood p33 walnut)
      (surface-condition p33 verysmooth)
      (available p34)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 natural)
      (wood p35 pine)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 red)
      (treatment p36 varnished)
      (available p37)
      (colour p37 mauve)
      (treatment p37 glazed)
      (available p38)
      (wood p38 mahogany)
      (treatment p38 glazed)
      (available p39)
      (colour p39 red)
      (treatment p39 glazed)
      (available p40)
      (wood p40 beech)
      (treatment p40 varnished)
      (available p41)
      (wood p41 oak)
      (treatment p41 varnished)
      (available p42)
      (colour p42 white)
      (wood p42 beech)
      (surface-condition p42 verysmooth)
      (available p43)
      (colour p43 mauve)
      (treatment p43 glazed)
      (available p44)
      (colour p44 mauve)
      (wood p44 cherry)
      (available p45)
      (wood p45 beech)
      (surface-condition p45 smooth)
      (available p46)
      (colour p46 natural)
      (wood p46 pine)
      (available p47)
      (wood p47 walnut)
      (surface-condition p47 verysmooth)
      (available p48)
      (wood p48 beech)
      (treatment p48 varnished)
      (available p49)
      (colour p49 white)
      (wood p49 walnut)
      (available p50)
      (colour p50 mauve)
      (wood p50 mahogany)
      (surface-condition p50 verysmooth)
      (treatment p50 varnished)
      (available p51)
      (wood p51 walnut)
      (surface-condition p51 verysmooth)
      (available p52)
      (wood p52 mahogany)
      (treatment p52 varnished)
      (available p53)
      (wood p53 pine)
      (treatment p53 glazed)
      (available p54)
      (colour p54 black)
      (wood p54 mahogany)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (wood p55 pine)
      (treatment p55 varnished)
      (available p56)
      (wood p56 walnut)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 red)
      (wood p57 pine)
      (available p58)
      (wood p58 cherry)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 natural)
      (wood p59 pine)
      (surface-condition p59 smooth)
      (treatment p59 glazed)
      (available p60)
      (wood p60 walnut)
      (surface-condition p60 verysmooth)
      (available p61)
      (colour p61 red)
      (treatment p61 varnished)
      (available p62)
      (wood p62 pine)
      (treatment p62 varnished)
      (available p63)
      (colour p63 white)
      (surface-condition p63 verysmooth)
      (treatment p63 glazed)
      (available p64)
      (colour p64 blue)
      (wood p64 mahogany)
      (available p65)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 red)
      (wood p66 beech)
      (available p67)
      (wood p67 pine)
      (surface-condition p67 smooth)
      (available p68)
      (colour p68 green)
      (wood p68 walnut)
      (surface-condition p68 smooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 white)
      (wood p69 cherry)
      (surface-condition p69 verysmooth)
      (treatment p69 glazed)
      (available p70)
      (wood p70 beech)
      (surface-condition p70 verysmooth)
      (available p71)
      (wood p71 oak)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 mauve)
      (wood p72 beech)
      (surface-condition p72 smooth)
      (available p73)
      (colour p73 black)
      (treatment p73 varnished)
      (available p74)
      (surface-condition p74 verysmooth)
      (treatment p74 varnished)
      (available p75)
      (wood p75 beech)
      (treatment p75 varnished)
      (available p76)
      (colour p76 natural)
      (wood p76 teak)
      (available p77)
      (wood p77 pine)
      (treatment p77 glazed)
      (available p78)
      (wood p78 walnut)
      (surface-condition p78 verysmooth)
      (available p79)
      (colour p79 white)
      (wood p79 teak)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (wood p80 walnut)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (wood p81 teak)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 mauve)
      (wood p82 cherry)
      (surface-condition p82 smooth)
      (treatment p82 glazed)
      (available p83)
      (wood p83 teak)
      (treatment p83 glazed)
      (available p84)
      (colour p84 black)
      (surface-condition p84 smooth)
      (treatment p84 glazed)
      (available p85)
      (colour p85 green)
      (surface-condition p85 smooth)
      (available p86)
      (colour p86 red)
      (wood p86 walnut)
      (available p87)
      (colour p87 green)
      (surface-condition p87 smooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 red)
      (treatment p88 glazed)
      (available p89)
      (colour p89 black)
      (wood p89 teak)
      (available p90)
      (colour p90 red)
      (wood p90 pine)
      (surface-condition p90 smooth)
      (treatment p90 varnished)
      (available p91)
      (wood p91 mahogany)
      (treatment p91 glazed)
      (available p92)
      (colour p92 green)
      (wood p92 teak)
      (surface-condition p92 verysmooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 natural)
      (treatment p93 varnished)
      (available p94)
      (colour p94 red)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (wood p95 mahogany)
      (treatment p95 varnished)
      (available p96)
      (colour p96 green)
      (surface-condition p96 verysmooth)
      (available p97)
      (colour p97 green)
      (treatment p97 glazed)
      (available p98)
      (wood p98 oak)
      (surface-condition p98 verysmooth)
      (treatment p98 glazed)
      (available p99)
      (colour p99 black)
      (treatment p99 varnished)
      (available p100)
      (surface-condition p100 verysmooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 natural)
      (surface-condition p101 smooth)
      (treatment p101 glazed)
      (available p102)
      (wood p102 oak)
      (surface-condition p102 smooth)
      (treatment p102 varnished)
      (available p103)
      (surface-condition p103 verysmooth)
      (treatment p103 varnished)
      (available p104)
      (wood p104 oak)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (wood p105 pine)
      (surface-condition p105 verysmooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 blue)
      (wood p106 cherry)
      (surface-condition p106 verysmooth)
      (available p107)
      (wood p107 cherry)
      (surface-condition p107 smooth)
      (available p108)
      (surface-condition p108 smooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 blue)
      (wood p109 walnut)
      (available p110)
      (colour p110 green)
      (surface-condition p110 verysmooth)
      (treatment p110 glazed)
      (available p111)
      (wood p111 teak)
      (surface-condition p111 smooth)
      (available p112)
      (wood p112 pine)
      (treatment p112 varnished)
      (available p113)
      (colour p113 mauve)
      (wood p113 walnut)
      (treatment p113 glazed)
      (available p114)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (colour p115 blue)
      (treatment p115 varnished)
      (available p116)
      (colour p116 white)
      (wood p116 cherry)
      (available p117)
      (wood p117 cherry)
      (surface-condition p117 verysmooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 green)
      (wood p118 mahogany)
      (surface-condition p118 verysmooth)
      (treatment p118 varnished)
      (available p119)
      (surface-condition p119 smooth)
      (treatment p119 glazed)
      (available p120)
      (colour p120 black)
      (wood p120 walnut)
      (treatment p120 glazed)
      (available p121)
      (surface-condition p121 verysmooth)
      (treatment p121 glazed)
      (available p122)
      (colour p122 blue)
      (wood p122 beech)
      (surface-condition p122 smooth)
      (treatment p122 varnished)
      (available p123)
      (colour p123 green)
      (wood p123 cherry)
      (available p124)
      (colour p124 natural)
      (surface-condition p124 verysmooth)
      (available p125)
      (colour p125 red)
      (wood p125 oak)
      (available p126)
      (colour p126 green)
      (wood p126 walnut)
      (surface-condition p126 verysmooth)
      (treatment p126 glazed)
      (available p127)
      (wood p127 walnut)
      (surface-condition p127 verysmooth)
      (available p128)
      (colour p128 black)
      (surface-condition p128 smooth)
      (available p129)
      (colour p129 black)
      (treatment p129 glazed)
      (available p130)
      (colour p130 blue)
      (wood p130 walnut)
      (surface-condition p130 smooth)
      (treatment p130 varnished)
      (available p131)
      (wood p131 pine)
      (surface-condition p131 verysmooth)
      (available p132)
      (colour p132 red)
      (surface-condition p132 smooth)
      (available p133)
      (wood p133 pine)
      (treatment p133 glazed)
      (available p134)
      (wood p134 mahogany)
      (treatment p134 glazed)
      (available p135)
      (colour p135 red)
      (wood p135 pine)
      (surface-condition p135 verysmooth)
      (available p136)
      (colour p136 blue)
      (surface-condition p136 smooth)
      (available p137)
      (colour p137 blue)
      (surface-condition p137 smooth)
      (available p138)
      (colour p138 red)
      (wood p138 cherry)
      (surface-condition p138 verysmooth)
      (available p139)
      (wood p139 oak)
      (surface-condition p139 verysmooth)
      (available p140)
      (wood p140 pine)
      (surface-condition p140 verysmooth)
      (available p141)
      (colour p141 blue)
      (treatment p141 varnished)
      (available p142)
      (wood p142 walnut)
      (surface-condition p142 verysmooth)
      (treatment p142 varnished)
      (available p143)
      (surface-condition p143 verysmooth)
      (treatment p143 glazed)
      (available p144)
      (colour p144 natural)
      (wood p144 beech)
      (treatment p144 varnished)
      (available p145)
      (colour p145 red)
      (surface-condition p145 smooth)
      (available p146)
      (colour p146 blue)
      (wood p146 teak)
      (surface-condition p146 verysmooth)
      (treatment p146 varnished)
      (available p147)
      (colour p147 green)
      (wood p147 oak)
      (surface-condition p147 verysmooth)
      (treatment p147 glazed)
      (available p148)
      (colour p148 green)
      (wood p148 oak)
      (surface-condition p148 verysmooth)
      (treatment p148 glazed)
      (available p149)
      (surface-condition p149 smooth)
      (treatment p149 glazed)
      (available p150)
      (surface-condition p150 smooth)
      (treatment p150 glazed)
      (available p151)
      (wood p151 oak)
      (treatment p151 glazed)
      (available p152)
      (colour p152 black)
      (treatment p152 glazed)
      (available p153)
      (colour p153 white)
      (wood p153 oak)
      (surface-condition p153 verysmooth)
      (treatment p153 glazed)
      (available p154)
      (colour p154 natural)
      (wood p154 teak)
      (surface-condition p154 smooth)
      (treatment p154 glazed)
      (available p155)
      (colour p155 white)
      (wood p155 cherry)
      (available p156)
      (wood p156 pine)
      (surface-condition p156 smooth)
      (available p157)
      (surface-condition p157 verysmooth)
      (treatment p157 varnished)
      (available p158)
      (colour p158 mauve)
      (wood p158 teak)
      (available p159)
      (colour p159 black)
      (surface-condition p159 smooth)
      (treatment p159 varnished)
      (available p160)
      (colour p160 black)
      (wood p160 mahogany)
      (surface-condition p160 verysmooth)
      (treatment p160 varnished)
      (available p161)
      (colour p161 natural)
      (treatment p161 glazed)
      (available p162)
      (wood p162 pine)
      (treatment p162 glazed)
      (available p163)
      (colour p163 green)
      (surface-condition p163 verysmooth)
      (treatment p163 varnished)
      (available p164)
      (wood p164 mahogany)
      (surface-condition p164 verysmooth)
      (treatment p164 glazed)
      (available p165)
      (wood p165 walnut)
      (surface-condition p165 smooth)
      (available p166)
      (wood p166 pine)
      (treatment p166 glazed)
      (available p167)
      (colour p167 blue)
      (wood p167 cherry)
      (available p168)
      (wood p168 oak)
      (treatment p168 glazed)
      (available p169)
      (colour p169 white)
      (treatment p169 glazed)
      (available p170)
      (colour p170 green)
      (wood p170 cherry)
      (available p171)
      (colour p171 blue)
      (wood p171 pine)
      (available p172)
      (colour p172 mauve)
      (treatment p172 glazed)
      (available p173)
      (wood p173 mahogany)
      (surface-condition p173 verysmooth)
      (treatment p173 varnished)
      (available p174)
      (colour p174 blue)
      (wood p174 oak)
      (available p175)
      (colour p175 red)
      (wood p175 beech)
      (surface-condition p175 smooth)
      (treatment p175 glazed)
      (available p176)
      (colour p176 green)
      (surface-condition p176 smooth)
      (available p177)
      (wood p177 walnut)
      (surface-condition p177 smooth)
      (treatment p177 varnished)
      (available p178)
      (colour p178 blue)
      (wood p178 mahogany)
      (surface-condition p178 verysmooth)
      (available p179)
      (wood p179 teak)
      (surface-condition p179 smooth)
      (available p180)
      (colour p180 natural)
      (treatment p180 glazed)
      (available p181)
      (colour p181 blue)
      (surface-condition p181 smooth)
      (available p182)
      (colour p182 red)
      (surface-condition p182 smooth)
      (treatment p182 varnished)
      (available p183)
      (colour p183 black)
      (wood p183 teak)
      (surface-condition p183 verysmooth)
      (treatment p183 varnished)
      (available p184)
      (wood p184 mahogany)
      (treatment p184 glazed)
      (available p185)
      (colour p185 white)
      (surface-condition p185 smooth)
      (available p186)
      (wood p186 walnut)
      (surface-condition p186 smooth)
      (available p187)
      (wood p187 mahogany)
      (treatment p187 varnished)
      (available p188)
      (colour p188 green)
      (wood p188 teak)
      (available p189)
      (surface-condition p189 smooth)
      (treatment p189 varnished)
      (available p190)
      (wood p190 cherry)
      (treatment p190 varnished)
      (available p191)
      (colour p191 black)
      (surface-condition p191 verysmooth)
      (treatment p191 varnished)
      (available p192)
      (colour p192 red)
      (surface-condition p192 verysmooth)
      (available p193)
      (colour p193 red)
      (surface-condition p193 verysmooth)
      (treatment p193 varnished)
      (available p194)
      (colour p194 black)
      (wood p194 pine)
      (available p195)
      (surface-condition p195 verysmooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 blue)
      (treatment p196 glazed)
      (available p197)
      (colour p197 white)
      (surface-condition p197 smooth)
      (available p198)
      (wood p198 cherry)
      (treatment p198 glazed)
      (available p199)
      (wood p199 pine)
      (surface-condition p199 smooth)
      (treatment p199 glazed)
      (available p200)
      (colour p200 black)
      (wood p200 walnut)
      (available p201)
      (colour p201 white)
      (treatment p201 varnished)
      (available p202)
      (colour p202 blue)
      (wood p202 beech)
      (available p203)
      (colour p203 white)
      (wood p203 pine)
      (surface-condition p203 smooth)
      (available p204)
      (surface-condition p204 verysmooth)
      (treatment p204 varnished)
      (available p205)
      (colour p205 black)
      (surface-condition p205 smooth)
      (available p206)
      (wood p206 teak)
      (surface-condition p206 verysmooth)
      (available p207)
      (colour p207 blue)
      (wood p207 teak)
      (available p208)
      (colour p208 blue)
      (wood p208 walnut)
      (surface-condition p208 verysmooth)
      (treatment p208 glazed)
      (available p209)
      (colour p209 natural)
      (treatment p209 varnished)
      (available p210)
      (wood p210 cherry)
      (treatment p210 glazed)
      (available p211)
      (colour p211 natural)
      (wood p211 teak)
      (surface-condition p211 smooth)
      (treatment p211 glazed)
      (available p212)
      (colour p212 green)
      (wood p212 oak)
      (surface-condition p212 smooth)
      (treatment p212 varnished)
      (available p213)
      (colour p213 blue)
      (treatment p213 glazed)
      (available p214)
      (colour p214 red)
      (wood p214 teak)
      (treatment p214 glazed)
      (available p215)
      (colour p215 blue)
      (surface-condition p215 verysmooth)
      (available p216)
      (colour p216 green)
      (surface-condition p216 verysmooth)
      (available p217)
      (colour p217 natural)
      (surface-condition p217 smooth)
      (treatment p217 varnished)
      (available p218)
      (colour p218 red)
      (wood p218 mahogany)
      (surface-condition p218 verysmooth)
      (treatment p218 glazed)
      (available p219)
      (colour p219 green)
      (treatment p219 glazed)
      (available p220)
      (surface-condition p220 verysmooth)
      (treatment p220 glazed)
      (available p221)
      (surface-condition p221 smooth)
      (treatment p221 varnished)
      (available p222)
      (colour p222 red)
      (treatment p222 varnished)
      (available p223)
      (colour p223 black)
      (treatment p223 glazed)
      (available p224)
      (wood p224 walnut)
      (surface-condition p224 verysmooth)
      (available p225)
      (colour p225 blue)
      (wood p225 pine)
      (available p226)
      (surface-condition p226 smooth)
      (treatment p226 varnished)
      (available p227)
      (colour p227 natural)
      (surface-condition p227 smooth)
      (available p228)
      (colour p228 blue)
      (treatment p228 varnished)
      (available p229)
      (colour p229 white)
      (surface-condition p229 verysmooth)
      (available p230)
      (colour p230 green)
      (wood p230 teak)
      (treatment p230 varnished)
      (available p231)
      (colour p231 green)
      (wood p231 teak)
      (surface-condition p231 smooth)
      (available p232)
      (colour p232 white)
      (wood p232 walnut)
      (surface-condition p232 verysmooth)
      (treatment p232 glazed)
      (available p233)
      (colour p233 blue)
      (wood p233 walnut)
      (surface-condition p233 verysmooth)
      (treatment p233 glazed)
      (available p234)
      (wood p234 beech)
      (surface-condition p234 smooth)
      (treatment p234 glazed)
      (available p235)
      (wood p235 teak)
      (treatment p235 glazed)
      (available p236)
      (wood p236 cherry)
      (treatment p236 glazed)
      (available p237)
      (wood p237 beech)
      (surface-condition p237 verysmooth)
      (treatment p237 glazed)
      (available p238)
      (colour p238 black)
      (wood p238 walnut)
      (surface-condition p238 smooth)
      (treatment p238 glazed)
      (available p239)
      (colour p239 natural)
      (wood p239 mahogany)
      (available p240)
      (colour p240 black)
      (wood p240 pine)
      (surface-condition p240 smooth)
      (available p241)
      (colour p241 red)
      (wood p241 teak)
      (surface-condition p241 verysmooth)
      (available p242)
      (colour p242 blue)
      (surface-condition p242 smooth)
      (available p243)
      (wood p243 pine)
      (surface-condition p243 verysmooth)
      (treatment p243 glazed)
      (available p244)
      (wood p244 oak)
      (surface-condition p244 verysmooth)
      (treatment p244 glazed)
      (available p245)
      (wood p245 mahogany)
      (treatment p245 glazed)
      (available p246)
      (colour p246 natural)
      (wood p246 pine)
      (surface-condition p246 smooth)
      (treatment p246 varnished)
      (available p247)
      (colour p247 mauve)
      (treatment p247 varnished)
    )
  )
  
)
