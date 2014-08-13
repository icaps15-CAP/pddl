; woodworking task with 278 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 738609

(define (problem wood-prob-sat-103)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green blue black mauve red white - acolour
    cherry beech oak pine walnut mahogany teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 - board
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
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 natural)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 blue)
    (wood p0 walnut)
    (surface-condition p0 verysmooth)
    (treatment p0 glazed)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (available p3)
    (colour p3 blue)
    (wood p3 oak)
    (surface-condition p3 verysmooth)
    (treatment p3 varnished)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 green)
    (wood p9 oak)
    (surface-condition p9 smooth)
    (treatment p9 varnished)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 natural)
    (wood p16 oak)
    (surface-condition p16 rough)
    (treatment p16 glazed)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (available p20)
    (colour p20 blue)
    (wood p20 oak)
    (surface-condition p20 verysmooth)
    (treatment p20 glazed)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
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
    
    
    
    
    (available p27)
    (colour p27 black)
    (wood p27 teak)
    (surface-condition p27 smooth)
    (treatment p27 glazed)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (available p30)
    (colour p30 green)
    (wood p30 cherry)
    (surface-condition p30 smooth)
    (treatment p30 varnished)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (available p39)
    (colour p39 green)
    (wood p39 beech)
    (surface-condition p39 rough)
    (treatment p39 glazed)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (available p48)
    (colour p48 natural)
    (wood p48 mahogany)
    (surface-condition p48 rough)
    (treatment p48 colourfragments)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (available p56)
    (colour p56 mauve)
    (wood p56 teak)
    (surface-condition p56 verysmooth)
    (treatment p56 colourfragments)
    (goalsize p56 medium)
    
    
    
    
    (available p57)
    (colour p57 mauve)
    (wood p57 oak)
    (surface-condition p57 rough)
    (treatment p57 colourfragments)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (available p60)
    (colour p60 white)
    (wood p60 walnut)
    (surface-condition p60 verysmooth)
    (treatment p60 varnished)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (available p66)
    (colour p66 black)
    (wood p66 mahogany)
    (surface-condition p66 rough)
    (treatment p66 colourfragments)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 green)
    (wood p67 cherry)
    (surface-condition p67 rough)
    (treatment p67 glazed)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (available p74)
    (colour p74 blue)
    (wood p74 mahogany)
    (surface-condition p74 rough)
    (treatment p74 varnished)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (available p76)
    (colour p76 white)
    (wood p76 pine)
    (surface-condition p76 rough)
    (treatment p76 glazed)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (available p79)
    (colour p79 white)
    (wood p79 oak)
    (surface-condition p79 verysmooth)
    (treatment p79 varnished)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (available p81)
    (colour p81 blue)
    (wood p81 teak)
    (surface-condition p81 smooth)
    (treatment p81 colourfragments)
    (goalsize p81 large)
    
    
    
    
    (available p82)
    (colour p82 blue)
    (wood p82 pine)
    (surface-condition p82 verysmooth)
    (treatment p82 colourfragments)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (available p88)
    (colour p88 red)
    (wood p88 oak)
    (surface-condition p88 verysmooth)
    (treatment p88 glazed)
    (goalsize p88 large)
    
    
    
    
    (available p89)
    (colour p89 green)
    (wood p89 oak)
    (surface-condition p89 verysmooth)
    (treatment p89 glazed)
    (goalsize p89 medium)
    
    
    
    
    (available p90)
    (colour p90 black)
    (wood p90 beech)
    (surface-condition p90 verysmooth)
    (treatment p90 glazed)
    (goalsize p90 medium)
    
    
    
    
    (available p91)
    (colour p91 green)
    (wood p91 pine)
    (surface-condition p91 smooth)
    (treatment p91 glazed)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (available p102)
    (colour p102 green)
    (wood p102 cherry)
    (surface-condition p102 verysmooth)
    (treatment p102 colourfragments)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (available p105)
    (colour p105 natural)
    (wood p105 cherry)
    (surface-condition p105 rough)
    (treatment p105 glazed)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (available p107)
    (colour p107 white)
    (wood p107 pine)
    (surface-condition p107 verysmooth)
    (treatment p107 varnished)
    (goalsize p107 medium)
    
    
    
    
    (available p108)
    (colour p108 red)
    (wood p108 pine)
    (surface-condition p108 smooth)
    (treatment p108 glazed)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (available p127)
    (colour p127 red)
    (wood p127 beech)
    (surface-condition p127 verysmooth)
    (treatment p127 varnished)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (available p129)
    (colour p129 blue)
    (wood p129 walnut)
    (surface-condition p129 smooth)
    (treatment p129 varnished)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (available p131)
    (colour p131 mauve)
    (wood p131 oak)
    (surface-condition p131 rough)
    (treatment p131 colourfragments)
    (goalsize p131 large)
    
    
    
    
    (available p132)
    (colour p132 white)
    (wood p132 walnut)
    (surface-condition p132 rough)
    (treatment p132 varnished)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (available p134)
    (colour p134 blue)
    (wood p134 walnut)
    (surface-condition p134 rough)
    (treatment p134 colourfragments)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (available p137)
    (colour p137 red)
    (wood p137 teak)
    (surface-condition p137 smooth)
    (treatment p137 colourfragments)
    (goalsize p137 medium)
    
    
    
    
    (available p138)
    (colour p138 red)
    (wood p138 walnut)
    (surface-condition p138 verysmooth)
    (treatment p138 varnished)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (available p140)
    (colour p140 natural)
    (wood p140 beech)
    (surface-condition p140 rough)
    (treatment p140 colourfragments)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (available p144)
    (colour p144 natural)
    (wood p144 mahogany)
    (surface-condition p144 smooth)
    (treatment p144 colourfragments)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (available p153)
    (colour p153 natural)
    (wood p153 beech)
    (surface-condition p153 rough)
    (treatment p153 varnished)
    (goalsize p153 small)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (available p158)
    (colour p158 red)
    (wood p158 teak)
    (surface-condition p158 smooth)
    (treatment p158 varnished)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (available p161)
    (colour p161 red)
    (wood p161 teak)
    (surface-condition p161 smooth)
    (treatment p161 varnished)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (available p163)
    (colour p163 white)
    (wood p163 oak)
    (surface-condition p163 smooth)
    (treatment p163 glazed)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (available p166)
    (colour p166 white)
    (wood p166 mahogany)
    (surface-condition p166 rough)
    (treatment p166 varnished)
    (goalsize p166 large)
    
    
    
    
    (available p167)
    (colour p167 mauve)
    (wood p167 teak)
    (surface-condition p167 rough)
    (treatment p167 varnished)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (available p170)
    (colour p170 white)
    (wood p170 mahogany)
    (surface-condition p170 verysmooth)
    (treatment p170 glazed)
    (goalsize p170 small)
    
    
    
    
    (available p171)
    (colour p171 green)
    (wood p171 pine)
    (surface-condition p171 rough)
    (treatment p171 colourfragments)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (available p173)
    (colour p173 red)
    (wood p173 beech)
    (surface-condition p173 verysmooth)
    (treatment p173 varnished)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (available p179)
    (colour p179 blue)
    (wood p179 cherry)
    (surface-condition p179 rough)
    (treatment p179 glazed)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (available p184)
    (colour p184 mauve)
    (wood p184 oak)
    (surface-condition p184 smooth)
    (treatment p184 glazed)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (available p186)
    (colour p186 red)
    (wood p186 beech)
    (surface-condition p186 rough)
    (treatment p186 varnished)
    (goalsize p186 medium)
    
    
    
    
    (available p187)
    (colour p187 mauve)
    (wood p187 beech)
    (surface-condition p187 rough)
    (treatment p187 colourfragments)
    (goalsize p187 medium)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (available p191)
    (colour p191 blue)
    (wood p191 mahogany)
    (surface-condition p191 smooth)
    (treatment p191 glazed)
    (goalsize p191 large)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 small)
    
    
    
    
    (available p198)
    (colour p198 green)
    (wood p198 beech)
    (surface-condition p198 smooth)
    (treatment p198 colourfragments)
    (goalsize p198 large)
    
    
    
    
    (available p199)
    (colour p199 blue)
    (wood p199 cherry)
    (surface-condition p199 verysmooth)
    (treatment p199 colourfragments)
    (goalsize p199 medium)
    
    
    
    
    (available p200)
    (colour p200 white)
    (wood p200 mahogany)
    (surface-condition p200 smooth)
    (treatment p200 varnished)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 large)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
    (unused p204)
    (goalsize p204 small)
    
    
    
    
    (available p205)
    (colour p205 natural)
    (wood p205 walnut)
    (surface-condition p205 smooth)
    (treatment p205 colourfragments)
    (goalsize p205 large)
    
    
    
    
    (available p206)
    (colour p206 natural)
    (wood p206 beech)
    (surface-condition p206 rough)
    (treatment p206 varnished)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (available p211)
    (colour p211 mauve)
    (wood p211 cherry)
    (surface-condition p211 rough)
    (treatment p211 varnished)
    (goalsize p211 small)
    
    
    
    
    (available p212)
    (colour p212 mauve)
    (wood p212 cherry)
    (surface-condition p212 verysmooth)
    (treatment p212 glazed)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 large)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 medium)
    
    
    
    
    (unused p217)
    (goalsize p217 medium)
    
    
    
    
    (unused p218)
    (goalsize p218 small)
    
    
    
    
    (unused p219)
    (goalsize p219 large)
    
    
    
    
    (unused p220)
    (goalsize p220 small)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (unused p224)
    (goalsize p224 large)
    
    
    
    
    (unused p225)
    (goalsize p225 small)
    
    
    
    
    (available p226)
    (colour p226 black)
    (wood p226 beech)
    (surface-condition p226 rough)
    (treatment p226 varnished)
    (goalsize p226 small)
    
    
    
    
    (unused p227)
    (goalsize p227 small)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (available p229)
    (colour p229 green)
    (wood p229 walnut)
    (surface-condition p229 smooth)
    (treatment p229 colourfragments)
    (goalsize p229 large)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (available p231)
    (colour p231 green)
    (wood p231 beech)
    (surface-condition p231 verysmooth)
    (treatment p231 colourfragments)
    (goalsize p231 small)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 small)
    
    
    
    
    (unused p234)
    (goalsize p234 small)
    
    
    
    
    (unused p235)
    (goalsize p235 medium)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (unused p237)
    (goalsize p237 medium)
    
    
    
    
    (unused p238)
    (goalsize p238 small)
    
    
    
    
    (unused p239)
    (goalsize p239 large)
    
    
    
    
    (unused p240)
    (goalsize p240 large)
    
    
    
    
    (unused p241)
    (goalsize p241 medium)
    
    
    
    
    (unused p242)
    (goalsize p242 large)
    
    
    
    
    (unused p243)
    (goalsize p243 small)
    
    
    
    
    (unused p244)
    (goalsize p244 large)
    
    
    
    
    (unused p245)
    (goalsize p245 medium)
    
    
    
    
    (unused p246)
    (goalsize p246 medium)
    
    
    
    
    (available p247)
    (colour p247 black)
    (wood p247 pine)
    (surface-condition p247 smooth)
    (treatment p247 colourfragments)
    (goalsize p247 large)
    
    
    
    
    (unused p248)
    (goalsize p248 small)
    
    
    
    
    (unused p249)
    (goalsize p249 small)
    
    
    
    
    (unused p250)
    (goalsize p250 medium)
    
    
    
    
    (unused p251)
    (goalsize p251 medium)
    
    
    
    
    (unused p252)
    (goalsize p252 small)
    
    
    
    
    (unused p253)
    (goalsize p253 medium)
    
    
    
    
    (unused p254)
    (goalsize p254 large)
    
    
    
    
    (unused p255)
    (goalsize p255 small)
    
    
    
    
    (unused p256)
    (goalsize p256 small)
    
    
    
    
    (unused p257)
    (goalsize p257 large)
    
    
    
    
    (unused p258)
    (goalsize p258 small)
    
    
    
    
    (unused p259)
    (goalsize p259 medium)
    
    
    
    
    (unused p260)
    (goalsize p260 medium)
    
    
    
    
    (unused p261)
    (goalsize p261 small)
    
    
    
    
    (unused p262)
    (goalsize p262 medium)
    
    
    
    
    (unused p263)
    (goalsize p263 medium)
    
    
    
    
    (available p264)
    (colour p264 red)
    (wood p264 cherry)
    (surface-condition p264 smooth)
    (treatment p264 glazed)
    (goalsize p264 medium)
    
    
    
    
    (unused p265)
    (goalsize p265 small)
    
    
    
    
    (unused p266)
    (goalsize p266 small)
    
    
    
    
    (unused p267)
    (goalsize p267 large)
    
    
    
    
    (available p268)
    (colour p268 black)
    (wood p268 oak)
    (surface-condition p268 smooth)
    (treatment p268 colourfragments)
    (goalsize p268 large)
    
    
    
    
    (unused p269)
    (goalsize p269 small)
    
    
    
    
    (unused p270)
    (goalsize p270 medium)
    
    
    
    
    (unused p271)
    (goalsize p271 medium)
    
    
    
    
    (unused p272)
    (goalsize p272 large)
    
    
    
    
    (available p273)
    (colour p273 blue)
    (wood p273 mahogany)
    (surface-condition p273 verysmooth)
    (treatment p273 varnished)
    (goalsize p273 large)
    
    
    
    
    (unused p274)
    (goalsize p274 small)
    
    
    
    
    (unused p275)
    (goalsize p275 large)
    
    
    
    
    (unused p276)
    (goalsize p276 small)
    
    
    
    
    (unused p277)
    (goalsize p277 large)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s11)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s6)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s6)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s10)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s6)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 mahogany)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s10)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
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
    (boardsize b19 s8)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s3)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s10)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s10)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s11)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s9)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s9)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s5)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s11)
    (wood b27 oak)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s9)
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
    (boardsize b31 s4)
    (wood b31 oak)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s8)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s8)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s6)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 pine)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s10)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s8)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s9)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s7)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s2)
    (wood b41 pine)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s7)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s7)
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
    (boardsize b46 s10)
    (wood b46 walnut)
    (surface-condition b46 smooth)
    (available b46)
    (boardsize b47 s7)
    (wood b47 walnut)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s9)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s9)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s6)
    (wood b50 walnut)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s1)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s7)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s9)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s8)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s9)
    (wood b55 teak)
    (surface-condition b55 smooth)
    (available b55)
    (boardsize b56 s9)
    (wood b56 teak)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s8)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s8)
    (wood b58 teak)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s5)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s8)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s8)
    (wood b61 beech)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s6)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s6)
    (wood b63 beech)
    (surface-condition b63 smooth)
    (available b63)
    (boardsize b64 s8)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s10)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s5)
    (wood b66 beech)
    (surface-condition b66 smooth)
    (available b66)
    (boardsize b67 s5)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 walnut)
      (available p1)
      (colour p1 green)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 natural)
      (surface-condition p2 verysmooth)
      (available p3)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (wood p4 walnut)
      (treatment p4 glazed)
      (available p5)
      (wood p5 cherry)
      (treatment p5 varnished)
      (available p6)
      (colour p6 white)
      (wood p6 cherry)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 green)
      (wood p7 mahogany)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 green)
      (wood p8 mahogany)
      (available p9)
      (colour p9 blue)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 mauve)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 black)
      (wood p13 teak)
      (available p14)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (wood p15 mahogany)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 blue)
      (wood p16 oak)
      (available p17)
      (wood p17 mahogany)
      (treatment p17 glazed)
      (available p18)
      (wood p18 teak)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 white)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 black)
      (wood p20 oak)
      (treatment p20 varnished)
      (available p21)
      (colour p21 red)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (wood p22 oak)
      (treatment p22 glazed)
      (available p23)
      (colour p23 black)
      (wood p23 mahogany)
      (surface-condition p23 smooth)
      (available p24)
      (colour p24 blue)
      (surface-condition p24 verysmooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 white)
      (wood p25 cherry)
      (surface-condition p25 smooth)
      (available p26)
      (wood p26 oak)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 green)
      (wood p27 teak)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (wood p28 walnut)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 white)
      (surface-condition p29 smooth)
      (available p30)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 green)
      (wood p31 walnut)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 green)
      (wood p32 oak)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 red)
      (treatment p33 glazed)
      (available p34)
      (colour p34 blue)
      (wood p34 teak)
      (available p35)
      (colour p35 blue)
      (treatment p35 glazed)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (wood p37 walnut)
      (treatment p37 glazed)
      (available p38)
      (colour p38 white)
      (wood p38 pine)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 natural)
      (wood p39 beech)
      (available p40)
      (wood p40 mahogany)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 blue)
      (wood p41 teak)
      (surface-condition p41 smooth)
      (available p42)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (wood p43 mahogany)
      (surface-condition p43 smooth)
      (available p44)
      (colour p44 black)
      (surface-condition p44 smooth)
      (available p45)
      (colour p45 white)
      (wood p45 oak)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 mauve)
      (wood p46 cherry)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
      (available p47)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 red)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 black)
      (wood p50 beech)
      (available p51)
      (colour p51 green)
      (treatment p51 glazed)
      (available p52)
      (colour p52 green)
      (treatment p52 varnished)
      (available p53)
      (colour p53 white)
      (surface-condition p53 smooth)
      (available p54)
      (wood p54 beech)
      (surface-condition p54 smooth)
      (available p55)
      (wood p55 teak)
      (treatment p55 varnished)
      (available p56)
      (colour p56 green)
      (wood p56 teak)
      (surface-condition p56 smooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 natural)
      (wood p57 oak)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 blue)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 green)
      (surface-condition p59 smooth)
      (available p60)
      (surface-condition p60 smooth)
      (treatment p60 glazed)
      (available p61)
      (colour p61 black)
      (wood p61 beech)
      (available p62)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 red)
      (wood p63 pine)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (wood p64 walnut)
      (surface-condition p64 verysmooth)
      (available p65)
      (colour p65 green)
      (wood p65 oak)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 natural)
      (wood p66 mahogany)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (wood p67 cherry)
      (surface-condition p67 smooth)
      (available p68)
      (wood p68 beech)
      (treatment p68 glazed)
      (available p69)
      (colour p69 blue)
      (surface-condition p69 smooth)
      (available p70)
      (colour p70 white)
      (wood p70 mahogany)
      (available p71)
      (wood p71 teak)
      (treatment p71 glazed)
      (available p72)
      (wood p72 cherry)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 mauve)
      (surface-condition p73 smooth)
      (available p74)
      (wood p74 mahogany)
      (surface-condition p74 verysmooth)
      (treatment p74 varnished)
      (available p75)
      (wood p75 oak)
      (surface-condition p75 smooth)
      (available p76)
      (colour p76 mauve)
      (treatment p76 varnished)
      (available p77)
      (colour p77 natural)
      (wood p77 cherry)
      (surface-condition p77 verysmooth)
      (available p78)
      (colour p78 blue)
      (wood p78 teak)
      (surface-condition p78 verysmooth)
      (available p79)
      (wood p79 oak)
      (surface-condition p79 smooth)
      (available p80)
      (colour p80 mauve)
      (surface-condition p80 verysmooth)
      (available p81)
      (surface-condition p81 smooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 mauve)
      (wood p82 pine)
      (available p83)
      (colour p83 red)
      (wood p83 teak)
      (surface-condition p83 smooth)
      (treatment p83 glazed)
      (available p84)
      (colour p84 red)
      (treatment p84 glazed)
      (available p85)
      (colour p85 white)
      (surface-condition p85 smooth)
      (available p86)
      (colour p86 black)
      (wood p86 walnut)
      (surface-condition p86 verysmooth)
      (available p87)
      (wood p87 mahogany)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 natural)
      (wood p88 oak)
      (available p89)
      (colour p89 white)
      (wood p89 oak)
      (available p90)
      (colour p90 red)
      (wood p90 beech)
      (surface-condition p90 verysmooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 white)
      (wood p91 pine)
      (available p92)
      (colour p92 green)
      (wood p92 pine)
      (surface-condition p92 smooth)
      (treatment p92 varnished)
      (available p93)
      (colour p93 black)
      (surface-condition p93 verysmooth)
      (available p94)
      (colour p94 black)
      (wood p94 walnut)
      (surface-condition p94 verysmooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 red)
      (wood p95 teak)
      (available p96)
      (colour p96 mauve)
      (wood p96 pine)
      (available p97)
      (colour p97 green)
      (surface-condition p97 verysmooth)
      (available p98)
      (colour p98 red)
      (surface-condition p98 smooth)
      (available p99)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (surface-condition p100 smooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 mauve)
      (wood p101 pine)
      (available p102)
      (colour p102 black)
      (surface-condition p102 smooth)
      (available p103)
      (wood p103 pine)
      (surface-condition p103 verysmooth)
      (available p104)
      (colour p104 black)
      (wood p104 cherry)
      (surface-condition p104 smooth)
      (treatment p104 glazed)
      (available p105)
      (colour p105 black)
      (surface-condition p105 smooth)
      (available p106)
      (colour p106 blue)
      (wood p106 pine)
      (surface-condition p106 smooth)
      (treatment p106 varnished)
      (available p107)
      (colour p107 red)
      (wood p107 pine)
      (available p108)
      (colour p108 blue)
      (wood p108 pine)
      (surface-condition p108 smooth)
      (treatment p108 glazed)
      (available p109)
      (surface-condition p109 verysmooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 black)
      (treatment p110 glazed)
      (available p111)
      (colour p111 green)
      (wood p111 teak)
      (surface-condition p111 verysmooth)
      (treatment p111 varnished)
      (available p112)
      (colour p112 black)
      (wood p112 cherry)
      (surface-condition p112 verysmooth)
      (treatment p112 varnished)
      (available p113)
      (surface-condition p113 verysmooth)
      (treatment p113 glazed)
      (available p114)
      (colour p114 blue)
      (wood p114 mahogany)
      (surface-condition p114 verysmooth)
      (treatment p114 varnished)
      (available p115)
      (wood p115 mahogany)
      (treatment p115 glazed)
      (available p116)
      (colour p116 natural)
      (treatment p116 glazed)
      (available p117)
      (colour p117 red)
      (wood p117 walnut)
      (surface-condition p117 smooth)
      (treatment p117 varnished)
      (available p118)
      (wood p118 pine)
      (surface-condition p118 smooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 blue)
      (wood p119 cherry)
      (surface-condition p119 smooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 green)
      (wood p120 oak)
      (surface-condition p120 smooth)
      (treatment p120 glazed)
      (available p121)
      (wood p121 walnut)
      (surface-condition p121 smooth)
      (available p122)
      (colour p122 blue)
      (wood p122 walnut)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (colour p123 white)
      (wood p123 cherry)
      (surface-condition p123 smooth)
      (treatment p123 glazed)
      (available p124)
      (colour p124 natural)
      (wood p124 mahogany)
      (surface-condition p124 verysmooth)
      (treatment p124 glazed)
      (available p125)
      (colour p125 natural)
      (wood p125 oak)
      (available p126)
      (colour p126 red)
      (wood p126 beech)
      (available p127)
      (colour p127 green)
      (wood p127 beech)
      (available p128)
      (surface-condition p128 smooth)
      (treatment p128 glazed)
      (available p129)
      (colour p129 mauve)
      (surface-condition p129 verysmooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 green)
      (wood p130 mahogany)
      (available p131)
      (wood p131 oak)
      (surface-condition p131 smooth)
      (available p132)
      (colour p132 mauve)
      (treatment p132 glazed)
      (available p133)
      (colour p133 green)
      (treatment p133 varnished)
      (available p134)
      (colour p134 natural)
      (wood p134 walnut)
      (surface-condition p134 verysmooth)
      (treatment p134 varnished)
      (available p135)
      (colour p135 blue)
      (wood p135 beech)
      (treatment p135 varnished)
      (available p136)
      (colour p136 black)
      (treatment p136 varnished)
      (available p137)
      (colour p137 blue)
      (wood p137 teak)
      (surface-condition p137 verysmooth)
      (treatment p137 glazed)
      (available p138)
      (wood p138 walnut)
      (treatment p138 glazed)
      (available p139)
      (colour p139 mauve)
      (wood p139 beech)
      (available p140)
      (colour p140 green)
      (treatment p140 varnished)
      (available p141)
      (colour p141 natural)
      (wood p141 pine)
      (available p142)
      (colour p142 natural)
      (surface-condition p142 verysmooth)
      (available p143)
      (colour p143 mauve)
      (wood p143 pine)
      (surface-condition p143 verysmooth)
      (treatment p143 varnished)
      (available p144)
      (colour p144 green)
      (wood p144 mahogany)
      (treatment p144 varnished)
      (available p145)
      (wood p145 pine)
      (surface-condition p145 smooth)
      (treatment p145 varnished)
      (available p146)
      (colour p146 green)
      (wood p146 walnut)
      (surface-condition p146 smooth)
      (available p147)
      (colour p147 mauve)
      (surface-condition p147 verysmooth)
      (treatment p147 glazed)
      (available p148)
      (colour p148 blue)
      (wood p148 cherry)
      (surface-condition p148 verysmooth)
      (treatment p148 varnished)
      (available p149)
      (colour p149 white)
      (surface-condition p149 verysmooth)
      (treatment p149 glazed)
      (available p150)
      (colour p150 mauve)
      (surface-condition p150 verysmooth)
      (available p151)
      (colour p151 natural)
      (surface-condition p151 verysmooth)
      (available p152)
      (surface-condition p152 smooth)
      (treatment p152 varnished)
      (available p153)
      (colour p153 blue)
      (wood p153 beech)
      (surface-condition p153 smooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 mauve)
      (wood p154 teak)
      (available p155)
      (colour p155 white)
      (wood p155 oak)
      (available p156)
      (colour p156 green)
      (treatment p156 varnished)
      (available p157)
      (colour p157 blue)
      (wood p157 mahogany)
      (surface-condition p157 verysmooth)
      (treatment p157 glazed)
      (available p158)
      (wood p158 teak)
      (treatment p158 glazed)
      (available p159)
      (wood p159 pine)
      (surface-condition p159 smooth)
      (available p160)
      (wood p160 oak)
      (treatment p160 glazed)
      (available p161)
      (colour p161 white)
      (wood p161 teak)
      (surface-condition p161 verysmooth)
      (treatment p161 glazed)
      (available p162)
      (colour p162 green)
      (wood p162 mahogany)
      (surface-condition p162 smooth)
      (treatment p162 varnished)
      (available p163)
      (colour p163 blue)
      (surface-condition p163 smooth)
      (treatment p163 varnished)
      (available p164)
      (wood p164 walnut)
      (surface-condition p164 smooth)
      (available p165)
      (colour p165 green)
      (treatment p165 varnished)
      (available p166)
      (wood p166 mahogany)
      (surface-condition p166 smooth)
      (available p167)
      (surface-condition p167 verysmooth)
      (treatment p167 varnished)
      (available p168)
      (colour p168 red)
      (surface-condition p168 verysmooth)
      (available p169)
      (surface-condition p169 verysmooth)
      (treatment p169 glazed)
      (available p170)
      (colour p170 blue)
      (wood p170 mahogany)
      (surface-condition p170 verysmooth)
      (treatment p170 glazed)
      (available p171)
      (colour p171 blue)
      (wood p171 pine)
      (available p172)
      (colour p172 blue)
      (wood p172 cherry)
      (surface-condition p172 smooth)
      (treatment p172 varnished)
      (available p173)
      (colour p173 white)
      (treatment p173 glazed)
      (available p174)
      (wood p174 mahogany)
      (surface-condition p174 smooth)
      (available p175)
      (colour p175 green)
      (surface-condition p175 verysmooth)
      (available p176)
      (wood p176 cherry)
      (surface-condition p176 smooth)
      (treatment p176 glazed)
      (available p177)
      (surface-condition p177 verysmooth)
      (treatment p177 varnished)
      (available p178)
      (colour p178 red)
      (surface-condition p178 verysmooth)
      (available p179)
      (wood p179 cherry)
      (treatment p179 varnished)
      (available p180)
      (colour p180 mauve)
      (treatment p180 varnished)
      (available p181)
      (colour p181 black)
      (surface-condition p181 verysmooth)
      (treatment p181 varnished)
      (available p182)
      (colour p182 white)
      (surface-condition p182 smooth)
      (treatment p182 varnished)
      (available p183)
      (colour p183 blue)
      (wood p183 oak)
      (surface-condition p183 smooth)
      (treatment p183 glazed)
      (available p184)
      (colour p184 red)
      (treatment p184 glazed)
      (available p185)
      (wood p185 cherry)
      (treatment p185 glazed)
      (available p186)
      (colour p186 blue)
      (treatment p186 varnished)
      (available p187)
      (surface-condition p187 verysmooth)
      (treatment p187 varnished)
      (available p188)
      (colour p188 mauve)
      (surface-condition p188 verysmooth)
      (available p189)
      (colour p189 white)
      (surface-condition p189 smooth)
      (available p190)
      (colour p190 natural)
      (wood p190 cherry)
      (surface-condition p190 smooth)
      (treatment p190 varnished)
      (available p191)
      (surface-condition p191 verysmooth)
      (treatment p191 glazed)
      (available p192)
      (colour p192 green)
      (surface-condition p192 verysmooth)
      (available p193)
      (colour p193 white)
      (treatment p193 glazed)
      (available p194)
      (wood p194 walnut)
      (treatment p194 varnished)
      (available p195)
      (colour p195 blue)
      (wood p195 pine)
      (treatment p195 varnished)
      (available p196)
      (wood p196 beech)
      (treatment p196 glazed)
      (available p197)
      (colour p197 red)
      (treatment p197 glazed)
      (available p198)
      (colour p198 mauve)
      (wood p198 beech)
      (surface-condition p198 verysmooth)
      (treatment p198 varnished)
      (available p199)
      (colour p199 red)
      (treatment p199 glazed)
      (available p200)
      (colour p200 red)
      (wood p200 mahogany)
      (surface-condition p200 verysmooth)
      (available p201)
      (wood p201 oak)
      (treatment p201 varnished)
      (available p202)
      (surface-condition p202 smooth)
      (treatment p202 varnished)
      (available p203)
      (wood p203 oak)
      (surface-condition p203 verysmooth)
      (available p204)
      (colour p204 black)
      (surface-condition p204 smooth)
      (treatment p204 varnished)
      (available p205)
      (wood p205 walnut)
      (surface-condition p205 verysmooth)
      (available p206)
      (colour p206 green)
      (wood p206 beech)
      (surface-condition p206 verysmooth)
      (treatment p206 varnished)
      (available p207)
      (wood p207 walnut)
      (surface-condition p207 smooth)
      (available p208)
      (colour p208 natural)
      (wood p208 pine)
      (surface-condition p208 smooth)
      (treatment p208 glazed)
      (available p209)
      (colour p209 blue)
      (surface-condition p209 smooth)
      (treatment p209 varnished)
      (available p210)
      (colour p210 white)
      (wood p210 mahogany)
      (surface-condition p210 smooth)
      (available p211)
      (colour p211 red)
      (wood p211 cherry)
      (treatment p211 varnished)
      (available p212)
      (colour p212 green)
      (treatment p212 varnished)
      (available p213)
      (colour p213 black)
      (wood p213 oak)
      (surface-condition p213 verysmooth)
      (treatment p213 glazed)
      (available p214)
      (surface-condition p214 verysmooth)
      (treatment p214 glazed)
      (available p215)
      (colour p215 black)
      (wood p215 mahogany)
      (surface-condition p215 smooth)
      (treatment p215 varnished)
      (available p216)
      (wood p216 oak)
      (surface-condition p216 verysmooth)
      (available p217)
      (wood p217 pine)
      (surface-condition p217 smooth)
      (treatment p217 glazed)
      (available p218)
      (colour p218 black)
      (treatment p218 varnished)
      (available p219)
      (colour p219 blue)
      (wood p219 mahogany)
      (surface-condition p219 verysmooth)
      (treatment p219 varnished)
      (available p220)
      (colour p220 blue)
      (treatment p220 glazed)
      (available p221)
      (colour p221 green)
      (surface-condition p221 verysmooth)
      (available p222)
      (colour p222 natural)
      (wood p222 cherry)
      (available p223)
      (wood p223 oak)
      (treatment p223 varnished)
      (available p224)
      (colour p224 natural)
      (wood p224 mahogany)
      (surface-condition p224 smooth)
      (available p225)
      (colour p225 black)
      (wood p225 pine)
      (treatment p225 varnished)
      (available p226)
      (wood p226 beech)
      (treatment p226 glazed)
      (available p227)
      (colour p227 blue)
      (surface-condition p227 verysmooth)
      (available p228)
      (colour p228 white)
      (surface-condition p228 verysmooth)
      (available p229)
      (colour p229 black)
      (wood p229 walnut)
      (available p230)
      (colour p230 natural)
      (wood p230 oak)
      (surface-condition p230 smooth)
      (treatment p230 varnished)
      (available p231)
      (colour p231 white)
      (wood p231 beech)
      (surface-condition p231 smooth)
      (treatment p231 glazed)
      (available p232)
      (colour p232 natural)
      (wood p232 teak)
      (surface-condition p232 smooth)
      (treatment p232 glazed)
      (available p233)
      (colour p233 white)
      (wood p233 oak)
      (surface-condition p233 smooth)
      (treatment p233 varnished)
      (available p234)
      (colour p234 black)
      (treatment p234 glazed)
      (available p235)
      (colour p235 blue)
      (wood p235 teak)
      (surface-condition p235 verysmooth)
      (treatment p235 varnished)
      (available p236)
      (wood p236 teak)
      (surface-condition p236 verysmooth)
      (available p237)
      (colour p237 mauve)
      (surface-condition p237 smooth)
      (available p238)
      (colour p238 mauve)
      (treatment p238 varnished)
      (available p239)
      (wood p239 mahogany)
      (treatment p239 varnished)
      (available p240)
      (colour p240 red)
      (wood p240 cherry)
      (treatment p240 varnished)
      (available p241)
      (colour p241 black)
      (wood p241 oak)
      (surface-condition p241 verysmooth)
      (treatment p241 varnished)
      (available p242)
      (surface-condition p242 smooth)
      (treatment p242 glazed)
      (available p243)
      (wood p243 cherry)
      (treatment p243 glazed)
      (available p244)
      (wood p244 mahogany)
      (surface-condition p244 verysmooth)
      (available p245)
      (colour p245 blue)
      (wood p245 mahogany)
      (surface-condition p245 verysmooth)
      (treatment p245 glazed)
      (available p246)
      (wood p246 beech)
      (treatment p246 glazed)
      (available p247)
      (colour p247 natural)
      (wood p247 pine)
      (surface-condition p247 smooth)
      (treatment p247 glazed)
      (available p248)
      (colour p248 blue)
      (wood p248 cherry)
      (surface-condition p248 smooth)
      (treatment p248 glazed)
      (available p249)
      (colour p249 white)
      (wood p249 mahogany)
      (surface-condition p249 smooth)
      (available p250)
      (colour p250 mauve)
      (treatment p250 glazed)
      (available p251)
      (wood p251 mahogany)
      (treatment p251 varnished)
      (available p252)
      (colour p252 white)
      (wood p252 beech)
      (surface-condition p252 verysmooth)
      (available p253)
      (wood p253 pine)
      (surface-condition p253 verysmooth)
      (available p254)
      (colour p254 white)
      (surface-condition p254 verysmooth)
      (available p255)
      (colour p255 natural)
      (wood p255 walnut)
      (surface-condition p255 verysmooth)
      (treatment p255 glazed)
      (available p256)
      (wood p256 walnut)
      (surface-condition p256 verysmooth)
      (treatment p256 glazed)
      (available p257)
      (colour p257 white)
      (surface-condition p257 verysmooth)
      (available p258)
      (colour p258 natural)
      (wood p258 walnut)
      (surface-condition p258 smooth)
      (treatment p258 glazed)
      (available p259)
      (colour p259 blue)
      (surface-condition p259 verysmooth)
      (treatment p259 varnished)
      (available p260)
      (colour p260 natural)
      (treatment p260 varnished)
      (available p261)
      (colour p261 white)
      (wood p261 beech)
      (available p262)
      (surface-condition p262 smooth)
      (treatment p262 glazed)
      (available p263)
      (colour p263 mauve)
      (wood p263 teak)
      (surface-condition p263 smooth)
      (treatment p263 glazed)
      (available p264)
      (colour p264 mauve)
      (surface-condition p264 verysmooth)
      (available p265)
      (colour p265 red)
      (wood p265 teak)
      (surface-condition p265 verysmooth)
      (treatment p265 varnished)
      (available p266)
      (colour p266 red)
      (wood p266 cherry)
      (surface-condition p266 smooth)
      (available p267)
      (colour p267 red)
      (wood p267 walnut)
      (available p268)
      (wood p268 oak)
      (treatment p268 varnished)
      (available p269)
      (wood p269 pine)
      (treatment p269 glazed)
      (available p270)
      (surface-condition p270 verysmooth)
      (treatment p270 glazed)
      (available p271)
      (colour p271 natural)
      (wood p271 oak)
      (surface-condition p271 smooth)
      (treatment p271 glazed)
      (available p272)
      (colour p272 green)
      (wood p272 teak)
      (surface-condition p272 verysmooth)
      (available p273)
      (colour p273 red)
      (wood p273 mahogany)
      (surface-condition p273 smooth)
      (treatment p273 varnished)
      (available p274)
      (colour p274 red)
      (surface-condition p274 verysmooth)
      (treatment p274 glazed)
      (available p275)
      (colour p275 green)
      (wood p275 beech)
      (surface-condition p275 smooth)
      (treatment p275 varnished)
      (available p276)
      (wood p276 teak)
      (surface-condition p276 verysmooth)
      (treatment p276 glazed)
      (available p277)
      (wood p277 walnut)
      (treatment p277 varnished)
    )
  )
  
)
