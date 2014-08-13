; woodworking task with 260 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 286583

(define (problem wood-prob-sat-191)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white blue green mauve red black - acolour
    oak walnut pine beech mahogany cherry teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 mauve)
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
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 black)
    (wood p11 mahogany)
    (surface-condition p11 smooth)
    (treatment p11 colourfragments)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 red)
    (wood p15 walnut)
    (surface-condition p15 verysmooth)
    (treatment p15 colourfragments)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 red)
    (wood p16 pine)
    (surface-condition p16 rough)
    (treatment p16 glazed)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 blue)
    (wood p19 teak)
    (surface-condition p19 rough)
    (treatment p19 colourfragments)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 blue)
    (wood p22 beech)
    (surface-condition p22 smooth)
    (treatment p22 colourfragments)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 green)
    (wood p26 walnut)
    (surface-condition p26 smooth)
    (treatment p26 varnished)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 black)
    (wood p31 beech)
    (surface-condition p31 rough)
    (treatment p31 glazed)
    (goalsize p31 large)
    
    
    
    
    (available p32)
    (colour p32 blue)
    (wood p32 beech)
    (surface-condition p32 rough)
    (treatment p32 colourfragments)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (available p37)
    (colour p37 green)
    (wood p37 walnut)
    (surface-condition p37 smooth)
    (treatment p37 glazed)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 blue)
    (wood p38 mahogany)
    (surface-condition p38 verysmooth)
    (treatment p38 varnished)
    (goalsize p38 small)
    
    
    
    
    (available p39)
    (colour p39 blue)
    (wood p39 walnut)
    (surface-condition p39 smooth)
    (treatment p39 varnished)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (available p48)
    (colour p48 natural)
    (wood p48 beech)
    (surface-condition p48 rough)
    (treatment p48 colourfragments)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (available p50)
    (colour p50 black)
    (wood p50 beech)
    (surface-condition p50 rough)
    (treatment p50 varnished)
    (goalsize p50 medium)
    
    
    
    
    (available p51)
    (colour p51 white)
    (wood p51 pine)
    (surface-condition p51 verysmooth)
    (treatment p51 varnished)
    (goalsize p51 medium)
    
    
    
    
    (available p52)
    (colour p52 white)
    (wood p52 walnut)
    (surface-condition p52 rough)
    (treatment p52 glazed)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 blue)
    (wood p65 walnut)
    (surface-condition p65 rough)
    (treatment p65 glazed)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 blue)
    (wood p67 beech)
    (surface-condition p67 smooth)
    (treatment p67 varnished)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (available p74)
    (colour p74 natural)
    (wood p74 walnut)
    (surface-condition p74 smooth)
    (treatment p74 colourfragments)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (available p92)
    (colour p92 black)
    (wood p92 oak)
    (surface-condition p92 smooth)
    (treatment p92 colourfragments)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (available p98)
    (colour p98 red)
    (wood p98 cherry)
    (surface-condition p98 smooth)
    (treatment p98 varnished)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (available p101)
    (colour p101 green)
    (wood p101 teak)
    (surface-condition p101 verysmooth)
    (treatment p101 varnished)
    (goalsize p101 large)
    
    
    
    
    (available p102)
    (colour p102 natural)
    (wood p102 mahogany)
    (surface-condition p102 rough)
    (treatment p102 varnished)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (available p108)
    (colour p108 green)
    (wood p108 beech)
    (surface-condition p108 rough)
    (treatment p108 colourfragments)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (available p114)
    (colour p114 white)
    (wood p114 pine)
    (surface-condition p114 verysmooth)
    (treatment p114 glazed)
    (goalsize p114 large)
    
    
    
    
    (available p115)
    (colour p115 natural)
    (wood p115 oak)
    (surface-condition p115 verysmooth)
    (treatment p115 varnished)
    (goalsize p115 small)
    
    
    
    
    (available p116)
    (colour p116 mauve)
    (wood p116 walnut)
    (surface-condition p116 verysmooth)
    (treatment p116 colourfragments)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (available p133)
    (colour p133 red)
    (wood p133 mahogany)
    (surface-condition p133 rough)
    (treatment p133 varnished)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (available p166)
    (colour p166 mauve)
    (wood p166 beech)
    (surface-condition p166 verysmooth)
    (treatment p166 glazed)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 medium)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (available p169)
    (colour p169 natural)
    (wood p169 mahogany)
    (surface-condition p169 verysmooth)
    (treatment p169 varnished)
    (goalsize p169 large)
    
    
    
    
    (available p170)
    (colour p170 green)
    (wood p170 mahogany)
    (surface-condition p170 rough)
    (treatment p170 colourfragments)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (available p174)
    (colour p174 red)
    (wood p174 mahogany)
    (surface-condition p174 rough)
    (treatment p174 varnished)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (available p179)
    (colour p179 blue)
    (wood p179 beech)
    (surface-condition p179 rough)
    (treatment p179 colourfragments)
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
    (goalsize p184 medium)
    
    
    
    
    (available p185)
    (colour p185 blue)
    (wood p185 walnut)
    (surface-condition p185 rough)
    (treatment p185 glazed)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (available p187)
    (colour p187 white)
    (wood p187 teak)
    (surface-condition p187 smooth)
    (treatment p187 glazed)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (available p189)
    (colour p189 natural)
    (wood p189 oak)
    (surface-condition p189 rough)
    (treatment p189 varnished)
    (goalsize p189 large)
    
    
    
    
    (available p190)
    (colour p190 natural)
    (wood p190 mahogany)
    (surface-condition p190 smooth)
    (treatment p190 varnished)
    (goalsize p190 large)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (available p192)
    (colour p192 black)
    (wood p192 pine)
    (surface-condition p192 rough)
    (treatment p192 varnished)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (available p198)
    (colour p198 natural)
    (wood p198 mahogany)
    (surface-condition p198 rough)
    (treatment p198 colourfragments)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (available p200)
    (colour p200 blue)
    (wood p200 walnut)
    (surface-condition p200 smooth)
    (treatment p200 colourfragments)
    (goalsize p200 medium)
    
    
    
    
    (available p201)
    (colour p201 red)
    (wood p201 mahogany)
    (surface-condition p201 verysmooth)
    (treatment p201 varnished)
    (goalsize p201 medium)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 medium)
    
    
    
    
    (unused p204)
    (goalsize p204 small)
    
    
    
    
    (unused p205)
    (goalsize p205 large)
    
    
    
    
    (available p206)
    (colour p206 mauve)
    (wood p206 pine)
    (surface-condition p206 verysmooth)
    (treatment p206 glazed)
    (goalsize p206 medium)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 small)
    
    
    
    
    (available p209)
    (colour p209 green)
    (wood p209 teak)
    (surface-condition p209 smooth)
    (treatment p209 colourfragments)
    (goalsize p209 large)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 medium)
    
    
    
    
    (unused p212)
    (goalsize p212 small)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (unused p215)
    (goalsize p215 large)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (available p217)
    (colour p217 blue)
    (wood p217 walnut)
    (surface-condition p217 verysmooth)
    (treatment p217 glazed)
    (goalsize p217 medium)
    
    
    
    
    (unused p218)
    (goalsize p218 small)
    
    
    
    
    (unused p219)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 small)
    
    
    
    
    (available p221)
    (colour p221 black)
    (wood p221 teak)
    (surface-condition p221 rough)
    (treatment p221 glazed)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (available p224)
    (colour p224 natural)
    (wood p224 mahogany)
    (surface-condition p224 verysmooth)
    (treatment p224 colourfragments)
    (goalsize p224 small)
    
    
    
    
    (unused p225)
    (goalsize p225 medium)
    
    
    
    
    (unused p226)
    (goalsize p226 small)
    
    
    
    
    (unused p227)
    (goalsize p227 small)
    
    
    
    
    (unused p228)
    (goalsize p228 large)
    
    
    
    
    (unused p229)
    (goalsize p229 small)
    
    
    
    
    (unused p230)
    (goalsize p230 large)
    
    
    
    
    (unused p231)
    (goalsize p231 medium)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 small)
    
    
    
    
    (unused p234)
    (goalsize p234 small)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (available p236)
    (colour p236 green)
    (wood p236 beech)
    (surface-condition p236 rough)
    (treatment p236 varnished)
    (goalsize p236 medium)
    
    
    
    
    (available p237)
    (colour p237 natural)
    (wood p237 walnut)
    (surface-condition p237 smooth)
    (treatment p237 colourfragments)
    (goalsize p237 medium)
    
    
    
    
    (unused p238)
    (goalsize p238 large)
    
    
    
    
    (unused p239)
    (goalsize p239 large)
    
    
    
    
    (available p240)
    (colour p240 blue)
    (wood p240 oak)
    (surface-condition p240 rough)
    (treatment p240 colourfragments)
    (goalsize p240 large)
    
    
    
    
    (available p241)
    (colour p241 blue)
    (wood p241 cherry)
    (surface-condition p241 smooth)
    (treatment p241 colourfragments)
    (goalsize p241 medium)
    
    
    
    
    (unused p242)
    (goalsize p242 large)
    
    
    
    
    (unused p243)
    (goalsize p243 large)
    
    
    
    
    (unused p244)
    (goalsize p244 small)
    
    
    
    
    (available p245)
    (colour p245 black)
    (wood p245 cherry)
    (surface-condition p245 rough)
    (treatment p245 colourfragments)
    (goalsize p245 large)
    
    
    
    
    (available p246)
    (colour p246 natural)
    (wood p246 teak)
    (surface-condition p246 smooth)
    (treatment p246 varnished)
    (goalsize p246 medium)
    
    
    
    
    (unused p247)
    (goalsize p247 small)
    
    
    
    
    (unused p248)
    (goalsize p248 medium)
    
    
    
    
    (available p249)
    (colour p249 red)
    (wood p249 oak)
    (surface-condition p249 rough)
    (treatment p249 varnished)
    (goalsize p249 small)
    
    
    
    
    (available p250)
    (colour p250 natural)
    (wood p250 walnut)
    (surface-condition p250 rough)
    (treatment p250 varnished)
    (goalsize p250 small)
    
    
    
    
    (unused p251)
    (goalsize p251 small)
    
    
    
    
    (unused p252)
    (goalsize p252 large)
    
    
    
    
    (unused p253)
    (goalsize p253 large)
    
    
    
    
    (available p254)
    (colour p254 mauve)
    (wood p254 cherry)
    (surface-condition p254 rough)
    (treatment p254 glazed)
    (goalsize p254 small)
    
    
    
    
    (unused p255)
    (goalsize p255 small)
    
    
    
    
    (unused p256)
    (goalsize p256 medium)
    
    
    
    
    (unused p257)
    (goalsize p257 small)
    
    
    
    
    (unused p258)
    (goalsize p258 large)
    
    
    
    
    (unused p259)
    (goalsize p259 small)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s5)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s11)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s10)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s5)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
    (wood b8 cherry)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s8)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 cherry)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s4)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s10)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s9)
    (wood b15 mahogany)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s10)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 mahogany)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s11)
    (wood b20 mahogany)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s6)
    (wood b21 mahogany)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s5)
    (wood b22 mahogany)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s3)
    (wood b23 mahogany)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s8)
    (wood b25 oak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s10)
    (wood b26 oak)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s6)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s7)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s10)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s10)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s10)
    (wood b31 pine)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s10)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s7)
    (wood b35 pine)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s6)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s7)
    (wood b37 pine)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s8)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s8)
    (wood b39 pine)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s9)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s9)
    (wood b41 pine)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s5)
    (wood b42 pine)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s4)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s9)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s6)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s8)
    (wood b46 walnut)
    (surface-condition b46 smooth)
    (available b46)
    (boardsize b47 s8)
    (wood b47 walnut)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s8)
    (wood b48 walnut)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s8)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s8)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s9)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s8)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s8)
    (wood b53 teak)
    (surface-condition b53 smooth)
    (available b53)
    (boardsize b54 s6)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s8)
    (wood b55 teak)
    (surface-condition b55 smooth)
    (available b55)
    (boardsize b56 s8)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s9)
    (wood b57 teak)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s10)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s11)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s8)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s7)
    (wood b61 teak)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s9)
    (wood b62 teak)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s3)
    (wood b63 teak)
    (surface-condition b63 smooth)
    (available b63)
    (boardsize b64 s8)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s6)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s6)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s8)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s7)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s9)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s8)
    (wood b70 beech)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s6)
    (wood b71 beech)
    (surface-condition b71 smooth)
    (available b71)
    (boardsize b72 s8)
    (wood b72 beech)
    (surface-condition b72 smooth)
    (available b72)
    (boardsize b73 s2)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 pine)
      (treatment p0 glazed)
      (available p1)
      (colour p1 white)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 black)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 mauve)
      (wood p3 mahogany)
      (available p4)
      (wood p4 beech)
      (treatment p4 varnished)
      (available p5)
      (colour p5 red)
      (wood p5 mahogany)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 natural)
      (treatment p6 glazed)
      (available p7)
      (wood p7 teak)
      (treatment p7 glazed)
      (available p8)
      (wood p8 walnut)
      (treatment p8 varnished)
      (available p9)
      (wood p9 cherry)
      (treatment p9 glazed)
      (available p10)
      (wood p10 teak)
      (treatment p10 glazed)
      (available p11)
      (wood p11 mahogany)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 red)
      (wood p12 beech)
      (surface-condition p12 smooth)
      (available p13)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 blue)
      (wood p14 cherry)
      (surface-condition p14 verysmooth)
      (available p15)
      (wood p15 walnut)
      (treatment p15 glazed)
      (available p16)
      (colour p16 blue)
      (treatment p16 varnished)
      (available p17)
      (colour p17 mauve)
      (wood p17 beech)
      (surface-condition p17 verysmooth)
      (available p18)
      (colour p18 mauve)
      (wood p18 cherry)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 red)
      (wood p19 teak)
      (available p20)
      (colour p20 white)
      (surface-condition p20 smooth)
      (available p21)
      (colour p21 black)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 black)
      (wood p23 pine)
      (surface-condition p23 smooth)
      (available p24)
      (wood p24 mahogany)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 white)
      (wood p25 cherry)
      (treatment p25 varnished)
      (available p26)
      (colour p26 blue)
      (wood p26 walnut)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (wood p27 teak)
      (surface-condition p27 verysmooth)
      (available p28)
      (colour p28 red)
      (wood p28 teak)
      (available p29)
      (colour p29 black)
      (wood p29 cherry)
      (treatment p29 glazed)
      (available p30)
      (colour p30 mauve)
      (surface-condition p30 smooth)
      (available p31)
      (wood p31 beech)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 white)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (wood p33 mahogany)
      (surface-condition p33 smooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 mauve)
      (wood p34 oak)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 green)
      (wood p35 pine)
      (treatment p35 varnished)
      (available p36)
      (colour p36 blue)
      (treatment p36 varnished)
      (available p37)
      (colour p37 natural)
      (surface-condition p37 smooth)
      (available p38)
      (colour p38 green)
      (wood p38 mahogany)
      (available p39)
      (colour p39 white)
      (wood p39 walnut)
      (treatment p39 glazed)
      (available p40)
      (colour p40 natural)
      (wood p40 cherry)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 green)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 natural)
      (wood p42 teak)
      (treatment p42 varnished)
      (available p43)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 green)
      (surface-condition p44 smooth)
      (available p45)
      (wood p45 beech)
      (surface-condition p45 verysmooth)
      (available p46)
      (colour p46 natural)
      (wood p46 teak)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 green)
      (treatment p47 glazed)
      (available p48)
      (colour p48 black)
      (wood p48 beech)
      (available p49)
      (colour p49 black)
      (wood p49 teak)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 white)
      (surface-condition p50 verysmooth)
      (available p51)
      (wood p51 pine)
      (surface-condition p51 smooth)
      (available p52)
      (colour p52 red)
      (wood p52 walnut)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (wood p53 beech)
      (treatment p53 glazed)
      (available p54)
      (colour p54 blue)
      (wood p54 mahogany)
      (available p55)
      (wood p55 oak)
      (treatment p55 glazed)
      (available p56)
      (colour p56 natural)
      (surface-condition p56 verysmooth)
      (available p57)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (wood p58 mahogany)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 black)
      (wood p59 oak)
      (available p60)
      (colour p60 red)
      (wood p60 walnut)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 black)
      (wood p61 mahogany)
      (surface-condition p61 smooth)
      (treatment p61 glazed)
      (available p62)
      (surface-condition p62 verysmooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 black)
      (surface-condition p63 verysmooth)
      (treatment p63 glazed)
      (available p64)
      (colour p64 natural)
      (wood p64 teak)
      (surface-condition p64 smooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 green)
      (wood p65 walnut)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 red)
      (wood p66 teak)
      (surface-condition p66 verysmooth)
      (available p67)
      (colour p67 black)
      (wood p67 beech)
      (treatment p67 glazed)
      (available p68)
      (wood p68 teak)
      (surface-condition p68 smooth)
      (available p69)
      (colour p69 natural)
      (wood p69 mahogany)
      (surface-condition p69 verysmooth)
      (available p70)
      (wood p70 walnut)
      (surface-condition p70 verysmooth)
      (available p71)
      (colour p71 mauve)
      (surface-condition p71 verysmooth)
      (treatment p71 glazed)
      (available p72)
      (wood p72 beech)
      (treatment p72 varnished)
      (available p73)
      (colour p73 black)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 green)
      (wood p74 walnut)
      (treatment p74 varnished)
      (available p75)
      (colour p75 mauve)
      (treatment p75 varnished)
      (available p76)
      (wood p76 teak)
      (treatment p76 glazed)
      (available p77)
      (colour p77 black)
      (treatment p77 glazed)
      (available p78)
      (colour p78 black)
      (wood p78 beech)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 mauve)
      (wood p79 oak)
      (treatment p79 glazed)
      (available p80)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 natural)
      (surface-condition p81 verysmooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 mauve)
      (wood p82 pine)
      (surface-condition p82 verysmooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 natural)
      (wood p83 oak)
      (treatment p83 varnished)
      (available p84)
      (colour p84 blue)
      (wood p84 beech)
      (treatment p84 varnished)
      (available p85)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 natural)
      (wood p86 pine)
      (treatment p86 varnished)
      (available p87)
      (wood p87 oak)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 red)
      (wood p88 beech)
      (surface-condition p88 smooth)
      (available p89)
      (colour p89 white)
      (treatment p89 glazed)
      (available p90)
      (colour p90 white)
      (surface-condition p90 verysmooth)
      (available p91)
      (colour p91 white)
      (wood p91 walnut)
      (available p92)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (colour p93 red)
      (wood p93 oak)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (colour p94 green)
      (wood p94 mahogany)
      (available p95)
      (wood p95 walnut)
      (surface-condition p95 verysmooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 natural)
      (wood p96 cherry)
      (available p97)
      (colour p97 red)
      (wood p97 teak)
      (surface-condition p97 smooth)
      (treatment p97 varnished)
      (available p98)
      (colour p98 green)
      (wood p98 cherry)
      (available p99)
      (colour p99 black)
      (wood p99 cherry)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 natural)
      (treatment p100 varnished)
      (available p101)
      (colour p101 black)
      (wood p101 teak)
      (available p102)
      (colour p102 green)
      (wood p102 mahogany)
      (surface-condition p102 smooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 red)
      (surface-condition p103 verysmooth)
      (available p104)
      (wood p104 beech)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 white)
      (wood p105 mahogany)
      (surface-condition p105 verysmooth)
      (available p106)
      (colour p106 blue)
      (wood p106 mahogany)
      (surface-condition p106 smooth)
      (treatment p106 varnished)
      (available p107)
      (colour p107 blue)
      (wood p107 cherry)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (wood p108 beech)
      (surface-condition p108 verysmooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 blue)
      (wood p109 walnut)
      (surface-condition p109 verysmooth)
      (treatment p109 glazed)
      (available p110)
      (wood p110 teak)
      (surface-condition p110 smooth)
      (available p111)
      (colour p111 mauve)
      (wood p111 walnut)
      (surface-condition p111 verysmooth)
      (treatment p111 varnished)
      (available p112)
      (colour p112 white)
      (wood p112 oak)
      (surface-condition p112 smooth)
      (treatment p112 varnished)
      (available p113)
      (colour p113 red)
      (surface-condition p113 verysmooth)
      (available p114)
      (colour p114 green)
      (wood p114 pine)
      (available p115)
      (colour p115 black)
      (treatment p115 varnished)
      (available p116)
      (wood p116 walnut)
      (treatment p116 glazed)
      (available p117)
      (colour p117 black)
      (wood p117 pine)
      (surface-condition p117 smooth)
      (treatment p117 glazed)
      (available p118)
      (surface-condition p118 verysmooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 mauve)
      (wood p119 pine)
      (surface-condition p119 verysmooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 white)
      (treatment p120 varnished)
      (available p121)
      (colour p121 blue)
      (wood p121 beech)
      (surface-condition p121 smooth)
      (available p122)
      (colour p122 black)
      (surface-condition p122 verysmooth)
      (available p123)
      (surface-condition p123 smooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 red)
      (wood p124 pine)
      (available p125)
      (surface-condition p125 smooth)
      (treatment p125 varnished)
      (available p126)
      (colour p126 mauve)
      (wood p126 mahogany)
      (surface-condition p126 verysmooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 mauve)
      (treatment p127 glazed)
      (available p128)
      (wood p128 pine)
      (treatment p128 glazed)
      (available p129)
      (colour p129 green)
      (wood p129 teak)
      (available p130)
      (colour p130 mauve)
      (wood p130 cherry)
      (surface-condition p130 smooth)
      (treatment p130 glazed)
      (available p131)
      (colour p131 green)
      (surface-condition p131 verysmooth)
      (available p132)
      (colour p132 black)
      (wood p132 cherry)
      (surface-condition p132 smooth)
      (available p133)
      (surface-condition p133 verysmooth)
      (treatment p133 glazed)
      (available p134)
      (wood p134 teak)
      (surface-condition p134 verysmooth)
      (available p135)
      (wood p135 cherry)
      (treatment p135 varnished)
      (available p136)
      (wood p136 cherry)
      (treatment p136 glazed)
      (available p137)
      (colour p137 white)
      (wood p137 oak)
      (available p138)
      (colour p138 black)
      (surface-condition p138 verysmooth)
      (available p139)
      (surface-condition p139 smooth)
      (treatment p139 varnished)
      (available p140)
      (colour p140 natural)
      (surface-condition p140 smooth)
      (treatment p140 varnished)
      (available p141)
      (colour p141 red)
      (wood p141 beech)
      (surface-condition p141 verysmooth)
      (treatment p141 varnished)
      (available p142)
      (colour p142 white)
      (surface-condition p142 smooth)
      (available p143)
      (colour p143 green)
      (wood p143 beech)
      (surface-condition p143 smooth)
      (treatment p143 glazed)
      (available p144)
      (colour p144 black)
      (wood p144 cherry)
      (surface-condition p144 verysmooth)
      (treatment p144 glazed)
      (available p145)
      (wood p145 teak)
      (treatment p145 varnished)
      (available p146)
      (colour p146 natural)
      (surface-condition p146 verysmooth)
      (available p147)
      (colour p147 black)
      (treatment p147 varnished)
      (available p148)
      (colour p148 white)
      (treatment p148 glazed)
      (available p149)
      (colour p149 mauve)
      (wood p149 teak)
      (surface-condition p149 verysmooth)
      (treatment p149 glazed)
      (available p150)
      (colour p150 mauve)
      (wood p150 mahogany)
      (available p151)
      (colour p151 mauve)
      (wood p151 oak)
      (surface-condition p151 smooth)
      (treatment p151 varnished)
      (available p152)
      (colour p152 mauve)
      (treatment p152 glazed)
      (available p153)
      (surface-condition p153 verysmooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 white)
      (surface-condition p154 verysmooth)
      (treatment p154 glazed)
      (available p155)
      (wood p155 pine)
      (surface-condition p155 verysmooth)
      (available p156)
      (colour p156 green)
      (wood p156 mahogany)
      (surface-condition p156 verysmooth)
      (treatment p156 glazed)
      (available p157)
      (colour p157 mauve)
      (wood p157 oak)
      (surface-condition p157 verysmooth)
      (treatment p157 varnished)
      (available p158)
      (wood p158 walnut)
      (surface-condition p158 verysmooth)
      (available p159)
      (wood p159 mahogany)
      (treatment p159 varnished)
      (available p160)
      (wood p160 mahogany)
      (surface-condition p160 verysmooth)
      (available p161)
      (wood p161 pine)
      (treatment p161 glazed)
      (available p162)
      (colour p162 natural)
      (surface-condition p162 smooth)
      (available p163)
      (surface-condition p163 smooth)
      (treatment p163 varnished)
      (available p164)
      (colour p164 red)
      (wood p164 oak)
      (surface-condition p164 smooth)
      (treatment p164 varnished)
      (available p165)
      (colour p165 white)
      (treatment p165 glazed)
      (available p166)
      (surface-condition p166 smooth)
      (treatment p166 varnished)
      (available p167)
      (wood p167 mahogany)
      (surface-condition p167 smooth)
      (treatment p167 varnished)
      (available p168)
      (wood p168 beech)
      (surface-condition p168 smooth)
      (available p169)
      (colour p169 white)
      (surface-condition p169 smooth)
      (available p170)
      (wood p170 mahogany)
      (surface-condition p170 verysmooth)
      (treatment p170 varnished)
      (available p171)
      (colour p171 white)
      (surface-condition p171 smooth)
      (treatment p171 glazed)
      (available p172)
      (wood p172 oak)
      (treatment p172 varnished)
      (available p173)
      (wood p173 walnut)
      (treatment p173 varnished)
      (available p174)
      (wood p174 mahogany)
      (surface-condition p174 smooth)
      (treatment p174 glazed)
      (available p175)
      (colour p175 mauve)
      (surface-condition p175 verysmooth)
      (treatment p175 varnished)
      (available p176)
      (colour p176 white)
      (wood p176 pine)
      (surface-condition p176 smooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 red)
      (surface-condition p177 smooth)
      (treatment p177 varnished)
      (available p178)
      (colour p178 black)
      (wood p178 beech)
      (surface-condition p178 smooth)
      (treatment p178 varnished)
      (available p179)
      (colour p179 white)
      (treatment p179 varnished)
      (available p180)
      (colour p180 black)
      (wood p180 teak)
      (available p181)
      (colour p181 white)
      (surface-condition p181 smooth)
      (available p182)
      (colour p182 green)
      (treatment p182 glazed)
      (available p183)
      (wood p183 beech)
      (surface-condition p183 verysmooth)
      (treatment p183 varnished)
      (available p184)
      (colour p184 natural)
      (wood p184 beech)
      (surface-condition p184 verysmooth)
      (treatment p184 varnished)
      (available p185)
      (colour p185 mauve)
      (treatment p185 glazed)
      (available p186)
      (colour p186 natural)
      (surface-condition p186 verysmooth)
      (available p187)
      (colour p187 mauve)
      (wood p187 teak)
      (treatment p187 glazed)
      (available p188)
      (colour p188 mauve)
      (wood p188 mahogany)
      (surface-condition p188 smooth)
      (treatment p188 varnished)
      (available p189)
      (wood p189 oak)
      (surface-condition p189 verysmooth)
      (treatment p189 glazed)
      (available p190)
      (colour p190 red)
      (wood p190 mahogany)
      (treatment p190 varnished)
      (available p191)
      (surface-condition p191 smooth)
      (treatment p191 varnished)
      (available p192)
      (colour p192 blue)
      (wood p192 pine)
      (available p193)
      (surface-condition p193 smooth)
      (treatment p193 varnished)
      (available p194)
      (colour p194 green)
      (wood p194 beech)
      (surface-condition p194 verysmooth)
      (treatment p194 varnished)
      (available p195)
      (wood p195 walnut)
      (treatment p195 varnished)
      (available p196)
      (surface-condition p196 verysmooth)
      (treatment p196 glazed)
      (available p197)
      (surface-condition p197 verysmooth)
      (treatment p197 varnished)
      (available p198)
      (colour p198 green)
      (wood p198 mahogany)
      (available p199)
      (colour p199 green)
      (wood p199 oak)
      (surface-condition p199 verysmooth)
      (treatment p199 varnished)
      (available p200)
      (surface-condition p200 verysmooth)
      (treatment p200 glazed)
      (available p201)
      (wood p201 mahogany)
      (treatment p201 glazed)
      (available p202)
      (wood p202 teak)
      (treatment p202 varnished)
      (available p203)
      (colour p203 mauve)
      (treatment p203 varnished)
      (available p204)
      (colour p204 white)
      (surface-condition p204 smooth)
      (available p205)
      (colour p205 green)
      (wood p205 mahogany)
      (available p206)
      (colour p206 natural)
      (surface-condition p206 verysmooth)
      (treatment p206 varnished)
      (available p207)
      (wood p207 pine)
      (surface-condition p207 smooth)
      (treatment p207 varnished)
      (available p208)
      (colour p208 green)
      (treatment p208 glazed)
      (available p209)
      (wood p209 teak)
      (treatment p209 glazed)
      (available p210)
      (colour p210 red)
      (wood p210 oak)
      (available p211)
      (wood p211 pine)
      (surface-condition p211 verysmooth)
      (available p212)
      (colour p212 natural)
      (wood p212 cherry)
      (available p213)
      (colour p213 white)
      (wood p213 mahogany)
      (surface-condition p213 verysmooth)
      (treatment p213 glazed)
      (available p214)
      (colour p214 mauve)
      (surface-condition p214 smooth)
      (available p215)
      (colour p215 natural)
      (surface-condition p215 verysmooth)
      (available p216)
      (colour p216 red)
      (wood p216 beech)
      (available p217)
      (colour p217 white)
      (wood p217 walnut)
      (treatment p217 glazed)
      (available p218)
      (wood p218 cherry)
      (surface-condition p218 smooth)
      (treatment p218 glazed)
      (available p219)
      (wood p219 mahogany)
      (surface-condition p219 verysmooth)
      (available p220)
      (colour p220 blue)
      (wood p220 walnut)
      (surface-condition p220 verysmooth)
      (treatment p220 glazed)
      (available p221)
      (colour p221 blue)
      (treatment p221 varnished)
      (available p222)
      (colour p222 black)
      (wood p222 cherry)
      (surface-condition p222 smooth)
      (treatment p222 glazed)
      (available p223)
      (colour p223 mauve)
      (wood p223 beech)
      (treatment p223 varnished)
      (available p224)
      (colour p224 blue)
      (treatment p224 glazed)
      (available p225)
      (surface-condition p225 verysmooth)
      (treatment p225 glazed)
      (available p226)
      (wood p226 mahogany)
      (surface-condition p226 verysmooth)
      (treatment p226 varnished)
      (available p227)
      (surface-condition p227 smooth)
      (treatment p227 varnished)
      (available p228)
      (wood p228 cherry)
      (surface-condition p228 smooth)
      (available p229)
      (colour p229 green)
      (surface-condition p229 smooth)
      (available p230)
      (wood p230 oak)
      (surface-condition p230 verysmooth)
      (treatment p230 varnished)
      (available p231)
      (wood p231 walnut)
      (surface-condition p231 verysmooth)
      (treatment p231 glazed)
      (available p232)
      (colour p232 mauve)
      (wood p232 mahogany)
      (available p233)
      (wood p233 beech)
      (surface-condition p233 verysmooth)
      (available p234)
      (colour p234 green)
      (wood p234 oak)
      (surface-condition p234 smooth)
      (treatment p234 glazed)
      (available p235)
      (colour p235 blue)
      (wood p235 pine)
      (available p236)
      (colour p236 mauve)
      (wood p236 beech)
      (surface-condition p236 verysmooth)
      (available p237)
      (wood p237 walnut)
      (treatment p237 glazed)
      (available p238)
      (colour p238 red)
      (wood p238 pine)
      (surface-condition p238 smooth)
      (available p239)
      (wood p239 teak)
      (surface-condition p239 smooth)
      (available p240)
      (colour p240 black)
      (surface-condition p240 verysmooth)
      (available p241)
      (colour p241 mauve)
      (surface-condition p241 verysmooth)
      (treatment p241 glazed)
      (available p242)
      (wood p242 mahogany)
      (surface-condition p242 smooth)
      (available p243)
      (wood p243 pine)
      (treatment p243 varnished)
      (available p244)
      (colour p244 black)
      (wood p244 teak)
      (surface-condition p244 smooth)
      (available p245)
      (colour p245 red)
      (treatment p245 varnished)
      (available p246)
      (colour p246 green)
      (surface-condition p246 verysmooth)
      (available p247)
      (colour p247 red)
      (surface-condition p247 verysmooth)
      (treatment p247 glazed)
      (available p248)
      (colour p248 green)
      (wood p248 cherry)
      (treatment p248 glazed)
      (available p249)
      (colour p249 natural)
      (wood p249 oak)
      (available p250)
      (colour p250 red)
      (wood p250 walnut)
      (available p251)
      (colour p251 blue)
      (surface-condition p251 verysmooth)
      (treatment p251 varnished)
      (available p252)
      (colour p252 white)
      (wood p252 pine)
      (surface-condition p252 smooth)
      (treatment p252 varnished)
      (available p253)
      (colour p253 white)
      (wood p253 pine)
      (available p254)
      (colour p254 white)
      (surface-condition p254 smooth)
      (treatment p254 glazed)
      (available p255)
      (colour p255 mauve)
      (surface-condition p255 smooth)
      (available p256)
      (colour p256 mauve)
      (wood p256 beech)
      (surface-condition p256 smooth)
      (treatment p256 glazed)
      (available p257)
      (colour p257 mauve)
      (surface-condition p257 smooth)
      (available p258)
      (colour p258 green)
      (surface-condition p258 verysmooth)
      (available p259)
      (colour p259 red)
      (wood p259 cherry)
      (surface-condition p259 verysmooth)
      (treatment p259 glazed)
    )
  )
  
)
