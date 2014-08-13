; woodworking task with 272 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 369392

(define (problem wood-prob-sat-195)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve green red black white blue - acolour
    beech teak walnut pine mahogany oak cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 b75 b76 b77 b78 b79 b80 - board
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
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 mauve)
    (wood p0 cherry)
    (surface-condition p0 rough)
    (treatment p0 colourfragments)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (available p10)
    (colour p10 white)
    (wood p10 mahogany)
    (surface-condition p10 smooth)
    (treatment p10 colourfragments)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 black)
    (wood p12 beech)
    (surface-condition p12 rough)
    (treatment p12 glazed)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (available p39)
    (colour p39 red)
    (wood p39 walnut)
    (surface-condition p39 smooth)
    (treatment p39 colourfragments)
    (goalsize p39 medium)
    
    
    
    
    (available p40)
    (colour p40 red)
    (wood p40 oak)
    (surface-condition p40 smooth)
    (treatment p40 varnished)
    (goalsize p40 medium)
    
    
    
    
    (available p41)
    (colour p41 white)
    (wood p41 beech)
    (surface-condition p41 rough)
    (treatment p41 colourfragments)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (available p53)
    (colour p53 blue)
    (wood p53 cherry)
    (surface-condition p53 verysmooth)
    (treatment p53 glazed)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (available p58)
    (colour p58 black)
    (wood p58 pine)
    (surface-condition p58 rough)
    (treatment p58 glazed)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (available p64)
    (colour p64 blue)
    (wood p64 oak)
    (surface-condition p64 smooth)
    (treatment p64 glazed)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (available p67)
    (colour p67 green)
    (wood p67 beech)
    (surface-condition p67 smooth)
    (treatment p67 glazed)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (available p70)
    (colour p70 red)
    (wood p70 walnut)
    (surface-condition p70 rough)
    (treatment p70 varnished)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (available p80)
    (colour p80 red)
    (wood p80 teak)
    (surface-condition p80 rough)
    (treatment p80 glazed)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (available p84)
    (colour p84 black)
    (wood p84 teak)
    (surface-condition p84 verysmooth)
    (treatment p84 glazed)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (available p94)
    (colour p94 white)
    (wood p94 walnut)
    (surface-condition p94 rough)
    (treatment p94 varnished)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (available p100)
    (colour p100 mauve)
    (wood p100 mahogany)
    (surface-condition p100 verysmooth)
    (treatment p100 colourfragments)
    (goalsize p100 small)
    
    
    
    
    (available p101)
    (colour p101 black)
    (wood p101 teak)
    (surface-condition p101 verysmooth)
    (treatment p101 varnished)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (available p110)
    (colour p110 natural)
    (wood p110 walnut)
    (surface-condition p110 rough)
    (treatment p110 colourfragments)
    (goalsize p110 large)
    
    
    
    
    (available p111)
    (colour p111 green)
    (wood p111 pine)
    (surface-condition p111 verysmooth)
    (treatment p111 varnished)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (available p116)
    (colour p116 red)
    (wood p116 oak)
    (surface-condition p116 rough)
    (treatment p116 colourfragments)
    (goalsize p116 medium)
    
    
    
    
    (available p117)
    (colour p117 red)
    (wood p117 walnut)
    (surface-condition p117 rough)
    (treatment p117 glazed)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (available p125)
    (colour p125 natural)
    (wood p125 beech)
    (surface-condition p125 smooth)
    (treatment p125 varnished)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (available p134)
    (colour p134 blue)
    (wood p134 cherry)
    (surface-condition p134 rough)
    (treatment p134 varnished)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (available p137)
    (colour p137 natural)
    (wood p137 beech)
    (surface-condition p137 verysmooth)
    (treatment p137 varnished)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (available p140)
    (colour p140 white)
    (wood p140 mahogany)
    (surface-condition p140 rough)
    (treatment p140 colourfragments)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (available p147)
    (colour p147 white)
    (wood p147 teak)
    (surface-condition p147 rough)
    (treatment p147 colourfragments)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (available p154)
    (colour p154 blue)
    (wood p154 teak)
    (surface-condition p154 smooth)
    (treatment p154 glazed)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (available p161)
    (colour p161 natural)
    (wood p161 teak)
    (surface-condition p161 rough)
    (treatment p161 varnished)
    (goalsize p161 large)
    
    
    
    
    (available p162)
    (colour p162 mauve)
    (wood p162 pine)
    (surface-condition p162 smooth)
    (treatment p162 colourfragments)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (available p166)
    (colour p166 mauve)
    (wood p166 teak)
    (surface-condition p166 smooth)
    (treatment p166 colourfragments)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (available p169)
    (colour p169 red)
    (wood p169 beech)
    (surface-condition p169 smooth)
    (treatment p169 varnished)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (available p173)
    (colour p173 blue)
    (wood p173 pine)
    (surface-condition p173 verysmooth)
    (treatment p173 varnished)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (available p175)
    (colour p175 white)
    (wood p175 pine)
    (surface-condition p175 verysmooth)
    (treatment p175 colourfragments)
    (goalsize p175 large)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 small)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 large)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (available p192)
    (colour p192 black)
    (wood p192 beech)
    (surface-condition p192 rough)
    (treatment p192 colourfragments)
    (goalsize p192 small)
    
    
    
    
    (available p193)
    (colour p193 blue)
    (wood p193 teak)
    (surface-condition p193 smooth)
    (treatment p193 varnished)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (available p195)
    (colour p195 green)
    (wood p195 beech)
    (surface-condition p195 verysmooth)
    (treatment p195 glazed)
    (goalsize p195 medium)
    
    
    
    
    (available p196)
    (colour p196 black)
    (wood p196 pine)
    (surface-condition p196 rough)
    (treatment p196 colourfragments)
    (goalsize p196 large)
    
    
    
    
    (available p197)
    (colour p197 black)
    (wood p197 pine)
    (surface-condition p197 verysmooth)
    (treatment p197 varnished)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 medium)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 medium)
    
    
    
    
    (unused p202)
    (goalsize p202 large)
    
    
    
    
    (unused p203)
    (goalsize p203 medium)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (available p207)
    (colour p207 black)
    (wood p207 oak)
    (surface-condition p207 smooth)
    (treatment p207 colourfragments)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (available p212)
    (colour p212 green)
    (wood p212 oak)
    (surface-condition p212 verysmooth)
    (treatment p212 colourfragments)
    (goalsize p212 medium)
    
    
    
    
    (unused p213)
    (goalsize p213 medium)
    
    
    
    
    (unused p214)
    (goalsize p214 large)
    
    
    
    
    (unused p215)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 medium)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 medium)
    
    
    
    
    (available p219)
    (colour p219 blue)
    (wood p219 mahogany)
    (surface-condition p219 smooth)
    (treatment p219 varnished)
    (goalsize p219 large)
    
    
    
    
    (unused p220)
    (goalsize p220 large)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (available p222)
    (colour p222 red)
    (wood p222 teak)
    (surface-condition p222 smooth)
    (treatment p222 colourfragments)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (unused p224)
    (goalsize p224 large)
    
    
    
    
    (unused p225)
    (goalsize p225 small)
    
    
    
    
    (available p226)
    (colour p226 natural)
    (wood p226 pine)
    (surface-condition p226 smooth)
    (treatment p226 colourfragments)
    (goalsize p226 medium)
    
    
    
    
    (unused p227)
    (goalsize p227 small)
    
    
    
    
    (available p228)
    (colour p228 green)
    (wood p228 beech)
    (surface-condition p228 rough)
    (treatment p228 glazed)
    (goalsize p228 large)
    
    
    
    
    (available p229)
    (colour p229 white)
    (wood p229 mahogany)
    (surface-condition p229 verysmooth)
    (treatment p229 varnished)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (unused p231)
    (goalsize p231 small)
    
    
    
    
    (available p232)
    (colour p232 red)
    (wood p232 beech)
    (surface-condition p232 smooth)
    (treatment p232 glazed)
    (goalsize p232 large)
    
    
    
    
    (unused p233)
    (goalsize p233 small)
    
    
    
    
    (unused p234)
    (goalsize p234 small)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 large)
    
    
    
    
    (unused p237)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (unused p239)
    (goalsize p239 large)
    
    
    
    
    (unused p240)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 small)
    
    
    
    
    (unused p242)
    (goalsize p242 large)
    
    
    
    
    (unused p243)
    (goalsize p243 medium)
    
    
    
    
    (available p244)
    (colour p244 black)
    (wood p244 pine)
    (surface-condition p244 rough)
    (treatment p244 varnished)
    (goalsize p244 small)
    
    
    
    
    (unused p245)
    (goalsize p245 medium)
    
    
    
    
    (unused p246)
    (goalsize p246 large)
    
    
    
    
    (unused p247)
    (goalsize p247 medium)
    
    
    
    
    (unused p248)
    (goalsize p248 small)
    
    
    
    
    (unused p249)
    (goalsize p249 small)
    
    
    
    
    (unused p250)
    (goalsize p250 large)
    
    
    
    
    (unused p251)
    (goalsize p251 medium)
    
    
    
    
    (unused p252)
    (goalsize p252 medium)
    
    
    
    
    (unused p253)
    (goalsize p253 medium)
    
    
    
    
    (unused p254)
    (goalsize p254 large)
    
    
    
    
    (available p255)
    (colour p255 natural)
    (wood p255 cherry)
    (surface-condition p255 rough)
    (treatment p255 varnished)
    (goalsize p255 medium)
    
    
    
    
    (unused p256)
    (goalsize p256 small)
    
    
    
    
    (available p257)
    (colour p257 red)
    (wood p257 oak)
    (surface-condition p257 rough)
    (treatment p257 colourfragments)
    (goalsize p257 large)
    
    
    
    
    (available p258)
    (colour p258 green)
    (wood p258 oak)
    (surface-condition p258 smooth)
    (treatment p258 glazed)
    (goalsize p258 small)
    
    
    
    
    (unused p259)
    (goalsize p259 medium)
    
    
    
    
    (available p260)
    (colour p260 white)
    (wood p260 teak)
    (surface-condition p260 verysmooth)
    (treatment p260 colourfragments)
    (goalsize p260 large)
    
    
    
    
    (unused p261)
    (goalsize p261 large)
    
    
    
    
    (available p262)
    (colour p262 red)
    (wood p262 beech)
    (surface-condition p262 verysmooth)
    (treatment p262 colourfragments)
    (goalsize p262 large)
    
    
    
    
    (unused p263)
    (goalsize p263 large)
    
    
    
    
    (unused p264)
    (goalsize p264 large)
    
    
    
    
    (unused p265)
    (goalsize p265 large)
    
    
    
    
    (unused p266)
    (goalsize p266 small)
    
    
    
    
    (available p267)
    (colour p267 mauve)
    (wood p267 cherry)
    (surface-condition p267 verysmooth)
    (treatment p267 colourfragments)
    (goalsize p267 small)
    
    
    
    
    (unused p268)
    (goalsize p268 small)
    
    
    
    
    (unused p269)
    (goalsize p269 small)
    
    
    
    
    (unused p270)
    (goalsize p270 small)
    
    
    
    
    (available p271)
    (colour p271 white)
    (wood p271 teak)
    (surface-condition p271 smooth)
    (treatment p271 varnished)
    (goalsize p271 small)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s3)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
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
    (boardsize b14 s10)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s5)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s9)
    (wood b17 mahogany)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s8)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s1)
    (wood b19 mahogany)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s9)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s5)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s5)
    (wood b22 oak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s8)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s10)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s7)
    (wood b26 oak)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s8)
    (wood b27 oak)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s8)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s9)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s7)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s8)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s7)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s7)
    (wood b34 pine)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s7)
    (wood b35 pine)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s11)
    (wood b36 pine)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s10)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s7)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s8)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s10)
    (wood b41 pine)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s10)
    (wood b42 pine)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s4)
    (wood b43 pine)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s6)
    (wood b44 walnut)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s7)
    (wood b45 walnut)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s5)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s6)
    (wood b47 walnut)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s9)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s8)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s9)
    (wood b50 walnut)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s6)
    (wood b51 walnut)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s10)
    (wood b52 walnut)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s4)
    (wood b53 walnut)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s10)
    (wood b54 walnut)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s2)
    (wood b55 walnut)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s7)
    (wood b56 teak)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s7)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s6)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s7)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s8)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s9)
    (wood b61 teak)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s11)
    (wood b62 teak)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s10)
    (wood b63 teak)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s8)
    (wood b64 teak)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s11)
    (wood b65 teak)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s9)
    (wood b66 teak)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s11)
    (wood b67 teak)
    (surface-condition b67 smooth)
    (available b67)
    (boardsize b68 s6)
    (wood b68 teak)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s8)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
    (boardsize b70 s8)
    (wood b70 beech)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s9)
    (wood b71 beech)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s10)
    (wood b72 beech)
    (surface-condition b72 smooth)
    (available b72)
    (boardsize b73 s9)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
    (boardsize b74 s11)
    (wood b74 beech)
    (surface-condition b74 rough)
    (available b74)
    (boardsize b75 s7)
    (wood b75 beech)
    (surface-condition b75 rough)
    (available b75)
    (boardsize b76 s8)
    (wood b76 beech)
    (surface-condition b76 rough)
    (available b76)
    (boardsize b77 s8)
    (wood b77 beech)
    (surface-condition b77 rough)
    (available b77)
    (boardsize b78 s7)
    (wood b78 beech)
    (surface-condition b78 rough)
    (available b78)
    (boardsize b79 s8)
    (wood b79 beech)
    (surface-condition b79 smooth)
    (available b79)
    (boardsize b80 s4)
    (wood b80 beech)
    (surface-condition b80 rough)
    (available b80)
  )
  (:goal
    (and
      (available p0)
      (wood p0 cherry)
      (treatment p0 varnished)
      (available p1)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 mauve)
      (wood p2 beech)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 oak)
      (treatment p3 varnished)
      (available p4)
      (wood p4 teak)
      (treatment p4 varnished)
      (available p5)
      (colour p5 black)
      (treatment p5 varnished)
      (available p6)
      (surface-condition p6 smooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 natural)
      (wood p7 pine)
      (treatment p7 glazed)
      (available p8)
      (colour p8 mauve)
      (wood p8 beech)
      (available p9)
      (colour p9 blue)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 blue)
      (wood p10 mahogany)
      (available p11)
      (colour p11 natural)
      (wood p11 cherry)
      (treatment p11 glazed)
      (available p12)
      (colour p12 white)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 white)
      (wood p13 teak)
      (available p14)
      (wood p14 mahogany)
      (treatment p14 glazed)
      (available p15)
      (colour p15 blue)
      (wood p15 walnut)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (wood p16 pine)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 natural)
      (wood p17 pine)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 natural)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (wood p19 beech)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 mauve)
      (treatment p20 glazed)
      (available p21)
      (wood p21 mahogany)
      (surface-condition p21 smooth)
      (available p22)
      (colour p22 natural)
      (wood p22 teak)
      (surface-condition p22 verysmooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 red)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 blue)
      (wood p24 beech)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (wood p26 teak)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 blue)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 mauve)
      (wood p28 pine)
      (surface-condition p28 smooth)
      (available p29)
      (wood p29 mahogany)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 mauve)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 white)
      (wood p31 mahogany)
      (available p32)
      (colour p32 green)
      (wood p32 cherry)
      (surface-condition p32 verysmooth)
      (available p33)
      (wood p33 oak)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 mauve)
      (wood p34 teak)
      (surface-condition p34 verysmooth)
      (available p35)
      (colour p35 green)
      (surface-condition p35 smooth)
      (available p36)
      (colour p36 red)
      (wood p36 beech)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (wood p37 mahogany)
      (treatment p37 glazed)
      (available p38)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 blue)
      (treatment p39 glazed)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (wood p41 beech)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 white)
      (wood p42 oak)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (wood p43 oak)
      (surface-condition p43 smooth)
      (available p44)
      (wood p44 teak)
      (treatment p44 glazed)
      (available p45)
      (wood p45 pine)
      (treatment p45 varnished)
      (available p46)
      (colour p46 red)
      (wood p46 teak)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 mauve)
      (surface-condition p47 verysmooth)
      (available p48)
      (colour p48 green)
      (treatment p48 varnished)
      (available p49)
      (colour p49 white)
      (wood p49 pine)
      (available p50)
      (wood p50 pine)
      (surface-condition p50 smooth)
      (available p51)
      (wood p51 mahogany)
      (treatment p51 varnished)
      (available p52)
      (colour p52 white)
      (wood p52 oak)
      (available p53)
      (colour p53 green)
      (wood p53 cherry)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 green)
      (wood p54 pine)
      (surface-condition p54 verysmooth)
      (available p55)
      (colour p55 natural)
      (surface-condition p55 smooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 red)
      (treatment p56 glazed)
      (available p57)
      (colour p57 green)
      (wood p57 oak)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (wood p58 pine)
      (treatment p58 varnished)
      (available p59)
      (colour p59 blue)
      (surface-condition p59 verysmooth)
      (available p60)
      (colour p60 black)
      (wood p60 teak)
      (treatment p60 glazed)
      (available p61)
      (colour p61 red)
      (wood p61 cherry)
      (treatment p61 glazed)
      (available p62)
      (colour p62 white)
      (wood p62 oak)
      (available p63)
      (wood p63 pine)
      (surface-condition p63 verysmooth)
      (treatment p63 glazed)
      (available p64)
      (wood p64 oak)
      (treatment p64 varnished)
      (available p65)
      (wood p65 oak)
      (treatment p65 varnished)
      (available p66)
      (colour p66 mauve)
      (wood p66 pine)
      (surface-condition p66 smooth)
      (treatment p66 glazed)
      (available p67)
      (wood p67 beech)
      (treatment p67 varnished)
      (available p68)
      (colour p68 black)
      (treatment p68 glazed)
      (available p69)
      (wood p69 beech)
      (treatment p69 glazed)
      (available p70)
      (colour p70 green)
      (wood p70 walnut)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 black)
      (wood p71 teak)
      (surface-condition p71 smooth)
      (treatment p71 glazed)
      (available p72)
      (colour p72 white)
      (surface-condition p72 smooth)
      (available p73)
      (colour p73 red)
      (wood p73 oak)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 green)
      (surface-condition p74 smooth)
      (available p75)
      (wood p75 oak)
      (surface-condition p75 verysmooth)
      (available p76)
      (colour p76 red)
      (wood p76 oak)
      (surface-condition p76 smooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 green)
      (treatment p77 varnished)
      (available p78)
      (colour p78 black)
      (treatment p78 glazed)
      (available p79)
      (colour p79 natural)
      (wood p79 teak)
      (surface-condition p79 smooth)
      (treatment p79 varnished)
      (available p80)
      (colour p80 mauve)
      (surface-condition p80 verysmooth)
      (treatment p80 glazed)
      (available p81)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (surface-condition p82 smooth)
      (treatment p82 glazed)
      (available p83)
      (wood p83 walnut)
      (treatment p83 glazed)
      (available p84)
      (colour p84 green)
      (treatment p84 varnished)
      (available p85)
      (colour p85 white)
      (treatment p85 varnished)
      (available p86)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 red)
      (treatment p87 varnished)
      (available p88)
      (wood p88 walnut)
      (treatment p88 glazed)
      (available p89)
      (colour p89 mauve)
      (surface-condition p89 verysmooth)
      (available p90)
      (wood p90 pine)
      (surface-condition p90 smooth)
      (available p91)
      (surface-condition p91 smooth)
      (treatment p91 glazed)
      (available p92)
      (wood p92 beech)
      (surface-condition p92 verysmooth)
      (available p93)
      (wood p93 beech)
      (surface-condition p93 verysmooth)
      (available p94)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 mauve)
      (surface-condition p95 verysmooth)
      (available p96)
      (colour p96 black)
      (wood p96 walnut)
      (surface-condition p96 smooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 white)
      (wood p97 beech)
      (available p98)
      (colour p98 white)
      (wood p98 oak)
      (treatment p98 glazed)
      (available p99)
      (colour p99 red)
      (surface-condition p99 smooth)
      (available p100)
      (colour p100 natural)
      (treatment p100 glazed)
      (available p101)
      (surface-condition p101 smooth)
      (treatment p101 varnished)
      (available p102)
      (wood p102 cherry)
      (surface-condition p102 smooth)
      (available p103)
      (colour p103 white)
      (treatment p103 varnished)
      (available p104)
      (wood p104 beech)
      (surface-condition p104 smooth)
      (available p105)
      (colour p105 black)
      (surface-condition p105 verysmooth)
      (available p106)
      (colour p106 mauve)
      (wood p106 cherry)
      (available p107)
      (wood p107 teak)
      (surface-condition p107 verysmooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 white)
      (wood p108 cherry)
      (surface-condition p108 smooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 blue)
      (wood p109 pine)
      (available p110)
      (colour p110 black)
      (surface-condition p110 smooth)
      (available p111)
      (colour p111 white)
      (wood p111 pine)
      (surface-condition p111 smooth)
      (treatment p111 varnished)
      (available p112)
      (colour p112 white)
      (treatment p112 varnished)
      (available p113)
      (colour p113 green)
      (wood p113 pine)
      (treatment p113 varnished)
      (available p114)
      (wood p114 mahogany)
      (treatment p114 glazed)
      (available p115)
      (surface-condition p115 smooth)
      (treatment p115 glazed)
      (available p116)
      (colour p116 green)
      (treatment p116 glazed)
      (available p117)
      (colour p117 blue)
      (wood p117 walnut)
      (surface-condition p117 verysmooth)
      (available p118)
      (surface-condition p118 verysmooth)
      (treatment p118 glazed)
      (available p119)
      (colour p119 white)
      (wood p119 walnut)
      (surface-condition p119 verysmooth)
      (available p120)
      (surface-condition p120 smooth)
      (treatment p120 glazed)
      (available p121)
      (wood p121 oak)
      (surface-condition p121 verysmooth)
      (available p122)
      (surface-condition p122 verysmooth)
      (treatment p122 varnished)
      (available p123)
      (colour p123 green)
      (wood p123 walnut)
      (surface-condition p123 verysmooth)
      (treatment p123 varnished)
      (available p124)
      (wood p124 walnut)
      (treatment p124 glazed)
      (available p125)
      (colour p125 red)
      (surface-condition p125 verysmooth)
      (treatment p125 glazed)
      (available p126)
      (wood p126 beech)
      (treatment p126 glazed)
      (available p127)
      (colour p127 red)
      (wood p127 walnut)
      (available p128)
      (colour p128 natural)
      (treatment p128 varnished)
      (available p129)
      (colour p129 blue)
      (wood p129 mahogany)
      (surface-condition p129 smooth)
      (treatment p129 glazed)
      (available p130)
      (wood p130 oak)
      (treatment p130 glazed)
      (available p131)
      (colour p131 natural)
      (wood p131 cherry)
      (available p132)
      (colour p132 blue)
      (wood p132 mahogany)
      (surface-condition p132 smooth)
      (treatment p132 glazed)
      (available p133)
      (colour p133 red)
      (treatment p133 varnished)
      (available p134)
      (colour p134 white)
      (wood p134 cherry)
      (surface-condition p134 smooth)
      (treatment p134 glazed)
      (available p135)
      (colour p135 blue)
      (wood p135 mahogany)
      (surface-condition p135 verysmooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 green)
      (surface-condition p136 verysmooth)
      (treatment p136 glazed)
      (available p137)
      (colour p137 white)
      (treatment p137 varnished)
      (available p138)
      (colour p138 natural)
      (treatment p138 glazed)
      (available p139)
      (colour p139 black)
      (surface-condition p139 verysmooth)
      (available p140)
      (colour p140 green)
      (wood p140 mahogany)
      (treatment p140 varnished)
      (available p141)
      (wood p141 teak)
      (treatment p141 glazed)
      (available p142)
      (surface-condition p142 smooth)
      (treatment p142 glazed)
      (available p143)
      (colour p143 blue)
      (treatment p143 glazed)
      (available p144)
      (wood p144 pine)
      (surface-condition p144 verysmooth)
      (available p145)
      (colour p145 red)
      (treatment p145 glazed)
      (available p146)
      (colour p146 white)
      (treatment p146 glazed)
      (available p147)
      (surface-condition p147 smooth)
      (treatment p147 varnished)
      (available p148)
      (colour p148 natural)
      (wood p148 pine)
      (surface-condition p148 verysmooth)
      (treatment p148 glazed)
      (available p149)
      (colour p149 blue)
      (wood p149 beech)
      (surface-condition p149 verysmooth)
      (treatment p149 glazed)
      (available p150)
      (colour p150 green)
      (wood p150 cherry)
      (available p151)
      (colour p151 mauve)
      (wood p151 cherry)
      (available p152)
      (colour p152 green)
      (treatment p152 glazed)
      (available p153)
      (wood p153 teak)
      (treatment p153 glazed)
      (available p154)
      (colour p154 green)
      (surface-condition p154 smooth)
      (treatment p154 varnished)
      (available p155)
      (colour p155 red)
      (surface-condition p155 smooth)
      (treatment p155 varnished)
      (available p156)
      (colour p156 black)
      (wood p156 teak)
      (available p157)
      (colour p157 natural)
      (wood p157 teak)
      (surface-condition p157 smooth)
      (treatment p157 varnished)
      (available p158)
      (wood p158 teak)
      (treatment p158 glazed)
      (available p159)
      (colour p159 green)
      (wood p159 walnut)
      (surface-condition p159 smooth)
      (treatment p159 varnished)
      (available p160)
      (colour p160 red)
      (surface-condition p160 verysmooth)
      (available p161)
      (colour p161 black)
      (wood p161 teak)
      (surface-condition p161 verysmooth)
      (available p162)
      (colour p162 natural)
      (wood p162 pine)
      (available p163)
      (colour p163 mauve)
      (wood p163 pine)
      (available p164)
      (colour p164 red)
      (wood p164 pine)
      (surface-condition p164 verysmooth)
      (available p165)
      (wood p165 teak)
      (surface-condition p165 verysmooth)
      (available p166)
      (colour p166 red)
      (surface-condition p166 smooth)
      (available p167)
      (colour p167 white)
      (surface-condition p167 verysmooth)
      (available p168)
      (colour p168 green)
      (treatment p168 varnished)
      (available p169)
      (colour p169 natural)
      (treatment p169 varnished)
      (available p170)
      (colour p170 black)
      (surface-condition p170 verysmooth)
      (available p171)
      (wood p171 walnut)
      (treatment p171 varnished)
      (available p172)
      (colour p172 green)
      (wood p172 walnut)
      (available p173)
      (wood p173 pine)
      (surface-condition p173 smooth)
      (available p174)
      (wood p174 cherry)
      (treatment p174 glazed)
      (available p175)
      (colour p175 blue)
      (wood p175 pine)
      (available p176)
      (colour p176 white)
      (treatment p176 varnished)
      (available p177)
      (colour p177 blue)
      (surface-condition p177 smooth)
      (available p178)
      (wood p178 teak)
      (treatment p178 varnished)
      (available p179)
      (wood p179 walnut)
      (surface-condition p179 verysmooth)
      (available p180)
      (colour p180 blue)
      (surface-condition p180 verysmooth)
      (available p181)
      (colour p181 blue)
      (wood p181 beech)
      (surface-condition p181 verysmooth)
      (available p182)
      (wood p182 pine)
      (treatment p182 glazed)
      (available p183)
      (colour p183 red)
      (wood p183 teak)
      (treatment p183 glazed)
      (available p184)
      (surface-condition p184 verysmooth)
      (treatment p184 varnished)
      (available p185)
      (colour p185 red)
      (wood p185 pine)
      (surface-condition p185 verysmooth)
      (treatment p185 varnished)
      (available p186)
      (surface-condition p186 smooth)
      (treatment p186 varnished)
      (available p187)
      (wood p187 teak)
      (treatment p187 glazed)
      (available p188)
      (surface-condition p188 verysmooth)
      (treatment p188 glazed)
      (available p189)
      (colour p189 mauve)
      (wood p189 beech)
      (surface-condition p189 smooth)
      (treatment p189 glazed)
      (available p190)
      (colour p190 mauve)
      (wood p190 beech)
      (surface-condition p190 verysmooth)
      (available p191)
      (colour p191 red)
      (wood p191 mahogany)
      (surface-condition p191 smooth)
      (treatment p191 varnished)
      (available p192)
      (colour p192 red)
      (wood p192 beech)
      (treatment p192 varnished)
      (available p193)
      (colour p193 natural)
      (treatment p193 varnished)
      (available p194)
      (colour p194 green)
      (wood p194 mahogany)
      (available p195)
      (surface-condition p195 verysmooth)
      (treatment p195 varnished)
      (available p196)
      (colour p196 red)
      (wood p196 pine)
      (available p197)
      (colour p197 natural)
      (wood p197 pine)
      (surface-condition p197 verysmooth)
      (treatment p197 glazed)
      (available p198)
      (wood p198 walnut)
      (surface-condition p198 smooth)
      (treatment p198 glazed)
      (available p199)
      (colour p199 red)
      (surface-condition p199 smooth)
      (treatment p199 varnished)
      (available p200)
      (colour p200 black)
      (wood p200 cherry)
      (treatment p200 varnished)
      (available p201)
      (wood p201 pine)
      (surface-condition p201 verysmooth)
      (available p202)
      (colour p202 mauve)
      (wood p202 walnut)
      (treatment p202 glazed)
      (available p203)
      (surface-condition p203 smooth)
      (treatment p203 glazed)
      (available p204)
      (wood p204 walnut)
      (surface-condition p204 smooth)
      (available p205)
      (colour p205 red)
      (wood p205 teak)
      (treatment p205 varnished)
      (available p206)
      (colour p206 mauve)
      (surface-condition p206 verysmooth)
      (available p207)
      (colour p207 blue)
      (wood p207 oak)
      (surface-condition p207 verysmooth)
      (treatment p207 glazed)
      (available p208)
      (wood p208 cherry)
      (surface-condition p208 smooth)
      (available p209)
      (colour p209 green)
      (wood p209 oak)
      (available p210)
      (surface-condition p210 verysmooth)
      (treatment p210 glazed)
      (available p211)
      (colour p211 red)
      (wood p211 pine)
      (surface-condition p211 smooth)
      (treatment p211 varnished)
      (available p212)
      (colour p212 mauve)
      (treatment p212 glazed)
      (available p213)
      (wood p213 walnut)
      (surface-condition p213 smooth)
      (available p214)
      (colour p214 white)
      (treatment p214 varnished)
      (available p215)
      (wood p215 beech)
      (surface-condition p215 verysmooth)
      (available p216)
      (colour p216 blue)
      (wood p216 oak)
      (treatment p216 varnished)
      (available p217)
      (wood p217 teak)
      (surface-condition p217 verysmooth)
      (available p218)
      (colour p218 white)
      (wood p218 teak)
      (treatment p218 varnished)
      (available p219)
      (colour p219 white)
      (surface-condition p219 verysmooth)
      (available p220)
      (surface-condition p220 smooth)
      (treatment p220 glazed)
      (available p221)
      (colour p221 black)
      (surface-condition p221 verysmooth)
      (treatment p221 glazed)
      (available p222)
      (wood p222 teak)
      (surface-condition p222 verysmooth)
      (available p223)
      (wood p223 oak)
      (surface-condition p223 verysmooth)
      (available p224)
      (colour p224 blue)
      (treatment p224 glazed)
      (available p225)
      (colour p225 natural)
      (wood p225 walnut)
      (surface-condition p225 smooth)
      (treatment p225 varnished)
      (available p226)
      (wood p226 pine)
      (treatment p226 varnished)
      (available p227)
      (colour p227 white)
      (surface-condition p227 smooth)
      (treatment p227 glazed)
      (available p228)
      (wood p228 beech)
      (surface-condition p228 verysmooth)
      (treatment p228 glazed)
      (available p229)
      (surface-condition p229 smooth)
      (treatment p229 glazed)
      (available p230)
      (colour p230 red)
      (wood p230 beech)
      (surface-condition p230 verysmooth)
      (treatment p230 varnished)
      (available p231)
      (wood p231 mahogany)
      (treatment p231 varnished)
      (available p232)
      (colour p232 black)
      (wood p232 beech)
      (surface-condition p232 verysmooth)
      (treatment p232 varnished)
      (available p233)
      (colour p233 mauve)
      (wood p233 mahogany)
      (surface-condition p233 verysmooth)
      (treatment p233 glazed)
      (available p234)
      (colour p234 blue)
      (wood p234 teak)
      (surface-condition p234 smooth)
      (treatment p234 varnished)
      (available p235)
      (wood p235 walnut)
      (surface-condition p235 smooth)
      (available p236)
      (wood p236 oak)
      (surface-condition p236 verysmooth)
      (available p237)
      (colour p237 natural)
      (treatment p237 glazed)
      (available p238)
      (wood p238 oak)
      (treatment p238 glazed)
      (available p239)
      (surface-condition p239 verysmooth)
      (treatment p239 glazed)
      (available p240)
      (colour p240 black)
      (surface-condition p240 verysmooth)
      (treatment p240 varnished)
      (available p241)
      (wood p241 mahogany)
      (treatment p241 glazed)
      (available p242)
      (wood p242 mahogany)
      (surface-condition p242 smooth)
      (available p243)
      (colour p243 natural)
      (treatment p243 varnished)
      (available p244)
      (wood p244 pine)
      (surface-condition p244 verysmooth)
      (available p245)
      (colour p245 black)
      (wood p245 oak)
      (available p246)
      (colour p246 mauve)
      (wood p246 cherry)
      (surface-condition p246 verysmooth)
      (treatment p246 glazed)
      (available p247)
      (colour p247 green)
      (wood p247 mahogany)
      (surface-condition p247 verysmooth)
      (treatment p247 varnished)
      (available p248)
      (wood p248 walnut)
      (treatment p248 varnished)
      (available p249)
      (colour p249 natural)
      (wood p249 cherry)
      (surface-condition p249 smooth)
      (available p250)
      (colour p250 green)
      (wood p250 beech)
      (surface-condition p250 smooth)
      (treatment p250 varnished)
      (available p251)
      (wood p251 pine)
      (surface-condition p251 verysmooth)
      (treatment p251 varnished)
      (available p252)
      (surface-condition p252 verysmooth)
      (treatment p252 varnished)
      (available p253)
      (colour p253 natural)
      (wood p253 beech)
      (surface-condition p253 smooth)
      (treatment p253 varnished)
      (available p254)
      (wood p254 walnut)
      (treatment p254 glazed)
      (available p255)
      (colour p255 green)
      (treatment p255 varnished)
      (available p256)
      (wood p256 mahogany)
      (surface-condition p256 verysmooth)
      (available p257)
      (colour p257 mauve)
      (wood p257 oak)
      (treatment p257 varnished)
      (available p258)
      (colour p258 natural)
      (wood p258 oak)
      (available p259)
      (colour p259 white)
      (wood p259 teak)
      (available p260)
      (wood p260 teak)
      (surface-condition p260 smooth)
      (treatment p260 varnished)
      (available p261)
      (colour p261 mauve)
      (wood p261 pine)
      (available p262)
      (wood p262 beech)
      (treatment p262 glazed)
      (available p263)
      (colour p263 blue)
      (wood p263 teak)
      (available p264)
      (wood p264 beech)
      (treatment p264 glazed)
      (available p265)
      (colour p265 white)
      (treatment p265 glazed)
      (available p266)
      (wood p266 oak)
      (treatment p266 glazed)
      (available p267)
      (colour p267 black)
      (surface-condition p267 verysmooth)
      (available p268)
      (colour p268 white)
      (treatment p268 glazed)
      (available p269)
      (colour p269 mauve)
      (treatment p269 glazed)
      (available p270)
      (colour p270 natural)
      (wood p270 oak)
      (surface-condition p270 smooth)
      (treatment p270 glazed)
      (available p271)
      (colour p271 green)
      (surface-condition p271 verysmooth)
      (treatment p271 varnished)
    )
  )
  
)
