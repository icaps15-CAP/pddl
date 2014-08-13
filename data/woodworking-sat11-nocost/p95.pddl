; woodworking task with 254 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 808976

(define (problem wood-prob-sat-95)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve red white green black blue - acolour
    mahogany pine walnut teak cherry beech oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 - board
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
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 green)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
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
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 natural)
    (wood p7 pine)
    (surface-condition p7 smooth)
    (treatment p7 colourfragments)
    (goalsize p7 small)
    
    
    
    
    (available p8)
    (colour p8 green)
    (wood p8 mahogany)
    (surface-condition p8 rough)
    (treatment p8 colourfragments)
    (goalsize p8 small)
    
    
    
    
    (available p9)
    (colour p9 blue)
    (wood p9 walnut)
    (surface-condition p9 rough)
    (treatment p9 varnished)
    (goalsize p9 large)
    
    
    
    
    (available p10)
    (colour p10 green)
    (wood p10 beech)
    (surface-condition p10 verysmooth)
    (treatment p10 varnished)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (available p22)
    (colour p22 white)
    (wood p22 mahogany)
    (surface-condition p22 verysmooth)
    (treatment p22 glazed)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 natural)
    (wood p24 walnut)
    (surface-condition p24 smooth)
    (treatment p24 colourfragments)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 green)
    (wood p28 mahogany)
    (surface-condition p28 rough)
    (treatment p28 varnished)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (available p39)
    (colour p39 black)
    (wood p39 pine)
    (surface-condition p39 rough)
    (treatment p39 colourfragments)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (available p43)
    (colour p43 blue)
    (wood p43 oak)
    (surface-condition p43 smooth)
    (treatment p43 glazed)
    (goalsize p43 large)
    
    
    
    
    (available p44)
    (colour p44 white)
    (wood p44 mahogany)
    (surface-condition p44 smooth)
    (treatment p44 varnished)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (available p46)
    (colour p46 natural)
    (wood p46 oak)
    (surface-condition p46 rough)
    (treatment p46 colourfragments)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (available p49)
    (colour p49 mauve)
    (wood p49 mahogany)
    (surface-condition p49 rough)
    (treatment p49 varnished)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (available p55)
    (colour p55 black)
    (wood p55 walnut)
    (surface-condition p55 verysmooth)
    (treatment p55 glazed)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (available p62)
    (colour p62 green)
    (wood p62 oak)
    (surface-condition p62 verysmooth)
    (treatment p62 glazed)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (available p90)
    (colour p90 white)
    (wood p90 walnut)
    (surface-condition p90 verysmooth)
    (treatment p90 varnished)
    (goalsize p90 medium)
    
    
    
    
    (available p91)
    (colour p91 mauve)
    (wood p91 mahogany)
    (surface-condition p91 verysmooth)
    (treatment p91 glazed)
    (goalsize p91 large)
    
    
    
    
    (available p92)
    (colour p92 green)
    (wood p92 teak)
    (surface-condition p92 verysmooth)
    (treatment p92 varnished)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (available p98)
    (colour p98 blue)
    (wood p98 walnut)
    (surface-condition p98 smooth)
    (treatment p98 varnished)
    (goalsize p98 medium)
    
    
    
    
    (available p99)
    (colour p99 white)
    (wood p99 teak)
    (surface-condition p99 rough)
    (treatment p99 varnished)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (available p101)
    (colour p101 black)
    (wood p101 teak)
    (surface-condition p101 smooth)
    (treatment p101 varnished)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (available p103)
    (colour p103 black)
    (wood p103 mahogany)
    (surface-condition p103 smooth)
    (treatment p103 colourfragments)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (available p108)
    (colour p108 white)
    (wood p108 beech)
    (surface-condition p108 smooth)
    (treatment p108 glazed)
    (goalsize p108 large)
    
    
    
    
    (available p109)
    (colour p109 mauve)
    (wood p109 walnut)
    (surface-condition p109 smooth)
    (treatment p109 colourfragments)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (available p111)
    (colour p111 red)
    (wood p111 pine)
    (surface-condition p111 verysmooth)
    (treatment p111 colourfragments)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (available p113)
    (colour p113 red)
    (wood p113 beech)
    (surface-condition p113 verysmooth)
    (treatment p113 glazed)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (available p121)
    (colour p121 mauve)
    (wood p121 walnut)
    (surface-condition p121 verysmooth)
    (treatment p121 varnished)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (available p128)
    (colour p128 black)
    (wood p128 beech)
    (surface-condition p128 smooth)
    (treatment p128 varnished)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (available p130)
    (colour p130 mauve)
    (wood p130 beech)
    (surface-condition p130 rough)
    (treatment p130 glazed)
    (goalsize p130 medium)
    
    
    
    
    (available p131)
    (colour p131 white)
    (wood p131 walnut)
    (surface-condition p131 verysmooth)
    (treatment p131 varnished)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (available p136)
    (colour p136 black)
    (wood p136 teak)
    (surface-condition p136 verysmooth)
    (treatment p136 varnished)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (available p138)
    (colour p138 mauve)
    (wood p138 teak)
    (surface-condition p138 smooth)
    (treatment p138 colourfragments)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (available p140)
    (colour p140 white)
    (wood p140 oak)
    (surface-condition p140 verysmooth)
    (treatment p140 varnished)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (available p147)
    (colour p147 black)
    (wood p147 pine)
    (surface-condition p147 verysmooth)
    (treatment p147 varnished)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (available p159)
    (colour p159 black)
    (wood p159 walnut)
    (surface-condition p159 smooth)
    (treatment p159 colourfragments)
    (goalsize p159 large)
    
    
    
    
    (available p160)
    (colour p160 red)
    (wood p160 teak)
    (surface-condition p160 rough)
    (treatment p160 glazed)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (available p163)
    (colour p163 natural)
    (wood p163 beech)
    (surface-condition p163 verysmooth)
    (treatment p163 glazed)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (available p174)
    (colour p174 red)
    (wood p174 oak)
    (surface-condition p174 rough)
    (treatment p174 glazed)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (available p178)
    (colour p178 white)
    (wood p178 walnut)
    (surface-condition p178 verysmooth)
    (treatment p178 glazed)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (available p181)
    (colour p181 red)
    (wood p181 teak)
    (surface-condition p181 smooth)
    (treatment p181 varnished)
    (goalsize p181 large)
    
    
    
    
    (available p182)
    (colour p182 blue)
    (wood p182 mahogany)
    (surface-condition p182 smooth)
    (treatment p182 glazed)
    (goalsize p182 medium)
    
    
    
    
    (available p183)
    (colour p183 mauve)
    (wood p183 beech)
    (surface-condition p183 verysmooth)
    (treatment p183 varnished)
    (goalsize p183 large)
    
    
    
    
    (available p184)
    (colour p184 blue)
    (wood p184 teak)
    (surface-condition p184 smooth)
    (treatment p184 varnished)
    (goalsize p184 large)
    
    
    
    
    (available p185)
    (colour p185 black)
    (wood p185 mahogany)
    (surface-condition p185 verysmooth)
    (treatment p185 varnished)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (available p188)
    (colour p188 black)
    (wood p188 oak)
    (surface-condition p188 rough)
    (treatment p188 varnished)
    (goalsize p188 large)
    
    
    
    
    (available p189)
    (colour p189 blue)
    (wood p189 mahogany)
    (surface-condition p189 smooth)
    (treatment p189 varnished)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 large)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 medium)
    
    
    
    
    (available p199)
    (colour p199 mauve)
    (wood p199 mahogany)
    (surface-condition p199 rough)
    (treatment p199 glazed)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (available p202)
    (colour p202 green)
    (wood p202 mahogany)
    (surface-condition p202 verysmooth)
    (treatment p202 varnished)
    (goalsize p202 small)
    
    
    
    
    (available p203)
    (colour p203 mauve)
    (wood p203 oak)
    (surface-condition p203 smooth)
    (treatment p203 varnished)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 small)
    
    
    
    
    (unused p205)
    (goalsize p205 medium)
    
    
    
    
    (unused p206)
    (goalsize p206 medium)
    
    
    
    
    (available p207)
    (colour p207 black)
    (wood p207 teak)
    (surface-condition p207 smooth)
    (treatment p207 glazed)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 small)
    
    
    
    
    (unused p209)
    (goalsize p209 large)
    
    
    
    
    (available p210)
    (colour p210 green)
    (wood p210 walnut)
    (surface-condition p210 smooth)
    (treatment p210 colourfragments)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (available p215)
    (colour p215 blue)
    (wood p215 beech)
    (surface-condition p215 smooth)
    (treatment p215 varnished)
    (goalsize p215 large)
    
    
    
    
    (available p216)
    (colour p216 natural)
    (wood p216 mahogany)
    (surface-condition p216 rough)
    (treatment p216 colourfragments)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 medium)
    
    
    
    
    (unused p218)
    (goalsize p218 large)
    
    
    
    
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
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 small)
    
    
    
    
    (available p226)
    (colour p226 green)
    (wood p226 teak)
    (surface-condition p226 verysmooth)
    (treatment p226 varnished)
    (goalsize p226 small)
    
    
    
    
    (unused p227)
    (goalsize p227 large)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 small)
    
    
    
    
    (unused p230)
    (goalsize p230 small)
    
    
    
    
    (available p231)
    (colour p231 mauve)
    (wood p231 mahogany)
    (surface-condition p231 rough)
    (treatment p231 colourfragments)
    (goalsize p231 small)
    
    
    
    
    (available p232)
    (colour p232 natural)
    (wood p232 teak)
    (surface-condition p232 verysmooth)
    (treatment p232 varnished)
    (goalsize p232 small)
    
    
    
    
    (unused p233)
    (goalsize p233 medium)
    
    
    
    
    (unused p234)
    (goalsize p234 large)
    
    
    
    
    (available p235)
    (colour p235 white)
    (wood p235 pine)
    (surface-condition p235 smooth)
    (treatment p235 varnished)
    (goalsize p235 large)
    
    
    
    
    (available p236)
    (colour p236 black)
    (wood p236 pine)
    (surface-condition p236 rough)
    (treatment p236 glazed)
    (goalsize p236 large)
    
    
    
    
    (available p237)
    (colour p237 red)
    (wood p237 cherry)
    (surface-condition p237 verysmooth)
    (treatment p237 colourfragments)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 large)
    
    
    
    
    (unused p239)
    (goalsize p239 large)
    
    
    
    
    (available p240)
    (colour p240 green)
    (wood p240 teak)
    (surface-condition p240 smooth)
    (treatment p240 varnished)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 large)
    
    
    
    
    (available p242)
    (colour p242 blue)
    (wood p242 pine)
    (surface-condition p242 verysmooth)
    (treatment p242 varnished)
    (goalsize p242 medium)
    
    
    
    
    (unused p243)
    (goalsize p243 small)
    
    
    
    
    (unused p244)
    (goalsize p244 small)
    
    
    
    
    (available p245)
    (colour p245 mauve)
    (wood p245 walnut)
    (surface-condition p245 smooth)
    (treatment p245 colourfragments)
    (goalsize p245 large)
    
    
    
    
    (unused p246)
    (goalsize p246 medium)
    
    
    
    
    (available p247)
    (colour p247 mauve)
    (wood p247 teak)
    (surface-condition p247 rough)
    (treatment p247 colourfragments)
    (goalsize p247 large)
    
    
    
    
    (unused p248)
    (goalsize p248 large)
    
    
    
    
    (available p249)
    (colour p249 white)
    (wood p249 beech)
    (surface-condition p249 rough)
    (treatment p249 glazed)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 large)
    
    
    
    
    (unused p251)
    (goalsize p251 medium)
    
    
    
    
    (available p252)
    (colour p252 natural)
    (wood p252 teak)
    (surface-condition p252 verysmooth)
    (treatment p252 colourfragments)
    (goalsize p252 small)
    
    
    
    
    (unused p253)
    (goalsize p253 small)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s11)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s6)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s3)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s6)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 mahogany)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s8)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s6)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s9)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s7)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 oak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s9)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s3)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s9)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s10)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s7)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s6)
    (wood b29 pine)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s10)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s12)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s8)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s3)
    (wood b34 pine)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s10)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 walnut)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s9)
    (wood b38 walnut)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s11)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s7)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s8)
    (wood b41 teak)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s10)
    (wood b42 teak)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s8)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s10)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s8)
    (wood b45 teak)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s9)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s10)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s6)
    (wood b48 teak)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s7)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s6)
    (wood b50 teak)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s10)
    (wood b51 beech)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s7)
    (wood b52 beech)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s8)
    (wood b53 beech)
    (surface-condition b53 smooth)
    (available b53)
    (boardsize b54 s11)
    (wood b54 beech)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s9)
    (wood b55 beech)
    (surface-condition b55 smooth)
    (available b55)
    (boardsize b56 s11)
    (wood b56 beech)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s12)
    (wood b57 beech)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s10)
    (wood b58 beech)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s4)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (wood p0 beech)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 black)
      (treatment p1 varnished)
      (available p2)
      (colour p2 natural)
      (wood p2 cherry)
      (surface-condition p2 smooth)
      (available p3)
      (wood p3 beech)
      (surface-condition p3 verysmooth)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 green)
      (treatment p5 glazed)
      (available p6)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 green)
      (wood p7 pine)
      (treatment p7 varnished)
      (available p8)
      (wood p8 mahogany)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 black)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (wood p10 beech)
      (surface-condition p10 smooth)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 green)
      (wood p12 pine)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 blue)
      (wood p13 beech)
      (available p14)
      (colour p14 mauve)
      (wood p14 oak)
      (available p15)
      (wood p15 walnut)
      (treatment p15 glazed)
      (available p16)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 white)
      (wood p17 beech)
      (available p18)
      (wood p18 walnut)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 natural)
      (wood p19 beech)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 red)
      (wood p21 cherry)
      (treatment p21 glazed)
      (available p22)
      (colour p22 red)
      (treatment p22 glazed)
      (available p23)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 green)
      (wood p24 walnut)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 mauve)
      (wood p25 cherry)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 green)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 white)
      (wood p27 teak)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 mauve)
      (surface-condition p28 smooth)
      (available p29)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 white)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 green)
      (treatment p31 glazed)
      (available p32)
      (wood p32 teak)
      (treatment p32 varnished)
      (available p33)
      (colour p33 red)
      (wood p33 pine)
      (treatment p33 glazed)
      (available p34)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 white)
      (wood p35 mahogany)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 mauve)
      (wood p36 beech)
      (treatment p36 glazed)
      (available p37)
      (wood p37 cherry)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 blue)
      (wood p38 cherry)
      (available p39)
      (colour p39 white)
      (treatment p39 glazed)
      (available p40)
      (wood p40 oak)
      (treatment p40 glazed)
      (available p41)
      (colour p41 mauve)
      (wood p41 pine)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 blue)
      (wood p42 mahogany)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 white)
      (wood p43 oak)
      (available p44)
      (colour p44 mauve)
      (wood p44 mahogany)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 black)
      (wood p45 mahogany)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 red)
      (wood p46 oak)
      (treatment p46 glazed)
      (available p47)
      (colour p47 black)
      (surface-condition p47 smooth)
      (available p48)
      (wood p48 cherry)
      (surface-condition p48 verysmooth)
      (available p49)
      (colour p49 green)
      (wood p49 mahogany)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 black)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 black)
      (wood p51 mahogany)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 natural)
      (wood p52 mahogany)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 black)
      (wood p53 walnut)
      (available p54)
      (colour p54 black)
      (wood p54 walnut)
      (surface-condition p54 verysmooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 natural)
      (wood p55 walnut)
      (treatment p55 glazed)
      (available p56)
      (surface-condition p56 verysmooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 blue)
      (wood p57 mahogany)
      (available p58)
      (wood p58 mahogany)
      (treatment p58 varnished)
      (available p59)
      (colour p59 natural)
      (wood p59 pine)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 white)
      (wood p60 pine)
      (treatment p60 glazed)
      (available p61)
      (colour p61 mauve)
      (wood p61 cherry)
      (surface-condition p61 smooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 red)
      (wood p62 oak)
      (available p63)
      (surface-condition p63 smooth)
      (treatment p63 glazed)
      (available p64)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 black)
      (wood p65 teak)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (surface-condition p66 verysmooth)
      (treatment p66 glazed)
      (available p67)
      (colour p67 green)
      (wood p67 walnut)
      (surface-condition p67 smooth)
      (treatment p67 glazed)
      (available p68)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (surface-condition p69 verysmooth)
      (treatment p69 varnished)
      (available p70)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (wood p71 teak)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 natural)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 black)
      (wood p73 oak)
      (surface-condition p73 verysmooth)
      (treatment p73 glazed)
      (available p74)
      (wood p74 teak)
      (treatment p74 varnished)
      (available p75)
      (colour p75 black)
      (wood p75 cherry)
      (available p76)
      (colour p76 black)
      (treatment p76 glazed)
      (available p77)
      (colour p77 red)
      (treatment p77 glazed)
      (available p78)
      (wood p78 beech)
      (surface-condition p78 smooth)
      (available p79)
      (wood p79 pine)
      (treatment p79 glazed)
      (available p80)
      (wood p80 mahogany)
      (surface-condition p80 smooth)
      (available p81)
      (colour p81 black)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 blue)
      (wood p82 cherry)
      (treatment p82 glazed)
      (available p83)
      (colour p83 black)
      (surface-condition p83 verysmooth)
      (treatment p83 glazed)
      (available p84)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 green)
      (wood p85 pine)
      (available p86)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 black)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 natural)
      (wood p88 mahogany)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (wood p89 pine)
      (treatment p89 glazed)
      (available p90)
      (colour p90 red)
      (wood p90 walnut)
      (surface-condition p90 smooth)
      (treatment p90 glazed)
      (available p91)
      (colour p91 black)
      (wood p91 mahogany)
      (surface-condition p91 smooth)
      (treatment p91 varnished)
      (available p92)
      (wood p92 teak)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (wood p93 beech)
      (surface-condition p93 smooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 white)
      (wood p94 mahogany)
      (surface-condition p94 smooth)
      (available p95)
      (surface-condition p95 smooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 green)
      (wood p96 pine)
      (surface-condition p96 verysmooth)
      (treatment p96 glazed)
      (available p97)
      (wood p97 mahogany)
      (treatment p97 glazed)
      (available p98)
      (colour p98 green)
      (surface-condition p98 verysmooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 mauve)
      (treatment p99 varnished)
      (available p100)
      (colour p100 red)
      (treatment p100 glazed)
      (available p101)
      (colour p101 red)
      (surface-condition p101 smooth)
      (available p102)
      (colour p102 natural)
      (wood p102 oak)
      (surface-condition p102 verysmooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 green)
      (wood p103 mahogany)
      (treatment p103 glazed)
      (available p104)
      (surface-condition p104 smooth)
      (treatment p104 glazed)
      (available p105)
      (wood p105 teak)
      (surface-condition p105 smooth)
      (available p106)
      (colour p106 blue)
      (wood p106 walnut)
      (surface-condition p106 verysmooth)
      (treatment p106 glazed)
      (available p107)
      (surface-condition p107 verysmooth)
      (treatment p107 varnished)
      (available p108)
      (colour p108 natural)
      (wood p108 beech)
      (surface-condition p108 verysmooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 red)
      (wood p109 walnut)
      (surface-condition p109 verysmooth)
      (available p110)
      (wood p110 cherry)
      (surface-condition p110 verysmooth)
      (available p111)
      (surface-condition p111 verysmooth)
      (treatment p111 glazed)
      (available p112)
      (surface-condition p112 smooth)
      (treatment p112 glazed)
      (available p113)
      (colour p113 green)
      (wood p113 beech)
      (treatment p113 glazed)
      (available p114)
      (colour p114 blue)
      (wood p114 mahogany)
      (available p115)
      (surface-condition p115 smooth)
      (treatment p115 varnished)
      (available p116)
      (colour p116 mauve)
      (wood p116 cherry)
      (available p117)
      (wood p117 beech)
      (treatment p117 glazed)
      (available p118)
      (colour p118 black)
      (wood p118 pine)
      (surface-condition p118 smooth)
      (treatment p118 glazed)
      (available p119)
      (colour p119 blue)
      (treatment p119 glazed)
      (available p120)
      (surface-condition p120 verysmooth)
      (treatment p120 varnished)
      (available p121)
      (colour p121 blue)
      (surface-condition p121 verysmooth)
      (treatment p121 varnished)
      (available p122)
      (colour p122 white)
      (wood p122 beech)
      (available p123)
      (wood p123 teak)
      (surface-condition p123 smooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 blue)
      (wood p124 pine)
      (surface-condition p124 verysmooth)
      (treatment p124 glazed)
      (available p125)
      (wood p125 pine)
      (surface-condition p125 verysmooth)
      (available p126)
      (colour p126 black)
      (surface-condition p126 verysmooth)
      (available p127)
      (surface-condition p127 smooth)
      (treatment p127 varnished)
      (available p128)
      (wood p128 beech)
      (surface-condition p128 verysmooth)
      (treatment p128 glazed)
      (available p129)
      (colour p129 white)
      (wood p129 teak)
      (surface-condition p129 verysmooth)
      (treatment p129 glazed)
      (available p130)
      (colour p130 red)
      (wood p130 beech)
      (surface-condition p130 verysmooth)
      (treatment p130 glazed)
      (available p131)
      (colour p131 red)
      (wood p131 walnut)
      (treatment p131 varnished)
      (available p132)
      (colour p132 blue)
      (wood p132 oak)
      (surface-condition p132 smooth)
      (treatment p132 varnished)
      (available p133)
      (wood p133 walnut)
      (treatment p133 glazed)
      (available p134)
      (colour p134 white)
      (wood p134 pine)
      (surface-condition p134 smooth)
      (treatment p134 varnished)
      (available p135)
      (colour p135 natural)
      (wood p135 pine)
      (available p136)
      (wood p136 teak)
      (surface-condition p136 smooth)
      (available p137)
      (colour p137 red)
      (wood p137 teak)
      (surface-condition p137 smooth)
      (available p138)
      (colour p138 blue)
      (treatment p138 glazed)
      (available p139)
      (colour p139 white)
      (wood p139 teak)
      (surface-condition p139 verysmooth)
      (treatment p139 glazed)
      (available p140)
      (colour p140 red)
      (surface-condition p140 verysmooth)
      (available p141)
      (colour p141 natural)
      (wood p141 mahogany)
      (treatment p141 glazed)
      (available p142)
      (colour p142 blue)
      (surface-condition p142 smooth)
      (available p143)
      (colour p143 natural)
      (treatment p143 glazed)
      (available p144)
      (colour p144 black)
      (wood p144 walnut)
      (available p145)
      (surface-condition p145 verysmooth)
      (treatment p145 glazed)
      (available p146)
      (colour p146 mauve)
      (wood p146 beech)
      (surface-condition p146 verysmooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 red)
      (wood p147 pine)
      (surface-condition p147 smooth)
      (treatment p147 varnished)
      (available p148)
      (colour p148 blue)
      (wood p148 teak)
      (surface-condition p148 smooth)
      (available p149)
      (colour p149 green)
      (treatment p149 varnished)
      (available p150)
      (wood p150 teak)
      (surface-condition p150 verysmooth)
      (available p151)
      (colour p151 green)
      (wood p151 oak)
      (surface-condition p151 verysmooth)
      (available p152)
      (colour p152 mauve)
      (treatment p152 glazed)
      (available p153)
      (colour p153 mauve)
      (wood p153 walnut)
      (treatment p153 glazed)
      (available p154)
      (wood p154 mahogany)
      (surface-condition p154 verysmooth)
      (available p155)
      (colour p155 red)
      (wood p155 walnut)
      (treatment p155 glazed)
      (available p156)
      (colour p156 mauve)
      (treatment p156 glazed)
      (available p157)
      (colour p157 red)
      (surface-condition p157 smooth)
      (available p158)
      (colour p158 mauve)
      (treatment p158 glazed)
      (available p159)
      (colour p159 blue)
      (wood p159 walnut)
      (surface-condition p159 verysmooth)
      (treatment p159 glazed)
      (available p160)
      (wood p160 teak)
      (surface-condition p160 verysmooth)
      (available p161)
      (colour p161 blue)
      (surface-condition p161 smooth)
      (available p162)
      (wood p162 oak)
      (treatment p162 varnished)
      (available p163)
      (colour p163 blue)
      (wood p163 beech)
      (treatment p163 varnished)
      (available p164)
      (wood p164 beech)
      (surface-condition p164 verysmooth)
      (treatment p164 varnished)
      (available p165)
      (colour p165 blue)
      (wood p165 beech)
      (treatment p165 varnished)
      (available p166)
      (wood p166 pine)
      (treatment p166 glazed)
      (available p167)
      (colour p167 red)
      (wood p167 cherry)
      (surface-condition p167 verysmooth)
      (treatment p167 varnished)
      (available p168)
      (colour p168 natural)
      (wood p168 pine)
      (surface-condition p168 smooth)
      (treatment p168 varnished)
      (available p169)
      (colour p169 red)
      (wood p169 mahogany)
      (surface-condition p169 verysmooth)
      (treatment p169 glazed)
      (available p170)
      (colour p170 green)
      (treatment p170 varnished)
      (available p171)
      (colour p171 green)
      (wood p171 teak)
      (surface-condition p171 verysmooth)
      (available p172)
      (colour p172 green)
      (wood p172 oak)
      (surface-condition p172 smooth)
      (treatment p172 glazed)
      (available p173)
      (colour p173 green)
      (wood p173 cherry)
      (available p174)
      (wood p174 oak)
      (surface-condition p174 smooth)
      (available p175)
      (colour p175 white)
      (wood p175 beech)
      (available p176)
      (colour p176 mauve)
      (wood p176 beech)
      (available p177)
      (colour p177 blue)
      (wood p177 beech)
      (surface-condition p177 smooth)
      (available p178)
      (colour p178 blue)
      (surface-condition p178 smooth)
      (available p179)
      (wood p179 pine)
      (treatment p179 varnished)
      (available p180)
      (colour p180 natural)
      (surface-condition p180 verysmooth)
      (available p181)
      (colour p181 green)
      (treatment p181 varnished)
      (available p182)
      (surface-condition p182 verysmooth)
      (treatment p182 glazed)
      (available p183)
      (wood p183 beech)
      (surface-condition p183 smooth)
      (treatment p183 varnished)
      (available p184)
      (colour p184 white)
      (wood p184 teak)
      (surface-condition p184 verysmooth)
      (treatment p184 varnished)
      (available p185)
      (colour p185 red)
      (wood p185 mahogany)
      (surface-condition p185 smooth)
      (available p186)
      (surface-condition p186 smooth)
      (treatment p186 varnished)
      (available p187)
      (colour p187 green)
      (wood p187 oak)
      (available p188)
      (colour p188 red)
      (surface-condition p188 verysmooth)
      (treatment p188 varnished)
      (available p189)
      (colour p189 red)
      (wood p189 mahogany)
      (available p190)
      (wood p190 teak)
      (treatment p190 glazed)
      (available p191)
      (surface-condition p191 verysmooth)
      (treatment p191 varnished)
      (available p192)
      (colour p192 green)
      (treatment p192 glazed)
      (available p193)
      (colour p193 red)
      (wood p193 cherry)
      (surface-condition p193 verysmooth)
      (available p194)
      (colour p194 green)
      (surface-condition p194 verysmooth)
      (available p195)
      (wood p195 walnut)
      (surface-condition p195 verysmooth)
      (available p196)
      (colour p196 mauve)
      (wood p196 cherry)
      (surface-condition p196 smooth)
      (treatment p196 glazed)
      (available p197)
      (colour p197 green)
      (wood p197 pine)
      (surface-condition p197 verysmooth)
      (treatment p197 varnished)
      (available p198)
      (colour p198 green)
      (surface-condition p198 verysmooth)
      (available p199)
      (colour p199 red)
      (surface-condition p199 verysmooth)
      (treatment p199 glazed)
      (available p200)
      (colour p200 red)
      (surface-condition p200 smooth)
      (available p201)
      (wood p201 mahogany)
      (surface-condition p201 verysmooth)
      (available p202)
      (colour p202 white)
      (wood p202 mahogany)
      (available p203)
      (colour p203 black)
      (wood p203 oak)
      (treatment p203 varnished)
      (available p204)
      (colour p204 blue)
      (wood p204 mahogany)
      (surface-condition p204 verysmooth)
      (available p205)
      (wood p205 oak)
      (surface-condition p205 smooth)
      (treatment p205 glazed)
      (available p206)
      (colour p206 white)
      (surface-condition p206 verysmooth)
      (available p207)
      (wood p207 teak)
      (treatment p207 varnished)
      (available p208)
      (colour p208 mauve)
      (treatment p208 varnished)
      (available p209)
      (surface-condition p209 smooth)
      (treatment p209 glazed)
      (available p210)
      (wood p210 walnut)
      (treatment p210 varnished)
      (available p211)
      (colour p211 blue)
      (wood p211 pine)
      (surface-condition p211 verysmooth)
      (treatment p211 glazed)
      (available p212)
      (colour p212 natural)
      (surface-condition p212 verysmooth)
      (available p213)
      (surface-condition p213 smooth)
      (treatment p213 varnished)
      (available p214)
      (wood p214 oak)
      (surface-condition p214 verysmooth)
      (available p215)
      (colour p215 mauve)
      (surface-condition p215 verysmooth)
      (treatment p215 varnished)
      (available p216)
      (colour p216 green)
      (wood p216 mahogany)
      (surface-condition p216 verysmooth)
      (treatment p216 varnished)
      (available p217)
      (colour p217 natural)
      (treatment p217 glazed)
      (available p218)
      (colour p218 blue)
      (wood p218 oak)
      (surface-condition p218 verysmooth)
      (treatment p218 glazed)
      (available p219)
      (colour p219 red)
      (wood p219 teak)
      (surface-condition p219 verysmooth)
      (treatment p219 varnished)
      (available p220)
      (colour p220 green)
      (treatment p220 varnished)
      (available p221)
      (wood p221 pine)
      (surface-condition p221 verysmooth)
      (available p222)
      (colour p222 red)
      (wood p222 teak)
      (available p223)
      (colour p223 red)
      (surface-condition p223 smooth)
      (available p224)
      (colour p224 blue)
      (wood p224 cherry)
      (surface-condition p224 verysmooth)
      (treatment p224 glazed)
      (available p225)
      (colour p225 green)
      (wood p225 walnut)
      (surface-condition p225 verysmooth)
      (treatment p225 glazed)
      (available p226)
      (colour p226 mauve)
      (wood p226 teak)
      (available p227)
      (colour p227 black)
      (treatment p227 varnished)
      (available p228)
      (colour p228 natural)
      (wood p228 mahogany)
      (surface-condition p228 smooth)
      (treatment p228 varnished)
      (available p229)
      (surface-condition p229 verysmooth)
      (treatment p229 glazed)
      (available p230)
      (colour p230 green)
      (wood p230 mahogany)
      (surface-condition p230 verysmooth)
      (treatment p230 varnished)
      (available p231)
      (wood p231 mahogany)
      (treatment p231 varnished)
      (available p232)
      (wood p232 teak)
      (treatment p232 glazed)
      (available p233)
      (colour p233 red)
      (wood p233 beech)
      (surface-condition p233 verysmooth)
      (available p234)
      (colour p234 mauve)
      (surface-condition p234 smooth)
      (available p235)
      (wood p235 pine)
      (surface-condition p235 verysmooth)
      (available p236)
      (colour p236 blue)
      (wood p236 pine)
      (surface-condition p236 smooth)
      (treatment p236 glazed)
      (available p237)
      (colour p237 natural)
      (treatment p237 varnished)
      (available p238)
      (surface-condition p238 verysmooth)
      (treatment p238 varnished)
      (available p239)
      (wood p239 oak)
      (treatment p239 varnished)
      (available p240)
      (colour p240 black)
      (surface-condition p240 smooth)
      (available p241)
      (colour p241 white)
      (wood p241 teak)
      (available p242)
      (colour p242 mauve)
      (wood p242 pine)
      (available p243)
      (colour p243 natural)
      (surface-condition p243 verysmooth)
      (available p244)
      (surface-condition p244 smooth)
      (treatment p244 glazed)
      (available p245)
      (wood p245 walnut)
      (treatment p245 glazed)
      (available p246)
      (wood p246 cherry)
      (surface-condition p246 smooth)
      (treatment p246 glazed)
      (available p247)
      (wood p247 teak)
      (surface-condition p247 verysmooth)
      (available p248)
      (colour p248 blue)
      (wood p248 cherry)
      (surface-condition p248 smooth)
      (treatment p248 glazed)
      (available p249)
      (colour p249 red)
      (surface-condition p249 verysmooth)
      (treatment p249 varnished)
      (available p250)
      (colour p250 red)
      (wood p250 beech)
      (surface-condition p250 verysmooth)
      (treatment p250 varnished)
      (available p251)
      (colour p251 white)
      (wood p251 teak)
      (surface-condition p251 verysmooth)
      (treatment p251 varnished)
      (available p252)
      (colour p252 mauve)
      (wood p252 teak)
      (surface-condition p252 smooth)
      (available p253)
      (wood p253 teak)
      (surface-condition p253 verysmooth)
    )
  )
  
)
