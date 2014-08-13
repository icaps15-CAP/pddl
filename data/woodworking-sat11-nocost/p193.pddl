; woodworking task with 266 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 50559

(define (problem wood-prob-sat-193)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red blue black mauve white green - acolour
    beech cherry pine teak mahogany walnut oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 b75 b76 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 red)
    (wood p1 teak)
    (surface-condition p1 smooth)
    (treatment p1 colourfragments)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 natural)
    (wood p6 mahogany)
    (surface-condition p6 verysmooth)
    (treatment p6 colourfragments)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (available p10)
    (colour p10 white)
    (wood p10 beech)
    (surface-condition p10 smooth)
    (treatment p10 colourfragments)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (available p14)
    (colour p14 green)
    (wood p14 oak)
    (surface-condition p14 rough)
    (treatment p14 colourfragments)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (available p16)
    (colour p16 green)
    (wood p16 oak)
    (surface-condition p16 verysmooth)
    (treatment p16 glazed)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (available p18)
    (colour p18 white)
    (wood p18 cherry)
    (surface-condition p18 verysmooth)
    (treatment p18 glazed)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 green)
    (wood p22 mahogany)
    (surface-condition p22 smooth)
    (treatment p22 varnished)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 natural)
    (wood p24 walnut)
    (surface-condition p24 smooth)
    (treatment p24 glazed)
    (goalsize p24 large)
    
    
    
    
    (available p25)
    (colour p25 natural)
    (wood p25 walnut)
    (surface-condition p25 smooth)
    (treatment p25 colourfragments)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (available p30)
    (colour p30 red)
    (wood p30 mahogany)
    (surface-condition p30 rough)
    (treatment p30 glazed)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 red)
    (wood p38 pine)
    (surface-condition p38 verysmooth)
    (treatment p38 varnished)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (available p43)
    (colour p43 red)
    (wood p43 walnut)
    (surface-condition p43 rough)
    (treatment p43 colourfragments)
    (goalsize p43 medium)
    
    
    
    
    (available p44)
    (colour p44 white)
    (wood p44 teak)
    (surface-condition p44 smooth)
    (treatment p44 colourfragments)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
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
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (available p58)
    (colour p58 blue)
    (wood p58 oak)
    (surface-condition p58 verysmooth)
    (treatment p58 glazed)
    (goalsize p58 large)
    
    
    
    
    (available p59)
    (colour p59 natural)
    (wood p59 walnut)
    (surface-condition p59 smooth)
    (treatment p59 glazed)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (available p65)
    (colour p65 mauve)
    (wood p65 walnut)
    (surface-condition p65 rough)
    (treatment p65 colourfragments)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
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
    (goalsize p74 small)
    
    
    
    
    (available p75)
    (colour p75 natural)
    (wood p75 oak)
    (surface-condition p75 smooth)
    (treatment p75 varnished)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (available p77)
    (colour p77 red)
    (wood p77 cherry)
    (surface-condition p77 smooth)
    (treatment p77 glazed)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (available p79)
    (colour p79 green)
    (wood p79 mahogany)
    (surface-condition p79 verysmooth)
    (treatment p79 colourfragments)
    (goalsize p79 large)
    
    
    
    
    (available p80)
    (colour p80 natural)
    (wood p80 walnut)
    (surface-condition p80 verysmooth)
    (treatment p80 glazed)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (available p83)
    (colour p83 black)
    (wood p83 walnut)
    (surface-condition p83 verysmooth)
    (treatment p83 glazed)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (available p85)
    (colour p85 white)
    (wood p85 oak)
    (surface-condition p85 verysmooth)
    (treatment p85 glazed)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (available p88)
    (colour p88 green)
    (wood p88 mahogany)
    (surface-condition p88 smooth)
    (treatment p88 glazed)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (available p92)
    (colour p92 red)
    (wood p92 beech)
    (surface-condition p92 smooth)
    (treatment p92 varnished)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (available p94)
    (colour p94 green)
    (wood p94 cherry)
    (surface-condition p94 smooth)
    (treatment p94 varnished)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (available p104)
    (colour p104 black)
    (wood p104 cherry)
    (surface-condition p104 verysmooth)
    (treatment p104 glazed)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (available p106)
    (colour p106 red)
    (wood p106 teak)
    (surface-condition p106 verysmooth)
    (treatment p106 glazed)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (available p109)
    (colour p109 mauve)
    (wood p109 mahogany)
    (surface-condition p109 smooth)
    (treatment p109 colourfragments)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (available p112)
    (colour p112 red)
    (wood p112 pine)
    (surface-condition p112 smooth)
    (treatment p112 colourfragments)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (available p116)
    (colour p116 red)
    (wood p116 walnut)
    (surface-condition p116 verysmooth)
    (treatment p116 varnished)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (available p129)
    (colour p129 black)
    (wood p129 teak)
    (surface-condition p129 rough)
    (treatment p129 varnished)
    (goalsize p129 large)
    
    
    
    
    (available p130)
    (colour p130 black)
    (wood p130 oak)
    (surface-condition p130 smooth)
    (treatment p130 colourfragments)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (available p132)
    (colour p132 green)
    (wood p132 beech)
    (surface-condition p132 smooth)
    (treatment p132 glazed)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (available p136)
    (colour p136 red)
    (wood p136 walnut)
    (surface-condition p136 verysmooth)
    (treatment p136 varnished)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (available p145)
    (colour p145 red)
    (wood p145 beech)
    (surface-condition p145 verysmooth)
    (treatment p145 colourfragments)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (available p149)
    (colour p149 mauve)
    (wood p149 cherry)
    (surface-condition p149 verysmooth)
    (treatment p149 varnished)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (available p151)
    (colour p151 green)
    (wood p151 teak)
    (surface-condition p151 verysmooth)
    (treatment p151 colourfragments)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (available p164)
    (colour p164 red)
    (wood p164 cherry)
    (surface-condition p164 verysmooth)
    (treatment p164 varnished)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 small)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 large)
    
    
    
    
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
    
    
    
    
    (available p180)
    (colour p180 green)
    (wood p180 mahogany)
    (surface-condition p180 rough)
    (treatment p180 colourfragments)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (available p182)
    (colour p182 red)
    (wood p182 oak)
    (surface-condition p182 rough)
    (treatment p182 varnished)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (available p187)
    (colour p187 mauve)
    (wood p187 pine)
    (surface-condition p187 smooth)
    (treatment p187 glazed)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (available p194)
    (colour p194 blue)
    (wood p194 teak)
    (surface-condition p194 rough)
    (treatment p194 varnished)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 small)
    
    
    
    
    (unused p196)
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 small)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (available p199)
    (colour p199 red)
    (wood p199 teak)
    (surface-condition p199 verysmooth)
    (treatment p199 colourfragments)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 small)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 medium)
    
    
    
    
    (unused p204)
    (goalsize p204 small)
    
    
    
    
    (unused p205)
    (goalsize p205 medium)
    
    
    
    
    (available p206)
    (colour p206 natural)
    (wood p206 oak)
    (surface-condition p206 rough)
    (treatment p206 colourfragments)
    (goalsize p206 medium)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 medium)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (available p213)
    (colour p213 white)
    (wood p213 cherry)
    (surface-condition p213 smooth)
    (treatment p213 glazed)
    (goalsize p213 medium)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (unused p215)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 medium)
    
    
    
    
    (unused p217)
    (goalsize p217 medium)
    
    
    
    
    (unused p218)
    (goalsize p218 small)
    
    
    
    
    (unused p219)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (available p222)
    (colour p222 mauve)
    (wood p222 cherry)
    (surface-condition p222 smooth)
    (treatment p222 colourfragments)
    (goalsize p222 medium)
    
    
    
    
    (unused p223)
    (goalsize p223 large)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 large)
    
    
    
    
    (unused p226)
    (goalsize p226 small)
    
    
    
    
    (unused p227)
    (goalsize p227 medium)
    
    
    
    
    (unused p228)
    (goalsize p228 large)
    
    
    
    
    (available p229)
    (colour p229 natural)
    (wood p229 beech)
    (surface-condition p229 rough)
    (treatment p229 varnished)
    (goalsize p229 small)
    
    
    
    
    (available p230)
    (colour p230 black)
    (wood p230 walnut)
    (surface-condition p230 smooth)
    (treatment p230 varnished)
    (goalsize p230 medium)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (unused p232)
    (goalsize p232 small)
    
    
    
    
    (available p233)
    (colour p233 natural)
    (wood p233 pine)
    (surface-condition p233 smooth)
    (treatment p233 varnished)
    (goalsize p233 small)
    
    
    
    
    (unused p234)
    (goalsize p234 small)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 large)
    
    
    
    
    (unused p237)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 small)
    
    
    
    
    (unused p239)
    (goalsize p239 medium)
    
    
    
    
    (unused p240)
    (goalsize p240 large)
    
    
    
    
    (unused p241)
    (goalsize p241 medium)
    
    
    
    
    (unused p242)
    (goalsize p242 medium)
    
    
    
    
    (available p243)
    (colour p243 black)
    (wood p243 oak)
    (surface-condition p243 rough)
    (treatment p243 glazed)
    (goalsize p243 small)
    
    
    
    
    (unused p244)
    (goalsize p244 small)
    
    
    
    
    (unused p245)
    (goalsize p245 large)
    
    
    
    
    (unused p246)
    (goalsize p246 medium)
    
    
    
    
    (unused p247)
    (goalsize p247 large)
    
    
    
    
    (unused p248)
    (goalsize p248 large)
    
    
    
    
    (unused p249)
    (goalsize p249 medium)
    
    
    
    
    (unused p250)
    (goalsize p250 small)
    
    
    
    
    (unused p251)
    (goalsize p251 small)
    
    
    
    
    (available p252)
    (colour p252 green)
    (wood p252 cherry)
    (surface-condition p252 rough)
    (treatment p252 varnished)
    (goalsize p252 medium)
    
    
    
    
    (available p253)
    (colour p253 black)
    (wood p253 oak)
    (surface-condition p253 smooth)
    (treatment p253 glazed)
    (goalsize p253 medium)
    
    
    
    
    (unused p254)
    (goalsize p254 medium)
    
    
    
    
    (available p255)
    (colour p255 black)
    (wood p255 mahogany)
    (surface-condition p255 verysmooth)
    (treatment p255 colourfragments)
    (goalsize p255 large)
    
    
    
    
    (available p256)
    (colour p256 white)
    (wood p256 walnut)
    (surface-condition p256 rough)
    (treatment p256 glazed)
    (goalsize p256 small)
    
    
    
    
    (unused p257)
    (goalsize p257 large)
    
    
    
    
    (unused p258)
    (goalsize p258 medium)
    
    
    
    
    (unused p259)
    (goalsize p259 small)
    
    
    
    
    (unused p260)
    (goalsize p260 small)
    
    
    
    
    (unused p261)
    (goalsize p261 small)
    
    
    
    
    (unused p262)
    (goalsize p262 medium)
    
    
    
    
    (unused p263)
    (goalsize p263 large)
    
    
    
    
    (unused p264)
    (goalsize p264 small)
    
    
    
    
    (unused p265)
    (goalsize p265 large)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s7)
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
    (boardsize b5 s6)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s6)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s9)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s6)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s11)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s10)
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
    (boardsize b15 s5)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s10)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s10)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 mahogany)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s11)
    (wood b21 mahogany)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 mahogany)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s5)
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
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s7)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s6)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s6)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s6)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s6)
    (wood b31 oak)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s7)
    (wood b32 oak)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s10)
    (wood b33 oak)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s11)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s6)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s7)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s7)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s9)
    (wood b39 pine)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s10)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s9)
    (wood b41 pine)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s8)
    (wood b42 pine)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s5)
    (wood b43 pine)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s9)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s8)
    (wood b45 walnut)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s8)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s7)
    (wood b47 walnut)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s9)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s11)
    (wood b49 walnut)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s9)
    (wood b50 walnut)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s10)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s7)
    (wood b52 walnut)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s2)
    (wood b53 walnut)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s9)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s10)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s8)
    (wood b56 teak)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s8)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s5)
    (wood b58 teak)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s6)
    (wood b59 teak)
    (surface-condition b59 smooth)
    (available b59)
    (boardsize b60 s8)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s7)
    (wood b61 teak)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s4)
    (wood b62 teak)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s7)
    (wood b63 teak)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s5)
    (wood b64 teak)
    (surface-condition b64 smooth)
    (available b64)
    (boardsize b65 s6)
    (wood b65 teak)
    (surface-condition b65 smooth)
    (available b65)
    (boardsize b66 s7)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s8)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s11)
    (wood b68 beech)
    (surface-condition b68 smooth)
    (available b68)
    (boardsize b69 s6)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s7)
    (wood b70 beech)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s11)
    (wood b71 beech)
    (surface-condition b71 smooth)
    (available b71)
    (boardsize b72 s6)
    (wood b72 beech)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s7)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
    (boardsize b74 s8)
    (wood b74 beech)
    (surface-condition b74 rough)
    (available b74)
    (boardsize b75 s8)
    (wood b75 beech)
    (surface-condition b75 smooth)
    (available b75)
    (boardsize b76 s1)
    (wood b76 beech)
    (surface-condition b76 rough)
    (available b76)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 teak)
      (surface-condition p1 verysmooth)
      (available p2)
      (wood p2 mahogany)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 natural)
      (wood p3 pine)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 mauve)
      (wood p4 walnut)
      (treatment p4 varnished)
      (available p5)
      (colour p5 green)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 green)
      (wood p6 mahogany)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (wood p7 oak)
      (treatment p7 glazed)
      (available p8)
      (colour p8 mauve)
      (wood p8 beech)
      (available p9)
      (colour p9 black)
      (wood p9 teak)
      (surface-condition p9 verysmooth)
      (available p10)
      (wood p10 beech)
      (surface-condition p10 verysmooth)
      (available p11)
      (wood p11 pine)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 red)
      (wood p12 mahogany)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 green)
      (wood p13 oak)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 natural)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 natural)
      (wood p15 cherry)
      (treatment p15 glazed)
      (available p16)
      (colour p16 blue)
      (wood p16 oak)
      (treatment p16 glazed)
      (available p17)
      (colour p17 black)
      (wood p17 mahogany)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (wood p18 cherry)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (wood p19 beech)
      (treatment p19 glazed)
      (available p20)
      (wood p20 cherry)
      (surface-condition p20 verysmooth)
      (available p21)
      (wood p21 beech)
      (surface-condition p21 smooth)
      (available p22)
      (colour p22 mauve)
      (treatment p22 glazed)
      (available p23)
      (wood p23 teak)
      (treatment p23 glazed)
      (available p24)
      (colour p24 black)
      (treatment p24 varnished)
      (available p25)
      (colour p25 black)
      (treatment p25 glazed)
      (available p26)
      (colour p26 blue)
      (wood p26 cherry)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 green)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 red)
      (treatment p28 varnished)
      (available p29)
      (colour p29 blue)
      (wood p29 mahogany)
      (surface-condition p29 verysmooth)
      (available p30)
      (wood p30 mahogany)
      (surface-condition p30 verysmooth)
      (available p31)
      (colour p31 natural)
      (treatment p31 varnished)
      (available p32)
      (wood p32 pine)
      (surface-condition p32 verysmooth)
      (available p33)
      (colour p33 black)
      (surface-condition p33 smooth)
      (available p34)
      (wood p34 pine)
      (surface-condition p34 smooth)
      (available p35)
      (colour p35 mauve)
      (wood p35 cherry)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 natural)
      (surface-condition p36 verysmooth)
      (available p37)
      (wood p37 beech)
      (treatment p37 glazed)
      (available p38)
      (colour p38 black)
      (wood p38 pine)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (wood p39 walnut)
      (treatment p39 glazed)
      (available p40)
      (surface-condition p40 verysmooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 black)
      (wood p41 mahogany)
      (treatment p41 glazed)
      (available p42)
      (colour p42 black)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 natural)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 natural)
      (wood p44 teak)
      (treatment p44 glazed)
      (available p45)
      (wood p45 mahogany)
      (treatment p45 glazed)
      (available p46)
      (colour p46 natural)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 black)
      (wood p47 pine)
      (available p48)
      (colour p48 natural)
      (surface-condition p48 smooth)
      (available p49)
      (wood p49 cherry)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 blue)
      (wood p50 teak)
      (treatment p50 varnished)
      (available p51)
      (wood p51 walnut)
      (treatment p51 varnished)
      (available p52)
      (colour p52 black)
      (treatment p52 glazed)
      (available p53)
      (wood p53 pine)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (wood p54 mahogany)
      (surface-condition p54 smooth)
      (available p55)
      (colour p55 blue)
      (wood p55 teak)
      (treatment p55 varnished)
      (available p56)
      (colour p56 natural)
      (surface-condition p56 verysmooth)
      (available p57)
      (wood p57 cherry)
      (surface-condition p57 verysmooth)
      (available p58)
      (colour p58 mauve)
      (wood p58 oak)
      (surface-condition p58 smooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 mauve)
      (wood p59 walnut)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (surface-condition p60 smooth)
      (treatment p60 glazed)
      (available p61)
      (wood p61 beech)
      (treatment p61 varnished)
      (available p62)
      (colour p62 white)
      (wood p62 oak)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (wood p63 beech)
      (treatment p63 varnished)
      (available p64)
      (colour p64 mauve)
      (wood p64 oak)
      (available p65)
      (colour p65 black)
      (treatment p65 varnished)
      (available p66)
      (colour p66 natural)
      (surface-condition p66 verysmooth)
      (available p67)
      (wood p67 oak)
      (surface-condition p67 smooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 black)
      (wood p68 teak)
      (available p69)
      (colour p69 blue)
      (wood p69 pine)
      (surface-condition p69 smooth)
      (treatment p69 varnished)
      (available p70)
      (wood p70 walnut)
      (surface-condition p70 smooth)
      (available p71)
      (colour p71 mauve)
      (wood p71 teak)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (wood p72 cherry)
      (treatment p72 varnished)
      (available p73)
      (colour p73 natural)
      (treatment p73 varnished)
      (available p74)
      (wood p74 teak)
      (surface-condition p74 smooth)
      (available p75)
      (wood p75 oak)
      (treatment p75 glazed)
      (available p76)
      (colour p76 white)
      (surface-condition p76 smooth)
      (available p77)
      (colour p77 green)
      (wood p77 cherry)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 green)
      (treatment p78 glazed)
      (available p79)
      (wood p79 mahogany)
      (treatment p79 glazed)
      (available p80)
      (colour p80 mauve)
      (surface-condition p80 verysmooth)
      (treatment p80 glazed)
      (available p81)
      (colour p81 natural)
      (surface-condition p81 smooth)
      (available p82)
      (colour p82 white)
      (wood p82 oak)
      (surface-condition p82 verysmooth)
      (treatment p82 glazed)
      (available p83)
      (wood p83 walnut)
      (treatment p83 varnished)
      (available p84)
      (colour p84 mauve)
      (treatment p84 glazed)
      (available p85)
      (wood p85 oak)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 blue)
      (surface-condition p86 smooth)
      (available p87)
      (colour p87 red)
      (wood p87 beech)
      (available p88)
      (colour p88 black)
      (wood p88 mahogany)
      (available p89)
      (colour p89 black)
      (surface-condition p89 verysmooth)
      (available p90)
      (wood p90 beech)
      (treatment p90 glazed)
      (available p91)
      (wood p91 cherry)
      (surface-condition p91 verysmooth)
      (available p92)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 black)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (surface-condition p94 verysmooth)
      (treatment p94 glazed)
      (available p95)
      (wood p95 cherry)
      (surface-condition p95 smooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 black)
      (wood p96 beech)
      (surface-condition p96 verysmooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 black)
      (wood p97 teak)
      (available p98)
      (colour p98 mauve)
      (wood p98 mahogany)
      (surface-condition p98 verysmooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 red)
      (treatment p99 varnished)
      (available p100)
      (wood p100 pine)
      (treatment p100 glazed)
      (available p101)
      (colour p101 blue)
      (wood p101 cherry)
      (available p102)
      (wood p102 pine)
      (surface-condition p102 smooth)
      (available p103)
      (colour p103 green)
      (wood p103 mahogany)
      (surface-condition p103 verysmooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 white)
      (treatment p104 glazed)
      (available p105)
      (colour p105 natural)
      (wood p105 pine)
      (surface-condition p105 smooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 black)
      (wood p106 teak)
      (available p107)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (colour p108 black)
      (surface-condition p108 verysmooth)
      (available p109)
      (colour p109 red)
      (wood p109 mahogany)
      (available p110)
      (colour p110 black)
      (wood p110 cherry)
      (surface-condition p110 verysmooth)
      (available p111)
      (wood p111 beech)
      (treatment p111 glazed)
      (available p112)
      (colour p112 black)
      (wood p112 pine)
      (surface-condition p112 verysmooth)
      (treatment p112 varnished)
      (available p113)
      (colour p113 blue)
      (wood p113 beech)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (wood p114 pine)
      (surface-condition p114 smooth)
      (available p115)
      (colour p115 blue)
      (wood p115 beech)
      (available p116)
      (colour p116 blue)
      (surface-condition p116 verysmooth)
      (available p117)
      (colour p117 blue)
      (treatment p117 varnished)
      (available p118)
      (colour p118 natural)
      (wood p118 pine)
      (available p119)
      (colour p119 red)
      (wood p119 walnut)
      (treatment p119 glazed)
      (available p120)
      (surface-condition p120 verysmooth)
      (treatment p120 glazed)
      (available p121)
      (colour p121 green)
      (wood p121 teak)
      (surface-condition p121 verysmooth)
      (treatment p121 varnished)
      (available p122)
      (colour p122 blue)
      (surface-condition p122 smooth)
      (available p123)
      (colour p123 natural)
      (wood p123 oak)
      (available p124)
      (colour p124 white)
      (wood p124 mahogany)
      (surface-condition p124 smooth)
      (treatment p124 glazed)
      (available p125)
      (wood p125 teak)
      (treatment p125 glazed)
      (available p126)
      (colour p126 green)
      (wood p126 pine)
      (surface-condition p126 smooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 white)
      (wood p127 beech)
      (available p128)
      (colour p128 blue)
      (treatment p128 glazed)
      (available p129)
      (colour p129 natural)
      (treatment p129 varnished)
      (available p130)
      (wood p130 oak)
      (surface-condition p130 verysmooth)
      (treatment p130 glazed)
      (available p131)
      (colour p131 mauve)
      (surface-condition p131 verysmooth)
      (treatment p131 glazed)
      (available p132)
      (colour p132 natural)
      (surface-condition p132 verysmooth)
      (treatment p132 glazed)
      (available p133)
      (surface-condition p133 verysmooth)
      (treatment p133 varnished)
      (available p134)
      (wood p134 pine)
      (surface-condition p134 verysmooth)
      (available p135)
      (colour p135 mauve)
      (wood p135 pine)
      (surface-condition p135 verysmooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 blue)
      (treatment p136 glazed)
      (available p137)
      (colour p137 white)
      (treatment p137 varnished)
      (available p138)
      (colour p138 black)
      (wood p138 mahogany)
      (available p139)
      (colour p139 white)
      (wood p139 teak)
      (surface-condition p139 smooth)
      (treatment p139 varnished)
      (available p140)
      (colour p140 natural)
      (surface-condition p140 verysmooth)
      (available p141)
      (wood p141 walnut)
      (treatment p141 varnished)
      (available p142)
      (surface-condition p142 smooth)
      (treatment p142 varnished)
      (available p143)
      (colour p143 red)
      (treatment p143 varnished)
      (available p144)
      (surface-condition p144 smooth)
      (treatment p144 varnished)
      (available p145)
      (wood p145 beech)
      (treatment p145 glazed)
      (available p146)
      (colour p146 green)
      (wood p146 oak)
      (surface-condition p146 verysmooth)
      (treatment p146 varnished)
      (available p147)
      (colour p147 mauve)
      (surface-condition p147 smooth)
      (treatment p147 varnished)
      (available p148)
      (colour p148 red)
      (wood p148 mahogany)
      (treatment p148 glazed)
      (available p149)
      (colour p149 natural)
      (surface-condition p149 smooth)
      (available p150)
      (colour p150 mauve)
      (surface-condition p150 smooth)
      (available p151)
      (colour p151 mauve)
      (wood p151 teak)
      (surface-condition p151 smooth)
      (treatment p151 varnished)
      (available p152)
      (colour p152 mauve)
      (wood p152 walnut)
      (surface-condition p152 verysmooth)
      (available p153)
      (colour p153 natural)
      (wood p153 beech)
      (surface-condition p153 smooth)
      (available p154)
      (colour p154 mauve)
      (wood p154 cherry)
      (surface-condition p154 smooth)
      (treatment p154 varnished)
      (available p155)
      (colour p155 black)
      (wood p155 beech)
      (surface-condition p155 verysmooth)
      (treatment p155 glazed)
      (available p156)
      (wood p156 beech)
      (treatment p156 varnished)
      (available p157)
      (surface-condition p157 verysmooth)
      (treatment p157 glazed)
      (available p158)
      (wood p158 walnut)
      (treatment p158 varnished)
      (available p159)
      (colour p159 black)
      (surface-condition p159 smooth)
      (available p160)
      (colour p160 red)
      (surface-condition p160 smooth)
      (available p161)
      (surface-condition p161 verysmooth)
      (treatment p161 varnished)
      (available p162)
      (wood p162 oak)
      (surface-condition p162 verysmooth)
      (available p163)
      (colour p163 white)
      (wood p163 mahogany)
      (surface-condition p163 verysmooth)
      (treatment p163 glazed)
      (available p164)
      (colour p164 black)
      (wood p164 cherry)
      (surface-condition p164 verysmooth)
      (available p165)
      (wood p165 mahogany)
      (treatment p165 varnished)
      (available p166)
      (colour p166 mauve)
      (wood p166 pine)
      (surface-condition p166 smooth)
      (treatment p166 glazed)
      (available p167)
      (colour p167 white)
      (surface-condition p167 verysmooth)
      (available p168)
      (colour p168 black)
      (surface-condition p168 smooth)
      (available p169)
      (colour p169 blue)
      (wood p169 oak)
      (surface-condition p169 smooth)
      (available p170)
      (colour p170 mauve)
      (surface-condition p170 verysmooth)
      (available p171)
      (colour p171 red)
      (wood p171 oak)
      (available p172)
      (surface-condition p172 verysmooth)
      (treatment p172 varnished)
      (available p173)
      (colour p173 blue)
      (treatment p173 glazed)
      (available p174)
      (colour p174 natural)
      (surface-condition p174 smooth)
      (available p175)
      (colour p175 blue)
      (treatment p175 varnished)
      (available p176)
      (colour p176 natural)
      (treatment p176 varnished)
      (available p177)
      (colour p177 mauve)
      (wood p177 pine)
      (treatment p177 varnished)
      (available p178)
      (colour p178 white)
      (wood p178 oak)
      (surface-condition p178 verysmooth)
      (treatment p178 glazed)
      (available p179)
      (wood p179 beech)
      (surface-condition p179 smooth)
      (treatment p179 varnished)
      (available p180)
      (colour p180 red)
      (wood p180 mahogany)
      (surface-condition p180 smooth)
      (treatment p180 varnished)
      (available p181)
      (colour p181 natural)
      (surface-condition p181 verysmooth)
      (treatment p181 glazed)
      (available p182)
      (colour p182 natural)
      (wood p182 oak)
      (surface-condition p182 verysmooth)
      (available p183)
      (wood p183 mahogany)
      (surface-condition p183 smooth)
      (treatment p183 varnished)
      (available p184)
      (wood p184 mahogany)
      (surface-condition p184 verysmooth)
      (available p185)
      (colour p185 white)
      (wood p185 pine)
      (surface-condition p185 smooth)
      (treatment p185 glazed)
      (available p186)
      (wood p186 mahogany)
      (treatment p186 varnished)
      (available p187)
      (colour p187 red)
      (treatment p187 glazed)
      (available p188)
      (wood p188 beech)
      (surface-condition p188 verysmooth)
      (available p189)
      (colour p189 red)
      (treatment p189 varnished)
      (available p190)
      (surface-condition p190 verysmooth)
      (treatment p190 glazed)
      (available p191)
      (colour p191 black)
      (wood p191 mahogany)
      (surface-condition p191 verysmooth)
      (treatment p191 glazed)
      (available p192)
      (wood p192 pine)
      (treatment p192 glazed)
      (available p193)
      (wood p193 oak)
      (treatment p193 varnished)
      (available p194)
      (colour p194 black)
      (wood p194 teak)
      (surface-condition p194 verysmooth)
      (treatment p194 glazed)
      (available p195)
      (colour p195 mauve)
      (treatment p195 varnished)
      (available p196)
      (wood p196 cherry)
      (surface-condition p196 smooth)
      (available p197)
      (colour p197 white)
      (treatment p197 varnished)
      (available p198)
      (colour p198 red)
      (wood p198 walnut)
      (surface-condition p198 verysmooth)
      (treatment p198 varnished)
      (available p199)
      (wood p199 teak)
      (surface-condition p199 verysmooth)
      (treatment p199 glazed)
      (available p200)
      (colour p200 white)
      (surface-condition p200 smooth)
      (available p201)
      (surface-condition p201 smooth)
      (treatment p201 glazed)
      (available p202)
      (wood p202 teak)
      (surface-condition p202 verysmooth)
      (available p203)
      (colour p203 black)
      (wood p203 oak)
      (surface-condition p203 verysmooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 blue)
      (wood p204 mahogany)
      (surface-condition p204 verysmooth)
      (treatment p204 glazed)
      (available p205)
      (colour p205 green)
      (wood p205 walnut)
      (surface-condition p205 smooth)
      (treatment p205 glazed)
      (available p206)
      (surface-condition p206 smooth)
      (treatment p206 glazed)
      (available p207)
      (wood p207 oak)
      (treatment p207 varnished)
      (available p208)
      (colour p208 mauve)
      (surface-condition p208 verysmooth)
      (available p209)
      (wood p209 oak)
      (surface-condition p209 verysmooth)
      (available p210)
      (colour p210 mauve)
      (wood p210 mahogany)
      (available p211)
      (wood p211 cherry)
      (treatment p211 glazed)
      (available p212)
      (wood p212 beech)
      (surface-condition p212 smooth)
      (treatment p212 glazed)
      (available p213)
      (colour p213 natural)
      (wood p213 cherry)
      (surface-condition p213 smooth)
      (treatment p213 glazed)
      (available p214)
      (surface-condition p214 verysmooth)
      (treatment p214 glazed)
      (available p215)
      (colour p215 red)
      (wood p215 pine)
      (surface-condition p215 verysmooth)
      (available p216)
      (colour p216 natural)
      (wood p216 cherry)
      (surface-condition p216 smooth)
      (treatment p216 glazed)
      (available p217)
      (colour p217 natural)
      (surface-condition p217 verysmooth)
      (available p218)
      (colour p218 blue)
      (treatment p218 varnished)
      (available p219)
      (colour p219 blue)
      (wood p219 mahogany)
      (available p220)
      (colour p220 white)
      (treatment p220 varnished)
      (available p221)
      (surface-condition p221 smooth)
      (treatment p221 glazed)
      (available p222)
      (wood p222 cherry)
      (treatment p222 glazed)
      (available p223)
      (colour p223 mauve)
      (wood p223 teak)
      (treatment p223 varnished)
      (available p224)
      (colour p224 green)
      (wood p224 teak)
      (surface-condition p224 smooth)
      (treatment p224 varnished)
      (available p225)
      (colour p225 natural)
      (wood p225 cherry)
      (available p226)
      (wood p226 walnut)
      (surface-condition p226 verysmooth)
      (treatment p226 glazed)
      (available p227)
      (colour p227 red)
      (treatment p227 varnished)
      (available p228)
      (colour p228 natural)
      (wood p228 walnut)
      (available p229)
      (colour p229 mauve)
      (wood p229 beech)
      (treatment p229 glazed)
      (available p230)
      (colour p230 red)
      (surface-condition p230 verysmooth)
      (available p231)
      (colour p231 green)
      (wood p231 teak)
      (available p232)
      (colour p232 blue)
      (treatment p232 varnished)
      (available p233)
      (colour p233 red)
      (wood p233 pine)
      (surface-condition p233 smooth)
      (treatment p233 glazed)
      (available p234)
      (wood p234 pine)
      (surface-condition p234 verysmooth)
      (treatment p234 glazed)
      (available p235)
      (surface-condition p235 verysmooth)
      (treatment p235 glazed)
      (available p236)
      (surface-condition p236 smooth)
      (treatment p236 varnished)
      (available p237)
      (colour p237 natural)
      (treatment p237 varnished)
      (available p238)
      (colour p238 white)
      (surface-condition p238 smooth)
      (available p239)
      (colour p239 white)
      (treatment p239 glazed)
      (available p240)
      (colour p240 natural)
      (treatment p240 glazed)
      (available p241)
      (colour p241 red)
      (wood p241 oak)
      (surface-condition p241 smooth)
      (available p242)
      (wood p242 beech)
      (surface-condition p242 smooth)
      (available p243)
      (wood p243 oak)
      (treatment p243 varnished)
      (available p244)
      (wood p244 mahogany)
      (surface-condition p244 verysmooth)
      (treatment p244 varnished)
      (available p245)
      (colour p245 natural)
      (wood p245 walnut)
      (surface-condition p245 smooth)
      (treatment p245 varnished)
      (available p246)
      (colour p246 blue)
      (wood p246 beech)
      (surface-condition p246 verysmooth)
      (treatment p246 glazed)
      (available p247)
      (wood p247 mahogany)
      (treatment p247 varnished)
      (available p248)
      (colour p248 natural)
      (wood p248 walnut)
      (treatment p248 varnished)
      (available p249)
      (colour p249 blue)
      (surface-condition p249 verysmooth)
      (available p250)
      (colour p250 blue)
      (wood p250 oak)
      (surface-condition p250 verysmooth)
      (available p251)
      (surface-condition p251 smooth)
      (treatment p251 glazed)
      (available p252)
      (wood p252 cherry)
      (surface-condition p252 verysmooth)
      (available p253)
      (wood p253 oak)
      (surface-condition p253 verysmooth)
      (available p254)
      (colour p254 black)
      (surface-condition p254 smooth)
      (available p255)
      (colour p255 mauve)
      (wood p255 mahogany)
      (surface-condition p255 smooth)
      (treatment p255 glazed)
      (available p256)
      (colour p256 natural)
      (wood p256 walnut)
      (surface-condition p256 smooth)
      (treatment p256 varnished)
      (available p257)
      (colour p257 mauve)
      (wood p257 walnut)
      (surface-condition p257 verysmooth)
      (treatment p257 varnished)
      (available p258)
      (colour p258 white)
      (wood p258 teak)
      (surface-condition p258 verysmooth)
      (available p259)
      (colour p259 red)
      (wood p259 oak)
      (treatment p259 varnished)
      (available p260)
      (wood p260 mahogany)
      (surface-condition p260 verysmooth)
      (available p261)
      (colour p261 green)
      (wood p261 cherry)
      (surface-condition p261 smooth)
      (treatment p261 varnished)
      (available p262)
      (colour p262 black)
      (wood p262 oak)
      (treatment p262 glazed)
      (available p263)
      (colour p263 white)
      (wood p263 walnut)
      (surface-condition p263 smooth)
      (treatment p263 varnished)
      (available p264)
      (colour p264 white)
      (wood p264 teak)
      (surface-condition p264 verysmooth)
      (treatment p264 varnished)
      (available p265)
      (colour p265 red)
      (surface-condition p265 verysmooth)
    )
  )
  
)
