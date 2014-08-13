; woodworking task with 281 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 201222

(define (problem wood-prob-sat-104)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve green red white blue black - acolour
    mahogany pine walnut teak oak cherry beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 p257 p258 p259 p260 p261 p262 p263 p264 p265 p266 p267 p268 p269 p270 p271 p272 p273 p274 p275 p276 p277 p278 p279 p280 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 natural)
    (wood p1 cherry)
    (surface-condition p1 rough)
    (treatment p1 varnished)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (available p3)
    (colour p3 black)
    (wood p3 mahogany)
    (surface-condition p3 smooth)
    (treatment p3 colourfragments)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 natural)
    (wood p6 teak)
    (surface-condition p6 smooth)
    (treatment p6 glazed)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 mauve)
    (wood p7 pine)
    (surface-condition p7 smooth)
    (treatment p7 glazed)
    (goalsize p7 small)
    
    
    
    
    (available p8)
    (colour p8 white)
    (wood p8 mahogany)
    (surface-condition p8 verysmooth)
    (treatment p8 colourfragments)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (available p14)
    (colour p14 blue)
    (wood p14 mahogany)
    (surface-condition p14 smooth)
    (treatment p14 colourfragments)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (available p25)
    (colour p25 black)
    (wood p25 walnut)
    (surface-condition p25 smooth)
    (treatment p25 varnished)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (available p30)
    (colour p30 mauve)
    (wood p30 teak)
    (surface-condition p30 verysmooth)
    (treatment p30 colourfragments)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (available p35)
    (colour p35 blue)
    (wood p35 mahogany)
    (surface-condition p35 verysmooth)
    (treatment p35 varnished)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
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
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (available p47)
    (colour p47 red)
    (wood p47 teak)
    (surface-condition p47 verysmooth)
    (treatment p47 colourfragments)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (available p50)
    (colour p50 mauve)
    (wood p50 pine)
    (surface-condition p50 smooth)
    (treatment p50 glazed)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (available p55)
    (colour p55 blue)
    (wood p55 beech)
    (surface-condition p55 rough)
    (treatment p55 colourfragments)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 white)
    (wood p65 beech)
    (surface-condition p65 rough)
    (treatment p65 varnished)
    (goalsize p65 medium)
    
    
    
    
    (available p66)
    (colour p66 white)
    (wood p66 oak)
    (surface-condition p66 rough)
    (treatment p66 colourfragments)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (available p68)
    (colour p68 green)
    (wood p68 pine)
    (surface-condition p68 rough)
    (treatment p68 varnished)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (available p70)
    (colour p70 white)
    (wood p70 pine)
    (surface-condition p70 rough)
    (treatment p70 varnished)
    (goalsize p70 large)
    
    
    
    
    (available p71)
    (colour p71 white)
    (wood p71 pine)
    (surface-condition p71 rough)
    (treatment p71 colourfragments)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (available p77)
    (colour p77 green)
    (wood p77 pine)
    (surface-condition p77 smooth)
    (treatment p77 glazed)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (available p79)
    (colour p79 white)
    (wood p79 oak)
    (surface-condition p79 smooth)
    (treatment p79 glazed)
    (goalsize p79 small)
    
    
    
    
    (available p80)
    (colour p80 natural)
    (wood p80 walnut)
    (surface-condition p80 smooth)
    (treatment p80 glazed)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (available p84)
    (colour p84 green)
    (wood p84 cherry)
    (surface-condition p84 rough)
    (treatment p84 varnished)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (available p86)
    (colour p86 black)
    (wood p86 mahogany)
    (surface-condition p86 smooth)
    (treatment p86 varnished)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (available p99)
    (colour p99 green)
    (wood p99 beech)
    (surface-condition p99 rough)
    (treatment p99 varnished)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (available p101)
    (colour p101 blue)
    (wood p101 oak)
    (surface-condition p101 rough)
    (treatment p101 colourfragments)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (available p105)
    (colour p105 white)
    (wood p105 beech)
    (surface-condition p105 verysmooth)
    (treatment p105 glazed)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (available p108)
    (colour p108 natural)
    (wood p108 teak)
    (surface-condition p108 verysmooth)
    (treatment p108 colourfragments)
    (goalsize p108 small)
    
    
    
    
    (available p109)
    (colour p109 blue)
    (wood p109 walnut)
    (surface-condition p109 rough)
    (treatment p109 varnished)
    (goalsize p109 small)
    
    
    
    
    (available p110)
    (colour p110 green)
    (wood p110 cherry)
    (surface-condition p110 verysmooth)
    (treatment p110 colourfragments)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (available p116)
    (colour p116 black)
    (wood p116 cherry)
    (surface-condition p116 rough)
    (treatment p116 varnished)
    (goalsize p116 medium)
    
    
    
    
    (available p117)
    (colour p117 black)
    (wood p117 pine)
    (surface-condition p117 rough)
    (treatment p117 colourfragments)
    (goalsize p117 medium)
    
    
    
    
    (available p118)
    (colour p118 white)
    (wood p118 teak)
    (surface-condition p118 verysmooth)
    (treatment p118 glazed)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (available p122)
    (colour p122 white)
    (wood p122 oak)
    (surface-condition p122 verysmooth)
    (treatment p122 varnished)
    (goalsize p122 medium)
    
    
    
    
    (available p123)
    (colour p123 green)
    (wood p123 walnut)
    (surface-condition p123 rough)
    (treatment p123 glazed)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (available p128)
    (colour p128 white)
    (wood p128 oak)
    (surface-condition p128 verysmooth)
    (treatment p128 glazed)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (available p131)
    (colour p131 green)
    (wood p131 pine)
    (surface-condition p131 smooth)
    (treatment p131 colourfragments)
    (goalsize p131 small)
    
    
    
    
    (available p132)
    (colour p132 natural)
    (wood p132 pine)
    (surface-condition p132 smooth)
    (treatment p132 colourfragments)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (available p136)
    (colour p136 black)
    (wood p136 pine)
    (surface-condition p136 rough)
    (treatment p136 glazed)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (available p139)
    (colour p139 black)
    (wood p139 pine)
    (surface-condition p139 verysmooth)
    (treatment p139 colourfragments)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (available p145)
    (colour p145 black)
    (wood p145 cherry)
    (surface-condition p145 smooth)
    (treatment p145 varnished)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (available p154)
    (colour p154 red)
    (wood p154 walnut)
    (surface-condition p154 smooth)
    (treatment p154 varnished)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (available p157)
    (colour p157 natural)
    (wood p157 teak)
    (surface-condition p157 rough)
    (treatment p157 varnished)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (available p165)
    (colour p165 blue)
    (wood p165 pine)
    (surface-condition p165 verysmooth)
    (treatment p165 varnished)
    (goalsize p165 small)
    
    
    
    
    (available p166)
    (colour p166 blue)
    (wood p166 walnut)
    (surface-condition p166 rough)
    (treatment p166 glazed)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (available p171)
    (colour p171 white)
    (wood p171 teak)
    (surface-condition p171 smooth)
    (treatment p171 varnished)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 large)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (available p179)
    (colour p179 natural)
    (wood p179 pine)
    (surface-condition p179 rough)
    (treatment p179 varnished)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (unused p181)
    (goalsize p181 large)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (available p183)
    (colour p183 red)
    (wood p183 pine)
    (surface-condition p183 smooth)
    (treatment p183 colourfragments)
    (goalsize p183 large)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (available p188)
    (colour p188 white)
    (wood p188 pine)
    (surface-condition p188 rough)
    (treatment p188 colourfragments)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 large)
    
    
    
    
    (available p191)
    (colour p191 natural)
    (wood p191 mahogany)
    (surface-condition p191 smooth)
    (treatment p191 varnished)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (available p193)
    (colour p193 red)
    (wood p193 walnut)
    (surface-condition p193 verysmooth)
    (treatment p193 varnished)
    (goalsize p193 large)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (available p197)
    (colour p197 green)
    (wood p197 walnut)
    (surface-condition p197 rough)
    (treatment p197 colourfragments)
    (goalsize p197 medium)
    
    
    
    
    (available p198)
    (colour p198 mauve)
    (wood p198 walnut)
    (surface-condition p198 rough)
    (treatment p198 glazed)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (available p201)
    (colour p201 blue)
    (wood p201 cherry)
    (surface-condition p201 smooth)
    (treatment p201 glazed)
    (goalsize p201 large)
    
    
    
    
    (available p202)
    (colour p202 red)
    (wood p202 walnut)
    (surface-condition p202 verysmooth)
    (treatment p202 glazed)
    (goalsize p202 small)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 large)
    
    
    
    
    (unused p206)
    (goalsize p206 medium)
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 medium)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 medium)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (unused p215)
    (goalsize p215 large)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (available p217)
    (colour p217 green)
    (wood p217 beech)
    (surface-condition p217 verysmooth)
    (treatment p217 varnished)
    (goalsize p217 small)
    
    
    
    
    (available p218)
    (colour p218 mauve)
    (wood p218 beech)
    (surface-condition p218 verysmooth)
    (treatment p218 glazed)
    (goalsize p218 medium)
    
    
    
    
    (available p219)
    (colour p219 blue)
    (wood p219 walnut)
    (surface-condition p219 smooth)
    (treatment p219 colourfragments)
    (goalsize p219 medium)
    
    
    
    
    (available p220)
    (colour p220 green)
    (wood p220 mahogany)
    (surface-condition p220 rough)
    (treatment p220 varnished)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 large)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 large)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 small)
    
    
    
    
    (available p226)
    (colour p226 red)
    (wood p226 walnut)
    (surface-condition p226 verysmooth)
    (treatment p226 glazed)
    (goalsize p226 small)
    
    
    
    
    (unused p227)
    (goalsize p227 large)
    
    
    
    
    (available p228)
    (colour p228 green)
    (wood p228 pine)
    (surface-condition p228 verysmooth)
    (treatment p228 colourfragments)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 large)
    
    
    
    
    (unused p231)
    (goalsize p231 medium)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (available p233)
    (colour p233 green)
    (wood p233 teak)
    (surface-condition p233 rough)
    (treatment p233 colourfragments)
    (goalsize p233 small)
    
    
    
    
    (unused p234)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 medium)
    
    
    
    
    (unused p237)
    (goalsize p237 medium)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (available p239)
    (colour p239 natural)
    (wood p239 walnut)
    (surface-condition p239 smooth)
    (treatment p239 varnished)
    (goalsize p239 large)
    
    
    
    
    (unused p240)
    (goalsize p240 large)
    
    
    
    
    (unused p241)
    (goalsize p241 large)
    
    
    
    
    (available p242)
    (colour p242 mauve)
    (wood p242 beech)
    (surface-condition p242 smooth)
    (treatment p242 varnished)
    (goalsize p242 medium)
    
    
    
    
    (unused p243)
    (goalsize p243 medium)
    
    
    
    
    (unused p244)
    (goalsize p244 small)
    
    
    
    
    (unused p245)
    (goalsize p245 medium)
    
    
    
    
    (unused p246)
    (goalsize p246 small)
    
    
    
    
    (unused p247)
    (goalsize p247 medium)
    
    
    
    
    (unused p248)
    (goalsize p248 large)
    
    
    
    
    (unused p249)
    (goalsize p249 small)
    
    
    
    
    (unused p250)
    (goalsize p250 small)
    
    
    
    
    (unused p251)
    (goalsize p251 small)
    
    
    
    
    (available p252)
    (colour p252 green)
    (wood p252 mahogany)
    (surface-condition p252 smooth)
    (treatment p252 colourfragments)
    (goalsize p252 small)
    
    
    
    
    (unused p253)
    (goalsize p253 small)
    
    
    
    
    (unused p254)
    (goalsize p254 medium)
    
    
    
    
    (unused p255)
    (goalsize p255 large)
    
    
    
    
    (available p256)
    (colour p256 green)
    (wood p256 cherry)
    (surface-condition p256 smooth)
    (treatment p256 glazed)
    (goalsize p256 large)
    
    
    
    
    (unused p257)
    (goalsize p257 medium)
    
    
    
    
    (unused p258)
    (goalsize p258 large)
    
    
    
    
    (unused p259)
    (goalsize p259 large)
    
    
    
    
    (unused p260)
    (goalsize p260 small)
    
    
    
    
    (unused p261)
    (goalsize p261 medium)
    
    
    
    
    (unused p262)
    (goalsize p262 small)
    
    
    
    
    (unused p263)
    (goalsize p263 medium)
    
    
    
    
    (unused p264)
    (goalsize p264 small)
    
    
    
    
    (unused p265)
    (goalsize p265 medium)
    
    
    
    
    (available p266)
    (colour p266 black)
    (wood p266 pine)
    (surface-condition p266 smooth)
    (treatment p266 colourfragments)
    (goalsize p266 small)
    
    
    
    
    (unused p267)
    (goalsize p267 small)
    
    
    
    
    (available p268)
    (colour p268 red)
    (wood p268 mahogany)
    (surface-condition p268 verysmooth)
    (treatment p268 colourfragments)
    (goalsize p268 small)
    
    
    
    
    (available p269)
    (colour p269 red)
    (wood p269 pine)
    (surface-condition p269 smooth)
    (treatment p269 colourfragments)
    (goalsize p269 medium)
    
    
    
    
    (available p270)
    (colour p270 white)
    (wood p270 oak)
    (surface-condition p270 verysmooth)
    (treatment p270 varnished)
    (goalsize p270 small)
    
    
    
    
    (unused p271)
    (goalsize p271 large)
    
    
    
    
    (unused p272)
    (goalsize p272 large)
    
    
    
    
    (available p273)
    (colour p273 black)
    (wood p273 mahogany)
    (surface-condition p273 rough)
    (treatment p273 glazed)
    (goalsize p273 medium)
    
    
    
    
    (unused p274)
    (goalsize p274 large)
    
    
    
    
    (unused p275)
    (goalsize p275 medium)
    
    
    
    
    (unused p276)
    (goalsize p276 large)
    
    
    
    
    (available p277)
    (colour p277 black)
    (wood p277 oak)
    (surface-condition p277 rough)
    (treatment p277 glazed)
    (goalsize p277 small)
    
    
    
    
    (available p278)
    (colour p278 black)
    (wood p278 pine)
    (surface-condition p278 smooth)
    (treatment p278 glazed)
    (goalsize p278 medium)
    
    
    
    
    (unused p279)
    (goalsize p279 small)
    
    
    
    
    (unused p280)
    (goalsize p280 medium)
    
    
    
    
    (boardsize b0 s5)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
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
    (boardsize b7 s6)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 cherry)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s6)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s11)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s5)
    (wood b13 mahogany)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s10)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s9)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s11)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s10)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s6)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s11)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s4)
    (wood b21 mahogany)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 oak)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s6)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s7)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s10)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s9)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 pine)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s5)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s10)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s9)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s7)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s7)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s9)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s1)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s10)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s6)
    (wood b39 walnut)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s6)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s8)
    (wood b41 walnut)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s7)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s7)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s9)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s10)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s10)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s9)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s9)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s4)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s11)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s7)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s11)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s11)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s9)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s7)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s6)
    (wood b56 teak)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s10)
    (wood b57 beech)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s6)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s8)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s7)
    (wood b60 beech)
    (surface-condition b60 smooth)
    (available b60)
    (boardsize b61 s11)
    (wood b61 beech)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s9)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s6)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s9)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s3)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
  )
  (:goal
    (and
      (available p0)
      (wood p0 walnut)
      (surface-condition p0 smooth)
      (available p1)
      (wood p1 cherry)
      (treatment p1 glazed)
      (available p2)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 natural)
      (wood p3 mahogany)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 natural)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (wood p5 cherry)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (wood p6 teak)
      (surface-condition p6 verysmooth)
      (available p7)
      (colour p7 blue)
      (wood p7 pine)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 natural)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 green)
      (wood p9 walnut)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 blue)
      (treatment p10 glazed)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 black)
      (treatment p12 glazed)
      (available p13)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 white)
      (treatment p14 glazed)
      (available p15)
      (colour p15 green)
      (wood p15 pine)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (wood p16 cherry)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 green)
      (wood p17 pine)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (wood p18 mahogany)
      (treatment p18 varnished)
      (available p19)
      (wood p19 mahogany)
      (surface-condition p19 verysmooth)
      (available p20)
      (wood p20 pine)
      (treatment p20 varnished)
      (available p21)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 green)
      (wood p22 cherry)
      (treatment p22 glazed)
      (available p23)
      (colour p23 mauve)
      (wood p23 pine)
      (available p24)
      (wood p24 pine)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 red)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 black)
      (wood p26 mahogany)
      (available p27)
      (colour p27 red)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 blue)
      (wood p28 walnut)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 mauve)
      (treatment p29 varnished)
      (available p30)
      (colour p30 white)
      (wood p30 teak)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 mauve)
      (wood p31 pine)
      (available p32)
      (colour p32 red)
      (wood p32 mahogany)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 natural)
      (wood p33 beech)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 white)
      (treatment p34 varnished)
      (available p35)
      (colour p35 black)
      (wood p35 mahogany)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 green)
      (wood p36 oak)
      (treatment p36 glazed)
      (available p37)
      (wood p37 walnut)
      (surface-condition p37 verysmooth)
      (available p38)
      (colour p38 black)
      (wood p38 beech)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 green)
      (surface-condition p39 verysmooth)
      (available p40)
      (wood p40 mahogany)
      (treatment p40 glazed)
      (available p41)
      (colour p41 mauve)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 red)
      (surface-condition p42 smooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 red)
      (wood p43 teak)
      (treatment p43 varnished)
      (available p44)
      (colour p44 green)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 blue)
      (wood p45 walnut)
      (available p46)
      (wood p46 pine)
      (surface-condition p46 smooth)
      (available p47)
      (colour p47 natural)
      (wood p47 teak)
      (surface-condition p47 verysmooth)
      (treatment p47 glazed)
      (available p48)
      (colour p48 green)
      (wood p48 teak)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 white)
      (wood p49 beech)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 black)
      (wood p50 pine)
      (available p51)
      (colour p51 red)
      (treatment p51 varnished)
      (available p52)
      (wood p52 cherry)
      (surface-condition p52 verysmooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 green)
      (wood p53 mahogany)
      (surface-condition p53 smooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 blue)
      (wood p54 pine)
      (surface-condition p54 smooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 green)
      (wood p55 beech)
      (available p56)
      (wood p56 pine)
      (surface-condition p56 smooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 white)
      (wood p57 mahogany)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 red)
      (wood p58 beech)
      (available p59)
      (colour p59 black)
      (wood p59 pine)
      (available p60)
      (colour p60 natural)
      (wood p60 teak)
      (surface-condition p60 verysmooth)
      (available p61)
      (wood p61 beech)
      (treatment p61 varnished)
      (available p62)
      (colour p62 blue)
      (wood p62 walnut)
      (available p63)
      (colour p63 black)
      (wood p63 mahogany)
      (surface-condition p63 smooth)
      (treatment p63 glazed)
      (available p64)
      (wood p64 beech)
      (surface-condition p64 smooth)
      (available p65)
      (colour p65 natural)
      (wood p65 beech)
      (surface-condition p65 smooth)
      (available p66)
      (colour p66 natural)
      (wood p66 oak)
      (available p67)
      (colour p67 black)
      (wood p67 oak)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 blue)
      (wood p68 pine)
      (available p69)
      (colour p69 white)
      (wood p69 cherry)
      (available p70)
      (colour p70 natural)
      (wood p70 pine)
      (available p71)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (wood p72 cherry)
      (treatment p72 glazed)
      (available p73)
      (colour p73 natural)
      (treatment p73 glazed)
      (available p74)
      (wood p74 walnut)
      (surface-condition p74 smooth)
      (available p75)
      (colour p75 white)
      (wood p75 pine)
      (surface-condition p75 smooth)
      (treatment p75 varnished)
      (available p76)
      (colour p76 black)
      (wood p76 walnut)
      (surface-condition p76 verysmooth)
      (treatment p76 varnished)
      (available p77)
      (colour p77 blue)
      (wood p77 pine)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 natural)
      (wood p78 beech)
      (available p79)
      (colour p79 black)
      (wood p79 oak)
      (treatment p79 varnished)
      (available p80)
      (colour p80 white)
      (wood p80 walnut)
      (available p81)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (wood p82 walnut)
      (surface-condition p82 smooth)
      (available p83)
      (wood p83 mahogany)
      (surface-condition p83 smooth)
      (available p84)
      (colour p84 natural)
      (surface-condition p84 verysmooth)
      (available p85)
      (colour p85 blue)
      (treatment p85 glazed)
      (available p86)
      (colour p86 red)
      (wood p86 mahogany)
      (available p87)
      (surface-condition p87 smooth)
      (treatment p87 varnished)
      (available p88)
      (wood p88 pine)
      (surface-condition p88 verysmooth)
      (available p89)
      (colour p89 red)
      (wood p89 cherry)
      (available p90)
      (colour p90 white)
      (treatment p90 glazed)
      (available p91)
      (colour p91 green)
      (wood p91 mahogany)
      (surface-condition p91 verysmooth)
      (available p92)
      (wood p92 cherry)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 green)
      (wood p93 pine)
      (surface-condition p93 smooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 white)
      (wood p94 teak)
      (treatment p94 glazed)
      (available p95)
      (wood p95 teak)
      (treatment p95 glazed)
      (available p96)
      (colour p96 green)
      (surface-condition p96 smooth)
      (available p97)
      (colour p97 black)
      (wood p97 mahogany)
      (available p98)
      (colour p98 black)
      (wood p98 walnut)
      (surface-condition p98 smooth)
      (treatment p98 glazed)
      (available p99)
      (colour p99 blue)
      (wood p99 beech)
      (available p100)
      (colour p100 green)
      (wood p100 cherry)
      (treatment p100 varnished)
      (available p101)
      (wood p101 oak)
      (surface-condition p101 verysmooth)
      (treatment p101 varnished)
      (available p102)
      (wood p102 walnut)
      (surface-condition p102 smooth)
      (available p103)
      (colour p103 white)
      (wood p103 teak)
      (available p104)
      (colour p104 mauve)
      (wood p104 pine)
      (surface-condition p104 verysmooth)
      (treatment p104 glazed)
      (available p105)
      (colour p105 mauve)
      (treatment p105 glazed)
      (available p106)
      (wood p106 pine)
      (treatment p106 varnished)
      (available p107)
      (wood p107 walnut)
      (surface-condition p107 verysmooth)
      (available p108)
      (colour p108 blue)
      (wood p108 teak)
      (surface-condition p108 verysmooth)
      (treatment p108 varnished)
      (available p109)
      (surface-condition p109 smooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 black)
      (wood p110 cherry)
      (surface-condition p110 verysmooth)
      (treatment p110 varnished)
      (available p111)
      (colour p111 mauve)
      (surface-condition p111 verysmooth)
      (available p112)
      (colour p112 blue)
      (treatment p112 varnished)
      (available p113)
      (wood p113 cherry)
      (surface-condition p113 smooth)
      (available p114)
      (colour p114 green)
      (wood p114 pine)
      (surface-condition p114 smooth)
      (available p115)
      (colour p115 mauve)
      (surface-condition p115 verysmooth)
      (available p116)
      (surface-condition p116 verysmooth)
      (treatment p116 glazed)
      (available p117)
      (wood p117 pine)
      (surface-condition p117 verysmooth)
      (available p118)
      (colour p118 blue)
      (surface-condition p118 verysmooth)
      (available p119)
      (colour p119 blue)
      (surface-condition p119 smooth)
      (treatment p119 glazed)
      (available p120)
      (colour p120 white)
      (surface-condition p120 verysmooth)
      (treatment p120 glazed)
      (available p121)
      (colour p121 natural)
      (surface-condition p121 verysmooth)
      (available p122)
      (colour p122 red)
      (surface-condition p122 smooth)
      (available p123)
      (surface-condition p123 verysmooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 black)
      (surface-condition p124 verysmooth)
      (available p125)
      (wood p125 beech)
      (surface-condition p125 verysmooth)
      (available p126)
      (colour p126 natural)
      (surface-condition p126 verysmooth)
      (available p127)
      (colour p127 red)
      (treatment p127 varnished)
      (available p128)
      (colour p128 black)
      (wood p128 oak)
      (available p129)
      (colour p129 black)
      (wood p129 beech)
      (surface-condition p129 smooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 white)
      (wood p130 cherry)
      (available p131)
      (surface-condition p131 smooth)
      (treatment p131 glazed)
      (available p132)
      (colour p132 red)
      (wood p132 pine)
      (available p133)
      (colour p133 mauve)
      (wood p133 teak)
      (surface-condition p133 verysmooth)
      (treatment p133 varnished)
      (available p134)
      (wood p134 cherry)
      (treatment p134 varnished)
      (available p135)
      (colour p135 natural)
      (wood p135 pine)
      (surface-condition p135 smooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 natural)
      (treatment p136 glazed)
      (available p137)
      (colour p137 white)
      (wood p137 mahogany)
      (available p138)
      (surface-condition p138 smooth)
      (treatment p138 glazed)
      (available p139)
      (surface-condition p139 verysmooth)
      (treatment p139 varnished)
      (available p140)
      (wood p140 walnut)
      (surface-condition p140 verysmooth)
      (available p141)
      (wood p141 mahogany)
      (surface-condition p141 smooth)
      (available p142)
      (wood p142 oak)
      (treatment p142 glazed)
      (available p143)
      (wood p143 beech)
      (surface-condition p143 verysmooth)
      (treatment p143 varnished)
      (available p144)
      (wood p144 mahogany)
      (surface-condition p144 smooth)
      (treatment p144 varnished)
      (available p145)
      (colour p145 natural)
      (surface-condition p145 smooth)
      (available p146)
      (colour p146 green)
      (treatment p146 varnished)
      (available p147)
      (wood p147 walnut)
      (surface-condition p147 smooth)
      (available p148)
      (colour p148 blue)
      (wood p148 cherry)
      (surface-condition p148 smooth)
      (treatment p148 varnished)
      (available p149)
      (wood p149 cherry)
      (treatment p149 varnished)
      (available p150)
      (wood p150 mahogany)
      (treatment p150 glazed)
      (available p151)
      (surface-condition p151 verysmooth)
      (treatment p151 glazed)
      (available p152)
      (colour p152 blue)
      (wood p152 cherry)
      (surface-condition p152 verysmooth)
      (treatment p152 varnished)
      (available p153)
      (colour p153 mauve)
      (wood p153 teak)
      (treatment p153 glazed)
      (available p154)
      (colour p154 white)
      (wood p154 walnut)
      (surface-condition p154 smooth)
      (treatment p154 varnished)
      (available p155)
      (colour p155 green)
      (surface-condition p155 smooth)
      (available p156)
      (wood p156 beech)
      (surface-condition p156 verysmooth)
      (treatment p156 glazed)
      (available p157)
      (colour p157 black)
      (surface-condition p157 smooth)
      (treatment p157 glazed)
      (available p158)
      (colour p158 blue)
      (treatment p158 glazed)
      (available p159)
      (colour p159 blue)
      (treatment p159 glazed)
      (available p160)
      (colour p160 green)
      (surface-condition p160 verysmooth)
      (available p161)
      (wood p161 mahogany)
      (surface-condition p161 verysmooth)
      (treatment p161 glazed)
      (available p162)
      (surface-condition p162 verysmooth)
      (treatment p162 varnished)
      (available p163)
      (colour p163 white)
      (wood p163 mahogany)
      (surface-condition p163 verysmooth)
      (treatment p163 varnished)
      (available p164)
      (wood p164 oak)
      (surface-condition p164 smooth)
      (treatment p164 glazed)
      (available p165)
      (colour p165 white)
      (wood p165 pine)
      (available p166)
      (surface-condition p166 verysmooth)
      (treatment p166 glazed)
      (available p167)
      (colour p167 natural)
      (wood p167 teak)
      (surface-condition p167 smooth)
      (treatment p167 varnished)
      (available p168)
      (colour p168 blue)
      (surface-condition p168 verysmooth)
      (available p169)
      (colour p169 green)
      (wood p169 beech)
      (surface-condition p169 smooth)
      (treatment p169 glazed)
      (available p170)
      (colour p170 black)
      (treatment p170 varnished)
      (available p171)
      (surface-condition p171 verysmooth)
      (treatment p171 varnished)
      (available p172)
      (colour p172 blue)
      (wood p172 cherry)
      (surface-condition p172 verysmooth)
      (treatment p172 varnished)
      (available p173)
      (colour p173 mauve)
      (wood p173 beech)
      (surface-condition p173 smooth)
      (treatment p173 glazed)
      (available p174)
      (colour p174 natural)
      (surface-condition p174 verysmooth)
      (available p175)
      (colour p175 red)
      (wood p175 oak)
      (surface-condition p175 smooth)
      (treatment p175 glazed)
      (available p176)
      (colour p176 black)
      (wood p176 teak)
      (treatment p176 glazed)
      (available p177)
      (colour p177 white)
      (wood p177 mahogany)
      (available p178)
      (colour p178 black)
      (wood p178 oak)
      (surface-condition p178 verysmooth)
      (treatment p178 glazed)
      (available p179)
      (colour p179 green)
      (surface-condition p179 verysmooth)
      (available p180)
      (colour p180 mauve)
      (treatment p180 varnished)
      (available p181)
      (colour p181 black)
      (wood p181 oak)
      (surface-condition p181 smooth)
      (treatment p181 varnished)
      (available p182)
      (colour p182 natural)
      (surface-condition p182 verysmooth)
      (available p183)
      (colour p183 black)
      (wood p183 pine)
      (available p184)
      (surface-condition p184 verysmooth)
      (treatment p184 glazed)
      (available p185)
      (wood p185 mahogany)
      (treatment p185 varnished)
      (available p186)
      (wood p186 mahogany)
      (treatment p186 varnished)
      (available p187)
      (wood p187 walnut)
      (treatment p187 varnished)
      (available p188)
      (colour p188 red)
      (wood p188 pine)
      (available p189)
      (colour p189 green)
      (treatment p189 varnished)
      (available p190)
      (surface-condition p190 smooth)
      (treatment p190 varnished)
      (available p191)
      (colour p191 black)
      (wood p191 mahogany)
      (surface-condition p191 verysmooth)
      (treatment p191 glazed)
      (available p192)
      (colour p192 green)
      (wood p192 oak)
      (available p193)
      (colour p193 blue)
      (wood p193 walnut)
      (surface-condition p193 smooth)
      (treatment p193 glazed)
      (available p194)
      (colour p194 natural)
      (wood p194 walnut)
      (treatment p194 varnished)
      (available p195)
      (wood p195 walnut)
      (surface-condition p195 smooth)
      (available p196)
      (colour p196 green)
      (treatment p196 glazed)
      (available p197)
      (wood p197 walnut)
      (surface-condition p197 verysmooth)
      (available p198)
      (colour p198 natural)
      (wood p198 walnut)
      (surface-condition p198 smooth)
      (treatment p198 glazed)
      (available p199)
      (colour p199 blue)
      (surface-condition p199 verysmooth)
      (available p200)
      (colour p200 black)
      (wood p200 mahogany)
      (surface-condition p200 smooth)
      (available p201)
      (colour p201 mauve)
      (wood p201 cherry)
      (available p202)
      (surface-condition p202 verysmooth)
      (treatment p202 varnished)
      (available p203)
      (colour p203 black)
      (surface-condition p203 smooth)
      (available p204)
      (colour p204 blue)
      (wood p204 pine)
      (surface-condition p204 smooth)
      (treatment p204 varnished)
      (available p205)
      (colour p205 natural)
      (treatment p205 varnished)
      (available p206)
      (surface-condition p206 verysmooth)
      (treatment p206 glazed)
      (available p207)
      (wood p207 beech)
      (treatment p207 varnished)
      (available p208)
      (colour p208 white)
      (wood p208 walnut)
      (treatment p208 varnished)
      (available p209)
      (wood p209 cherry)
      (surface-condition p209 smooth)
      (treatment p209 glazed)
      (available p210)
      (colour p210 natural)
      (wood p210 cherry)
      (treatment p210 varnished)
      (available p211)
      (colour p211 red)
      (wood p211 beech)
      (surface-condition p211 smooth)
      (treatment p211 glazed)
      (available p212)
      (colour p212 white)
      (wood p212 oak)
      (surface-condition p212 verysmooth)
      (treatment p212 glazed)
      (available p213)
      (colour p213 white)
      (wood p213 mahogany)
      (surface-condition p213 verysmooth)
      (treatment p213 glazed)
      (available p214)
      (colour p214 natural)
      (wood p214 walnut)
      (treatment p214 glazed)
      (available p215)
      (colour p215 green)
      (wood p215 walnut)
      (surface-condition p215 smooth)
      (treatment p215 varnished)
      (available p216)
      (wood p216 teak)
      (treatment p216 glazed)
      (available p217)
      (colour p217 red)
      (surface-condition p217 smooth)
      (treatment p217 glazed)
      (available p218)
      (colour p218 black)
      (surface-condition p218 verysmooth)
      (treatment p218 varnished)
      (available p219)
      (colour p219 green)
      (wood p219 walnut)
      (surface-condition p219 smooth)
      (available p220)
      (wood p220 mahogany)
      (surface-condition p220 verysmooth)
      (available p221)
      (colour p221 black)
      (wood p221 cherry)
      (surface-condition p221 smooth)
      (treatment p221 varnished)
      (available p222)
      (colour p222 black)
      (wood p222 oak)
      (treatment p222 glazed)
      (available p223)
      (colour p223 natural)
      (wood p223 mahogany)
      (available p224)
      (colour p224 black)
      (wood p224 oak)
      (available p225)
      (colour p225 blue)
      (wood p225 mahogany)
      (surface-condition p225 smooth)
      (available p226)
      (colour p226 blue)
      (wood p226 walnut)
      (surface-condition p226 smooth)
      (treatment p226 glazed)
      (available p227)
      (colour p227 blue)
      (treatment p227 varnished)
      (available p228)
      (surface-condition p228 verysmooth)
      (treatment p228 glazed)
      (available p229)
      (colour p229 blue)
      (surface-condition p229 verysmooth)
      (available p230)
      (colour p230 red)
      (wood p230 oak)
      (treatment p230 glazed)
      (available p231)
      (wood p231 beech)
      (treatment p231 glazed)
      (available p232)
      (colour p232 mauve)
      (wood p232 mahogany)
      (treatment p232 glazed)
      (available p233)
      (colour p233 natural)
      (wood p233 teak)
      (available p234)
      (colour p234 mauve)
      (surface-condition p234 smooth)
      (treatment p234 glazed)
      (available p235)
      (colour p235 mauve)
      (wood p235 walnut)
      (available p236)
      (colour p236 red)
      (treatment p236 varnished)
      (available p237)
      (colour p237 green)
      (wood p237 walnut)
      (surface-condition p237 smooth)
      (treatment p237 varnished)
      (available p238)
      (wood p238 walnut)
      (surface-condition p238 smooth)
      (available p239)
      (colour p239 red)
      (wood p239 walnut)
      (surface-condition p239 verysmooth)
      (treatment p239 varnished)
      (available p240)
      (wood p240 beech)
      (surface-condition p240 smooth)
      (available p241)
      (colour p241 natural)
      (wood p241 walnut)
      (available p242)
      (colour p242 blue)
      (surface-condition p242 verysmooth)
      (available p243)
      (surface-condition p243 verysmooth)
      (treatment p243 glazed)
      (available p244)
      (wood p244 oak)
      (surface-condition p244 smooth)
      (treatment p244 varnished)
      (available p245)
      (colour p245 white)
      (surface-condition p245 smooth)
      (available p246)
      (colour p246 green)
      (wood p246 cherry)
      (available p247)
      (colour p247 white)
      (treatment p247 glazed)
      (available p248)
      (surface-condition p248 verysmooth)
      (treatment p248 varnished)
      (available p249)
      (colour p249 natural)
      (surface-condition p249 smooth)
      (treatment p249 glazed)
      (available p250)
      (colour p250 blue)
      (wood p250 walnut)
      (surface-condition p250 smooth)
      (treatment p250 glazed)
      (available p251)
      (colour p251 green)
      (wood p251 mahogany)
      (surface-condition p251 verysmooth)
      (available p252)
      (colour p252 black)
      (treatment p252 glazed)
      (available p253)
      (colour p253 black)
      (wood p253 walnut)
      (available p254)
      (wood p254 teak)
      (surface-condition p254 verysmooth)
      (available p255)
      (colour p255 black)
      (wood p255 teak)
      (surface-condition p255 smooth)
      (treatment p255 glazed)
      (available p256)
      (colour p256 mauve)
      (wood p256 cherry)
      (surface-condition p256 smooth)
      (treatment p256 varnished)
      (available p257)
      (colour p257 green)
      (wood p257 pine)
      (surface-condition p257 verysmooth)
      (treatment p257 glazed)
      (available p258)
      (wood p258 beech)
      (surface-condition p258 verysmooth)
      (available p259)
      (colour p259 natural)
      (wood p259 cherry)
      (surface-condition p259 verysmooth)
      (treatment p259 varnished)
      (available p260)
      (surface-condition p260 verysmooth)
      (treatment p260 varnished)
      (available p261)
      (colour p261 mauve)
      (wood p261 mahogany)
      (surface-condition p261 verysmooth)
      (treatment p261 varnished)
      (available p262)
      (colour p262 natural)
      (wood p262 oak)
      (treatment p262 glazed)
      (available p263)
      (wood p263 cherry)
      (surface-condition p263 smooth)
      (available p264)
      (surface-condition p264 smooth)
      (treatment p264 varnished)
      (available p265)
      (wood p265 walnut)
      (surface-condition p265 smooth)
      (available p266)
      (surface-condition p266 verysmooth)
      (treatment p266 varnished)
      (available p267)
      (wood p267 beech)
      (surface-condition p267 smooth)
      (treatment p267 glazed)
      (available p268)
      (colour p268 blue)
      (wood p268 mahogany)
      (surface-condition p268 smooth)
      (treatment p268 glazed)
      (available p269)
      (colour p269 mauve)
      (wood p269 pine)
      (available p270)
      (colour p270 black)
      (wood p270 oak)
      (surface-condition p270 verysmooth)
      (available p271)
      (colour p271 natural)
      (wood p271 pine)
      (surface-condition p271 verysmooth)
      (treatment p271 varnished)
      (available p272)
      (colour p272 blue)
      (wood p272 pine)
      (available p273)
      (colour p273 mauve)
      (treatment p273 varnished)
      (available p274)
      (wood p274 cherry)
      (surface-condition p274 smooth)
      (available p275)
      (colour p275 red)
      (wood p275 mahogany)
      (available p276)
      (wood p276 mahogany)
      (surface-condition p276 verysmooth)
      (treatment p276 glazed)
      (available p277)
      (colour p277 white)
      (wood p277 oak)
      (surface-condition p277 smooth)
      (available p278)
      (colour p278 blue)
      (wood p278 pine)
      (surface-condition p278 smooth)
      (available p279)
      (colour p279 natural)
      (surface-condition p279 smooth)
      (treatment p279 varnished)
      (available p280)
      (wood p280 cherry)
      (surface-condition p280 verysmooth)
    )
  )
  
)
