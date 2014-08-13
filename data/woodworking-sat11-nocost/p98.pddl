; woodworking task with 263 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 193317

(define (problem wood-prob-sat-98)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white black blue green red mauve - acolour
    oak cherry pine mahogany beech teak walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (available p2)
    (colour p2 blue)
    (wood p2 cherry)
    (surface-condition p2 verysmooth)
    (treatment p2 colourfragments)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (available p4)
    (colour p4 green)
    (wood p4 beech)
    (surface-condition p4 verysmooth)
    (treatment p4 colourfragments)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 black)
    (wood p7 pine)
    (surface-condition p7 smooth)
    (treatment p7 glazed)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (available p10)
    (colour p10 black)
    (wood p10 teak)
    (surface-condition p10 rough)
    (treatment p10 glazed)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 red)
    (wood p11 pine)
    (surface-condition p11 verysmooth)
    (treatment p11 varnished)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (available p13)
    (colour p13 natural)
    (wood p13 walnut)
    (surface-condition p13 smooth)
    (treatment p13 glazed)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 blue)
    (wood p17 pine)
    (surface-condition p17 smooth)
    (treatment p17 varnished)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (available p27)
    (colour p27 black)
    (wood p27 pine)
    (surface-condition p27 verysmooth)
    (treatment p27 glazed)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 mauve)
    (wood p31 teak)
    (surface-condition p31 verysmooth)
    (treatment p31 glazed)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 black)
    (wood p33 teak)
    (surface-condition p33 smooth)
    (treatment p33 colourfragments)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (available p36)
    (colour p36 white)
    (wood p36 beech)
    (surface-condition p36 verysmooth)
    (treatment p36 colourfragments)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 white)
    (wood p37 oak)
    (surface-condition p37 rough)
    (treatment p37 glazed)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (available p40)
    (colour p40 blue)
    (wood p40 oak)
    (surface-condition p40 smooth)
    (treatment p40 colourfragments)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (available p44)
    (colour p44 blue)
    (wood p44 mahogany)
    (surface-condition p44 smooth)
    (treatment p44 colourfragments)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (available p53)
    (colour p53 natural)
    (wood p53 oak)
    (surface-condition p53 rough)
    (treatment p53 glazed)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (available p55)
    (colour p55 green)
    (wood p55 cherry)
    (surface-condition p55 rough)
    (treatment p55 colourfragments)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (available p67)
    (colour p67 mauve)
    (wood p67 beech)
    (surface-condition p67 rough)
    (treatment p67 colourfragments)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (available p69)
    (colour p69 blue)
    (wood p69 walnut)
    (surface-condition p69 rough)
    (treatment p69 colourfragments)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (available p71)
    (colour p71 natural)
    (wood p71 teak)
    (surface-condition p71 smooth)
    (treatment p71 colourfragments)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (available p73)
    (colour p73 white)
    (wood p73 walnut)
    (surface-condition p73 verysmooth)
    (treatment p73 colourfragments)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (available p79)
    (colour p79 natural)
    (wood p79 walnut)
    (surface-condition p79 smooth)
    (treatment p79 varnished)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (available p86)
    (colour p86 red)
    (wood p86 oak)
    (surface-condition p86 smooth)
    (treatment p86 glazed)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (available p92)
    (colour p92 red)
    (wood p92 walnut)
    (surface-condition p92 verysmooth)
    (treatment p92 colourfragments)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (available p96)
    (colour p96 natural)
    (wood p96 mahogany)
    (surface-condition p96 verysmooth)
    (treatment p96 glazed)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (available p98)
    (colour p98 green)
    (wood p98 teak)
    (surface-condition p98 smooth)
    (treatment p98 varnished)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (available p105)
    (colour p105 white)
    (wood p105 mahogany)
    (surface-condition p105 smooth)
    (treatment p105 glazed)
    (goalsize p105 large)
    
    
    
    
    (available p106)
    (colour p106 black)
    (wood p106 pine)
    (surface-condition p106 rough)
    (treatment p106 varnished)
    (goalsize p106 small)
    
    
    
    
    (available p107)
    (colour p107 green)
    (wood p107 teak)
    (surface-condition p107 rough)
    (treatment p107 varnished)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (available p116)
    (colour p116 natural)
    (wood p116 pine)
    (surface-condition p116 rough)
    (treatment p116 glazed)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (available p118)
    (colour p118 black)
    (wood p118 teak)
    (surface-condition p118 rough)
    (treatment p118 colourfragments)
    (goalsize p118 medium)
    
    
    
    
    (available p119)
    (colour p119 black)
    (wood p119 walnut)
    (surface-condition p119 verysmooth)
    (treatment p119 colourfragments)
    (goalsize p119 large)
    
    
    
    
    (available p120)
    (colour p120 black)
    (wood p120 beech)
    (surface-condition p120 verysmooth)
    (treatment p120 varnished)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (available p122)
    (colour p122 white)
    (wood p122 beech)
    (surface-condition p122 rough)
    (treatment p122 varnished)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (available p124)
    (colour p124 mauve)
    (wood p124 cherry)
    (surface-condition p124 rough)
    (treatment p124 glazed)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (available p132)
    (colour p132 mauve)
    (wood p132 pine)
    (surface-condition p132 smooth)
    (treatment p132 varnished)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (available p135)
    (colour p135 green)
    (wood p135 teak)
    (surface-condition p135 verysmooth)
    (treatment p135 colourfragments)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (available p142)
    (colour p142 red)
    (wood p142 pine)
    (surface-condition p142 smooth)
    (treatment p142 colourfragments)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (available p144)
    (colour p144 natural)
    (wood p144 pine)
    (surface-condition p144 rough)
    (treatment p144 glazed)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (available p147)
    (colour p147 red)
    (wood p147 mahogany)
    (surface-condition p147 verysmooth)
    (treatment p147 varnished)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (available p151)
    (colour p151 white)
    (wood p151 teak)
    (surface-condition p151 rough)
    (treatment p151 glazed)
    (goalsize p151 small)
    
    
    
    
    (available p152)
    (colour p152 natural)
    (wood p152 beech)
    (surface-condition p152 smooth)
    (treatment p152 colourfragments)
    (goalsize p152 large)
    
    
    
    
    (available p153)
    (colour p153 white)
    (wood p153 beech)
    (surface-condition p153 smooth)
    (treatment p153 varnished)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (available p159)
    (colour p159 mauve)
    (wood p159 beech)
    (surface-condition p159 smooth)
    (treatment p159 glazed)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (available p170)
    (colour p170 green)
    (wood p170 teak)
    (surface-condition p170 verysmooth)
    (treatment p170 varnished)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (available p172)
    (colour p172 blue)
    (wood p172 pine)
    (surface-condition p172 smooth)
    (treatment p172 glazed)
    (goalsize p172 medium)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 small)
    
    
    
    
    (available p177)
    (colour p177 mauve)
    (wood p177 mahogany)
    (surface-condition p177 rough)
    (treatment p177 colourfragments)
    (goalsize p177 medium)
    
    
    
    
    (available p178)
    (colour p178 green)
    (wood p178 teak)
    (surface-condition p178 rough)
    (treatment p178 varnished)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (available p182)
    (colour p182 blue)
    (wood p182 pine)
    (surface-condition p182 rough)
    (treatment p182 varnished)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 large)
    
    
    
    
    (available p190)
    (colour p190 green)
    (wood p190 pine)
    (surface-condition p190 rough)
    (treatment p190 varnished)
    (goalsize p190 small)
    
    
    
    
    (unused p191)
    (goalsize p191 large)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 small)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 medium)
    
    
    
    
    (unused p202)
    (goalsize p202 large)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 medium)
    
    
    
    
    (available p205)
    (colour p205 white)
    (wood p205 cherry)
    (surface-condition p205 verysmooth)
    (treatment p205 glazed)
    (goalsize p205 large)
    
    
    
    
    (available p206)
    (colour p206 mauve)
    (wood p206 teak)
    (surface-condition p206 smooth)
    (treatment p206 colourfragments)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 small)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (unused p213)
    (goalsize p213 medium)
    
    
    
    
    (unused p214)
    (goalsize p214 large)
    
    
    
    
    (unused p215)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 small)
    
    
    
    
    (unused p219)
    (goalsize p219 small)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 small)
    
    
    
    
    (unused p226)
    (goalsize p226 large)
    
    
    
    
    (available p227)
    (colour p227 red)
    (wood p227 cherry)
    (surface-condition p227 verysmooth)
    (treatment p227 varnished)
    (goalsize p227 medium)
    
    
    
    
    (unused p228)
    (goalsize p228 medium)
    
    
    
    
    (unused p229)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (unused p231)
    (goalsize p231 small)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 large)
    
    
    
    
    (unused p234)
    (goalsize p234 small)
    
    
    
    
    (unused p235)
    (goalsize p235 small)
    
    
    
    
    (unused p236)
    (goalsize p236 large)
    
    
    
    
    (available p237)
    (colour p237 white)
    (wood p237 oak)
    (surface-condition p237 verysmooth)
    (treatment p237 colourfragments)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 small)
    
    
    
    
    (available p239)
    (colour p239 natural)
    (wood p239 oak)
    (surface-condition p239 smooth)
    (treatment p239 colourfragments)
    (goalsize p239 medium)
    
    
    
    
    (unused p240)
    (goalsize p240 medium)
    
    
    
    
    (unused p241)
    (goalsize p241 medium)
    
    
    
    
    (unused p242)
    (goalsize p242 medium)
    
    
    
    
    (unused p243)
    (goalsize p243 medium)
    
    
    
    
    (unused p244)
    (goalsize p244 large)
    
    
    
    
    (unused p245)
    (goalsize p245 medium)
    
    
    
    
    (unused p246)
    (goalsize p246 large)
    
    
    
    
    (available p247)
    (colour p247 natural)
    (wood p247 mahogany)
    (surface-condition p247 rough)
    (treatment p247 varnished)
    (goalsize p247 small)
    
    
    
    
    (unused p248)
    (goalsize p248 large)
    
    
    
    
    (available p249)
    (colour p249 natural)
    (wood p249 cherry)
    (surface-condition p249 smooth)
    (treatment p249 varnished)
    (goalsize p249 medium)
    
    
    
    
    (unused p250)
    (goalsize p250 medium)
    
    
    
    
    (unused p251)
    (goalsize p251 medium)
    
    
    
    
    (unused p252)
    (goalsize p252 large)
    
    
    
    
    (available p253)
    (colour p253 green)
    (wood p253 pine)
    (surface-condition p253 rough)
    (treatment p253 varnished)
    (goalsize p253 medium)
    
    
    
    
    (unused p254)
    (goalsize p254 large)
    
    
    
    
    (unused p255)
    (goalsize p255 medium)
    
    
    
    
    (unused p256)
    (goalsize p256 small)
    
    
    
    
    (available p257)
    (colour p257 white)
    (wood p257 pine)
    (surface-condition p257 verysmooth)
    (treatment p257 glazed)
    (goalsize p257 small)
    
    
    
    
    (unused p258)
    (goalsize p258 large)
    
    
    
    
    (unused p259)
    (goalsize p259 medium)
    
    
    
    
    (unused p260)
    (goalsize p260 medium)
    
    
    
    
    (unused p261)
    (goalsize p261 large)
    
    
    
    
    (unused p262)
    (goalsize p262 small)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s11)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s9)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s10)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s6)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s12)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s5)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s9)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 oak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s8)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s4)
    (wood b22 oak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s6)
    (wood b23 oak)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s11)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 oak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s6)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s11)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s6)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s10)
    (wood b31 pine)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s8)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s7)
    (wood b33 pine)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s9)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s6)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s6)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s9)
    (wood b38 walnut)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s9)
    (wood b39 walnut)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s10)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s7)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s8)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s10)
    (wood b43 walnut)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s8)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s9)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s7)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s7)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s7)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s9)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s5)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s9)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s9)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s6)
    (wood b54 beech)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s8)
    (wood b55 beech)
    (surface-condition b55 smooth)
    (available b55)
    (boardsize b56 s7)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s10)
    (wood b57 beech)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s8)
    (wood b58 beech)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s9)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s9)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s10)
    (wood b61 beech)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s8)
    (wood b62 beech)
    (surface-condition b62 smooth)
    (available b62)
    (boardsize b63 s3)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
  )
  (:goal
    (and
      (available p0)
      (wood p0 walnut)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 natural)
      (wood p1 oak)
      (available p2)
      (colour p2 black)
      (wood p2 cherry)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 black)
      (wood p4 beech)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (wood p5 teak)
      (surface-condition p5 verysmooth)
      (available p6)
      (wood p6 beech)
      (treatment p6 glazed)
      (available p7)
      (colour p7 green)
      (surface-condition p7 verysmooth)
      (available p8)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 red)
      (wood p9 mahogany)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 mauve)
      (surface-condition p10 smooth)
      (available p11)
      (wood p11 pine)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (wood p12 mahogany)
      (treatment p12 varnished)
      (available p13)
      (colour p13 black)
      (wood p13 walnut)
      (available p14)
      (colour p14 green)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 mauve)
      (wood p15 cherry)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 green)
      (treatment p16 glazed)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 mauve)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 blue)
      (wood p19 cherry)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 green)
      (wood p20 walnut)
      (surface-condition p20 smooth)
      (available p21)
      (colour p21 black)
      (treatment p21 glazed)
      (available p22)
      (colour p22 white)
      (wood p22 teak)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 mauve)
      (wood p23 pine)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (surface-condition p24 verysmooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 natural)
      (treatment p25 varnished)
      (available p26)
      (colour p26 green)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 natural)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (wood p28 beech)
      (treatment p28 varnished)
      (available p29)
      (colour p29 mauve)
      (wood p29 oak)
      (surface-condition p29 verysmooth)
      (treatment p29 varnished)
      (available p30)
      (wood p30 cherry)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 white)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 blue)
      (wood p32 walnut)
      (available p33)
      (wood p33 teak)
      (treatment p33 varnished)
      (available p34)
      (colour p34 blue)
      (treatment p34 glazed)
      (available p35)
      (colour p35 black)
      (wood p35 walnut)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 mauve)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 white)
      (wood p38 cherry)
      (surface-condition p38 verysmooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 blue)
      (wood p39 walnut)
      (surface-condition p39 verysmooth)
      (treatment p39 varnished)
      (available p40)
      (wood p40 oak)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 blue)
      (wood p41 pine)
      (available p42)
      (colour p42 red)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 natural)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (wood p44 mahogany)
      (treatment p44 varnished)
      (available p45)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 mauve)
      (treatment p46 varnished)
      (available p47)
      (colour p47 blue)
      (wood p47 teak)
      (available p48)
      (colour p48 black)
      (wood p48 beech)
      (treatment p48 glazed)
      (available p49)
      (colour p49 natural)
      (treatment p49 glazed)
      (available p50)
      (surface-condition p50 smooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 blue)
      (treatment p51 glazed)
      (available p52)
      (colour p52 green)
      (wood p52 beech)
      (available p53)
      (colour p53 mauve)
      (wood p53 oak)
      (surface-condition p53 verysmooth)
      (available p54)
      (colour p54 mauve)
      (wood p54 oak)
      (surface-condition p54 smooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 natural)
      (wood p55 cherry)
      (available p56)
      (wood p56 walnut)
      (surface-condition p56 smooth)
      (available p57)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (wood p58 beech)
      (surface-condition p58 smooth)
      (available p59)
      (wood p59 teak)
      (treatment p59 glazed)
      (available p60)
      (colour p60 natural)
      (wood p60 beech)
      (surface-condition p60 smooth)
      (available p61)
      (wood p61 oak)
      (surface-condition p61 smooth)
      (available p62)
      (colour p62 white)
      (wood p62 beech)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (wood p63 oak)
      (treatment p63 varnished)
      (available p64)
      (colour p64 white)
      (wood p64 teak)
      (surface-condition p64 verysmooth)
      (treatment p64 varnished)
      (available p65)
      (wood p65 oak)
      (treatment p65 glazed)
      (available p66)
      (wood p66 walnut)
      (treatment p66 varnished)
      (available p67)
      (colour p67 white)
      (treatment p67 glazed)
      (available p68)
      (colour p68 white)
      (wood p68 beech)
      (surface-condition p68 verysmooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 natural)
      (wood p69 walnut)
      (available p70)
      (colour p70 green)
      (wood p70 oak)
      (surface-condition p70 smooth)
      (available p71)
      (colour p71 green)
      (wood p71 teak)
      (available p72)
      (colour p72 black)
      (wood p72 walnut)
      (available p73)
      (colour p73 black)
      (surface-condition p73 verysmooth)
      (treatment p73 glazed)
      (available p74)
      (surface-condition p74 verysmooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 blue)
      (wood p75 beech)
      (surface-condition p75 smooth)
      (treatment p75 glazed)
      (available p76)
      (colour p76 blue)
      (wood p76 cherry)
      (surface-condition p76 smooth)
      (available p77)
      (wood p77 oak)
      (treatment p77 varnished)
      (available p78)
      (colour p78 black)
      (wood p78 pine)
      (surface-condition p78 smooth)
      (treatment p78 varnished)
      (available p79)
      (surface-condition p79 verysmooth)
      (treatment p79 varnished)
      (available p80)
      (colour p80 blue)
      (wood p80 oak)
      (surface-condition p80 verysmooth)
      (treatment p80 glazed)
      (available p81)
      (colour p81 green)
      (wood p81 beech)
      (treatment p81 glazed)
      (available p82)
      (colour p82 green)
      (wood p82 mahogany)
      (surface-condition p82 smooth)
      (treatment p82 glazed)
      (available p83)
      (wood p83 beech)
      (treatment p83 varnished)
      (available p84)
      (wood p84 oak)
      (treatment p84 glazed)
      (available p85)
      (wood p85 cherry)
      (surface-condition p85 smooth)
      (treatment p85 varnished)
      (available p86)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 green)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 black)
      (wood p88 mahogany)
      (surface-condition p88 smooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 mauve)
      (surface-condition p89 smooth)
      (available p90)
      (colour p90 green)
      (wood p90 walnut)
      (surface-condition p90 verysmooth)
      (treatment p90 glazed)
      (available p91)
      (colour p91 green)
      (wood p91 teak)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 white)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (wood p93 oak)
      (surface-condition p93 verysmooth)
      (treatment p93 varnished)
      (available p94)
      (wood p94 walnut)
      (surface-condition p94 smooth)
      (available p95)
      (colour p95 black)
      (treatment p95 glazed)
      (available p96)
      (colour p96 blue)
      (wood p96 mahogany)
      (available p97)
      (colour p97 green)
      (wood p97 cherry)
      (surface-condition p97 verysmooth)
      (treatment p97 varnished)
      (available p98)
      (colour p98 red)
      (surface-condition p98 smooth)
      (available p99)
      (wood p99 pine)
      (surface-condition p99 smooth)
      (available p100)
      (wood p100 pine)
      (surface-condition p100 verysmooth)
      (available p101)
      (colour p101 red)
      (wood p101 pine)
      (surface-condition p101 verysmooth)
      (treatment p101 varnished)
      (available p102)
      (colour p102 red)
      (treatment p102 varnished)
      (available p103)
      (surface-condition p103 verysmooth)
      (treatment p103 varnished)
      (available p104)
      (surface-condition p104 verysmooth)
      (treatment p104 varnished)
      (available p105)
      (wood p105 mahogany)
      (surface-condition p105 verysmooth)
      (treatment p105 varnished)
      (available p106)
      (wood p106 pine)
      (treatment p106 glazed)
      (available p107)
      (colour p107 white)
      (surface-condition p107 verysmooth)
      (available p108)
      (surface-condition p108 smooth)
      (treatment p108 varnished)
      (available p109)
      (wood p109 pine)
      (treatment p109 varnished)
      (available p110)
      (colour p110 green)
      (surface-condition p110 verysmooth)
      (treatment p110 glazed)
      (available p111)
      (surface-condition p111 verysmooth)
      (treatment p111 varnished)
      (available p112)
      (wood p112 teak)
      (treatment p112 glazed)
      (available p113)
      (colour p113 mauve)
      (treatment p113 glazed)
      (available p114)
      (colour p114 red)
      (wood p114 cherry)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (colour p115 black)
      (surface-condition p115 verysmooth)
      (treatment p115 glazed)
      (available p116)
      (colour p116 white)
      (surface-condition p116 verysmooth)
      (treatment p116 varnished)
      (available p117)
      (colour p117 mauve)
      (wood p117 walnut)
      (available p118)
      (wood p118 teak)
      (surface-condition p118 smooth)
      (available p119)
      (wood p119 walnut)
      (surface-condition p119 smooth)
      (available p120)
      (colour p120 natural)
      (surface-condition p120 verysmooth)
      (available p121)
      (colour p121 black)
      (wood p121 beech)
      (treatment p121 varnished)
      (available p122)
      (colour p122 mauve)
      (surface-condition p122 smooth)
      (available p123)
      (wood p123 oak)
      (surface-condition p123 verysmooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 blue)
      (surface-condition p124 verysmooth)
      (treatment p124 glazed)
      (available p125)
      (colour p125 mauve)
      (wood p125 cherry)
      (surface-condition p125 verysmooth)
      (treatment p125 glazed)
      (available p126)
      (colour p126 natural)
      (treatment p126 glazed)
      (available p127)
      (colour p127 black)
      (wood p127 pine)
      (available p128)
      (colour p128 natural)
      (wood p128 mahogany)
      (surface-condition p128 smooth)
      (treatment p128 glazed)
      (available p129)
      (colour p129 mauve)
      (surface-condition p129 verysmooth)
      (treatment p129 varnished)
      (available p130)
      (wood p130 cherry)
      (surface-condition p130 verysmooth)
      (treatment p130 varnished)
      (available p131)
      (surface-condition p131 verysmooth)
      (treatment p131 glazed)
      (available p132)
      (colour p132 white)
      (treatment p132 glazed)
      (available p133)
      (colour p133 natural)
      (treatment p133 glazed)
      (available p134)
      (colour p134 black)
      (surface-condition p134 smooth)
      (available p135)
      (colour p135 mauve)
      (wood p135 teak)
      (treatment p135 glazed)
      (available p136)
      (wood p136 walnut)
      (treatment p136 glazed)
      (available p137)
      (colour p137 white)
      (surface-condition p137 smooth)
      (treatment p137 varnished)
      (available p138)
      (colour p138 mauve)
      (wood p138 walnut)
      (surface-condition p138 verysmooth)
      (available p139)
      (colour p139 black)
      (wood p139 cherry)
      (surface-condition p139 smooth)
      (treatment p139 varnished)
      (available p140)
      (colour p140 mauve)
      (treatment p140 glazed)
      (available p141)
      (colour p141 red)
      (wood p141 beech)
      (available p142)
      (colour p142 green)
      (wood p142 pine)
      (treatment p142 glazed)
      (available p143)
      (colour p143 white)
      (treatment p143 glazed)
      (available p144)
      (colour p144 mauve)
      (treatment p144 glazed)
      (available p145)
      (wood p145 cherry)
      (surface-condition p145 verysmooth)
      (available p146)
      (wood p146 cherry)
      (surface-condition p146 smooth)
      (available p147)
      (wood p147 mahogany)
      (treatment p147 glazed)
      (available p148)
      (colour p148 natural)
      (surface-condition p148 smooth)
      (available p149)
      (colour p149 red)
      (wood p149 beech)
      (surface-condition p149 verysmooth)
      (available p150)
      (colour p150 red)
      (wood p150 oak)
      (surface-condition p150 smooth)
      (available p151)
      (colour p151 green)
      (wood p151 teak)
      (available p152)
      (wood p152 beech)
      (treatment p152 varnished)
      (available p153)
      (colour p153 mauve)
      (wood p153 beech)
      (available p154)
      (surface-condition p154 smooth)
      (treatment p154 glazed)
      (available p155)
      (wood p155 oak)
      (surface-condition p155 verysmooth)
      (available p156)
      (wood p156 walnut)
      (surface-condition p156 verysmooth)
      (available p157)
      (wood p157 cherry)
      (surface-condition p157 smooth)
      (available p158)
      (colour p158 natural)
      (surface-condition p158 smooth)
      (treatment p158 varnished)
      (available p159)
      (colour p159 green)
      (treatment p159 glazed)
      (available p160)
      (wood p160 oak)
      (surface-condition p160 verysmooth)
      (available p161)
      (colour p161 natural)
      (treatment p161 varnished)
      (available p162)
      (wood p162 teak)
      (treatment p162 glazed)
      (available p163)
      (wood p163 mahogany)
      (surface-condition p163 verysmooth)
      (available p164)
      (wood p164 cherry)
      (surface-condition p164 verysmooth)
      (available p165)
      (surface-condition p165 smooth)
      (treatment p165 varnished)
      (available p166)
      (colour p166 black)
      (treatment p166 varnished)
      (available p167)
      (colour p167 blue)
      (surface-condition p167 verysmooth)
      (treatment p167 varnished)
      (available p168)
      (colour p168 white)
      (wood p168 cherry)
      (available p169)
      (colour p169 red)
      (surface-condition p169 smooth)
      (available p170)
      (surface-condition p170 smooth)
      (treatment p170 varnished)
      (available p171)
      (wood p171 oak)
      (surface-condition p171 verysmooth)
      (treatment p171 varnished)
      (available p172)
      (wood p172 pine)
      (surface-condition p172 verysmooth)
      (treatment p172 varnished)
      (available p173)
      (colour p173 black)
      (wood p173 oak)
      (surface-condition p173 verysmooth)
      (treatment p173 glazed)
      (available p174)
      (wood p174 walnut)
      (surface-condition p174 verysmooth)
      (treatment p174 varnished)
      (available p175)
      (wood p175 walnut)
      (surface-condition p175 smooth)
      (treatment p175 varnished)
      (available p176)
      (colour p176 green)
      (wood p176 mahogany)
      (available p177)
      (colour p177 white)
      (wood p177 mahogany)
      (surface-condition p177 smooth)
      (treatment p177 varnished)
      (available p178)
      (surface-condition p178 smooth)
      (treatment p178 varnished)
      (available p179)
      (colour p179 white)
      (wood p179 oak)
      (available p180)
      (colour p180 blue)
      (wood p180 pine)
      (surface-condition p180 verysmooth)
      (treatment p180 varnished)
      (available p181)
      (colour p181 green)
      (wood p181 beech)
      (surface-condition p181 verysmooth)
      (treatment p181 glazed)
      (available p182)
      (wood p182 pine)
      (treatment p182 glazed)
      (available p183)
      (surface-condition p183 verysmooth)
      (treatment p183 varnished)
      (available p184)
      (colour p184 green)
      (wood p184 teak)
      (surface-condition p184 verysmooth)
      (treatment p184 glazed)
      (available p185)
      (colour p185 green)
      (surface-condition p185 smooth)
      (available p186)
      (colour p186 black)
      (wood p186 walnut)
      (surface-condition p186 smooth)
      (treatment p186 varnished)
      (available p187)
      (colour p187 green)
      (wood p187 teak)
      (surface-condition p187 verysmooth)
      (treatment p187 glazed)
      (available p188)
      (colour p188 green)
      (surface-condition p188 verysmooth)
      (available p189)
      (surface-condition p189 verysmooth)
      (treatment p189 varnished)
      (available p190)
      (colour p190 natural)
      (wood p190 pine)
      (available p191)
      (surface-condition p191 smooth)
      (treatment p191 varnished)
      (available p192)
      (surface-condition p192 verysmooth)
      (treatment p192 glazed)
      (available p193)
      (colour p193 blue)
      (wood p193 mahogany)
      (available p194)
      (surface-condition p194 verysmooth)
      (treatment p194 glazed)
      (available p195)
      (colour p195 natural)
      (wood p195 oak)
      (treatment p195 varnished)
      (available p196)
      (colour p196 white)
      (wood p196 beech)
      (surface-condition p196 verysmooth)
      (treatment p196 varnished)
      (available p197)
      (colour p197 red)
      (treatment p197 varnished)
      (available p198)
      (wood p198 walnut)
      (treatment p198 varnished)
      (available p199)
      (colour p199 mauve)
      (wood p199 walnut)
      (available p200)
      (colour p200 green)
      (wood p200 beech)
      (surface-condition p200 verysmooth)
      (treatment p200 varnished)
      (available p201)
      (colour p201 white)
      (wood p201 walnut)
      (available p202)
      (colour p202 white)
      (surface-condition p202 smooth)
      (treatment p202 varnished)
      (available p203)
      (colour p203 blue)
      (wood p203 oak)
      (surface-condition p203 smooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 white)
      (wood p204 cherry)
      (surface-condition p204 verysmooth)
      (treatment p204 glazed)
      (available p205)
      (colour p205 red)
      (wood p205 cherry)
      (surface-condition p205 smooth)
      (treatment p205 varnished)
      (available p206)
      (wood p206 teak)
      (treatment p206 glazed)
      (available p207)
      (colour p207 blue)
      (wood p207 beech)
      (available p208)
      (colour p208 blue)
      (treatment p208 varnished)
      (available p209)
      (colour p209 green)
      (wood p209 cherry)
      (surface-condition p209 verysmooth)
      (treatment p209 glazed)
      (available p210)
      (colour p210 mauve)
      (surface-condition p210 smooth)
      (available p211)
      (colour p211 natural)
      (wood p211 mahogany)
      (surface-condition p211 smooth)
      (available p212)
      (colour p212 white)
      (wood p212 cherry)
      (surface-condition p212 verysmooth)
      (treatment p212 varnished)
      (available p213)
      (colour p213 blue)
      (wood p213 cherry)
      (available p214)
      (colour p214 natural)
      (surface-condition p214 verysmooth)
      (treatment p214 glazed)
      (available p215)
      (colour p215 mauve)
      (treatment p215 varnished)
      (available p216)
      (colour p216 blue)
      (treatment p216 glazed)
      (available p217)
      (colour p217 black)
      (treatment p217 varnished)
      (available p218)
      (colour p218 white)
      (surface-condition p218 verysmooth)
      (treatment p218 varnished)
      (available p219)
      (colour p219 black)
      (wood p219 oak)
      (surface-condition p219 smooth)
      (treatment p219 varnished)
      (available p220)
      (colour p220 green)
      (surface-condition p220 verysmooth)
      (treatment p220 glazed)
      (available p221)
      (colour p221 white)
      (treatment p221 varnished)
      (available p222)
      (colour p222 black)
      (treatment p222 glazed)
      (available p223)
      (colour p223 natural)
      (surface-condition p223 smooth)
      (treatment p223 varnished)
      (available p224)
      (wood p224 oak)
      (treatment p224 glazed)
      (available p225)
      (wood p225 beech)
      (treatment p225 glazed)
      (available p226)
      (colour p226 red)
      (treatment p226 varnished)
      (available p227)
      (surface-condition p227 verysmooth)
      (treatment p227 glazed)
      (available p228)
      (surface-condition p228 verysmooth)
      (treatment p228 glazed)
      (available p229)
      (colour p229 red)
      (wood p229 beech)
      (available p230)
      (colour p230 blue)
      (treatment p230 glazed)
      (available p231)
      (wood p231 beech)
      (treatment p231 glazed)
      (available p232)
      (wood p232 cherry)
      (surface-condition p232 smooth)
      (available p233)
      (surface-condition p233 verysmooth)
      (treatment p233 glazed)
      (available p234)
      (wood p234 oak)
      (treatment p234 varnished)
      (available p235)
      (wood p235 oak)
      (treatment p235 glazed)
      (available p236)
      (colour p236 green)
      (surface-condition p236 verysmooth)
      (available p237)
      (colour p237 blue)
      (wood p237 oak)
      (available p238)
      (colour p238 white)
      (wood p238 cherry)
      (surface-condition p238 verysmooth)
      (treatment p238 varnished)
      (available p239)
      (wood p239 oak)
      (treatment p239 varnished)
      (available p240)
      (colour p240 green)
      (wood p240 pine)
      (surface-condition p240 verysmooth)
      (treatment p240 varnished)
      (available p241)
      (surface-condition p241 verysmooth)
      (treatment p241 varnished)
      (available p242)
      (wood p242 oak)
      (surface-condition p242 verysmooth)
      (available p243)
      (colour p243 red)
      (treatment p243 varnished)
      (available p244)
      (wood p244 mahogany)
      (treatment p244 glazed)
      (available p245)
      (wood p245 mahogany)
      (surface-condition p245 verysmooth)
      (treatment p245 glazed)
      (available p246)
      (colour p246 green)
      (wood p246 mahogany)
      (surface-condition p246 verysmooth)
      (treatment p246 glazed)
      (available p247)
      (colour p247 blue)
      (treatment p247 varnished)
      (available p248)
      (colour p248 blue)
      (wood p248 oak)
      (available p249)
      (colour p249 green)
      (wood p249 cherry)
      (surface-condition p249 verysmooth)
      (treatment p249 glazed)
      (available p250)
      (colour p250 black)
      (treatment p250 glazed)
      (available p251)
      (wood p251 beech)
      (surface-condition p251 verysmooth)
      (treatment p251 varnished)
      (available p252)
      (colour p252 natural)
      (wood p252 beech)
      (surface-condition p252 smooth)
      (treatment p252 varnished)
      (available p253)
      (colour p253 natural)
      (wood p253 pine)
      (surface-condition p253 verysmooth)
      (treatment p253 glazed)
      (available p254)
      (colour p254 mauve)
      (treatment p254 glazed)
      (available p255)
      (wood p255 beech)
      (surface-condition p255 smooth)
      (treatment p255 varnished)
      (available p256)
      (wood p256 cherry)
      (treatment p256 varnished)
      (available p257)
      (colour p257 green)
      (wood p257 pine)
      (surface-condition p257 smooth)
      (available p258)
      (surface-condition p258 smooth)
      (treatment p258 glazed)
      (available p259)
      (colour p259 blue)
      (treatment p259 glazed)
      (available p260)
      (colour p260 mauve)
      (wood p260 walnut)
      (available p261)
      (colour p261 green)
      (wood p261 walnut)
      (surface-condition p261 verysmooth)
      (available p262)
      (colour p262 red)
      (wood p262 oak)
      (treatment p262 glazed)
    )
  )
  
)
