; woodworking task with 251 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 495531

(define (problem wood-prob-sat-94)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green mauve white blue black red - acolour
    teak beech mahogany pine walnut oak cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
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
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 mauve)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (available p14)
    (colour p14 mauve)
    (wood p14 beech)
    (surface-condition p14 verysmooth)
    (treatment p14 colourfragments)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (available p16)
    (colour p16 white)
    (wood p16 teak)
    (surface-condition p16 rough)
    (treatment p16 colourfragments)
    (goalsize p16 medium)
    
    
    
    
    (available p17)
    (colour p17 green)
    (wood p17 oak)
    (surface-condition p17 smooth)
    (treatment p17 glazed)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (available p21)
    (colour p21 black)
    (wood p21 pine)
    (surface-condition p21 rough)
    (treatment p21 colourfragments)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 green)
    (wood p24 mahogany)
    (surface-condition p24 verysmooth)
    (treatment p24 varnished)
    (goalsize p24 large)
    
    
    
    
    (available p25)
    (colour p25 blue)
    (wood p25 walnut)
    (surface-condition p25 rough)
    (treatment p25 colourfragments)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 green)
    (wood p28 walnut)
    (surface-condition p28 rough)
    (treatment p28 glazed)
    (goalsize p28 small)
    
    
    
    
    (available p29)
    (colour p29 red)
    (wood p29 cherry)
    (surface-condition p29 verysmooth)
    (treatment p29 glazed)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (available p40)
    (colour p40 natural)
    (wood p40 walnut)
    (surface-condition p40 rough)
    (treatment p40 glazed)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (available p45)
    (colour p45 green)
    (wood p45 cherry)
    (surface-condition p45 smooth)
    (treatment p45 varnished)
    (goalsize p45 medium)
    
    
    
    
    (available p46)
    (colour p46 white)
    (wood p46 oak)
    (surface-condition p46 rough)
    (treatment p46 varnished)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (available p52)
    (colour p52 mauve)
    (wood p52 beech)
    (surface-condition p52 verysmooth)
    (treatment p52 glazed)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (available p54)
    (colour p54 natural)
    (wood p54 mahogany)
    (surface-condition p54 verysmooth)
    (treatment p54 varnished)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (available p56)
    (colour p56 white)
    (wood p56 cherry)
    (surface-condition p56 smooth)
    (treatment p56 varnished)
    (goalsize p56 medium)
    
    
    
    
    (available p57)
    (colour p57 green)
    (wood p57 pine)
    (surface-condition p57 rough)
    (treatment p57 colourfragments)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (available p59)
    (colour p59 natural)
    (wood p59 beech)
    (surface-condition p59 rough)
    (treatment p59 colourfragments)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 black)
    (wood p67 mahogany)
    (surface-condition p67 smooth)
    (treatment p67 varnished)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (available p70)
    (colour p70 black)
    (wood p70 mahogany)
    (surface-condition p70 verysmooth)
    (treatment p70 colourfragments)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (available p87)
    (colour p87 red)
    (wood p87 cherry)
    (surface-condition p87 verysmooth)
    (treatment p87 varnished)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (available p91)
    (colour p91 green)
    (wood p91 teak)
    (surface-condition p91 smooth)
    (treatment p91 varnished)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (available p94)
    (colour p94 green)
    (wood p94 beech)
    (surface-condition p94 smooth)
    (treatment p94 glazed)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (available p105)
    (colour p105 red)
    (wood p105 teak)
    (surface-condition p105 verysmooth)
    (treatment p105 varnished)
    (goalsize p105 large)
    
    
    
    
    (available p106)
    (colour p106 green)
    (wood p106 teak)
    (surface-condition p106 smooth)
    (treatment p106 colourfragments)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (available p109)
    (colour p109 red)
    (wood p109 teak)
    (surface-condition p109 verysmooth)
    (treatment p109 colourfragments)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (available p112)
    (colour p112 mauve)
    (wood p112 oak)
    (surface-condition p112 rough)
    (treatment p112 varnished)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (available p115)
    (colour p115 red)
    (wood p115 walnut)
    (surface-condition p115 verysmooth)
    (treatment p115 colourfragments)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (available p117)
    (colour p117 mauve)
    (wood p117 mahogany)
    (surface-condition p117 rough)
    (treatment p117 glazed)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (available p120)
    (colour p120 mauve)
    (wood p120 beech)
    (surface-condition p120 verysmooth)
    (treatment p120 varnished)
    (goalsize p120 small)
    
    
    
    
    (available p121)
    (colour p121 black)
    (wood p121 beech)
    (surface-condition p121 verysmooth)
    (treatment p121 glazed)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (available p126)
    (colour p126 red)
    (wood p126 mahogany)
    (surface-condition p126 smooth)
    (treatment p126 glazed)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (available p131)
    (colour p131 blue)
    (wood p131 walnut)
    (surface-condition p131 smooth)
    (treatment p131 varnished)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (available p136)
    (colour p136 natural)
    (wood p136 oak)
    (surface-condition p136 rough)
    (treatment p136 glazed)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (available p138)
    (colour p138 blue)
    (wood p138 cherry)
    (surface-condition p138 rough)
    (treatment p138 varnished)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (available p152)
    (colour p152 natural)
    (wood p152 cherry)
    (surface-condition p152 rough)
    (treatment p152 glazed)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (available p163)
    (colour p163 green)
    (wood p163 beech)
    (surface-condition p163 rough)
    (treatment p163 colourfragments)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (available p169)
    (colour p169 green)
    (wood p169 beech)
    (surface-condition p169 verysmooth)
    (treatment p169 varnished)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 large)
    
    
    
    
    (unused p176)
    (goalsize p176 small)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (available p185)
    (colour p185 white)
    (wood p185 mahogany)
    (surface-condition p185 rough)
    (treatment p185 varnished)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (available p190)
    (colour p190 black)
    (wood p190 teak)
    (surface-condition p190 rough)
    (treatment p190 colourfragments)
    (goalsize p190 medium)
    
    
    
    
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
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (available p199)
    (colour p199 natural)
    (wood p199 walnut)
    (surface-condition p199 verysmooth)
    (treatment p199 varnished)
    (goalsize p199 large)
    
    
    
    
    (available p200)
    (colour p200 white)
    (wood p200 teak)
    (surface-condition p200 rough)
    (treatment p200 glazed)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 medium)
    
    
    
    
    (unused p202)
    (goalsize p202 small)
    
    
    
    
    (available p203)
    (colour p203 mauve)
    (wood p203 mahogany)
    (surface-condition p203 smooth)
    (treatment p203 colourfragments)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (available p206)
    (colour p206 red)
    (wood p206 beech)
    (surface-condition p206 smooth)
    (treatment p206 glazed)
    (goalsize p206 small)
    
    
    
    
    (available p207)
    (colour p207 natural)
    (wood p207 cherry)
    (surface-condition p207 verysmooth)
    (treatment p207 varnished)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 medium)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (available p216)
    (colour p216 mauve)
    (wood p216 oak)
    (surface-condition p216 rough)
    (treatment p216 varnished)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 small)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (available p223)
    (colour p223 white)
    (wood p223 cherry)
    (surface-condition p223 verysmooth)
    (treatment p223 glazed)
    (goalsize p223 small)
    
    
    
    
    (unused p224)
    (goalsize p224 small)
    
    
    
    
    (available p225)
    (colour p225 black)
    (wood p225 mahogany)
    (surface-condition p225 smooth)
    (treatment p225 colourfragments)
    (goalsize p225 small)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (available p227)
    (colour p227 white)
    (wood p227 mahogany)
    (surface-condition p227 rough)
    (treatment p227 glazed)
    (goalsize p227 medium)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 large)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (unused p232)
    (goalsize p232 small)
    
    
    
    
    (unused p233)
    (goalsize p233 medium)
    
    
    
    
    (available p234)
    (colour p234 blue)
    (wood p234 pine)
    (surface-condition p234 rough)
    (treatment p234 colourfragments)
    (goalsize p234 small)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (unused p237)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 large)
    
    
    
    
    (available p239)
    (colour p239 white)
    (wood p239 beech)
    (surface-condition p239 verysmooth)
    (treatment p239 colourfragments)
    (goalsize p239 medium)
    
    
    
    
    (unused p240)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 large)
    
    
    
    
    (unused p242)
    (goalsize p242 medium)
    
    
    
    
    (unused p243)
    (goalsize p243 small)
    
    
    
    
    (unused p244)
    (goalsize p244 large)
    
    
    
    
    (unused p245)
    (goalsize p245 small)
    
    
    
    
    (unused p246)
    (goalsize p246 large)
    
    
    
    
    (unused p247)
    (goalsize p247 medium)
    
    
    
    
    (unused p248)
    (goalsize p248 medium)
    
    
    
    
    (unused p249)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 large)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
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
    (boardsize b6 s10)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s11)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 cherry)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 cherry)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s10)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s6)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s6)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s6)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s3)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 oak)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s5)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s5)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s3)
    (wood b28 oak)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s9)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s7)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s10)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 pine)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s4)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 pine)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s8)
    (wood b37 walnut)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s8)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s9)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s9)
    (wood b41 walnut)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s8)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s7)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s6)
    (wood b44 walnut)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s8)
    (wood b45 walnut)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s5)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s5)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s7)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s11)
    (wood b49 teak)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s6)
    (wood b50 teak)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s11)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s8)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s5)
    (wood b53 teak)
    (surface-condition b53 smooth)
    (available b53)
    (boardsize b54 s9)
    (wood b54 beech)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s12)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s7)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s9)
    (wood b57 beech)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s5)
    (wood b58 beech)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s9)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s8)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s9)
    (wood b61 beech)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s6)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 teak)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 mauve)
      (wood p1 beech)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 black)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 blue)
      (wood p3 cherry)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 natural)
      (treatment p4 varnished)
      (available p5)
      (wood p5 teak)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 blue)
      (wood p6 walnut)
      (surface-condition p6 verysmooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 red)
      (treatment p7 glazed)
      (available p8)
      (colour p8 white)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 white)
      (treatment p9 glazed)
      (available p10)
      (wood p10 pine)
      (treatment p10 glazed)
      (available p11)
      (colour p11 green)
      (wood p11 beech)
      (surface-condition p11 smooth)
      (available p12)
      (colour p12 black)
      (wood p12 cherry)
      (treatment p12 glazed)
      (available p13)
      (colour p13 white)
      (wood p13 walnut)
      (available p14)
      (colour p14 natural)
      (wood p14 beech)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 black)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 black)
      (surface-condition p16 smooth)
      (available p17)
      (colour p17 red)
      (wood p17 oak)
      (available p18)
      (colour p18 green)
      (wood p18 walnut)
      (available p19)
      (colour p19 natural)
      (surface-condition p19 verysmooth)
      (available p20)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 white)
      (surface-condition p21 smooth)
      (available p22)
      (wood p22 cherry)
      (treatment p22 glazed)
      (available p23)
      (colour p23 natural)
      (wood p23 beech)
      (surface-condition p23 smooth)
      (available p24)
      (colour p24 blue)
      (wood p24 mahogany)
      (surface-condition p24 verysmooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 mauve)
      (wood p25 walnut)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 white)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 white)
      (wood p27 teak)
      (available p28)
      (wood p28 walnut)
      (surface-condition p28 smooth)
      (available p29)
      (colour p29 green)
      (wood p29 cherry)
      (available p30)
      (colour p30 mauve)
      (wood p30 teak)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (colour p32 blue)
      (wood p32 walnut)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (wood p33 oak)
      (treatment p33 glazed)
      (available p34)
      (colour p34 white)
      (wood p34 walnut)
      (available p35)
      (colour p35 mauve)
      (treatment p35 glazed)
      (available p36)
      (colour p36 green)
      (wood p36 pine)
      (available p37)
      (colour p37 red)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 natural)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 black)
      (wood p39 beech)
      (surface-condition p39 verysmooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 green)
      (treatment p40 varnished)
      (available p41)
      (colour p41 mauve)
      (wood p41 teak)
      (surface-condition p41 smooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 mauve)
      (wood p42 walnut)
      (treatment p42 glazed)
      (available p43)
      (colour p43 mauve)
      (wood p43 pine)
      (available p44)
      (colour p44 red)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (surface-condition p46 verysmooth)
      (treatment p46 glazed)
      (available p47)
      (surface-condition p47 verysmooth)
      (treatment p47 glazed)
      (available p48)
      (colour p48 green)
      (wood p48 beech)
      (available p49)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 blue)
      (treatment p50 glazed)
      (available p51)
      (wood p51 walnut)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 white)
      (wood p52 beech)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (wood p53 oak)
      (treatment p53 varnished)
      (available p54)
      (colour p54 black)
      (surface-condition p54 smooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 white)
      (wood p55 pine)
      (available p56)
      (wood p56 cherry)
      (surface-condition p56 verysmooth)
      (available p57)
      (wood p57 pine)
      (treatment p57 glazed)
      (available p58)
      (colour p58 white)
      (treatment p58 glazed)
      (available p59)
      (colour p59 mauve)
      (wood p59 beech)
      (surface-condition p59 smooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 green)
      (wood p60 pine)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (wood p61 pine)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 white)
      (wood p62 mahogany)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 red)
      (wood p63 beech)
      (available p64)
      (colour p64 black)
      (treatment p64 varnished)
      (available p65)
      (wood p65 walnut)
      (surface-condition p65 smooth)
      (available p66)
      (wood p66 mahogany)
      (surface-condition p66 verysmooth)
      (available p67)
      (colour p67 red)
      (surface-condition p67 verysmooth)
      (available p68)
      (colour p68 white)
      (treatment p68 varnished)
      (available p69)
      (surface-condition p69 smooth)
      (treatment p69 glazed)
      (available p70)
      (wood p70 mahogany)
      (surface-condition p70 smooth)
      (available p71)
      (colour p71 red)
      (surface-condition p71 smooth)
      (treatment p71 glazed)
      (available p72)
      (colour p72 red)
      (wood p72 teak)
      (treatment p72 glazed)
      (available p73)
      (colour p73 red)
      (wood p73 walnut)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (surface-condition p74 verysmooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 natural)
      (treatment p75 varnished)
      (available p76)
      (colour p76 red)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 red)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 natural)
      (wood p78 pine)
      (surface-condition p78 verysmooth)
      (treatment p78 varnished)
      (available p79)
      (colour p79 red)
      (wood p79 pine)
      (surface-condition p79 verysmooth)
      (treatment p79 varnished)
      (available p80)
      (wood p80 cherry)
      (surface-condition p80 smooth)
      (available p81)
      (wood p81 cherry)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 green)
      (wood p82 cherry)
      (treatment p82 varnished)
      (available p83)
      (colour p83 mauve)
      (surface-condition p83 verysmooth)
      (available p84)
      (wood p84 mahogany)
      (surface-condition p84 smooth)
      (available p85)
      (colour p85 green)
      (wood p85 cherry)
      (available p86)
      (colour p86 natural)
      (wood p86 beech)
      (surface-condition p86 verysmooth)
      (treatment p86 glazed)
      (available p87)
      (colour p87 black)
      (wood p87 cherry)
      (surface-condition p87 verysmooth)
      (treatment p87 glazed)
      (available p88)
      (colour p88 black)
      (wood p88 oak)
      (treatment p88 varnished)
      (available p89)
      (wood p89 pine)
      (surface-condition p89 smooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 mauve)
      (wood p90 walnut)
      (surface-condition p90 smooth)
      (treatment p90 glazed)
      (available p91)
      (surface-condition p91 verysmooth)
      (treatment p91 varnished)
      (available p92)
      (colour p92 black)
      (wood p92 walnut)
      (available p93)
      (wood p93 mahogany)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (colour p94 red)
      (wood p94 beech)
      (surface-condition p94 verysmooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 white)
      (wood p95 beech)
      (surface-condition p95 smooth)
      (available p96)
      (colour p96 green)
      (wood p96 walnut)
      (treatment p96 varnished)
      (available p97)
      (colour p97 red)
      (wood p97 oak)
      (surface-condition p97 verysmooth)
      (treatment p97 varnished)
      (available p98)
      (wood p98 pine)
      (surface-condition p98 smooth)
      (available p99)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 green)
      (wood p100 walnut)
      (surface-condition p100 verysmooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 green)
      (surface-condition p101 smooth)
      (treatment p101 varnished)
      (available p102)
      (colour p102 mauve)
      (wood p102 cherry)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 green)
      (wood p103 beech)
      (treatment p103 varnished)
      (available p104)
      (colour p104 mauve)
      (wood p104 beech)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 black)
      (wood p105 teak)
      (surface-condition p105 verysmooth)
      (treatment p105 varnished)
      (available p106)
      (colour p106 red)
      (surface-condition p106 smooth)
      (treatment p106 glazed)
      (available p107)
      (wood p107 pine)
      (treatment p107 varnished)
      (available p108)
      (wood p108 pine)
      (surface-condition p108 smooth)
      (available p109)
      (colour p109 blue)
      (wood p109 teak)
      (surface-condition p109 smooth)
      (treatment p109 glazed)
      (available p110)
      (colour p110 red)
      (wood p110 oak)
      (surface-condition p110 verysmooth)
      (treatment p110 varnished)
      (available p111)
      (surface-condition p111 smooth)
      (treatment p111 varnished)
      (available p112)
      (colour p112 green)
      (wood p112 oak)
      (treatment p112 glazed)
      (available p113)
      (colour p113 natural)
      (wood p113 teak)
      (available p114)
      (wood p114 cherry)
      (surface-condition p114 verysmooth)
      (available p115)
      (colour p115 green)
      (wood p115 walnut)
      (surface-condition p115 verysmooth)
      (treatment p115 varnished)
      (available p116)
      (wood p116 cherry)
      (treatment p116 glazed)
      (available p117)
      (colour p117 black)
      (wood p117 mahogany)
      (available p118)
      (wood p118 teak)
      (surface-condition p118 verysmooth)
      (available p119)
      (wood p119 cherry)
      (surface-condition p119 verysmooth)
      (treatment p119 varnished)
      (available p120)
      (surface-condition p120 smooth)
      (treatment p120 varnished)
      (available p121)
      (colour p121 mauve)
      (wood p121 beech)
      (treatment p121 glazed)
      (available p122)
      (colour p122 mauve)
      (treatment p122 varnished)
      (available p123)
      (wood p123 beech)
      (treatment p123 varnished)
      (available p124)
      (colour p124 white)
      (surface-condition p124 smooth)
      (treatment p124 glazed)
      (available p125)
      (wood p125 beech)
      (treatment p125 glazed)
      (available p126)
      (colour p126 mauve)
      (wood p126 mahogany)
      (available p127)
      (colour p127 mauve)
      (wood p127 walnut)
      (surface-condition p127 verysmooth)
      (treatment p127 varnished)
      (available p128)
      (wood p128 cherry)
      (treatment p128 glazed)
      (available p129)
      (colour p129 blue)
      (wood p129 cherry)
      (surface-condition p129 verysmooth)
      (treatment p129 glazed)
      (available p130)
      (colour p130 green)
      (surface-condition p130 verysmooth)
      (available p131)
      (colour p131 green)
      (wood p131 walnut)
      (surface-condition p131 verysmooth)
      (treatment p131 glazed)
      (available p132)
      (colour p132 natural)
      (treatment p132 glazed)
      (available p133)
      (wood p133 beech)
      (treatment p133 varnished)
      (available p134)
      (colour p134 white)
      (treatment p134 glazed)
      (available p135)
      (colour p135 mauve)
      (surface-condition p135 verysmooth)
      (available p136)
      (surface-condition p136 verysmooth)
      (treatment p136 glazed)
      (available p137)
      (colour p137 natural)
      (wood p137 oak)
      (surface-condition p137 smooth)
      (available p138)
      (colour p138 natural)
      (wood p138 cherry)
      (available p139)
      (colour p139 blue)
      (surface-condition p139 smooth)
      (treatment p139 glazed)
      (available p140)
      (colour p140 red)
      (wood p140 cherry)
      (surface-condition p140 smooth)
      (treatment p140 glazed)
      (available p141)
      (colour p141 mauve)
      (wood p141 cherry)
      (surface-condition p141 smooth)
      (treatment p141 varnished)
      (available p142)
      (colour p142 white)
      (surface-condition p142 smooth)
      (available p143)
      (wood p143 cherry)
      (surface-condition p143 verysmooth)
      (available p144)
      (wood p144 walnut)
      (surface-condition p144 verysmooth)
      (available p145)
      (colour p145 blue)
      (treatment p145 varnished)
      (available p146)
      (colour p146 blue)
      (treatment p146 varnished)
      (available p147)
      (wood p147 mahogany)
      (treatment p147 glazed)
      (available p148)
      (colour p148 mauve)
      (surface-condition p148 verysmooth)
      (available p149)
      (colour p149 mauve)
      (treatment p149 glazed)
      (available p150)
      (surface-condition p150 verysmooth)
      (treatment p150 varnished)
      (available p151)
      (colour p151 mauve)
      (wood p151 cherry)
      (surface-condition p151 verysmooth)
      (treatment p151 glazed)
      (available p152)
      (colour p152 red)
      (wood p152 cherry)
      (surface-condition p152 verysmooth)
      (available p153)
      (wood p153 walnut)
      (treatment p153 varnished)
      (available p154)
      (colour p154 natural)
      (wood p154 cherry)
      (available p155)
      (colour p155 mauve)
      (wood p155 walnut)
      (available p156)
      (colour p156 green)
      (wood p156 beech)
      (surface-condition p156 verysmooth)
      (treatment p156 varnished)
      (available p157)
      (wood p157 pine)
      (surface-condition p157 smooth)
      (available p158)
      (colour p158 white)
      (wood p158 pine)
      (surface-condition p158 verysmooth)
      (treatment p158 glazed)
      (available p159)
      (colour p159 black)
      (wood p159 cherry)
      (treatment p159 varnished)
      (available p160)
      (colour p160 black)
      (wood p160 cherry)
      (surface-condition p160 verysmooth)
      (treatment p160 glazed)
      (available p161)
      (colour p161 green)
      (wood p161 mahogany)
      (surface-condition p161 smooth)
      (treatment p161 varnished)
      (available p162)
      (wood p162 cherry)
      (treatment p162 varnished)
      (available p163)
      (colour p163 red)
      (wood p163 beech)
      (surface-condition p163 smooth)
      (available p164)
      (colour p164 blue)
      (surface-condition p164 smooth)
      (treatment p164 varnished)
      (available p165)
      (colour p165 mauve)
      (surface-condition p165 verysmooth)
      (available p166)
      (colour p166 black)
      (wood p166 cherry)
      (available p167)
      (colour p167 blue)
      (wood p167 mahogany)
      (surface-condition p167 smooth)
      (treatment p167 varnished)
      (available p168)
      (wood p168 walnut)
      (surface-condition p168 verysmooth)
      (available p169)
      (colour p169 natural)
      (wood p169 beech)
      (treatment p169 varnished)
      (available p170)
      (wood p170 walnut)
      (treatment p170 glazed)
      (available p171)
      (colour p171 mauve)
      (wood p171 beech)
      (available p172)
      (colour p172 natural)
      (wood p172 beech)
      (surface-condition p172 verysmooth)
      (treatment p172 glazed)
      (available p173)
      (colour p173 blue)
      (surface-condition p173 verysmooth)
      (treatment p173 glazed)
      (available p174)
      (wood p174 oak)
      (surface-condition p174 smooth)
      (treatment p174 glazed)
      (available p175)
      (surface-condition p175 verysmooth)
      (treatment p175 varnished)
      (available p176)
      (colour p176 mauve)
      (surface-condition p176 smooth)
      (available p177)
      (colour p177 natural)
      (surface-condition p177 verysmooth)
      (available p178)
      (colour p178 mauve)
      (wood p178 mahogany)
      (available p179)
      (wood p179 beech)
      (surface-condition p179 verysmooth)
      (available p180)
      (wood p180 mahogany)
      (treatment p180 glazed)
      (available p181)
      (surface-condition p181 smooth)
      (treatment p181 glazed)
      (available p182)
      (wood p182 teak)
      (surface-condition p182 smooth)
      (available p183)
      (wood p183 teak)
      (surface-condition p183 smooth)
      (available p184)
      (wood p184 oak)
      (treatment p184 varnished)
      (available p185)
      (wood p185 mahogany)
      (surface-condition p185 smooth)
      (available p186)
      (wood p186 pine)
      (surface-condition p186 smooth)
      (treatment p186 glazed)
      (available p187)
      (surface-condition p187 verysmooth)
      (treatment p187 glazed)
      (available p188)
      (colour p188 blue)
      (treatment p188 glazed)
      (available p189)
      (wood p189 pine)
      (treatment p189 glazed)
      (available p190)
      (colour p190 white)
      (surface-condition p190 verysmooth)
      (available p191)
      (colour p191 blue)
      (wood p191 beech)
      (treatment p191 varnished)
      (available p192)
      (surface-condition p192 smooth)
      (treatment p192 glazed)
      (available p193)
      (wood p193 oak)
      (surface-condition p193 verysmooth)
      (available p194)
      (colour p194 black)
      (wood p194 cherry)
      (surface-condition p194 smooth)
      (treatment p194 glazed)
      (available p195)
      (colour p195 white)
      (wood p195 mahogany)
      (available p196)
      (surface-condition p196 verysmooth)
      (treatment p196 glazed)
      (available p197)
      (colour p197 blue)
      (wood p197 mahogany)
      (surface-condition p197 smooth)
      (treatment p197 glazed)
      (available p198)
      (wood p198 mahogany)
      (surface-condition p198 verysmooth)
      (available p199)
      (wood p199 walnut)
      (treatment p199 glazed)
      (available p200)
      (wood p200 teak)
      (treatment p200 varnished)
      (available p201)
      (colour p201 natural)
      (treatment p201 varnished)
      (available p202)
      (colour p202 natural)
      (wood p202 beech)
      (available p203)
      (wood p203 mahogany)
      (treatment p203 varnished)
      (available p204)
      (wood p204 teak)
      (treatment p204 glazed)
      (available p205)
      (wood p205 walnut)
      (surface-condition p205 smooth)
      (treatment p205 glazed)
      (available p206)
      (wood p206 beech)
      (surface-condition p206 verysmooth)
      (available p207)
      (colour p207 mauve)
      (treatment p207 glazed)
      (available p208)
      (colour p208 red)
      (wood p208 cherry)
      (surface-condition p208 verysmooth)
      (available p209)
      (colour p209 red)
      (wood p209 teak)
      (treatment p209 glazed)
      (available p210)
      (colour p210 mauve)
      (wood p210 teak)
      (treatment p210 varnished)
      (available p211)
      (wood p211 pine)
      (surface-condition p211 verysmooth)
      (available p212)
      (colour p212 red)
      (wood p212 mahogany)
      (surface-condition p212 verysmooth)
      (treatment p212 varnished)
      (available p213)
      (colour p213 red)
      (wood p213 oak)
      (surface-condition p213 verysmooth)
      (treatment p213 varnished)
      (available p214)
      (colour p214 black)
      (wood p214 oak)
      (available p215)
      (wood p215 cherry)
      (surface-condition p215 verysmooth)
      (treatment p215 varnished)
      (available p216)
      (colour p216 red)
      (treatment p216 glazed)
      (available p217)
      (colour p217 red)
      (wood p217 cherry)
      (surface-condition p217 smooth)
      (treatment p217 varnished)
      (available p218)
      (colour p218 green)
      (wood p218 beech)
      (surface-condition p218 verysmooth)
      (treatment p218 glazed)
      (available p219)
      (surface-condition p219 smooth)
      (treatment p219 glazed)
      (available p220)
      (colour p220 blue)
      (wood p220 beech)
      (surface-condition p220 verysmooth)
      (treatment p220 varnished)
      (available p221)
      (colour p221 black)
      (surface-condition p221 smooth)
      (available p222)
      (colour p222 green)
      (wood p222 cherry)
      (available p223)
      (wood p223 cherry)
      (surface-condition p223 smooth)
      (available p224)
      (colour p224 red)
      (wood p224 oak)
      (surface-condition p224 verysmooth)
      (treatment p224 glazed)
      (available p225)
      (colour p225 mauve)
      (surface-condition p225 smooth)
      (treatment p225 varnished)
      (available p226)
      (colour p226 white)
      (wood p226 walnut)
      (available p227)
      (colour p227 mauve)
      (surface-condition p227 smooth)
      (available p228)
      (wood p228 beech)
      (surface-condition p228 verysmooth)
      (available p229)
      (colour p229 natural)
      (wood p229 walnut)
      (surface-condition p229 verysmooth)
      (available p230)
      (wood p230 oak)
      (surface-condition p230 verysmooth)
      (treatment p230 varnished)
      (available p231)
      (colour p231 red)
      (wood p231 mahogany)
      (surface-condition p231 smooth)
      (available p232)
      (colour p232 red)
      (wood p232 cherry)
      (surface-condition p232 smooth)
      (treatment p232 varnished)
      (available p233)
      (wood p233 beech)
      (surface-condition p233 smooth)
      (available p234)
      (colour p234 black)
      (wood p234 pine)
      (available p235)
      (colour p235 white)
      (treatment p235 varnished)
      (available p236)
      (colour p236 green)
      (wood p236 oak)
      (available p237)
      (surface-condition p237 smooth)
      (treatment p237 varnished)
      (available p238)
      (colour p238 white)
      (wood p238 walnut)
      (treatment p238 glazed)
      (available p239)
      (wood p239 beech)
      (treatment p239 glazed)
      (available p240)
      (colour p240 green)
      (wood p240 mahogany)
      (surface-condition p240 verysmooth)
      (treatment p240 glazed)
      (available p241)
      (wood p241 walnut)
      (surface-condition p241 smooth)
      (treatment p241 varnished)
      (available p242)
      (colour p242 green)
      (wood p242 oak)
      (treatment p242 glazed)
      (available p243)
      (colour p243 blue)
      (wood p243 walnut)
      (available p244)
      (colour p244 black)
      (wood p244 cherry)
      (surface-condition p244 verysmooth)
      (treatment p244 varnished)
      (available p245)
      (colour p245 green)
      (wood p245 mahogany)
      (surface-condition p245 smooth)
      (treatment p245 varnished)
      (available p246)
      (surface-condition p246 smooth)
      (treatment p246 varnished)
      (available p247)
      (colour p247 natural)
      (wood p247 cherry)
      (available p248)
      (colour p248 blue)
      (wood p248 mahogany)
      (surface-condition p248 verysmooth)
      (treatment p248 glazed)
      (available p249)
      (colour p249 mauve)
      (treatment p249 varnished)
      (available p250)
      (colour p250 natural)
      (wood p250 walnut)
      (surface-condition p250 verysmooth)
      (treatment p250 glazed)
    )
  )
  
)
