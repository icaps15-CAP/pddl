; woodworking task with 275 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 663751

(define (problem wood-prob-sat-196)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve green blue white red black - acolour
    teak walnut pine oak beech mahogany cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 b75 b76 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 black)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
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
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (available p4)
    (colour p4 white)
    (wood p4 walnut)
    (surface-condition p4 smooth)
    (treatment p4 colourfragments)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 mauve)
    (wood p11 pine)
    (surface-condition p11 smooth)
    (treatment p11 colourfragments)
    (goalsize p11 small)
    
    
    
    
    (available p12)
    (colour p12 red)
    (wood p12 mahogany)
    (surface-condition p12 verysmooth)
    (treatment p12 colourfragments)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 natural)
    (wood p13 walnut)
    (surface-condition p13 smooth)
    (treatment p13 glazed)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
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
    (colour p37 white)
    (wood p37 teak)
    (surface-condition p37 smooth)
    (treatment p37 colourfragments)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (available p41)
    (colour p41 natural)
    (wood p41 beech)
    (surface-condition p41 rough)
    (treatment p41 varnished)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (available p43)
    (colour p43 natural)
    (wood p43 walnut)
    (surface-condition p43 verysmooth)
    (treatment p43 colourfragments)
    (goalsize p43 small)
    
    
    
    
    (available p44)
    (colour p44 black)
    (wood p44 pine)
    (surface-condition p44 rough)
    (treatment p44 colourfragments)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (available p51)
    (colour p51 red)
    (wood p51 cherry)
    (surface-condition p51 rough)
    (treatment p51 colourfragments)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (available p58)
    (colour p58 mauve)
    (wood p58 cherry)
    (surface-condition p58 rough)
    (treatment p58 glazed)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (available p63)
    (colour p63 black)
    (wood p63 beech)
    (surface-condition p63 verysmooth)
    (treatment p63 colourfragments)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (available p65)
    (colour p65 white)
    (wood p65 pine)
    (surface-condition p65 smooth)
    (treatment p65 varnished)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (available p75)
    (colour p75 green)
    (wood p75 walnut)
    (surface-condition p75 verysmooth)
    (treatment p75 varnished)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (available p78)
    (colour p78 red)
    (wood p78 mahogany)
    (surface-condition p78 smooth)
    (treatment p78 varnished)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (available p80)
    (colour p80 black)
    (wood p80 teak)
    (surface-condition p80 verysmooth)
    (treatment p80 glazed)
    (goalsize p80 small)
    
    
    
    
    (available p81)
    (colour p81 natural)
    (wood p81 pine)
    (surface-condition p81 rough)
    (treatment p81 varnished)
    (goalsize p81 large)
    
    
    
    
    (available p82)
    (colour p82 white)
    (wood p82 cherry)
    (surface-condition p82 smooth)
    (treatment p82 glazed)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (available p87)
    (colour p87 red)
    (wood p87 cherry)
    (surface-condition p87 rough)
    (treatment p87 colourfragments)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (available p92)
    (colour p92 natural)
    (wood p92 walnut)
    (surface-condition p92 smooth)
    (treatment p92 varnished)
    (goalsize p92 medium)
    
    
    
    
    (available p93)
    (colour p93 white)
    (wood p93 beech)
    (surface-condition p93 smooth)
    (treatment p93 colourfragments)
    (goalsize p93 small)
    
    
    
    
    (available p94)
    (colour p94 white)
    (wood p94 pine)
    (surface-condition p94 verysmooth)
    (treatment p94 colourfragments)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (available p99)
    (colour p99 blue)
    (wood p99 oak)
    (surface-condition p99 rough)
    (treatment p99 varnished)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (available p103)
    (colour p103 black)
    (wood p103 teak)
    (surface-condition p103 verysmooth)
    (treatment p103 glazed)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (available p108)
    (colour p108 green)
    (wood p108 walnut)
    (surface-condition p108 smooth)
    (treatment p108 colourfragments)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (available p110)
    (colour p110 white)
    (wood p110 mahogany)
    (surface-condition p110 rough)
    (treatment p110 colourfragments)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (available p113)
    (colour p113 mauve)
    (wood p113 cherry)
    (surface-condition p113 smooth)
    (treatment p113 glazed)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (available p115)
    (colour p115 black)
    (wood p115 beech)
    (surface-condition p115 rough)
    (treatment p115 glazed)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (available p123)
    (colour p123 red)
    (wood p123 oak)
    (surface-condition p123 rough)
    (treatment p123 glazed)
    (goalsize p123 small)
    
    
    
    
    (available p124)
    (colour p124 mauve)
    (wood p124 mahogany)
    (surface-condition p124 rough)
    (treatment p124 varnished)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (available p132)
    (colour p132 white)
    (wood p132 beech)
    (surface-condition p132 rough)
    (treatment p132 varnished)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 medium)
    
    
    
    
    (available p137)
    (colour p137 blue)
    (wood p137 pine)
    (surface-condition p137 smooth)
    (treatment p137 colourfragments)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (available p142)
    (colour p142 green)
    (wood p142 beech)
    (surface-condition p142 verysmooth)
    (treatment p142 varnished)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (available p144)
    (colour p144 green)
    (wood p144 pine)
    (surface-condition p144 rough)
    (treatment p144 glazed)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (unused p148)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (available p152)
    (colour p152 red)
    (wood p152 cherry)
    (surface-condition p152 smooth)
    (treatment p152 varnished)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (available p154)
    (colour p154 green)
    (wood p154 oak)
    (surface-condition p154 smooth)
    (treatment p154 glazed)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (available p156)
    (colour p156 mauve)
    (wood p156 mahogany)
    (surface-condition p156 verysmooth)
    (treatment p156 colourfragments)
    (goalsize p156 large)
    
    
    
    
    (available p157)
    (colour p157 mauve)
    (wood p157 walnut)
    (surface-condition p157 rough)
    (treatment p157 varnished)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (available p160)
    (colour p160 black)
    (wood p160 pine)
    (surface-condition p160 smooth)
    (treatment p160 varnished)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (available p164)
    (colour p164 white)
    (wood p164 pine)
    (surface-condition p164 rough)
    (treatment p164 colourfragments)
    (goalsize p164 medium)
    
    
    
    
    (available p165)
    (colour p165 mauve)
    (wood p165 walnut)
    (surface-condition p165 verysmooth)
    (treatment p165 colourfragments)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (available p167)
    (colour p167 mauve)
    (wood p167 beech)
    (surface-condition p167 smooth)
    (treatment p167 varnished)
    (goalsize p167 large)
    
    
    
    
    (available p168)
    (colour p168 green)
    (wood p168 teak)
    (surface-condition p168 verysmooth)
    (treatment p168 varnished)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (available p172)
    (colour p172 natural)
    (wood p172 oak)
    (surface-condition p172 rough)
    (treatment p172 glazed)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 small)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (available p178)
    (colour p178 white)
    (wood p178 teak)
    (surface-condition p178 smooth)
    (treatment p178 colourfragments)
    (goalsize p178 large)
    
    
    
    
    (available p179)
    (colour p179 natural)
    (wood p179 walnut)
    (surface-condition p179 smooth)
    (treatment p179 varnished)
    (goalsize p179 small)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (available p181)
    (colour p181 mauve)
    (wood p181 oak)
    (surface-condition p181 verysmooth)
    (treatment p181 glazed)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (available p183)
    (colour p183 red)
    (wood p183 cherry)
    (surface-condition p183 rough)
    (treatment p183 glazed)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (available p195)
    (colour p195 black)
    (wood p195 walnut)
    (surface-condition p195 smooth)
    (treatment p195 colourfragments)
    (goalsize p195 medium)
    
    
    
    
    (available p196)
    (colour p196 black)
    (wood p196 mahogany)
    (surface-condition p196 rough)
    (treatment p196 glazed)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 small)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 small)
    
    
    
    
    (unused p202)
    (goalsize p202 small)
    
    
    
    
    (available p203)
    (colour p203 black)
    (wood p203 teak)
    (surface-condition p203 rough)
    (treatment p203 colourfragments)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 small)
    
    
    
    
    (unused p205)
    (goalsize p205 large)
    
    
    
    
    (unused p206)
    (goalsize p206 medium)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 medium)
    
    
    
    
    (available p209)
    (colour p209 red)
    (wood p209 pine)
    (surface-condition p209 verysmooth)
    (treatment p209 glazed)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (available p211)
    (colour p211 green)
    (wood p211 pine)
    (surface-condition p211 rough)
    (treatment p211 colourfragments)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (available p213)
    (colour p213 natural)
    (wood p213 mahogany)
    (surface-condition p213 rough)
    (treatment p213 varnished)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (available p215)
    (colour p215 blue)
    (wood p215 oak)
    (surface-condition p215 smooth)
    (treatment p215 varnished)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 small)
    
    
    
    
    (unused p217)
    (goalsize p217 small)
    
    
    
    
    (unused p218)
    (goalsize p218 small)
    
    
    
    
    (unused p219)
    (goalsize p219 small)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 large)
    
    
    
    
    (available p226)
    (colour p226 white)
    (wood p226 beech)
    (surface-condition p226 smooth)
    (treatment p226 glazed)
    (goalsize p226 small)
    
    
    
    
    (unused p227)
    (goalsize p227 small)
    
    
    
    
    (unused p228)
    (goalsize p228 large)
    
    
    
    
    (available p229)
    (colour p229 black)
    (wood p229 cherry)
    (surface-condition p229 smooth)
    (treatment p229 glazed)
    (goalsize p229 large)
    
    
    
    
    (unused p230)
    (goalsize p230 small)
    
    
    
    
    (unused p231)
    (goalsize p231 medium)
    
    
    
    
    (unused p232)
    (goalsize p232 small)
    
    
    
    
    (unused p233)
    (goalsize p233 medium)
    
    
    
    
    (unused p234)
    (goalsize p234 small)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (available p237)
    (colour p237 green)
    (wood p237 walnut)
    (surface-condition p237 rough)
    (treatment p237 varnished)
    (goalsize p237 medium)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (unused p239)
    (goalsize p239 medium)
    
    
    
    
    (unused p240)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 large)
    
    
    
    
    (available p242)
    (colour p242 blue)
    (wood p242 mahogany)
    (surface-condition p242 smooth)
    (treatment p242 varnished)
    (goalsize p242 medium)
    
    
    
    
    (unused p243)
    (goalsize p243 small)
    
    
    
    
    (unused p244)
    (goalsize p244 medium)
    
    
    
    
    (unused p245)
    (goalsize p245 large)
    
    
    
    
    (unused p246)
    (goalsize p246 medium)
    
    
    
    
    (unused p247)
    (goalsize p247 large)
    
    
    
    
    (unused p248)
    (goalsize p248 large)
    
    
    
    
    (unused p249)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 small)
    
    
    
    
    (unused p251)
    (goalsize p251 large)
    
    
    
    
    (unused p252)
    (goalsize p252 large)
    
    
    
    
    (unused p253)
    (goalsize p253 medium)
    
    
    
    
    (unused p254)
    (goalsize p254 large)
    
    
    
    
    (unused p255)
    (goalsize p255 medium)
    
    
    
    
    (unused p256)
    (goalsize p256 large)
    
    
    
    
    (unused p257)
    (goalsize p257 large)
    
    
    
    
    (unused p258)
    (goalsize p258 small)
    
    
    
    
    (unused p259)
    (goalsize p259 small)
    
    
    
    
    (unused p260)
    (goalsize p260 medium)
    
    
    
    
    (unused p261)
    (goalsize p261 medium)
    
    
    
    
    (unused p262)
    (goalsize p262 medium)
    
    
    
    
    (unused p263)
    (goalsize p263 medium)
    
    
    
    
    (unused p264)
    (goalsize p264 large)
    
    
    
    
    (unused p265)
    (goalsize p265 small)
    
    
    
    
    (unused p266)
    (goalsize p266 large)
    
    
    
    
    (unused p267)
    (goalsize p267 large)
    
    
    
    
    (available p268)
    (colour p268 blue)
    (wood p268 cherry)
    (surface-condition p268 verysmooth)
    (treatment p268 glazed)
    (goalsize p268 medium)
    
    
    
    
    (unused p269)
    (goalsize p269 large)
    
    
    
    
    (unused p270)
    (goalsize p270 small)
    
    
    
    
    (unused p271)
    (goalsize p271 small)
    
    
    
    
    (unused p272)
    (goalsize p272 small)
    
    
    
    
    (unused p273)
    (goalsize p273 medium)
    
    
    
    
    (unused p274)
    (goalsize p274 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s6)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 cherry)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s4)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s12)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s9)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s5)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s9)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s11)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s6)
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
    (boardsize b24 s6)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s5)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s10)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s4)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s9)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s10)
    (wood b29 pine)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s7)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s8)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s8)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 pine)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s6)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s7)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 pine)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s7)
    (wood b37 pine)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s10)
    (wood b38 pine)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s8)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s7)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s8)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s9)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s10)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s7)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s9)
    (wood b45 walnut)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s6)
    (wood b46 walnut)
    (surface-condition b46 smooth)
    (available b46)
    (boardsize b47 s7)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s9)
    (wood b48 walnut)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s10)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s9)
    (wood b50 walnut)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s6)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 teak)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s7)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s6)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s11)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s9)
    (wood b56 teak)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s10)
    (wood b57 teak)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s5)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s7)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s10)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s5)
    (wood b61 teak)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s7)
    (wood b62 teak)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s4)
    (wood b63 teak)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s9)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s9)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s7)
    (wood b66 beech)
    (surface-condition b66 smooth)
    (available b66)
    (boardsize b67 s9)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s9)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s5)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s12)
    (wood b70 beech)
    (surface-condition b70 smooth)
    (available b70)
    (boardsize b71 s9)
    (wood b71 beech)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s10)
    (wood b72 beech)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s8)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
    (boardsize b74 s8)
    (wood b74 beech)
    (surface-condition b74 smooth)
    (available b74)
    (boardsize b75 s5)
    (wood b75 beech)
    (surface-condition b75 rough)
    (available b75)
    (boardsize b76 s1)
    (wood b76 beech)
    (surface-condition b76 smooth)
    (available b76)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (wood p1 oak)
      (treatment p1 varnished)
      (available p2)
      (colour p2 red)
      (wood p2 beech)
      (available p3)
      (colour p3 natural)
      (surface-condition p3 smooth)
      (available p4)
      (wood p4 walnut)
      (surface-condition p4 verysmooth)
      (available p5)
      (colour p5 red)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 blue)
      (wood p6 beech)
      (available p7)
      (colour p7 black)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 white)
      (wood p8 mahogany)
      (surface-condition p8 verysmooth)
      (available p9)
      (wood p9 pine)
      (treatment p9 varnished)
      (available p10)
      (colour p10 green)
      (wood p10 cherry)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 natural)
      (wood p11 pine)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 mauve)
      (treatment p12 varnished)
      (available p13)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 natural)
      (wood p14 oak)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 red)
      (wood p15 teak)
      (available p16)
      (colour p16 black)
      (wood p16 beech)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 blue)
      (wood p17 oak)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 black)
      (wood p18 cherry)
      (available p19)
      (colour p19 black)
      (wood p19 teak)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 natural)
      (wood p20 walnut)
      (treatment p20 varnished)
      (available p21)
      (wood p21 walnut)
      (surface-condition p21 verysmooth)
      (available p22)
      (wood p22 teak)
      (surface-condition p22 verysmooth)
      (available p23)
      (wood p23 pine)
      (surface-condition p23 smooth)
      (available p24)
      (wood p24 pine)
      (treatment p24 varnished)
      (available p25)
      (colour p25 blue)
      (wood p25 teak)
      (surface-condition p25 verysmooth)
      (available p26)
      (colour p26 white)
      (wood p26 pine)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (wood p27 pine)
      (treatment p27 varnished)
      (available p28)
      (colour p28 mauve)
      (treatment p28 varnished)
      (available p29)
      (colour p29 red)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 white)
      (wood p30 pine)
      (available p31)
      (colour p31 natural)
      (wood p31 walnut)
      (available p32)
      (colour p32 white)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 black)
      (treatment p33 varnished)
      (available p34)
      (colour p34 white)
      (wood p34 oak)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (wood p35 mahogany)
      (surface-condition p35 verysmooth)
      (available p36)
      (wood p36 beech)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 red)
      (surface-condition p37 smooth)
      (available p38)
      (colour p38 green)
      (wood p38 mahogany)
      (surface-condition p38 verysmooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 white)
      (wood p39 walnut)
      (treatment p39 varnished)
      (available p40)
      (colour p40 green)
      (surface-condition p40 verysmooth)
      (available p41)
      (colour p41 green)
      (wood p41 beech)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 red)
      (wood p42 teak)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 green)
      (wood p43 walnut)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 red)
      (wood p44 pine)
      (surface-condition p44 verysmooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 mauve)
      (surface-condition p45 verysmooth)
      (available p46)
      (wood p46 beech)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 natural)
      (wood p47 oak)
      (available p48)
      (colour p48 black)
      (treatment p48 varnished)
      (available p49)
      (wood p49 beech)
      (surface-condition p49 verysmooth)
      (available p50)
      (wood p50 beech)
      (treatment p50 glazed)
      (available p51)
      (colour p51 white)
      (wood p51 cherry)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 mauve)
      (wood p53 mahogany)
      (available p54)
      (colour p54 natural)
      (surface-condition p54 verysmooth)
      (available p55)
      (wood p55 oak)
      (treatment p55 glazed)
      (available p56)
      (colour p56 white)
      (wood p56 beech)
      (surface-condition p56 verysmooth)
      (available p57)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 black)
      (wood p58 cherry)
      (surface-condition p58 verysmooth)
      (treatment p58 varnished)
      (available p59)
      (surface-condition p59 smooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 natural)
      (treatment p60 glazed)
      (available p61)
      (colour p61 mauve)
      (wood p61 pine)
      (surface-condition p61 smooth)
      (treatment p61 varnished)
      (available p62)
      (wood p62 teak)
      (surface-condition p62 verysmooth)
      (available p63)
      (colour p63 natural)
      (wood p63 beech)
      (treatment p63 varnished)
      (available p64)
      (colour p64 blue)
      (wood p64 walnut)
      (available p65)
      (colour p65 natural)
      (treatment p65 glazed)
      (available p66)
      (colour p66 white)
      (treatment p66 varnished)
      (available p67)
      (colour p67 blue)
      (treatment p67 varnished)
      (available p68)
      (colour p68 green)
      (wood p68 teak)
      (surface-condition p68 verysmooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 black)
      (wood p69 teak)
      (surface-condition p69 smooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 white)
      (surface-condition p70 verysmooth)
      (available p71)
      (wood p71 teak)
      (surface-condition p71 verysmooth)
      (available p72)
      (wood p72 walnut)
      (treatment p72 varnished)
      (available p73)
      (colour p73 natural)
      (surface-condition p73 verysmooth)
      (treatment p73 glazed)
      (available p74)
      (colour p74 red)
      (wood p74 pine)
      (available p75)
      (colour p75 mauve)
      (surface-condition p75 smooth)
      (treatment p75 varnished)
      (available p76)
      (colour p76 natural)
      (surface-condition p76 smooth)
      (available p77)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 white)
      (wood p78 mahogany)
      (surface-condition p78 smooth)
      (treatment p78 glazed)
      (available p79)
      (wood p79 teak)
      (surface-condition p79 verysmooth)
      (available p80)
      (wood p80 teak)
      (treatment p80 varnished)
      (available p81)
      (colour p81 black)
      (wood p81 pine)
      (surface-condition p81 verysmooth)
      (available p82)
      (surface-condition p82 verysmooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 natural)
      (wood p83 mahogany)
      (available p84)
      (colour p84 white)
      (wood p84 walnut)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (wood p85 beech)
      (treatment p85 glazed)
      (available p86)
      (colour p86 white)
      (wood p86 mahogany)
      (surface-condition p86 verysmooth)
      (available p87)
      (wood p87 cherry)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 black)
      (treatment p88 glazed)
      (available p89)
      (colour p89 white)
      (wood p89 beech)
      (available p90)
      (colour p90 red)
      (treatment p90 varnished)
      (available p91)
      (colour p91 red)
      (treatment p91 varnished)
      (available p92)
      (colour p92 red)
      (surface-condition p92 verysmooth)
      (available p93)
      (colour p93 black)
      (wood p93 beech)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (colour p94 mauve)
      (wood p94 pine)
      (available p95)
      (surface-condition p95 smooth)
      (treatment p95 glazed)
      (available p96)
      (colour p96 blue)
      (treatment p96 varnished)
      (available p97)
      (colour p97 mauve)
      (surface-condition p97 verysmooth)
      (available p98)
      (colour p98 black)
      (surface-condition p98 verysmooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 black)
      (surface-condition p99 verysmooth)
      (available p100)
      (surface-condition p100 smooth)
      (treatment p100 varnished)
      (available p101)
      (wood p101 walnut)
      (surface-condition p101 verysmooth)
      (available p102)
      (colour p102 natural)
      (treatment p102 glazed)
      (available p103)
      (colour p103 white)
      (wood p103 teak)
      (surface-condition p103 verysmooth)
      (available p104)
      (surface-condition p104 verysmooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 white)
      (treatment p105 glazed)
      (available p106)
      (colour p106 red)
      (surface-condition p106 verysmooth)
      (treatment p106 varnished)
      (available p107)
      (wood p107 cherry)
      (treatment p107 varnished)
      (available p108)
      (surface-condition p108 verysmooth)
      (treatment p108 glazed)
      (available p109)
      (wood p109 cherry)
      (treatment p109 glazed)
      (available p110)
      (wood p110 mahogany)
      (treatment p110 glazed)
      (available p111)
      (colour p111 blue)
      (treatment p111 glazed)
      (available p112)
      (colour p112 black)
      (wood p112 walnut)
      (surface-condition p112 smooth)
      (treatment p112 varnished)
      (available p113)
      (colour p113 blue)
      (wood p113 cherry)
      (surface-condition p113 smooth)
      (available p114)
      (colour p114 natural)
      (wood p114 beech)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (wood p115 beech)
      (treatment p115 varnished)
      (available p116)
      (wood p116 beech)
      (treatment p116 glazed)
      (available p117)
      (colour p117 white)
      (wood p117 pine)
      (surface-condition p117 verysmooth)
      (treatment p117 glazed)
      (available p118)
      (colour p118 red)
      (wood p118 cherry)
      (surface-condition p118 verysmooth)
      (available p119)
      (colour p119 red)
      (surface-condition p119 verysmooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 natural)
      (wood p120 cherry)
      (available p121)
      (colour p121 green)
      (wood p121 pine)
      (surface-condition p121 smooth)
      (treatment p121 varnished)
      (available p122)
      (wood p122 teak)
      (surface-condition p122 smooth)
      (available p123)
      (colour p123 natural)
      (treatment p123 glazed)
      (available p124)
      (colour p124 green)
      (wood p124 mahogany)
      (surface-condition p124 smooth)
      (treatment p124 varnished)
      (available p125)
      (colour p125 natural)
      (treatment p125 varnished)
      (available p126)
      (colour p126 red)
      (treatment p126 glazed)
      (available p127)
      (colour p127 green)
      (surface-condition p127 smooth)
      (treatment p127 glazed)
      (available p128)
      (colour p128 blue)
      (surface-condition p128 smooth)
      (available p129)
      (surface-condition p129 verysmooth)
      (treatment p129 glazed)
      (available p130)
      (surface-condition p130 verysmooth)
      (treatment p130 varnished)
      (available p131)
      (colour p131 black)
      (wood p131 mahogany)
      (available p132)
      (colour p132 natural)
      (surface-condition p132 smooth)
      (treatment p132 glazed)
      (available p133)
      (colour p133 blue)
      (treatment p133 glazed)
      (available p134)
      (colour p134 black)
      (surface-condition p134 verysmooth)
      (available p135)
      (colour p135 blue)
      (wood p135 cherry)
      (available p136)
      (colour p136 white)
      (wood p136 pine)
      (surface-condition p136 verysmooth)
      (treatment p136 varnished)
      (available p137)
      (colour p137 white)
      (treatment p137 varnished)
      (available p138)
      (colour p138 green)
      (wood p138 beech)
      (surface-condition p138 verysmooth)
      (treatment p138 varnished)
      (available p139)
      (colour p139 natural)
      (surface-condition p139 verysmooth)
      (treatment p139 glazed)
      (available p140)
      (colour p140 mauve)
      (treatment p140 glazed)
      (available p141)
      (colour p141 black)
      (wood p141 cherry)
      (available p142)
      (wood p142 beech)
      (treatment p142 glazed)
      (available p143)
      (colour p143 natural)
      (wood p143 mahogany)
      (available p144)
      (colour p144 red)
      (surface-condition p144 smooth)
      (available p145)
      (wood p145 oak)
      (surface-condition p145 smooth)
      (available p146)
      (surface-condition p146 verysmooth)
      (treatment p146 varnished)
      (available p147)
      (colour p147 black)
      (surface-condition p147 verysmooth)
      (available p148)
      (colour p148 natural)
      (wood p148 walnut)
      (surface-condition p148 verysmooth)
      (treatment p148 varnished)
      (available p149)
      (wood p149 oak)
      (treatment p149 glazed)
      (available p150)
      (wood p150 beech)
      (treatment p150 varnished)
      (available p151)
      (colour p151 green)
      (surface-condition p151 verysmooth)
      (available p152)
      (colour p152 green)
      (wood p152 cherry)
      (surface-condition p152 smooth)
      (treatment p152 varnished)
      (available p153)
      (wood p153 walnut)
      (surface-condition p153 smooth)
      (available p154)
      (colour p154 mauve)
      (wood p154 oak)
      (available p155)
      (colour p155 blue)
      (wood p155 pine)
      (surface-condition p155 verysmooth)
      (treatment p155 glazed)
      (available p156)
      (colour p156 black)
      (wood p156 mahogany)
      (surface-condition p156 verysmooth)
      (treatment p156 varnished)
      (available p157)
      (colour p157 natural)
      (surface-condition p157 verysmooth)
      (available p158)
      (wood p158 cherry)
      (treatment p158 glazed)
      (available p159)
      (wood p159 cherry)
      (surface-condition p159 smooth)
      (available p160)
      (colour p160 white)
      (wood p160 pine)
      (available p161)
      (wood p161 mahogany)
      (surface-condition p161 verysmooth)
      (treatment p161 varnished)
      (available p162)
      (colour p162 natural)
      (surface-condition p162 verysmooth)
      (treatment p162 glazed)
      (available p163)
      (wood p163 cherry)
      (treatment p163 glazed)
      (available p164)
      (colour p164 black)
      (treatment p164 glazed)
      (available p165)
      (colour p165 white)
      (wood p165 walnut)
      (treatment p165 varnished)
      (available p166)
      (colour p166 mauve)
      (surface-condition p166 verysmooth)
      (available p167)
      (colour p167 green)
      (treatment p167 varnished)
      (available p168)
      (colour p168 red)
      (wood p168 teak)
      (treatment p168 glazed)
      (available p169)
      (wood p169 cherry)
      (treatment p169 varnished)
      (available p170)
      (wood p170 teak)
      (treatment p170 varnished)
      (available p171)
      (colour p171 blue)
      (surface-condition p171 smooth)
      (available p172)
      (surface-condition p172 verysmooth)
      (treatment p172 varnished)
      (available p173)
      (wood p173 beech)
      (treatment p173 glazed)
      (available p174)
      (colour p174 black)
      (wood p174 beech)
      (surface-condition p174 smooth)
      (treatment p174 glazed)
      (available p175)
      (wood p175 beech)
      (surface-condition p175 smooth)
      (available p176)
      (colour p176 green)
      (treatment p176 glazed)
      (available p177)
      (colour p177 natural)
      (surface-condition p177 smooth)
      (available p178)
      (colour p178 mauve)
      (wood p178 teak)
      (surface-condition p178 verysmooth)
      (treatment p178 glazed)
      (available p179)
      (surface-condition p179 smooth)
      (treatment p179 glazed)
      (available p180)
      (colour p180 blue)
      (treatment p180 glazed)
      (available p181)
      (colour p181 black)
      (wood p181 oak)
      (surface-condition p181 verysmooth)
      (treatment p181 glazed)
      (available p182)
      (colour p182 white)
      (wood p182 beech)
      (surface-condition p182 verysmooth)
      (treatment p182 varnished)
      (available p183)
      (colour p183 green)
      (wood p183 cherry)
      (treatment p183 varnished)
      (available p184)
      (colour p184 black)
      (wood p184 teak)
      (treatment p184 varnished)
      (available p185)
      (surface-condition p185 verysmooth)
      (treatment p185 varnished)
      (available p186)
      (wood p186 mahogany)
      (surface-condition p186 verysmooth)
      (available p187)
      (colour p187 green)
      (surface-condition p187 verysmooth)
      (available p188)
      (colour p188 black)
      (surface-condition p188 smooth)
      (treatment p188 glazed)
      (available p189)
      (colour p189 mauve)
      (wood p189 cherry)
      (surface-condition p189 smooth)
      (treatment p189 glazed)
      (available p190)
      (colour p190 white)
      (surface-condition p190 verysmooth)
      (available p191)
      (colour p191 white)
      (wood p191 cherry)
      (surface-condition p191 smooth)
      (treatment p191 glazed)
      (available p192)
      (colour p192 black)
      (wood p192 walnut)
      (available p193)
      (colour p193 green)
      (surface-condition p193 verysmooth)
      (available p194)
      (colour p194 red)
      (treatment p194 varnished)
      (available p195)
      (colour p195 white)
      (wood p195 walnut)
      (surface-condition p195 smooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 blue)
      (wood p196 mahogany)
      (surface-condition p196 verysmooth)
      (treatment p196 glazed)
      (available p197)
      (colour p197 mauve)
      (wood p197 cherry)
      (surface-condition p197 smooth)
      (treatment p197 glazed)
      (available p198)
      (colour p198 red)
      (wood p198 oak)
      (surface-condition p198 smooth)
      (treatment p198 glazed)
      (available p199)
      (surface-condition p199 smooth)
      (treatment p199 glazed)
      (available p200)
      (wood p200 beech)
      (surface-condition p200 verysmooth)
      (available p201)
      (colour p201 white)
      (surface-condition p201 verysmooth)
      (available p202)
      (colour p202 black)
      (wood p202 teak)
      (surface-condition p202 smooth)
      (treatment p202 glazed)
      (available p203)
      (colour p203 blue)
      (wood p203 teak)
      (surface-condition p203 smooth)
      (treatment p203 glazed)
      (available p204)
      (colour p204 black)
      (treatment p204 varnished)
      (available p205)
      (wood p205 cherry)
      (surface-condition p205 smooth)
      (treatment p205 glazed)
      (available p206)
      (colour p206 natural)
      (wood p206 pine)
      (surface-condition p206 smooth)
      (treatment p206 varnished)
      (available p207)
      (colour p207 mauve)
      (surface-condition p207 verysmooth)
      (treatment p207 glazed)
      (available p208)
      (wood p208 cherry)
      (surface-condition p208 smooth)
      (treatment p208 glazed)
      (available p209)
      (colour p209 natural)
      (wood p209 pine)
      (surface-condition p209 verysmooth)
      (treatment p209 glazed)
      (available p210)
      (colour p210 natural)
      (wood p210 mahogany)
      (surface-condition p210 smooth)
      (treatment p210 glazed)
      (available p211)
      (colour p211 red)
      (wood p211 pine)
      (surface-condition p211 verysmooth)
      (available p212)
      (colour p212 green)
      (treatment p212 varnished)
      (available p213)
      (colour p213 mauve)
      (wood p213 mahogany)
      (treatment p213 glazed)
      (available p214)
      (wood p214 cherry)
      (treatment p214 varnished)
      (available p215)
      (colour p215 white)
      (wood p215 oak)
      (surface-condition p215 verysmooth)
      (available p216)
      (colour p216 black)
      (treatment p216 varnished)
      (available p217)
      (wood p217 walnut)
      (surface-condition p217 smooth)
      (available p218)
      (colour p218 black)
      (wood p218 oak)
      (surface-condition p218 smooth)
      (treatment p218 varnished)
      (available p219)
      (wood p219 pine)
      (surface-condition p219 verysmooth)
      (available p220)
      (colour p220 blue)
      (wood p220 pine)
      (surface-condition p220 smooth)
      (treatment p220 varnished)
      (available p221)
      (colour p221 green)
      (wood p221 pine)
      (available p222)
      (wood p222 mahogany)
      (surface-condition p222 verysmooth)
      (treatment p222 varnished)
      (available p223)
      (colour p223 white)
      (surface-condition p223 smooth)
      (treatment p223 glazed)
      (available p224)
      (surface-condition p224 verysmooth)
      (treatment p224 glazed)
      (available p225)
      (colour p225 blue)
      (wood p225 pine)
      (surface-condition p225 verysmooth)
      (treatment p225 varnished)
      (available p226)
      (colour p226 green)
      (surface-condition p226 verysmooth)
      (available p227)
      (surface-condition p227 smooth)
      (treatment p227 varnished)
      (available p228)
      (wood p228 beech)
      (surface-condition p228 verysmooth)
      (available p229)
      (colour p229 natural)
      (treatment p229 glazed)
      (available p230)
      (colour p230 white)
      (wood p230 beech)
      (surface-condition p230 smooth)
      (treatment p230 varnished)
      (available p231)
      (wood p231 cherry)
      (treatment p231 glazed)
      (available p232)
      (wood p232 teak)
      (surface-condition p232 smooth)
      (available p233)
      (surface-condition p233 verysmooth)
      (treatment p233 varnished)
      (available p234)
      (colour p234 red)
      (wood p234 pine)
      (available p235)
      (colour p235 natural)
      (wood p235 pine)
      (surface-condition p235 verysmooth)
      (treatment p235 glazed)
      (available p236)
      (wood p236 walnut)
      (surface-condition p236 smooth)
      (available p237)
      (surface-condition p237 verysmooth)
      (treatment p237 varnished)
      (available p238)
      (surface-condition p238 verysmooth)
      (treatment p238 glazed)
      (available p239)
      (wood p239 walnut)
      (surface-condition p239 verysmooth)
      (treatment p239 glazed)
      (available p240)
      (colour p240 white)
      (wood p240 pine)
      (surface-condition p240 verysmooth)
      (available p241)
      (wood p241 teak)
      (surface-condition p241 smooth)
      (available p242)
      (wood p242 mahogany)
      (treatment p242 glazed)
      (available p243)
      (colour p243 natural)
      (surface-condition p243 verysmooth)
      (available p244)
      (wood p244 pine)
      (surface-condition p244 smooth)
      (treatment p244 varnished)
      (available p245)
      (wood p245 oak)
      (treatment p245 varnished)
      (available p246)
      (colour p246 red)
      (wood p246 teak)
      (surface-condition p246 verysmooth)
      (available p247)
      (wood p247 oak)
      (treatment p247 glazed)
      (available p248)
      (colour p248 green)
      (treatment p248 glazed)
      (available p249)
      (wood p249 beech)
      (surface-condition p249 smooth)
      (treatment p249 glazed)
      (available p250)
      (colour p250 mauve)
      (wood p250 beech)
      (surface-condition p250 verysmooth)
      (available p251)
      (wood p251 walnut)
      (surface-condition p251 smooth)
      (treatment p251 glazed)
      (available p252)
      (colour p252 mauve)
      (surface-condition p252 smooth)
      (available p253)
      (wood p253 cherry)
      (treatment p253 varnished)
      (available p254)
      (colour p254 mauve)
      (wood p254 walnut)
      (surface-condition p254 smooth)
      (treatment p254 varnished)
      (available p255)
      (surface-condition p255 verysmooth)
      (treatment p255 glazed)
      (available p256)
      (colour p256 black)
      (wood p256 teak)
      (surface-condition p256 verysmooth)
      (treatment p256 glazed)
      (available p257)
      (colour p257 white)
      (wood p257 beech)
      (treatment p257 varnished)
      (available p258)
      (colour p258 black)
      (surface-condition p258 smooth)
      (treatment p258 glazed)
      (available p259)
      (colour p259 mauve)
      (surface-condition p259 smooth)
      (available p260)
      (colour p260 red)
      (treatment p260 varnished)
      (available p261)
      (colour p261 black)
      (wood p261 oak)
      (available p262)
      (colour p262 green)
      (wood p262 cherry)
      (surface-condition p262 verysmooth)
      (treatment p262 varnished)
      (available p263)
      (wood p263 walnut)
      (surface-condition p263 verysmooth)
      (available p264)
      (surface-condition p264 smooth)
      (treatment p264 glazed)
      (available p265)
      (wood p265 beech)
      (treatment p265 varnished)
      (available p266)
      (colour p266 white)
      (wood p266 walnut)
      (surface-condition p266 verysmooth)
      (treatment p266 glazed)
      (available p267)
      (colour p267 natural)
      (surface-condition p267 verysmooth)
      (treatment p267 glazed)
      (available p268)
      (colour p268 mauve)
      (wood p268 cherry)
      (surface-condition p268 smooth)
      (available p269)
      (surface-condition p269 smooth)
      (treatment p269 glazed)
      (available p270)
      (colour p270 green)
      (surface-condition p270 smooth)
      (available p271)
      (colour p271 mauve)
      (wood p271 pine)
      (treatment p271 glazed)
      (available p272)
      (colour p272 red)
      (wood p272 pine)
      (surface-condition p272 verysmooth)
      (treatment p272 glazed)
      (available p273)
      (wood p273 mahogany)
      (surface-condition p273 verysmooth)
      (available p274)
      (wood p274 cherry)
      (treatment p274 glazed)
    )
  )
  
)
