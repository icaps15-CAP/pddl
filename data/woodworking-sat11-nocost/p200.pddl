; woodworking task with 287 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 253583

(define (problem wood-prob-sat-200)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue red green black mauve white - acolour
    walnut teak beech pine mahogany oak cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 p278 p279 p280 p281 p282 p283 p284 p285 p286 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 b75 b76 b77 b78 b79 b80 b81 b82 b83 b84 b85 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
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
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (available p4)
    (colour p4 black)
    (wood p4 pine)
    (surface-condition p4 verysmooth)
    (treatment p4 glazed)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 mauve)
    (wood p21 cherry)
    (surface-condition p21 smooth)
    (treatment p21 colourfragments)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (available p23)
    (colour p23 blue)
    (wood p23 teak)
    (surface-condition p23 rough)
    (treatment p23 colourfragments)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 natural)
    (wood p25 cherry)
    (surface-condition p25 verysmooth)
    (treatment p25 glazed)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (available p29)
    (colour p29 red)
    (wood p29 teak)
    (surface-condition p29 rough)
    (treatment p29 glazed)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (available p39)
    (colour p39 mauve)
    (wood p39 teak)
    (surface-condition p39 rough)
    (treatment p39 colourfragments)
    (goalsize p39 medium)
    
    
    
    
    (available p40)
    (colour p40 white)
    (wood p40 walnut)
    (surface-condition p40 smooth)
    (treatment p40 glazed)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (available p46)
    (colour p46 red)
    (wood p46 teak)
    (surface-condition p46 rough)
    (treatment p46 varnished)
    (goalsize p46 medium)
    
    
    
    
    (available p47)
    (colour p47 white)
    (wood p47 mahogany)
    (surface-condition p47 rough)
    (treatment p47 glazed)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (available p50)
    (colour p50 natural)
    (wood p50 mahogany)
    (surface-condition p50 rough)
    (treatment p50 colourfragments)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (available p55)
    (colour p55 black)
    (wood p55 cherry)
    (surface-condition p55 verysmooth)
    (treatment p55 colourfragments)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (available p63)
    (colour p63 green)
    (wood p63 cherry)
    (surface-condition p63 smooth)
    (treatment p63 varnished)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 black)
    (wood p66 teak)
    (surface-condition p66 smooth)
    (treatment p66 glazed)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (available p75)
    (colour p75 mauve)
    (wood p75 oak)
    (surface-condition p75 smooth)
    (treatment p75 colourfragments)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (available p79)
    (colour p79 blue)
    (wood p79 mahogany)
    (surface-condition p79 verysmooth)
    (treatment p79 colourfragments)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (available p84)
    (colour p84 natural)
    (wood p84 pine)
    (surface-condition p84 smooth)
    (treatment p84 glazed)
    (goalsize p84 large)
    
    
    
    
    (available p85)
    (colour p85 blue)
    (wood p85 beech)
    (surface-condition p85 rough)
    (treatment p85 glazed)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (available p87)
    (colour p87 natural)
    (wood p87 pine)
    (surface-condition p87 rough)
    (treatment p87 glazed)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (available p89)
    (colour p89 blue)
    (wood p89 pine)
    (surface-condition p89 smooth)
    (treatment p89 glazed)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (available p91)
    (colour p91 black)
    (wood p91 oak)
    (surface-condition p91 verysmooth)
    (treatment p91 colourfragments)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (available p97)
    (colour p97 green)
    (wood p97 pine)
    (surface-condition p97 smooth)
    (treatment p97 colourfragments)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (available p101)
    (colour p101 red)
    (wood p101 mahogany)
    (surface-condition p101 smooth)
    (treatment p101 glazed)
    (goalsize p101 medium)
    
    
    
    
    (available p102)
    (colour p102 mauve)
    (wood p102 oak)
    (surface-condition p102 rough)
    (treatment p102 glazed)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (available p111)
    (colour p111 red)
    (wood p111 cherry)
    (surface-condition p111 smooth)
    (treatment p111 colourfragments)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (available p113)
    (colour p113 red)
    (wood p113 teak)
    (surface-condition p113 verysmooth)
    (treatment p113 glazed)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (available p134)
    (colour p134 natural)
    (wood p134 teak)
    (surface-condition p134 rough)
    (treatment p134 varnished)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (available p136)
    (colour p136 black)
    (wood p136 pine)
    (surface-condition p136 smooth)
    (treatment p136 varnished)
    (goalsize p136 large)
    
    
    
    
    (available p137)
    (colour p137 green)
    (wood p137 walnut)
    (surface-condition p137 rough)
    (treatment p137 colourfragments)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (available p139)
    (colour p139 black)
    (wood p139 beech)
    (surface-condition p139 rough)
    (treatment p139 varnished)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (available p142)
    (colour p142 red)
    (wood p142 oak)
    (surface-condition p142 verysmooth)
    (treatment p142 varnished)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (available p150)
    (colour p150 mauve)
    (wood p150 cherry)
    (surface-condition p150 verysmooth)
    (treatment p150 varnished)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (available p158)
    (colour p158 blue)
    (wood p158 cherry)
    (surface-condition p158 smooth)
    (treatment p158 colourfragments)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (available p167)
    (colour p167 natural)
    (wood p167 teak)
    (surface-condition p167 rough)
    (treatment p167 glazed)
    (goalsize p167 medium)
    
    
    
    
    (unused p168)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (available p170)
    (colour p170 natural)
    (wood p170 oak)
    (surface-condition p170 rough)
    (treatment p170 colourfragments)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 medium)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (available p174)
    (colour p174 blue)
    (wood p174 mahogany)
    (surface-condition p174 smooth)
    (treatment p174 varnished)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 medium)
    
    
    
    
    (available p178)
    (colour p178 mauve)
    (wood p178 teak)
    (surface-condition p178 smooth)
    (treatment p178 varnished)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 large)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (unused p182)
    (goalsize p182 large)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (available p186)
    (colour p186 mauve)
    (wood p186 beech)
    (surface-condition p186 smooth)
    (treatment p186 glazed)
    (goalsize p186 small)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (available p196)
    (colour p196 black)
    (wood p196 teak)
    (surface-condition p196 smooth)
    (treatment p196 varnished)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (available p198)
    (colour p198 mauve)
    (wood p198 oak)
    (surface-condition p198 verysmooth)
    (treatment p198 varnished)
    (goalsize p198 small)
    
    
    
    
    (available p199)
    (colour p199 green)
    (wood p199 beech)
    (surface-condition p199 verysmooth)
    (treatment p199 glazed)
    (goalsize p199 medium)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 large)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 large)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 small)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (available p211)
    (colour p211 mauve)
    (wood p211 mahogany)
    (surface-condition p211 smooth)
    (treatment p211 colourfragments)
    (goalsize p211 medium)
    
    
    
    
    (unused p212)
    (goalsize p212 small)
    
    
    
    
    (available p213)
    (colour p213 black)
    (wood p213 oak)
    (surface-condition p213 smooth)
    (treatment p213 glazed)
    (goalsize p213 medium)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (unused p215)
    (goalsize p215 large)
    
    
    
    
    (available p216)
    (colour p216 red)
    (wood p216 beech)
    (surface-condition p216 verysmooth)
    (treatment p216 varnished)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 small)
    
    
    
    
    (unused p218)
    (goalsize p218 medium)
    
    
    
    
    (unused p219)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 small)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 large)
    
    
    
    
    (unused p223)
    (goalsize p223 large)
    
    
    
    
    (unused p224)
    (goalsize p224 large)
    
    
    
    
    (unused p225)
    (goalsize p225 large)
    
    
    
    
    (unused p226)
    (goalsize p226 small)
    
    
    
    
    (unused p227)
    (goalsize p227 small)
    
    
    
    
    (available p228)
    (colour p228 blue)
    (wood p228 pine)
    (surface-condition p228 verysmooth)
    (treatment p228 varnished)
    (goalsize p228 large)
    
    
    
    
    (available p229)
    (colour p229 green)
    (wood p229 cherry)
    (surface-condition p229 smooth)
    (treatment p229 colourfragments)
    (goalsize p229 small)
    
    
    
    
    (available p230)
    (colour p230 blue)
    (wood p230 cherry)
    (surface-condition p230 smooth)
    (treatment p230 colourfragments)
    (goalsize p230 small)
    
    
    
    
    (unused p231)
    (goalsize p231 medium)
    
    
    
    
    (unused p232)
    (goalsize p232 small)
    
    
    
    
    (available p233)
    (colour p233 green)
    (wood p233 teak)
    (surface-condition p233 rough)
    (treatment p233 varnished)
    (goalsize p233 medium)
    
    
    
    
    (available p234)
    (colour p234 black)
    (wood p234 teak)
    (surface-condition p234 rough)
    (treatment p234 colourfragments)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 small)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (unused p237)
    (goalsize p237 large)
    
    
    
    
    (available p238)
    (colour p238 blue)
    (wood p238 oak)
    (surface-condition p238 rough)
    (treatment p238 colourfragments)
    (goalsize p238 large)
    
    
    
    
    (unused p239)
    (goalsize p239 medium)
    
    
    
    
    (unused p240)
    (goalsize p240 large)
    
    
    
    
    (available p241)
    (colour p241 green)
    (wood p241 beech)
    (surface-condition p241 smooth)
    (treatment p241 glazed)
    (goalsize p241 small)
    
    
    
    
    (unused p242)
    (goalsize p242 small)
    
    
    
    
    (unused p243)
    (goalsize p243 large)
    
    
    
    
    (unused p244)
    (goalsize p244 large)
    
    
    
    
    (unused p245)
    (goalsize p245 small)
    
    
    
    
    (available p246)
    (colour p246 blue)
    (wood p246 beech)
    (surface-condition p246 rough)
    (treatment p246 varnished)
    (goalsize p246 small)
    
    
    
    
    (unused p247)
    (goalsize p247 medium)
    
    
    
    
    (unused p248)
    (goalsize p248 medium)
    
    
    
    
    (unused p249)
    (goalsize p249 medium)
    
    
    
    
    (unused p250)
    (goalsize p250 large)
    
    
    
    
    (available p251)
    (colour p251 mauve)
    (wood p251 walnut)
    (surface-condition p251 smooth)
    (treatment p251 varnished)
    (goalsize p251 medium)
    
    
    
    
    (unused p252)
    (goalsize p252 medium)
    
    
    
    
    (available p253)
    (colour p253 natural)
    (wood p253 walnut)
    (surface-condition p253 verysmooth)
    (treatment p253 varnished)
    (goalsize p253 small)
    
    
    
    
    (unused p254)
    (goalsize p254 small)
    
    
    
    
    (unused p255)
    (goalsize p255 small)
    
    
    
    
    (unused p256)
    (goalsize p256 small)
    
    
    
    
    (unused p257)
    (goalsize p257 large)
    
    
    
    
    (unused p258)
    (goalsize p258 medium)
    
    
    
    
    (unused p259)
    (goalsize p259 large)
    
    
    
    
    (unused p260)
    (goalsize p260 small)
    
    
    
    
    (unused p261)
    (goalsize p261 large)
    
    
    
    
    (unused p262)
    (goalsize p262 large)
    
    
    
    
    (unused p263)
    (goalsize p263 small)
    
    
    
    
    (available p264)
    (colour p264 white)
    (wood p264 mahogany)
    (surface-condition p264 smooth)
    (treatment p264 colourfragments)
    (goalsize p264 large)
    
    
    
    
    (unused p265)
    (goalsize p265 medium)
    
    
    
    
    (unused p266)
    (goalsize p266 medium)
    
    
    
    
    (unused p267)
    (goalsize p267 large)
    
    
    
    
    (unused p268)
    (goalsize p268 large)
    
    
    
    
    (unused p269)
    (goalsize p269 large)
    
    
    
    
    (unused p270)
    (goalsize p270 small)
    
    
    
    
    (unused p271)
    (goalsize p271 medium)
    
    
    
    
    (unused p272)
    (goalsize p272 small)
    
    
    
    
    (unused p273)
    (goalsize p273 large)
    
    
    
    
    (available p274)
    (colour p274 white)
    (wood p274 cherry)
    (surface-condition p274 smooth)
    (treatment p274 glazed)
    (goalsize p274 small)
    
    
    
    
    (unused p275)
    (goalsize p275 small)
    
    
    
    
    (unused p276)
    (goalsize p276 small)
    
    
    
    
    (available p277)
    (colour p277 white)
    (wood p277 walnut)
    (surface-condition p277 rough)
    (treatment p277 colourfragments)
    (goalsize p277 large)
    
    
    
    
    (available p278)
    (colour p278 natural)
    (wood p278 oak)
    (surface-condition p278 rough)
    (treatment p278 colourfragments)
    (goalsize p278 small)
    
    
    
    
    (unused p279)
    (goalsize p279 medium)
    
    
    
    
    (unused p280)
    (goalsize p280 medium)
    
    
    
    
    (available p281)
    (colour p281 blue)
    (wood p281 pine)
    (surface-condition p281 verysmooth)
    (treatment p281 colourfragments)
    (goalsize p281 large)
    
    
    
    
    (unused p282)
    (goalsize p282 small)
    
    
    
    
    (unused p283)
    (goalsize p283 large)
    
    
    
    
    (unused p284)
    (goalsize p284 large)
    
    
    
    
    (unused p285)
    (goalsize p285 small)
    
    
    
    
    (unused p286)
    (goalsize p286 medium)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s5)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s10)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 cherry)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s5)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 cherry)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s9)
    (wood b11 cherry)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 cherry)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s3)
    (wood b13 cherry)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s9)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s5)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 mahogany)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s10)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 mahogany)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 mahogany)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 mahogany)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s10)
    (wood b24 mahogany)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s6)
    (wood b25 mahogany)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s10)
    (wood b26 mahogany)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 mahogany)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s3)
    (wood b28 mahogany)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s10)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s10)
    (wood b31 oak)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s7)
    (wood b32 oak)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 oak)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s7)
    (wood b34 oak)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 oak)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s9)
    (wood b36 oak)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s9)
    (wood b37 oak)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s6)
    (wood b38 oak)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s12)
    (wood b39 oak)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s8)
    (wood b40 oak)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s9)
    (wood b41 oak)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s8)
    (wood b42 oak)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s10)
    (wood b43 oak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s1)
    (wood b44 oak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s9)
    (wood b45 pine)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s8)
    (wood b46 pine)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s6)
    (wood b47 pine)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s9)
    (wood b48 pine)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s9)
    (wood b49 pine)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s7)
    (wood b50 pine)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s7)
    (wood b51 pine)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s7)
    (wood b52 pine)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s10)
    (wood b53 pine)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s8)
    (wood b54 pine)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s6)
    (wood b55 pine)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s8)
    (wood b56 walnut)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s10)
    (wood b57 walnut)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s7)
    (wood b58 walnut)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s8)
    (wood b59 walnut)
    (surface-condition b59 smooth)
    (available b59)
    (boardsize b60 s7)
    (wood b60 walnut)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s11)
    (wood b61 walnut)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s8)
    (wood b62 walnut)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s10)
    (wood b63 walnut)
    (surface-condition b63 smooth)
    (available b63)
    (boardsize b64 s9)
    (wood b64 walnut)
    (surface-condition b64 smooth)
    (available b64)
    (boardsize b65 s5)
    (wood b65 walnut)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s5)
    (wood b66 teak)
    (surface-condition b66 smooth)
    (available b66)
    (boardsize b67 s10)
    (wood b67 teak)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s8)
    (wood b68 teak)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s11)
    (wood b69 teak)
    (surface-condition b69 smooth)
    (available b69)
    (boardsize b70 s8)
    (wood b70 teak)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s7)
    (wood b71 teak)
    (surface-condition b71 smooth)
    (available b71)
    (boardsize b72 s9)
    (wood b72 teak)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s11)
    (wood b73 teak)
    (surface-condition b73 smooth)
    (available b73)
    (boardsize b74 s6)
    (wood b74 teak)
    (surface-condition b74 rough)
    (available b74)
    (boardsize b75 s5)
    (wood b75 teak)
    (surface-condition b75 rough)
    (available b75)
    (boardsize b76 s3)
    (wood b76 teak)
    (surface-condition b76 rough)
    (available b76)
    (boardsize b77 s10)
    (wood b77 beech)
    (surface-condition b77 rough)
    (available b77)
    (boardsize b78 s8)
    (wood b78 beech)
    (surface-condition b78 rough)
    (available b78)
    (boardsize b79 s6)
    (wood b79 beech)
    (surface-condition b79 rough)
    (available b79)
    (boardsize b80 s7)
    (wood b80 beech)
    (surface-condition b80 rough)
    (available b80)
    (boardsize b81 s11)
    (wood b81 beech)
    (surface-condition b81 rough)
    (available b81)
    (boardsize b82 s9)
    (wood b82 beech)
    (surface-condition b82 rough)
    (available b82)
    (boardsize b83 s8)
    (wood b83 beech)
    (surface-condition b83 rough)
    (available b83)
    (boardsize b84 s7)
    (wood b84 beech)
    (surface-condition b84 smooth)
    (available b84)
    (boardsize b85 s4)
    (wood b85 beech)
    (surface-condition b85 smooth)
    (available b85)
  )
  (:goal
    (and
      (available p0)
      (colour p0 white)
      (surface-condition p0 smooth)
      (available p1)
      (colour p1 natural)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 red)
      (wood p2 beech)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 black)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 mauve)
      (wood p4 pine)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 mauve)
      (wood p5 mahogany)
      (treatment p5 varnished)
      (available p6)
      (colour p6 white)
      (wood p6 pine)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 mauve)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 green)
      (wood p8 mahogany)
      (available p9)
      (wood p9 cherry)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 natural)
      (wood p10 oak)
      (treatment p10 glazed)
      (available p11)
      (wood p11 pine)
      (treatment p11 glazed)
      (available p12)
      (wood p12 mahogany)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 mauve)
      (wood p13 mahogany)
      (available p14)
      (colour p14 white)
      (wood p14 teak)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (wood p15 pine)
      (treatment p15 varnished)
      (available p16)
      (colour p16 natural)
      (wood p16 mahogany)
      (available p17)
      (wood p17 mahogany)
      (surface-condition p17 verysmooth)
      (available p18)
      (wood p18 walnut)
      (treatment p18 varnished)
      (available p19)
      (colour p19 red)
      (wood p19 cherry)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 blue)
      (wood p21 cherry)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 blue)
      (wood p22 cherry)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 natural)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 white)
      (wood p24 cherry)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 blue)
      (wood p25 cherry)
      (surface-condition p25 smooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 red)
      (wood p26 walnut)
      (available p27)
      (colour p27 green)
      (treatment p27 varnished)
      (available p28)
      (colour p28 red)
      (wood p28 walnut)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (wood p29 teak)
      (surface-condition p29 smooth)
      (available p30)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 white)
      (wood p31 teak)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 mauve)
      (wood p32 walnut)
      (available p33)
      (colour p33 blue)
      (wood p33 cherry)
      (surface-condition p33 smooth)
      (treatment p33 varnished)
      (available p34)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (wood p35 walnut)
      (surface-condition p35 verysmooth)
      (available p36)
      (wood p36 walnut)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 mauve)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 mauve)
      (wood p38 cherry)
      (surface-condition p38 verysmooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 black)
      (surface-condition p39 smooth)
      (available p40)
      (colour p40 natural)
      (wood p40 walnut)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 green)
      (wood p42 cherry)
      (treatment p42 varnished)
      (available p43)
      (colour p43 blue)
      (wood p43 mahogany)
      (available p44)
      (colour p44 blue)
      (wood p44 mahogany)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 black)
      (surface-condition p45 verysmooth)
      (available p46)
      (colour p46 black)
      (wood p46 teak)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 natural)
      (wood p47 mahogany)
      (surface-condition p47 verysmooth)
      (available p48)
      (colour p48 mauve)
      (wood p48 cherry)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 green)
      (wood p49 pine)
      (available p50)
      (colour p50 red)
      (surface-condition p50 smooth)
      (available p51)
      (colour p51 white)
      (wood p51 oak)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 black)
      (wood p53 beech)
      (surface-condition p53 verysmooth)
      (available p54)
      (colour p54 mauve)
      (surface-condition p54 smooth)
      (available p55)
      (colour p55 natural)
      (treatment p55 glazed)
      (available p56)
      (colour p56 natural)
      (treatment p56 varnished)
      (available p57)
      (colour p57 black)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 blue)
      (wood p58 pine)
      (surface-condition p58 smooth)
      (treatment p58 glazed)
      (available p59)
      (wood p59 cherry)
      (treatment p59 varnished)
      (available p60)
      (colour p60 natural)
      (surface-condition p60 verysmooth)
      (available p61)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 red)
      (wood p62 beech)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 natural)
      (surface-condition p63 verysmooth)
      (available p64)
      (colour p64 mauve)
      (wood p64 oak)
      (surface-condition p64 verysmooth)
      (treatment p64 glazed)
      (available p65)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (wood p66 teak)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 mauve)
      (surface-condition p67 smooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 red)
      (wood p68 oak)
      (surface-condition p68 smooth)
      (available p69)
      (wood p69 pine)
      (treatment p69 glazed)
      (available p70)
      (colour p70 black)
      (wood p70 teak)
      (available p71)
      (wood p71 mahogany)
      (surface-condition p71 smooth)
      (available p72)
      (colour p72 black)
      (wood p72 cherry)
      (surface-condition p72 smooth)
      (treatment p72 glazed)
      (available p73)
      (colour p73 green)
      (wood p73 oak)
      (available p74)
      (wood p74 walnut)
      (surface-condition p74 verysmooth)
      (available p75)
      (colour p75 white)
      (wood p75 oak)
      (available p76)
      (colour p76 green)
      (wood p76 pine)
      (treatment p76 glazed)
      (available p77)
      (colour p77 red)
      (treatment p77 glazed)
      (available p78)
      (colour p78 green)
      (wood p78 teak)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 white)
      (wood p79 mahogany)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 mauve)
      (wood p80 cherry)
      (surface-condition p80 verysmooth)
      (treatment p80 glazed)
      (available p81)
      (surface-condition p81 verysmooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 black)
      (surface-condition p82 verysmooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 natural)
      (wood p83 beech)
      (surface-condition p83 verysmooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 black)
      (surface-condition p84 verysmooth)
      (treatment p84 glazed)
      (available p85)
      (surface-condition p85 verysmooth)
      (treatment p85 varnished)
      (available p86)
      (wood p86 cherry)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 blue)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 red)
      (surface-condition p88 smooth)
      (available p89)
      (colour p89 mauve)
      (surface-condition p89 verysmooth)
      (available p90)
      (colour p90 mauve)
      (surface-condition p90 verysmooth)
      (available p91)
      (colour p91 white)
      (wood p91 oak)
      (surface-condition p91 smooth)
      (treatment p91 glazed)
      (available p92)
      (wood p92 cherry)
      (surface-condition p92 verysmooth)
      (available p93)
      (colour p93 blue)
      (surface-condition p93 verysmooth)
      (available p94)
      (colour p94 red)
      (surface-condition p94 verysmooth)
      (treatment p94 varnished)
      (available p95)
      (wood p95 teak)
      (surface-condition p95 verysmooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 natural)
      (wood p96 cherry)
      (treatment p96 glazed)
      (available p97)
      (colour p97 natural)
      (wood p97 pine)
      (surface-condition p97 verysmooth)
      (treatment p97 varnished)
      (available p98)
      (colour p98 mauve)
      (wood p98 walnut)
      (treatment p98 varnished)
      (available p99)
      (colour p99 green)
      (wood p99 pine)
      (available p100)
      (surface-condition p100 smooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 blue)
      (wood p101 mahogany)
      (surface-condition p101 smooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 white)
      (wood p102 oak)
      (available p103)
      (colour p103 black)
      (wood p103 pine)
      (surface-condition p103 verysmooth)
      (available p104)
      (wood p104 mahogany)
      (treatment p104 glazed)
      (available p105)
      (colour p105 black)
      (wood p105 walnut)
      (available p106)
      (wood p106 teak)
      (treatment p106 varnished)
      (available p107)
      (colour p107 black)
      (surface-condition p107 smooth)
      (available p108)
      (colour p108 black)
      (treatment p108 varnished)
      (available p109)
      (colour p109 green)
      (surface-condition p109 verysmooth)
      (available p110)
      (colour p110 natural)
      (surface-condition p110 verysmooth)
      (treatment p110 varnished)
      (available p111)
      (colour p111 blue)
      (wood p111 cherry)
      (surface-condition p111 smooth)
      (treatment p111 glazed)
      (available p112)
      (colour p112 mauve)
      (wood p112 mahogany)
      (surface-condition p112 verysmooth)
      (treatment p112 varnished)
      (available p113)
      (wood p113 teak)
      (treatment p113 varnished)
      (available p114)
      (colour p114 mauve)
      (wood p114 teak)
      (surface-condition p114 smooth)
      (available p115)
      (wood p115 mahogany)
      (treatment p115 varnished)
      (available p116)
      (colour p116 red)
      (surface-condition p116 verysmooth)
      (available p117)
      (colour p117 green)
      (surface-condition p117 smooth)
      (available p118)
      (surface-condition p118 smooth)
      (treatment p118 glazed)
      (available p119)
      (colour p119 mauve)
      (wood p119 mahogany)
      (available p120)
      (colour p120 mauve)
      (wood p120 pine)
      (treatment p120 varnished)
      (available p121)
      (wood p121 oak)
      (treatment p121 glazed)
      (available p122)
      (colour p122 blue)
      (treatment p122 varnished)
      (available p123)
      (colour p123 mauve)
      (wood p123 mahogany)
      (treatment p123 glazed)
      (available p124)
      (colour p124 mauve)
      (treatment p124 varnished)
      (available p125)
      (colour p125 blue)
      (surface-condition p125 smooth)
      (available p126)
      (colour p126 blue)
      (wood p126 teak)
      (surface-condition p126 verysmooth)
      (treatment p126 varnished)
      (available p127)
      (wood p127 pine)
      (surface-condition p127 smooth)
      (available p128)
      (colour p128 red)
      (surface-condition p128 smooth)
      (treatment p128 varnished)
      (available p129)
      (surface-condition p129 verysmooth)
      (treatment p129 glazed)
      (available p130)
      (wood p130 walnut)
      (treatment p130 glazed)
      (available p131)
      (colour p131 mauve)
      (wood p131 walnut)
      (surface-condition p131 verysmooth)
      (treatment p131 glazed)
      (available p132)
      (wood p132 pine)
      (treatment p132 glazed)
      (available p133)
      (wood p133 oak)
      (treatment p133 varnished)
      (available p134)
      (wood p134 teak)
      (surface-condition p134 verysmooth)
      (treatment p134 glazed)
      (available p135)
      (surface-condition p135 verysmooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 white)
      (treatment p136 varnished)
      (available p137)
      (colour p137 red)
      (wood p137 walnut)
      (treatment p137 varnished)
      (available p138)
      (surface-condition p138 smooth)
      (treatment p138 glazed)
      (available p139)
      (colour p139 mauve)
      (wood p139 beech)
      (available p140)
      (wood p140 cherry)
      (treatment p140 varnished)
      (available p141)
      (surface-condition p141 smooth)
      (treatment p141 glazed)
      (available p142)
      (colour p142 white)
      (wood p142 oak)
      (surface-condition p142 smooth)
      (treatment p142 glazed)
      (available p143)
      (wood p143 pine)
      (treatment p143 varnished)
      (available p144)
      (colour p144 black)
      (wood p144 cherry)
      (surface-condition p144 smooth)
      (treatment p144 glazed)
      (available p145)
      (colour p145 black)
      (wood p145 mahogany)
      (surface-condition p145 smooth)
      (available p146)
      (wood p146 teak)
      (surface-condition p146 smooth)
      (available p147)
      (colour p147 white)
      (wood p147 walnut)
      (surface-condition p147 smooth)
      (treatment p147 glazed)
      (available p148)
      (surface-condition p148 smooth)
      (treatment p148 varnished)
      (available p149)
      (colour p149 green)
      (surface-condition p149 verysmooth)
      (available p150)
      (colour p150 black)
      (wood p150 cherry)
      (available p151)
      (colour p151 mauve)
      (wood p151 mahogany)
      (available p152)
      (colour p152 natural)
      (surface-condition p152 verysmooth)
      (treatment p152 glazed)
      (available p153)
      (wood p153 oak)
      (treatment p153 glazed)
      (available p154)
      (wood p154 oak)
      (surface-condition p154 verysmooth)
      (available p155)
      (colour p155 green)
      (wood p155 mahogany)
      (surface-condition p155 verysmooth)
      (available p156)
      (colour p156 mauve)
      (wood p156 mahogany)
      (available p157)
      (wood p157 beech)
      (treatment p157 varnished)
      (available p158)
      (colour p158 black)
      (wood p158 cherry)
      (available p159)
      (colour p159 mauve)
      (wood p159 teak)
      (surface-condition p159 smooth)
      (treatment p159 varnished)
      (available p160)
      (colour p160 blue)
      (wood p160 cherry)
      (available p161)
      (colour p161 white)
      (surface-condition p161 verysmooth)
      (available p162)
      (colour p162 natural)
      (surface-condition p162 smooth)
      (treatment p162 glazed)
      (available p163)
      (surface-condition p163 smooth)
      (treatment p163 varnished)
      (available p164)
      (wood p164 walnut)
      (surface-condition p164 verysmooth)
      (available p165)
      (colour p165 green)
      (surface-condition p165 smooth)
      (available p166)
      (wood p166 pine)
      (surface-condition p166 smooth)
      (available p167)
      (colour p167 black)
      (wood p167 teak)
      (surface-condition p167 smooth)
      (treatment p167 varnished)
      (available p168)
      (surface-condition p168 smooth)
      (treatment p168 glazed)
      (available p169)
      (surface-condition p169 smooth)
      (treatment p169 glazed)
      (available p170)
      (colour p170 red)
      (wood p170 oak)
      (available p171)
      (colour p171 mauve)
      (wood p171 mahogany)
      (surface-condition p171 verysmooth)
      (treatment p171 varnished)
      (available p172)
      (wood p172 oak)
      (surface-condition p172 verysmooth)
      (available p173)
      (wood p173 teak)
      (treatment p173 glazed)
      (available p174)
      (colour p174 black)
      (surface-condition p174 verysmooth)
      (available p175)
      (colour p175 red)
      (treatment p175 varnished)
      (available p176)
      (surface-condition p176 verysmooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 black)
      (wood p177 oak)
      (available p178)
      (colour p178 blue)
      (wood p178 teak)
      (treatment p178 varnished)
      (available p179)
      (colour p179 blue)
      (surface-condition p179 smooth)
      (treatment p179 varnished)
      (available p180)
      (colour p180 green)
      (wood p180 mahogany)
      (treatment p180 glazed)
      (available p181)
      (surface-condition p181 verysmooth)
      (treatment p181 varnished)
      (available p182)
      (colour p182 black)
      (wood p182 walnut)
      (surface-condition p182 smooth)
      (available p183)
      (colour p183 mauve)
      (treatment p183 glazed)
      (available p184)
      (wood p184 pine)
      (surface-condition p184 smooth)
      (available p185)
      (surface-condition p185 verysmooth)
      (treatment p185 glazed)
      (available p186)
      (colour p186 black)
      (treatment p186 varnished)
      (available p187)
      (colour p187 white)
      (wood p187 oak)
      (surface-condition p187 verysmooth)
      (available p188)
      (wood p188 oak)
      (treatment p188 varnished)
      (available p189)
      (wood p189 beech)
      (treatment p189 glazed)
      (available p190)
      (surface-condition p190 verysmooth)
      (treatment p190 glazed)
      (available p191)
      (wood p191 walnut)
      (treatment p191 varnished)
      (available p192)
      (colour p192 blue)
      (wood p192 beech)
      (treatment p192 varnished)
      (available p193)
      (wood p193 walnut)
      (surface-condition p193 verysmooth)
      (treatment p193 varnished)
      (available p194)
      (wood p194 beech)
      (treatment p194 varnished)
      (available p195)
      (surface-condition p195 smooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 natural)
      (wood p196 teak)
      (available p197)
      (colour p197 mauve)
      (wood p197 mahogany)
      (treatment p197 varnished)
      (available p198)
      (wood p198 oak)
      (surface-condition p198 smooth)
      (available p199)
      (colour p199 blue)
      (wood p199 beech)
      (available p200)
      (surface-condition p200 verysmooth)
      (treatment p200 glazed)
      (available p201)
      (colour p201 blue)
      (wood p201 oak)
      (surface-condition p201 verysmooth)
      (treatment p201 glazed)
      (available p202)
      (wood p202 cherry)
      (surface-condition p202 smooth)
      (available p203)
      (colour p203 green)
      (treatment p203 varnished)
      (available p204)
      (colour p204 natural)
      (wood p204 oak)
      (surface-condition p204 verysmooth)
      (treatment p204 varnished)
      (available p205)
      (colour p205 red)
      (wood p205 walnut)
      (surface-condition p205 smooth)
      (treatment p205 varnished)
      (available p206)
      (wood p206 oak)
      (surface-condition p206 smooth)
      (available p207)
      (surface-condition p207 smooth)
      (treatment p207 varnished)
      (available p208)
      (surface-condition p208 smooth)
      (treatment p208 varnished)
      (available p209)
      (surface-condition p209 smooth)
      (treatment p209 varnished)
      (available p210)
      (colour p210 white)
      (wood p210 oak)
      (available p211)
      (colour p211 black)
      (wood p211 mahogany)
      (treatment p211 glazed)
      (available p212)
      (wood p212 pine)
      (surface-condition p212 smooth)
      (treatment p212 glazed)
      (available p213)
      (colour p213 red)
      (wood p213 oak)
      (available p214)
      (colour p214 black)
      (wood p214 walnut)
      (surface-condition p214 smooth)
      (treatment p214 glazed)
      (available p215)
      (wood p215 teak)
      (treatment p215 varnished)
      (available p216)
      (colour p216 blue)
      (surface-condition p216 verysmooth)
      (treatment p216 glazed)
      (available p217)
      (colour p217 red)
      (wood p217 teak)
      (available p218)
      (wood p218 oak)
      (surface-condition p218 verysmooth)
      (treatment p218 glazed)
      (available p219)
      (colour p219 natural)
      (treatment p219 varnished)
      (available p220)
      (wood p220 teak)
      (surface-condition p220 smooth)
      (treatment p220 glazed)
      (available p221)
      (colour p221 green)
      (wood p221 beech)
      (surface-condition p221 smooth)
      (available p222)
      (colour p222 mauve)
      (wood p222 beech)
      (available p223)
      (surface-condition p223 smooth)
      (treatment p223 glazed)
      (available p224)
      (colour p224 mauve)
      (treatment p224 varnished)
      (available p225)
      (colour p225 red)
      (wood p225 walnut)
      (surface-condition p225 verysmooth)
      (treatment p225 varnished)
      (available p226)
      (colour p226 red)
      (wood p226 cherry)
      (surface-condition p226 smooth)
      (treatment p226 glazed)
      (available p227)
      (colour p227 mauve)
      (treatment p227 varnished)
      (available p228)
      (colour p228 green)
      (surface-condition p228 verysmooth)
      (available p229)
      (surface-condition p229 smooth)
      (treatment p229 glazed)
      (available p230)
      (colour p230 red)
      (surface-condition p230 smooth)
      (treatment p230 varnished)
      (available p231)
      (surface-condition p231 verysmooth)
      (treatment p231 varnished)
      (available p232)
      (wood p232 oak)
      (surface-condition p232 verysmooth)
      (available p233)
      (colour p233 black)
      (surface-condition p233 verysmooth)
      (treatment p233 varnished)
      (available p234)
      (surface-condition p234 verysmooth)
      (treatment p234 glazed)
      (available p235)
      (wood p235 oak)
      (surface-condition p235 verysmooth)
      (available p236)
      (colour p236 black)
      (wood p236 pine)
      (surface-condition p236 smooth)
      (treatment p236 glazed)
      (available p237)
      (colour p237 mauve)
      (wood p237 mahogany)
      (surface-condition p237 verysmooth)
      (available p238)
      (colour p238 mauve)
      (treatment p238 glazed)
      (available p239)
      (wood p239 oak)
      (treatment p239 glazed)
      (available p240)
      (wood p240 mahogany)
      (treatment p240 varnished)
      (available p241)
      (colour p241 natural)
      (wood p241 beech)
      (available p242)
      (wood p242 cherry)
      (surface-condition p242 smooth)
      (treatment p242 glazed)
      (available p243)
      (colour p243 natural)
      (wood p243 pine)
      (surface-condition p243 verysmooth)
      (available p244)
      (colour p244 natural)
      (treatment p244 glazed)
      (available p245)
      (colour p245 natural)
      (surface-condition p245 smooth)
      (available p246)
      (colour p246 natural)
      (treatment p246 varnished)
      (available p247)
      (colour p247 green)
      (wood p247 pine)
      (surface-condition p247 verysmooth)
      (treatment p247 glazed)
      (available p248)
      (colour p248 white)
      (wood p248 walnut)
      (surface-condition p248 smooth)
      (treatment p248 glazed)
      (available p249)
      (surface-condition p249 verysmooth)
      (treatment p249 glazed)
      (available p250)
      (colour p250 green)
      (wood p250 pine)
      (available p251)
      (colour p251 blue)
      (wood p251 walnut)
      (surface-condition p251 smooth)
      (available p252)
      (colour p252 mauve)
      (wood p252 teak)
      (surface-condition p252 verysmooth)
      (treatment p252 glazed)
      (available p253)
      (colour p253 red)
      (surface-condition p253 verysmooth)
      (available p254)
      (colour p254 red)
      (wood p254 mahogany)
      (treatment p254 glazed)
      (available p255)
      (colour p255 green)
      (surface-condition p255 smooth)
      (available p256)
      (wood p256 beech)
      (surface-condition p256 smooth)
      (treatment p256 varnished)
      (available p257)
      (colour p257 white)
      (wood p257 oak)
      (surface-condition p257 verysmooth)
      (available p258)
      (colour p258 blue)
      (wood p258 cherry)
      (surface-condition p258 smooth)
      (available p259)
      (colour p259 mauve)
      (surface-condition p259 smooth)
      (treatment p259 varnished)
      (available p260)
      (surface-condition p260 smooth)
      (treatment p260 varnished)
      (available p261)
      (colour p261 blue)
      (wood p261 oak)
      (surface-condition p261 smooth)
      (treatment p261 varnished)
      (available p262)
      (wood p262 mahogany)
      (surface-condition p262 smooth)
      (available p263)
      (wood p263 teak)
      (treatment p263 varnished)
      (available p264)
      (colour p264 red)
      (wood p264 mahogany)
      (surface-condition p264 verysmooth)
      (treatment p264 glazed)
      (available p265)
      (colour p265 blue)
      (wood p265 pine)
      (surface-condition p265 smooth)
      (treatment p265 varnished)
      (available p266)
      (surface-condition p266 verysmooth)
      (treatment p266 glazed)
      (available p267)
      (wood p267 cherry)
      (treatment p267 glazed)
      (available p268)
      (colour p268 green)
      (wood p268 oak)
      (surface-condition p268 verysmooth)
      (available p269)
      (colour p269 natural)
      (treatment p269 varnished)
      (available p270)
      (colour p270 red)
      (wood p270 cherry)
      (surface-condition p270 verysmooth)
      (treatment p270 varnished)
      (available p271)
      (surface-condition p271 smooth)
      (treatment p271 varnished)
      (available p272)
      (colour p272 blue)
      (surface-condition p272 verysmooth)
      (treatment p272 glazed)
      (available p273)
      (colour p273 mauve)
      (treatment p273 glazed)
      (available p274)
      (colour p274 red)
      (wood p274 cherry)
      (surface-condition p274 smooth)
      (treatment p274 varnished)
      (available p275)
      (surface-condition p275 verysmooth)
      (treatment p275 varnished)
      (available p276)
      (colour p276 natural)
      (surface-condition p276 verysmooth)
      (available p277)
      (colour p277 blue)
      (surface-condition p277 smooth)
      (available p278)
      (wood p278 oak)
      (surface-condition p278 smooth)
      (treatment p278 varnished)
      (available p279)
      (colour p279 black)
      (wood p279 mahogany)
      (surface-condition p279 verysmooth)
      (treatment p279 glazed)
      (available p280)
      (wood p280 oak)
      (surface-condition p280 verysmooth)
      (available p281)
      (colour p281 natural)
      (wood p281 pine)
      (surface-condition p281 verysmooth)
      (treatment p281 glazed)
      (available p282)
      (surface-condition p282 verysmooth)
      (treatment p282 glazed)
      (available p283)
      (colour p283 mauve)
      (wood p283 oak)
      (surface-condition p283 smooth)
      (treatment p283 varnished)
      (available p284)
      (colour p284 mauve)
      (treatment p284 varnished)
      (available p285)
      (colour p285 red)
      (surface-condition p285 smooth)
      (available p286)
      (colour p286 green)
      (surface-condition p286 verysmooth)
      (treatment p286 varnished)
    )
  )
  
)
