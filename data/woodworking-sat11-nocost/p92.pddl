; woodworking task with 245 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 117657

(define (problem wood-prob-sat-92)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red mauve blue black white green - acolour
    mahogany beech teak pine walnut cherry oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 - board
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
    (has-colour glazer1 white)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
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
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 white)
    (wood p15 pine)
    (surface-condition p15 rough)
    (treatment p15 varnished)
    (goalsize p15 large)
    
    
    
    
    (available p16)
    (colour p16 mauve)
    (wood p16 beech)
    (surface-condition p16 smooth)
    (treatment p16 colourfragments)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 mauve)
    (wood p20 beech)
    (surface-condition p20 smooth)
    (treatment p20 varnished)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (available p23)
    (colour p23 green)
    (wood p23 mahogany)
    (surface-condition p23 verysmooth)
    (treatment p23 varnished)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (available p25)
    (colour p25 mauve)
    (wood p25 pine)
    (surface-condition p25 smooth)
    (treatment p25 colourfragments)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 red)
    (wood p27 walnut)
    (surface-condition p27 smooth)
    (treatment p27 colourfragments)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (available p35)
    (colour p35 white)
    (wood p35 oak)
    (surface-condition p35 smooth)
    (treatment p35 varnished)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (available p39)
    (colour p39 red)
    (wood p39 beech)
    (surface-condition p39 smooth)
    (treatment p39 colourfragments)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (available p43)
    (colour p43 red)
    (wood p43 oak)
    (surface-condition p43 smooth)
    (treatment p43 glazed)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (available p50)
    (colour p50 mauve)
    (wood p50 cherry)
    (surface-condition p50 rough)
    (treatment p50 varnished)
    (goalsize p50 medium)
    
    
    
    
    (available p51)
    (colour p51 mauve)
    (wood p51 teak)
    (surface-condition p51 verysmooth)
    (treatment p51 glazed)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (available p53)
    (colour p53 natural)
    (wood p53 cherry)
    (surface-condition p53 smooth)
    (treatment p53 varnished)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (available p57)
    (colour p57 blue)
    (wood p57 cherry)
    (surface-condition p57 verysmooth)
    (treatment p57 colourfragments)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 white)
    (wood p65 pine)
    (surface-condition p65 rough)
    (treatment p65 varnished)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (available p69)
    (colour p69 white)
    (wood p69 cherry)
    (surface-condition p69 rough)
    (treatment p69 colourfragments)
    (goalsize p69 large)
    
    
    
    
    (available p70)
    (colour p70 green)
    (wood p70 teak)
    (surface-condition p70 verysmooth)
    (treatment p70 varnished)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (available p74)
    (colour p74 green)
    (wood p74 walnut)
    (surface-condition p74 rough)
    (treatment p74 varnished)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (available p87)
    (colour p87 natural)
    (wood p87 pine)
    (surface-condition p87 rough)
    (treatment p87 colourfragments)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (available p92)
    (colour p92 green)
    (wood p92 teak)
    (surface-condition p92 verysmooth)
    (treatment p92 colourfragments)
    (goalsize p92 medium)
    
    
    
    
    (available p93)
    (colour p93 green)
    (wood p93 pine)
    (surface-condition p93 verysmooth)
    (treatment p93 varnished)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (available p95)
    (colour p95 white)
    (wood p95 oak)
    (surface-condition p95 smooth)
    (treatment p95 colourfragments)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (available p98)
    (colour p98 mauve)
    (wood p98 pine)
    (surface-condition p98 rough)
    (treatment p98 colourfragments)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (available p102)
    (colour p102 natural)
    (wood p102 cherry)
    (surface-condition p102 smooth)
    (treatment p102 colourfragments)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (available p106)
    (colour p106 black)
    (wood p106 pine)
    (surface-condition p106 rough)
    (treatment p106 colourfragments)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (available p111)
    (colour p111 mauve)
    (wood p111 oak)
    (surface-condition p111 verysmooth)
    (treatment p111 varnished)
    (goalsize p111 large)
    
    
    
    
    (available p112)
    (colour p112 natural)
    (wood p112 pine)
    (surface-condition p112 smooth)
    (treatment p112 varnished)
    (goalsize p112 small)
    
    
    
    
    (available p113)
    (colour p113 white)
    (wood p113 beech)
    (surface-condition p113 smooth)
    (treatment p113 varnished)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (available p116)
    (colour p116 black)
    (wood p116 teak)
    (surface-condition p116 rough)
    (treatment p116 varnished)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (available p118)
    (colour p118 green)
    (wood p118 beech)
    (surface-condition p118 smooth)
    (treatment p118 colourfragments)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (available p122)
    (colour p122 natural)
    (wood p122 mahogany)
    (surface-condition p122 verysmooth)
    (treatment p122 colourfragments)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (available p125)
    (colour p125 green)
    (wood p125 pine)
    (surface-condition p125 verysmooth)
    (treatment p125 glazed)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (available p128)
    (colour p128 green)
    (wood p128 beech)
    (surface-condition p128 verysmooth)
    (treatment p128 varnished)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 large)
    
    
    
    
    (available p139)
    (colour p139 blue)
    (wood p139 mahogany)
    (surface-condition p139 smooth)
    (treatment p139 varnished)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (available p154)
    (colour p154 blue)
    (wood p154 cherry)
    (surface-condition p154 rough)
    (treatment p154 colourfragments)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (available p158)
    (colour p158 green)
    (wood p158 pine)
    (surface-condition p158 rough)
    (treatment p158 glazed)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (available p165)
    (colour p165 blue)
    (wood p165 beech)
    (surface-condition p165 verysmooth)
    (treatment p165 glazed)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (available p167)
    (colour p167 mauve)
    (wood p167 mahogany)
    (surface-condition p167 verysmooth)
    (treatment p167 varnished)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (available p177)
    (colour p177 blue)
    (wood p177 cherry)
    (surface-condition p177 verysmooth)
    (treatment p177 glazed)
    (goalsize p177 medium)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (available p179)
    (colour p179 black)
    (wood p179 cherry)
    (surface-condition p179 verysmooth)
    (treatment p179 colourfragments)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 large)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (available p182)
    (colour p182 black)
    (wood p182 beech)
    (surface-condition p182 rough)
    (treatment p182 colourfragments)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (available p184)
    (colour p184 natural)
    (wood p184 mahogany)
    (surface-condition p184 verysmooth)
    (treatment p184 glazed)
    (goalsize p184 medium)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 small)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (available p188)
    (colour p188 blue)
    (wood p188 cherry)
    (surface-condition p188 rough)
    (treatment p188 colourfragments)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (available p190)
    (colour p190 blue)
    (wood p190 oak)
    (surface-condition p190 verysmooth)
    (treatment p190 colourfragments)
    (goalsize p190 large)
    
    
    
    
    (available p191)
    (colour p191 mauve)
    (wood p191 pine)
    (surface-condition p191 smooth)
    (treatment p191 colourfragments)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 small)
    
    
    
    
    (unused p196)
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (available p205)
    (colour p205 white)
    (wood p205 mahogany)
    (surface-condition p205 rough)
    (treatment p205 colourfragments)
    (goalsize p205 medium)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (available p208)
    (colour p208 red)
    (wood p208 mahogany)
    (surface-condition p208 rough)
    (treatment p208 glazed)
    (goalsize p208 small)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (available p215)
    (colour p215 black)
    (wood p215 walnut)
    (surface-condition p215 smooth)
    (treatment p215 varnished)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 small)
    
    
    
    
    (available p217)
    (colour p217 white)
    (wood p217 walnut)
    (surface-condition p217 verysmooth)
    (treatment p217 colourfragments)
    (goalsize p217 small)
    
    
    
    
    (unused p218)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 large)
    
    
    
    
    (unused p220)
    (goalsize p220 large)
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 medium)
    
    
    
    
    (unused p223)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 large)
    
    
    
    
    (available p225)
    (colour p225 black)
    (wood p225 mahogany)
    (surface-condition p225 verysmooth)
    (treatment p225 colourfragments)
    (goalsize p225 small)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (unused p227)
    (goalsize p227 small)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (available p229)
    (colour p229 mauve)
    (wood p229 beech)
    (surface-condition p229 smooth)
    (treatment p229 varnished)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 small)
    
    
    
    
    (unused p234)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 small)
    
    
    
    
    (available p236)
    (colour p236 red)
    (wood p236 teak)
    (surface-condition p236 rough)
    (treatment p236 glazed)
    (goalsize p236 large)
    
    
    
    
    (unused p237)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (unused p239)
    (goalsize p239 small)
    
    
    
    
    (unused p240)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 small)
    
    
    
    
    (unused p242)
    (goalsize p242 medium)
    
    
    
    
    (unused p243)
    (goalsize p243 large)
    
    
    
    
    (unused p244)
    (goalsize p244 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s7)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s10)
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
    (boardsize b8 s8)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s3)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s6)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s5)
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
    (boardsize b17 s10)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 mahogany)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s7)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 oak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s9)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s9)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s10)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s9)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s10)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s1)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s9)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s6)
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
    (boardsize b35 s10)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s8)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s5)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s6)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s11)
    (wood b39 walnut)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s5)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s7)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s7)
    (wood b42 walnut)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s8)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s7)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s5)
    (wood b45 teak)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s10)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s7)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s5)
    (wood b48 teak)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s10)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s8)
    (wood b50 teak)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s7)
    (wood b51 beech)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s8)
    (wood b52 beech)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s7)
    (wood b53 beech)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s5)
    (wood b54 beech)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s6)
    (wood b55 beech)
    (surface-condition b55 smooth)
    (available b55)
    (boardsize b56 s6)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s6)
    (wood b57 beech)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s10)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s3)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 oak)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 green)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 white)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (wood p4 walnut)
      (treatment p4 varnished)
      (available p5)
      (colour p5 white)
      (wood p5 cherry)
      (available p6)
      (wood p6 cherry)
      (surface-condition p6 verysmooth)
      (available p7)
      (wood p7 teak)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 green)
      (wood p8 teak)
      (treatment p8 glazed)
      (available p9)
      (colour p9 black)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 blue)
      (wood p10 walnut)
      (surface-condition p10 verysmooth)
      (available p11)
      (wood p11 oak)
      (surface-condition p11 smooth)
      (available p12)
      (colour p12 red)
      (surface-condition p12 smooth)
      (available p13)
      (colour p13 mauve)
      (surface-condition p13 verysmooth)
      (available p14)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 green)
      (wood p15 pine)
      (available p16)
      (wood p16 beech)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (wood p17 mahogany)
      (treatment p17 varnished)
      (available p18)
      (wood p18 oak)
      (treatment p18 varnished)
      (available p19)
      (wood p19 walnut)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 natural)
      (wood p20 beech)
      (available p21)
      (colour p21 red)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 green)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 red)
      (treatment p23 varnished)
      (available p24)
      (colour p24 blue)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 green)
      (wood p25 pine)
      (available p26)
      (colour p26 white)
      (wood p26 pine)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 natural)
      (surface-condition p27 verysmooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 natural)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 red)
      (treatment p29 glazed)
      (available p30)
      (colour p30 blue)
      (wood p30 pine)
      (available p31)
      (colour p31 mauve)
      (wood p31 beech)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 black)
      (wood p32 cherry)
      (available p33)
      (colour p33 green)
      (treatment p33 varnished)
      (available p34)
      (colour p34 green)
      (wood p34 oak)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 natural)
      (treatment p35 glazed)
      (available p36)
      (colour p36 blue)
      (treatment p36 glazed)
      (available p37)
      (colour p37 green)
      (treatment p37 glazed)
      (available p38)
      (wood p38 cherry)
      (treatment p38 varnished)
      (available p39)
      (colour p39 black)
      (wood p39 beech)
      (surface-condition p39 verysmooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 blue)
      (wood p40 beech)
      (treatment p40 glazed)
      (available p41)
      (colour p41 white)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (wood p42 teak)
      (surface-condition p42 verysmooth)
      (available p43)
      (colour p43 natural)
      (wood p43 oak)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (wood p44 oak)
      (surface-condition p44 smooth)
      (available p45)
      (colour p45 black)
      (wood p45 mahogany)
      (surface-condition p45 smooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 green)
      (wood p46 pine)
      (surface-condition p46 verysmooth)
      (treatment p46 glazed)
      (available p47)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (colour p48 green)
      (wood p48 pine)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (wood p49 cherry)
      (surface-condition p49 smooth)
      (available p50)
      (wood p50 cherry)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 natural)
      (treatment p51 glazed)
      (available p52)
      (wood p52 walnut)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (wood p53 cherry)
      (surface-condition p53 smooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 green)
      (treatment p54 glazed)
      (available p55)
      (wood p55 beech)
      (surface-condition p55 smooth)
      (available p56)
      (wood p56 pine)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 white)
      (wood p57 cherry)
      (available p58)
      (colour p58 white)
      (surface-condition p58 smooth)
      (available p59)
      (wood p59 oak)
      (treatment p59 varnished)
      (available p60)
      (colour p60 blue)
      (wood p60 beech)
      (treatment p60 glazed)
      (available p61)
      (colour p61 mauve)
      (surface-condition p61 smooth)
      (treatment p61 varnished)
      (available p62)
      (wood p62 teak)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 red)
      (wood p63 pine)
      (surface-condition p63 smooth)
      (treatment p63 glazed)
      (available p64)
      (colour p64 red)
      (surface-condition p64 verysmooth)
      (available p65)
      (colour p65 natural)
      (wood p65 pine)
      (available p66)
      (colour p66 mauve)
      (wood p66 beech)
      (surface-condition p66 smooth)
      (treatment p66 glazed)
      (available p67)
      (wood p67 pine)
      (treatment p67 varnished)
      (available p68)
      (wood p68 oak)
      (surface-condition p68 verysmooth)
      (available p69)
      (colour p69 mauve)
      (wood p69 cherry)
      (available p70)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 green)
      (wood p71 cherry)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (colour p72 white)
      (wood p72 beech)
      (available p73)
      (colour p73 blue)
      (wood p73 oak)
      (surface-condition p73 verysmooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 white)
      (surface-condition p74 verysmooth)
      (available p75)
      (colour p75 green)
      (treatment p75 glazed)
      (available p76)
      (colour p76 green)
      (wood p76 pine)
      (available p77)
      (colour p77 natural)
      (wood p77 walnut)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 white)
      (wood p78 cherry)
      (surface-condition p78 smooth)
      (treatment p78 varnished)
      (available p79)
      (colour p79 black)
      (treatment p79 glazed)
      (available p80)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 black)
      (surface-condition p81 smooth)
      (available p82)
      (surface-condition p82 verysmooth)
      (treatment p82 glazed)
      (available p83)
      (wood p83 cherry)
      (surface-condition p83 smooth)
      (treatment p83 glazed)
      (available p84)
      (wood p84 walnut)
      (surface-condition p84 verysmooth)
      (available p85)
      (colour p85 black)
      (surface-condition p85 smooth)
      (available p86)
      (colour p86 black)
      (surface-condition p86 smooth)
      (available p87)
      (wood p87 pine)
      (surface-condition p87 smooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 green)
      (surface-condition p88 verysmooth)
      (available p89)
      (colour p89 natural)
      (surface-condition p89 smooth)
      (available p90)
      (wood p90 mahogany)
      (treatment p90 glazed)
      (available p91)
      (colour p91 natural)
      (wood p91 teak)
      (surface-condition p91 verysmooth)
      (treatment p91 glazed)
      (available p92)
      (colour p92 natural)
      (wood p92 teak)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (colour p93 mauve)
      (wood p93 pine)
      (available p94)
      (colour p94 natural)
      (wood p94 walnut)
      (treatment p94 varnished)
      (available p95)
      (colour p95 blue)
      (wood p95 oak)
      (treatment p95 glazed)
      (available p96)
      (colour p96 black)
      (wood p96 teak)
      (available p97)
      (colour p97 natural)
      (wood p97 teak)
      (treatment p97 glazed)
      (available p98)
      (wood p98 pine)
      (treatment p98 glazed)
      (available p99)
      (colour p99 white)
      (wood p99 beech)
      (available p100)
      (colour p100 white)
      (wood p100 pine)
      (surface-condition p100 smooth)
      (treatment p100 varnished)
      (available p101)
      (surface-condition p101 smooth)
      (treatment p101 varnished)
      (available p102)
      (colour p102 white)
      (treatment p102 varnished)
      (available p103)
      (colour p103 green)
      (surface-condition p103 smooth)
      (available p104)
      (colour p104 blue)
      (wood p104 oak)
      (surface-condition p104 verysmooth)
      (treatment p104 glazed)
      (available p105)
      (wood p105 pine)
      (treatment p105 glazed)
      (available p106)
      (colour p106 red)
      (wood p106 pine)
      (surface-condition p106 verysmooth)
      (treatment p106 varnished)
      (available p107)
      (colour p107 black)
      (wood p107 oak)
      (surface-condition p107 verysmooth)
      (treatment p107 varnished)
      (available p108)
      (colour p108 blue)
      (wood p108 pine)
      (treatment p108 varnished)
      (available p109)
      (colour p109 natural)
      (wood p109 beech)
      (surface-condition p109 smooth)
      (treatment p109 glazed)
      (available p110)
      (colour p110 red)
      (treatment p110 glazed)
      (available p111)
      (colour p111 natural)
      (wood p111 oak)
      (surface-condition p111 verysmooth)
      (treatment p111 glazed)
      (available p112)
      (colour p112 mauve)
      (wood p112 pine)
      (available p113)
      (colour p113 blue)
      (treatment p113 varnished)
      (available p114)
      (wood p114 teak)
      (surface-condition p114 verysmooth)
      (available p115)
      (colour p115 black)
      (surface-condition p115 verysmooth)
      (treatment p115 glazed)
      (available p116)
      (colour p116 green)
      (wood p116 teak)
      (surface-condition p116 smooth)
      (treatment p116 glazed)
      (available p117)
      (wood p117 oak)
      (treatment p117 glazed)
      (available p118)
      (colour p118 white)
      (wood p118 beech)
      (surface-condition p118 verysmooth)
      (available p119)
      (colour p119 green)
      (treatment p119 varnished)
      (available p120)
      (surface-condition p120 smooth)
      (treatment p120 varnished)
      (available p121)
      (wood p121 beech)
      (treatment p121 glazed)
      (available p122)
      (colour p122 red)
      (wood p122 mahogany)
      (surface-condition p122 verysmooth)
      (available p123)
      (wood p123 pine)
      (treatment p123 glazed)
      (available p124)
      (colour p124 natural)
      (wood p124 oak)
      (surface-condition p124 verysmooth)
      (treatment p124 glazed)
      (available p125)
      (wood p125 pine)
      (treatment p125 varnished)
      (available p126)
      (colour p126 white)
      (surface-condition p126 verysmooth)
      (treatment p126 glazed)
      (available p127)
      (wood p127 oak)
      (surface-condition p127 verysmooth)
      (available p128)
      (colour p128 black)
      (wood p128 beech)
      (surface-condition p128 verysmooth)
      (available p129)
      (colour p129 mauve)
      (wood p129 beech)
      (surface-condition p129 smooth)
      (treatment p129 glazed)
      (available p130)
      (surface-condition p130 verysmooth)
      (treatment p130 varnished)
      (available p131)
      (surface-condition p131 smooth)
      (treatment p131 varnished)
      (available p132)
      (wood p132 mahogany)
      (surface-condition p132 verysmooth)
      (available p133)
      (colour p133 red)
      (wood p133 mahogany)
      (surface-condition p133 smooth)
      (treatment p133 varnished)
      (available p134)
      (colour p134 black)
      (surface-condition p134 smooth)
      (treatment p134 glazed)
      (available p135)
      (colour p135 blue)
      (wood p135 pine)
      (surface-condition p135 smooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 black)
      (wood p136 mahogany)
      (available p137)
      (wood p137 walnut)
      (treatment p137 glazed)
      (available p138)
      (colour p138 red)
      (wood p138 cherry)
      (available p139)
      (surface-condition p139 verysmooth)
      (treatment p139 glazed)
      (available p140)
      (colour p140 red)
      (wood p140 cherry)
      (surface-condition p140 verysmooth)
      (treatment p140 varnished)
      (available p141)
      (colour p141 white)
      (wood p141 oak)
      (available p142)
      (wood p142 oak)
      (surface-condition p142 smooth)
      (available p143)
      (colour p143 black)
      (surface-condition p143 smooth)
      (treatment p143 varnished)
      (available p144)
      (colour p144 mauve)
      (treatment p144 glazed)
      (available p145)
      (colour p145 natural)
      (surface-condition p145 smooth)
      (available p146)
      (colour p146 red)
      (wood p146 walnut)
      (surface-condition p146 verysmooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 mauve)
      (wood p147 beech)
      (available p148)
      (colour p148 white)
      (treatment p148 glazed)
      (available p149)
      (wood p149 teak)
      (surface-condition p149 smooth)
      (treatment p149 glazed)
      (available p150)
      (colour p150 black)
      (wood p150 teak)
      (surface-condition p150 smooth)
      (treatment p150 glazed)
      (available p151)
      (colour p151 green)
      (wood p151 cherry)
      (surface-condition p151 smooth)
      (treatment p151 varnished)
      (available p152)
      (wood p152 cherry)
      (treatment p152 glazed)
      (available p153)
      (wood p153 beech)
      (surface-condition p153 verysmooth)
      (available p154)
      (colour p154 red)
      (surface-condition p154 verysmooth)
      (treatment p154 varnished)
      (available p155)
      (colour p155 natural)
      (wood p155 beech)
      (surface-condition p155 smooth)
      (treatment p155 glazed)
      (available p156)
      (surface-condition p156 smooth)
      (treatment p156 varnished)
      (available p157)
      (wood p157 teak)
      (surface-condition p157 verysmooth)
      (available p158)
      (colour p158 black)
      (wood p158 pine)
      (available p159)
      (colour p159 black)
      (wood p159 mahogany)
      (surface-condition p159 smooth)
      (available p160)
      (colour p160 mauve)
      (wood p160 pine)
      (surface-condition p160 verysmooth)
      (treatment p160 varnished)
      (available p161)
      (colour p161 white)
      (wood p161 mahogany)
      (surface-condition p161 smooth)
      (treatment p161 varnished)
      (available p162)
      (colour p162 green)
      (wood p162 cherry)
      (available p163)
      (colour p163 black)
      (surface-condition p163 verysmooth)
      (available p164)
      (wood p164 oak)
      (surface-condition p164 verysmooth)
      (available p165)
      (colour p165 white)
      (treatment p165 glazed)
      (available p166)
      (colour p166 mauve)
      (wood p166 oak)
      (surface-condition p166 verysmooth)
      (available p167)
      (wood p167 mahogany)
      (surface-condition p167 smooth)
      (available p168)
      (colour p168 blue)
      (wood p168 walnut)
      (available p169)
      (colour p169 white)
      (wood p169 walnut)
      (surface-condition p169 smooth)
      (treatment p169 glazed)
      (available p170)
      (colour p170 white)
      (wood p170 teak)
      (available p171)
      (colour p171 black)
      (wood p171 beech)
      (surface-condition p171 smooth)
      (treatment p171 varnished)
      (available p172)
      (colour p172 mauve)
      (treatment p172 varnished)
      (available p173)
      (wood p173 walnut)
      (treatment p173 varnished)
      (available p174)
      (colour p174 blue)
      (wood p174 pine)
      (surface-condition p174 smooth)
      (treatment p174 glazed)
      (available p175)
      (colour p175 red)
      (surface-condition p175 smooth)
      (available p176)
      (colour p176 mauve)
      (wood p176 teak)
      (available p177)
      (colour p177 red)
      (wood p177 cherry)
      (surface-condition p177 verysmooth)
      (treatment p177 varnished)
      (available p178)
      (wood p178 oak)
      (treatment p178 varnished)
      (available p179)
      (colour p179 white)
      (wood p179 cherry)
      (available p180)
      (wood p180 mahogany)
      (treatment p180 varnished)
      (available p181)
      (surface-condition p181 smooth)
      (treatment p181 glazed)
      (available p182)
      (wood p182 beech)
      (treatment p182 glazed)
      (available p183)
      (wood p183 pine)
      (surface-condition p183 smooth)
      (available p184)
      (colour p184 blue)
      (surface-condition p184 verysmooth)
      (available p185)
      (colour p185 mauve)
      (wood p185 oak)
      (surface-condition p185 verysmooth)
      (treatment p185 varnished)
      (available p186)
      (colour p186 green)
      (wood p186 teak)
      (available p187)
      (colour p187 black)
      (wood p187 pine)
      (treatment p187 varnished)
      (available p188)
      (colour p188 black)
      (surface-condition p188 smooth)
      (available p189)
      (wood p189 teak)
      (surface-condition p189 verysmooth)
      (treatment p189 glazed)
      (available p190)
      (colour p190 red)
      (surface-condition p190 smooth)
      (available p191)
      (colour p191 natural)
      (wood p191 pine)
      (surface-condition p191 smooth)
      (available p192)
      (colour p192 red)
      (surface-condition p192 verysmooth)
      (available p193)
      (colour p193 black)
      (wood p193 cherry)
      (surface-condition p193 verysmooth)
      (treatment p193 varnished)
      (available p194)
      (colour p194 mauve)
      (wood p194 mahogany)
      (surface-condition p194 verysmooth)
      (treatment p194 varnished)
      (available p195)
      (colour p195 green)
      (wood p195 mahogany)
      (surface-condition p195 smooth)
      (treatment p195 varnished)
      (available p196)
      (surface-condition p196 verysmooth)
      (treatment p196 varnished)
      (available p197)
      (wood p197 cherry)
      (treatment p197 glazed)
      (available p198)
      (wood p198 cherry)
      (surface-condition p198 verysmooth)
      (treatment p198 glazed)
      (available p199)
      (surface-condition p199 smooth)
      (treatment p199 glazed)
      (available p200)
      (wood p200 teak)
      (surface-condition p200 smooth)
      (treatment p200 glazed)
      (available p201)
      (colour p201 mauve)
      (wood p201 oak)
      (surface-condition p201 verysmooth)
      (treatment p201 varnished)
      (available p202)
      (wood p202 pine)
      (surface-condition p202 verysmooth)
      (available p203)
      (colour p203 natural)
      (treatment p203 glazed)
      (available p204)
      (colour p204 white)
      (wood p204 oak)
      (surface-condition p204 verysmooth)
      (treatment p204 varnished)
      (available p205)
      (colour p205 mauve)
      (wood p205 mahogany)
      (surface-condition p205 smooth)
      (treatment p205 glazed)
      (available p206)
      (colour p206 mauve)
      (wood p206 cherry)
      (treatment p206 glazed)
      (available p207)
      (colour p207 green)
      (wood p207 mahogany)
      (surface-condition p207 verysmooth)
      (treatment p207 varnished)
      (available p208)
      (colour p208 blue)
      (wood p208 mahogany)
      (surface-condition p208 verysmooth)
      (treatment p208 glazed)
      (available p209)
      (colour p209 blue)
      (wood p209 oak)
      (available p210)
      (colour p210 white)
      (wood p210 teak)
      (surface-condition p210 smooth)
      (available p211)
      (colour p211 natural)
      (surface-condition p211 smooth)
      (available p212)
      (wood p212 beech)
      (surface-condition p212 verysmooth)
      (available p213)
      (surface-condition p213 verysmooth)
      (treatment p213 varnished)
      (available p214)
      (wood p214 oak)
      (treatment p214 glazed)
      (available p215)
      (colour p215 blue)
      (wood p215 walnut)
      (surface-condition p215 verysmooth)
      (available p216)
      (colour p216 red)
      (wood p216 pine)
      (surface-condition p216 smooth)
      (treatment p216 varnished)
      (available p217)
      (wood p217 walnut)
      (treatment p217 glazed)
      (available p218)
      (colour p218 natural)
      (wood p218 mahogany)
      (available p219)
      (colour p219 black)
      (wood p219 beech)
      (surface-condition p219 smooth)
      (treatment p219 glazed)
      (available p220)
      (colour p220 red)
      (wood p220 cherry)
      (surface-condition p220 verysmooth)
      (available p221)
      (wood p221 walnut)
      (surface-condition p221 verysmooth)
      (available p222)
      (wood p222 mahogany)
      (surface-condition p222 verysmooth)
      (available p223)
      (surface-condition p223 smooth)
      (treatment p223 varnished)
      (available p224)
      (wood p224 pine)
      (surface-condition p224 smooth)
      (treatment p224 glazed)
      (available p225)
      (surface-condition p225 verysmooth)
      (treatment p225 glazed)
      (available p226)
      (colour p226 white)
      (surface-condition p226 verysmooth)
      (treatment p226 varnished)
      (available p227)
      (wood p227 oak)
      (treatment p227 varnished)
      (available p228)
      (colour p228 mauve)
      (treatment p228 glazed)
      (available p229)
      (colour p229 natural)
      (wood p229 beech)
      (surface-condition p229 verysmooth)
      (treatment p229 glazed)
      (available p230)
      (wood p230 mahogany)
      (surface-condition p230 smooth)
      (treatment p230 glazed)
      (available p231)
      (colour p231 mauve)
      (wood p231 oak)
      (available p232)
      (colour p232 natural)
      (wood p232 cherry)
      (surface-condition p232 smooth)
      (treatment p232 glazed)
      (available p233)
      (colour p233 red)
      (wood p233 walnut)
      (surface-condition p233 verysmooth)
      (treatment p233 varnished)
      (available p234)
      (wood p234 walnut)
      (treatment p234 glazed)
      (available p235)
      (wood p235 walnut)
      (surface-condition p235 smooth)
      (available p236)
      (wood p236 teak)
      (treatment p236 varnished)
      (available p237)
      (colour p237 natural)
      (wood p237 mahogany)
      (surface-condition p237 verysmooth)
      (available p238)
      (colour p238 green)
      (wood p238 mahogany)
      (surface-condition p238 verysmooth)
      (treatment p238 glazed)
      (available p239)
      (colour p239 red)
      (treatment p239 varnished)
      (available p240)
      (wood p240 teak)
      (treatment p240 varnished)
      (available p241)
      (colour p241 white)
      (wood p241 beech)
      (surface-condition p241 smooth)
      (treatment p241 glazed)
      (available p242)
      (wood p242 mahogany)
      (treatment p242 glazed)
      (available p243)
      (wood p243 walnut)
      (treatment p243 glazed)
      (available p244)
      (colour p244 black)
      (wood p244 oak)
      (surface-condition p244 verysmooth)
      (treatment p244 glazed)
    )
  )
  
)
