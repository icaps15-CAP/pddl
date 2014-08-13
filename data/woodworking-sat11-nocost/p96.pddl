; woodworking task with 257 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 785902

(define (problem wood-prob-sat-96)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve red black blue white green - acolour
    teak beech oak cherry mahogany walnut pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 natural)
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
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
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
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (available p2)
    (colour p2 white)
    (wood p2 walnut)
    (surface-condition p2 rough)
    (treatment p2 glazed)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (available p9)
    (colour p9 red)
    (wood p9 cherry)
    (surface-condition p9 rough)
    (treatment p9 varnished)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 red)
    (wood p16 mahogany)
    (surface-condition p16 smooth)
    (treatment p16 colourfragments)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 mauve)
    (wood p22 teak)
    (surface-condition p22 verysmooth)
    (treatment p22 colourfragments)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (available p28)
    (colour p28 red)
    (wood p28 teak)
    (surface-condition p28 rough)
    (treatment p28 varnished)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 red)
    (wood p29 beech)
    (surface-condition p29 rough)
    (treatment p29 varnished)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (available p34)
    (colour p34 green)
    (wood p34 walnut)
    (surface-condition p34 verysmooth)
    (treatment p34 glazed)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (available p36)
    (colour p36 mauve)
    (wood p36 teak)
    (surface-condition p36 verysmooth)
    (treatment p36 glazed)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 black)
    (wood p37 walnut)
    (surface-condition p37 smooth)
    (treatment p37 glazed)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (available p39)
    (colour p39 blue)
    (wood p39 walnut)
    (surface-condition p39 rough)
    (treatment p39 varnished)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (available p57)
    (colour p57 white)
    (wood p57 walnut)
    (surface-condition p57 smooth)
    (treatment p57 colourfragments)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (available p59)
    (colour p59 natural)
    (wood p59 cherry)
    (surface-condition p59 verysmooth)
    (treatment p59 varnished)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (available p67)
    (colour p67 mauve)
    (wood p67 walnut)
    (surface-condition p67 rough)
    (treatment p67 colourfragments)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (available p70)
    (colour p70 mauve)
    (wood p70 mahogany)
    (surface-condition p70 smooth)
    (treatment p70 varnished)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (available p73)
    (colour p73 blue)
    (wood p73 beech)
    (surface-condition p73 rough)
    (treatment p73 colourfragments)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (available p75)
    (colour p75 white)
    (wood p75 walnut)
    (surface-condition p75 smooth)
    (treatment p75 glazed)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (available p78)
    (colour p78 natural)
    (wood p78 mahogany)
    (surface-condition p78 rough)
    (treatment p78 glazed)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (available p80)
    (colour p80 black)
    (wood p80 pine)
    (surface-condition p80 smooth)
    (treatment p80 varnished)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (available p87)
    (colour p87 mauve)
    (wood p87 mahogany)
    (surface-condition p87 verysmooth)
    (treatment p87 varnished)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (available p89)
    (colour p89 mauve)
    (wood p89 beech)
    (surface-condition p89 verysmooth)
    (treatment p89 varnished)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (available p91)
    (colour p91 natural)
    (wood p91 walnut)
    (surface-condition p91 rough)
    (treatment p91 colourfragments)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (available p96)
    (colour p96 black)
    (wood p96 pine)
    (surface-condition p96 rough)
    (treatment p96 varnished)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (available p104)
    (colour p104 natural)
    (wood p104 walnut)
    (surface-condition p104 rough)
    (treatment p104 varnished)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (available p111)
    (colour p111 black)
    (wood p111 beech)
    (surface-condition p111 verysmooth)
    (treatment p111 colourfragments)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (available p115)
    (colour p115 natural)
    (wood p115 walnut)
    (surface-condition p115 verysmooth)
    (treatment p115 glazed)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (available p122)
    (colour p122 red)
    (wood p122 teak)
    (surface-condition p122 rough)
    (treatment p122 colourfragments)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (available p125)
    (colour p125 mauve)
    (wood p125 teak)
    (surface-condition p125 smooth)
    (treatment p125 glazed)
    (goalsize p125 medium)
    
    
    
    
    (available p126)
    (colour p126 mauve)
    (wood p126 teak)
    (surface-condition p126 verysmooth)
    (treatment p126 varnished)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (available p128)
    (colour p128 black)
    (wood p128 teak)
    (surface-condition p128 smooth)
    (treatment p128 colourfragments)
    (goalsize p128 medium)
    
    
    
    
    (available p129)
    (colour p129 mauve)
    (wood p129 beech)
    (surface-condition p129 verysmooth)
    (treatment p129 colourfragments)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (available p137)
    (colour p137 natural)
    (wood p137 cherry)
    (surface-condition p137 smooth)
    (treatment p137 colourfragments)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (available p141)
    (colour p141 blue)
    (wood p141 mahogany)
    (surface-condition p141 verysmooth)
    (treatment p141 glazed)
    (goalsize p141 large)
    
    
    
    
    (available p142)
    (colour p142 natural)
    (wood p142 cherry)
    (surface-condition p142 rough)
    (treatment p142 glazed)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (available p157)
    (colour p157 natural)
    (wood p157 walnut)
    (surface-condition p157 rough)
    (treatment p157 glazed)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (available p162)
    (colour p162 white)
    (wood p162 teak)
    (surface-condition p162 verysmooth)
    (treatment p162 colourfragments)
    (goalsize p162 small)
    
    
    
    
    (available p163)
    (colour p163 white)
    (wood p163 oak)
    (surface-condition p163 rough)
    (treatment p163 colourfragments)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (available p167)
    (colour p167 green)
    (wood p167 mahogany)
    (surface-condition p167 smooth)
    (treatment p167 glazed)
    (goalsize p167 large)
    
    
    
    
    (available p168)
    (colour p168 white)
    (wood p168 beech)
    (surface-condition p168 rough)
    (treatment p168 varnished)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (available p172)
    (colour p172 green)
    (wood p172 teak)
    (surface-condition p172 rough)
    (treatment p172 colourfragments)
    (goalsize p172 medium)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (available p175)
    (colour p175 black)
    (wood p175 teak)
    (surface-condition p175 verysmooth)
    (treatment p175 colourfragments)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (available p177)
    (colour p177 red)
    (wood p177 teak)
    (surface-condition p177 smooth)
    (treatment p177 colourfragments)
    (goalsize p177 medium)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 large)
    
    
    
    
    (available p181)
    (colour p181 natural)
    (wood p181 mahogany)
    (surface-condition p181 rough)
    (treatment p181 colourfragments)
    (goalsize p181 large)
    
    
    
    
    (available p182)
    (colour p182 red)
    (wood p182 beech)
    (surface-condition p182 rough)
    (treatment p182 colourfragments)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 large)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (available p192)
    (colour p192 blue)
    (wood p192 cherry)
    (surface-condition p192 rough)
    (treatment p192 varnished)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (available p195)
    (colour p195 white)
    (wood p195 pine)
    (surface-condition p195 verysmooth)
    (treatment p195 varnished)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 small)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 medium)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (available p202)
    (colour p202 blue)
    (wood p202 mahogany)
    (surface-condition p202 verysmooth)
    (treatment p202 colourfragments)
    (goalsize p202 small)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
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
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 large)
    
    
    
    
    (unused p210)
    (goalsize p210 medium)
    
    
    
    
    (unused p211)
    (goalsize p211 medium)
    
    
    
    
    (unused p212)
    (goalsize p212 small)
    
    
    
    
    (available p213)
    (colour p213 blue)
    (wood p213 mahogany)
    (surface-condition p213 verysmooth)
    (treatment p213 glazed)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (available p215)
    (colour p215 mauve)
    (wood p215 walnut)
    (surface-condition p215 rough)
    (treatment p215 glazed)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 small)
    
    
    
    
    (unused p217)
    (goalsize p217 small)
    
    
    
    
    (available p218)
    (colour p218 natural)
    (wood p218 teak)
    (surface-condition p218 smooth)
    (treatment p218 glazed)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 large)
    
    
    
    
    (unused p220)
    (goalsize p220 small)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 medium)
    
    
    
    
    (unused p223)
    (goalsize p223 large)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (available p225)
    (colour p225 black)
    (wood p225 teak)
    (surface-condition p225 verysmooth)
    (treatment p225 colourfragments)
    (goalsize p225 medium)
    
    
    
    
    (available p226)
    (colour p226 red)
    (wood p226 teak)
    (surface-condition p226 smooth)
    (treatment p226 colourfragments)
    (goalsize p226 medium)
    
    
    
    
    (available p227)
    (colour p227 green)
    (wood p227 beech)
    (surface-condition p227 rough)
    (treatment p227 glazed)
    (goalsize p227 small)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (unused p231)
    (goalsize p231 medium)
    
    
    
    
    (available p232)
    (colour p232 white)
    (wood p232 beech)
    (surface-condition p232 rough)
    (treatment p232 glazed)
    (goalsize p232 small)
    
    
    
    
    (unused p233)
    (goalsize p233 medium)
    
    
    
    
    (unused p234)
    (goalsize p234 small)
    
    
    
    
    (unused p235)
    (goalsize p235 medium)
    
    
    
    
    (unused p236)
    (goalsize p236 large)
    
    
    
    
    (available p237)
    (colour p237 blue)
    (wood p237 walnut)
    (surface-condition p237 rough)
    (treatment p237 varnished)
    (goalsize p237 medium)
    
    
    
    
    (unused p238)
    (goalsize p238 large)
    
    
    
    
    (available p239)
    (colour p239 black)
    (wood p239 mahogany)
    (surface-condition p239 smooth)
    (treatment p239 varnished)
    (goalsize p239 medium)
    
    
    
    
    (unused p240)
    (goalsize p240 large)
    
    
    
    
    (unused p241)
    (goalsize p241 medium)
    
    
    
    
    (unused p242)
    (goalsize p242 small)
    
    
    
    
    (unused p243)
    (goalsize p243 medium)
    
    
    
    
    (available p244)
    (colour p244 mauve)
    (wood p244 oak)
    (surface-condition p244 smooth)
    (treatment p244 colourfragments)
    (goalsize p244 large)
    
    
    
    
    (available p245)
    (colour p245 red)
    (wood p245 beech)
    (surface-condition p245 verysmooth)
    (treatment p245 colourfragments)
    (goalsize p245 large)
    
    
    
    
    (unused p246)
    (goalsize p246 medium)
    
    
    
    
    (unused p247)
    (goalsize p247 large)
    
    
    
    
    (unused p248)
    (goalsize p248 medium)
    
    
    
    
    (available p249)
    (colour p249 blue)
    (wood p249 mahogany)
    (surface-condition p249 rough)
    (treatment p249 varnished)
    (goalsize p249 small)
    
    
    
    
    (unused p250)
    (goalsize p250 medium)
    
    
    
    
    (unused p251)
    (goalsize p251 large)
    
    
    
    
    (unused p252)
    (goalsize p252 small)
    
    
    
    
    (unused p253)
    (goalsize p253 large)
    
    
    
    
    (unused p254)
    (goalsize p254 large)
    
    
    
    
    (unused p255)
    (goalsize p255 large)
    
    
    
    
    (unused p256)
    (goalsize p256 medium)
    
    
    
    
    (boardsize b0 s11)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s10)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s6)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s10)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s9)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s6)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s11)
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
    (boardsize b13 s9)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s2)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s5)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 pine)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 pine)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s7)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s8)
    (wood b26 pine)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s7)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s8)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s11)
    (wood b30 pine)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s8)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s11)
    (wood b32 pine)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s7)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 walnut)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s7)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s9)
    (wood b36 walnut)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s7)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s11)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s6)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s10)
    (wood b40 walnut)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s8)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s2)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s9)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s7)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s6)
    (wood b45 teak)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s7)
    (wood b46 teak)
    (surface-condition b46 smooth)
    (available b46)
    (boardsize b47 s11)
    (wood b47 teak)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s10)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s5)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s4)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s4)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s8)
    (wood b52 beech)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s6)
    (wood b53 beech)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s7)
    (wood b54 beech)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s4)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s7)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s6)
    (wood b57 beech)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s8)
    (wood b58 beech)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s8)
    (wood b59 beech)
    (surface-condition b59 smooth)
    (available b59)
    (boardsize b60 s11)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
  )
  (:goal
    (and
      (available p0)
      (wood p0 cherry)
      (surface-condition p0 smooth)
      (available p1)
      (colour p1 green)
      (wood p1 cherry)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (wood p2 walnut)
      (treatment p2 varnished)
      (available p3)
      (colour p3 red)
      (surface-condition p3 verysmooth)
      (available p4)
      (colour p4 black)
      (wood p4 cherry)
      (available p5)
      (colour p5 natural)
      (wood p5 teak)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 red)
      (wood p6 mahogany)
      (surface-condition p6 smooth)
      (available p7)
      (wood p7 walnut)
      (treatment p7 varnished)
      (available p8)
      (colour p8 mauve)
      (wood p8 walnut)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 green)
      (treatment p9 glazed)
      (available p10)
      (wood p10 pine)
      (treatment p10 glazed)
      (available p11)
      (wood p11 pine)
      (surface-condition p11 verysmooth)
      (available p12)
      (wood p12 teak)
      (treatment p12 varnished)
      (available p13)
      (wood p13 oak)
      (surface-condition p13 verysmooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 green)
      (treatment p14 glazed)
      (available p15)
      (colour p15 mauve)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 natural)
      (treatment p16 glazed)
      (available p17)
      (colour p17 black)
      (wood p17 cherry)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 teak)
      (treatment p18 varnished)
      (available p19)
      (wood p19 beech)
      (surface-condition p19 smooth)
      (available p20)
      (wood p20 mahogany)
      (treatment p20 varnished)
      (available p21)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (wood p22 teak)
      (treatment p22 glazed)
      (available p23)
      (colour p23 white)
      (wood p23 walnut)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 blue)
      (wood p24 cherry)
      (treatment p24 glazed)
      (available p25)
      (colour p25 mauve)
      (treatment p25 glazed)
      (available p26)
      (colour p26 mauve)
      (wood p26 cherry)
      (surface-condition p26 smooth)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 white)
      (wood p28 teak)
      (surface-condition p28 verysmooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 mauve)
      (wood p29 beech)
      (treatment p29 varnished)
      (available p30)
      (wood p30 walnut)
      (treatment p30 glazed)
      (available p31)
      (colour p31 white)
      (wood p31 cherry)
      (available p32)
      (colour p32 mauve)
      (wood p32 cherry)
      (surface-condition p32 smooth)
      (available p33)
      (wood p33 beech)
      (treatment p33 varnished)
      (available p34)
      (colour p34 blue)
      (wood p34 walnut)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 mauve)
      (treatment p35 varnished)
      (available p36)
      (colour p36 black)
      (treatment p36 varnished)
      (available p37)
      (wood p37 walnut)
      (surface-condition p37 verysmooth)
      (available p38)
      (colour p38 blue)
      (wood p38 pine)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 white)
      (wood p39 walnut)
      (available p40)
      (wood p40 pine)
      (treatment p40 glazed)
      (available p41)
      (colour p41 black)
      (wood p41 cherry)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 red)
      (wood p42 pine)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 natural)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 mauve)
      (wood p44 mahogany)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 red)
      (surface-condition p45 verysmooth)
      (available p46)
      (colour p46 blue)
      (wood p46 mahogany)
      (surface-condition p46 verysmooth)
      (available p47)
      (colour p47 red)
      (wood p47 oak)
      (available p48)
      (colour p48 green)
      (wood p48 mahogany)
      (available p49)
      (colour p49 black)
      (wood p49 pine)
      (available p50)
      (colour p50 white)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 black)
      (wood p51 cherry)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 white)
      (wood p52 oak)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 natural)
      (treatment p53 varnished)
      (available p54)
      (colour p54 green)
      (wood p54 mahogany)
      (surface-condition p54 smooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 blue)
      (wood p55 oak)
      (available p56)
      (colour p56 white)
      (wood p56 beech)
      (treatment p56 glazed)
      (available p57)
      (colour p57 black)
      (surface-condition p57 smooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 black)
      (wood p58 mahogany)
      (surface-condition p58 verysmooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 black)
      (wood p59 cherry)
      (surface-condition p59 smooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 green)
      (wood p60 teak)
      (available p61)
      (colour p61 mauve)
      (wood p61 beech)
      (treatment p61 glazed)
      (available p62)
      (colour p62 white)
      (wood p62 cherry)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 mauve)
      (wood p63 walnut)
      (available p64)
      (wood p64 pine)
      (surface-condition p64 smooth)
      (available p65)
      (colour p65 mauve)
      (treatment p65 varnished)
      (available p66)
      (colour p66 natural)
      (treatment p66 varnished)
      (available p67)
      (colour p67 black)
      (wood p67 walnut)
      (available p68)
      (wood p68 teak)
      (treatment p68 glazed)
      (available p69)
      (colour p69 white)
      (wood p69 oak)
      (available p70)
      (colour p70 red)
      (wood p70 mahogany)
      (available p71)
      (wood p71 oak)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 red)
      (wood p72 walnut)
      (surface-condition p72 smooth)
      (treatment p72 varnished)
      (available p73)
      (wood p73 beech)
      (surface-condition p73 verysmooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 red)
      (wood p74 teak)
      (surface-condition p74 smooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 natural)
      (surface-condition p75 smooth)
      (available p76)
      (colour p76 natural)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 white)
      (wood p77 walnut)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 red)
      (wood p78 mahogany)
      (surface-condition p78 smooth)
      (treatment p78 varnished)
      (available p79)
      (wood p79 walnut)
      (treatment p79 varnished)
      (available p80)
      (colour p80 blue)
      (surface-condition p80 verysmooth)
      (available p81)
      (colour p81 natural)
      (treatment p81 glazed)
      (available p82)
      (colour p82 mauve)
      (wood p82 beech)
      (surface-condition p82 smooth)
      (available p83)
      (colour p83 white)
      (wood p83 cherry)
      (surface-condition p83 smooth)
      (treatment p83 glazed)
      (available p84)
      (colour p84 natural)
      (wood p84 oak)
      (surface-condition p84 verysmooth)
      (available p85)
      (surface-condition p85 verysmooth)
      (treatment p85 varnished)
      (available p86)
      (wood p86 teak)
      (treatment p86 varnished)
      (available p87)
      (colour p87 natural)
      (wood p87 mahogany)
      (available p88)
      (colour p88 white)
      (wood p88 pine)
      (treatment p88 glazed)
      (available p89)
      (colour p89 white)
      (wood p89 beech)
      (surface-condition p89 smooth)
      (treatment p89 varnished)
      (available p90)
      (colour p90 blue)
      (wood p90 walnut)
      (available p91)
      (colour p91 blue)
      (wood p91 walnut)
      (surface-condition p91 verysmooth)
      (treatment p91 varnished)
      (available p92)
      (wood p92 teak)
      (surface-condition p92 smooth)
      (available p93)
      (colour p93 green)
      (wood p93 oak)
      (surface-condition p93 verysmooth)
      (treatment p93 varnished)
      (available p94)
      (wood p94 teak)
      (surface-condition p94 smooth)
      (available p95)
      (wood p95 mahogany)
      (treatment p95 varnished)
      (available p96)
      (colour p96 natural)
      (wood p96 pine)
      (available p97)
      (colour p97 blue)
      (wood p97 teak)
      (available p98)
      (wood p98 walnut)
      (treatment p98 glazed)
      (available p99)
      (colour p99 red)
      (treatment p99 glazed)
      (available p100)
      (colour p100 green)
      (wood p100 pine)
      (surface-condition p100 verysmooth)
      (available p101)
      (colour p101 mauve)
      (wood p101 pine)
      (surface-condition p101 verysmooth)
      (treatment p101 varnished)
      (available p102)
      (wood p102 walnut)
      (treatment p102 glazed)
      (available p103)
      (wood p103 oak)
      (surface-condition p103 verysmooth)
      (available p104)
      (colour p104 white)
      (surface-condition p104 verysmooth)
      (treatment p104 glazed)
      (available p105)
      (wood p105 mahogany)
      (surface-condition p105 smooth)
      (available p106)
      (colour p106 red)
      (wood p106 cherry)
      (surface-condition p106 verysmooth)
      (available p107)
      (wood p107 walnut)
      (treatment p107 glazed)
      (available p108)
      (surface-condition p108 smooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 mauve)
      (wood p109 cherry)
      (surface-condition p109 verysmooth)
      (treatment p109 glazed)
      (available p110)
      (wood p110 mahogany)
      (treatment p110 glazed)
      (available p111)
      (colour p111 green)
      (surface-condition p111 verysmooth)
      (available p112)
      (wood p112 beech)
      (treatment p112 glazed)
      (available p113)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 green)
      (surface-condition p114 smooth)
      (available p115)
      (colour p115 mauve)
      (wood p115 walnut)
      (available p116)
      (colour p116 green)
      (wood p116 oak)
      (surface-condition p116 smooth)
      (treatment p116 varnished)
      (available p117)
      (wood p117 pine)
      (surface-condition p117 verysmooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 natural)
      (wood p118 teak)
      (surface-condition p118 verysmooth)
      (treatment p118 glazed)
      (available p119)
      (colour p119 natural)
      (surface-condition p119 verysmooth)
      (available p120)
      (colour p120 mauve)
      (wood p120 walnut)
      (surface-condition p120 smooth)
      (treatment p120 varnished)
      (available p121)
      (colour p121 red)
      (surface-condition p121 smooth)
      (available p122)
      (colour p122 green)
      (surface-condition p122 smooth)
      (available p123)
      (wood p123 pine)
      (treatment p123 glazed)
      (available p124)
      (colour p124 green)
      (treatment p124 glazed)
      (available p125)
      (colour p125 white)
      (wood p125 teak)
      (available p126)
      (colour p126 blue)
      (surface-condition p126 verysmooth)
      (available p127)
      (wood p127 pine)
      (surface-condition p127 verysmooth)
      (treatment p127 glazed)
      (available p128)
      (colour p128 mauve)
      (wood p128 teak)
      (available p129)
      (colour p129 blue)
      (surface-condition p129 verysmooth)
      (available p130)
      (colour p130 natural)
      (surface-condition p130 smooth)
      (treatment p130 glazed)
      (available p131)
      (colour p131 blue)
      (wood p131 teak)
      (surface-condition p131 smooth)
      (available p132)
      (colour p132 mauve)
      (wood p132 walnut)
      (surface-condition p132 smooth)
      (available p133)
      (colour p133 blue)
      (wood p133 oak)
      (surface-condition p133 smooth)
      (treatment p133 glazed)
      (available p134)
      (wood p134 cherry)
      (surface-condition p134 verysmooth)
      (available p135)
      (wood p135 pine)
      (surface-condition p135 verysmooth)
      (available p136)
      (colour p136 black)
      (wood p136 mahogany)
      (surface-condition p136 smooth)
      (treatment p136 varnished)
      (available p137)
      (wood p137 cherry)
      (treatment p137 varnished)
      (available p138)
      (colour p138 red)
      (wood p138 beech)
      (available p139)
      (colour p139 mauve)
      (treatment p139 glazed)
      (available p140)
      (wood p140 cherry)
      (surface-condition p140 verysmooth)
      (treatment p140 glazed)
      (available p141)
      (colour p141 green)
      (treatment p141 varnished)
      (available p142)
      (colour p142 black)
      (wood p142 cherry)
      (treatment p142 varnished)
      (available p143)
      (colour p143 white)
      (wood p143 oak)
      (available p144)
      (wood p144 cherry)
      (treatment p144 varnished)
      (available p145)
      (colour p145 black)
      (treatment p145 varnished)
      (available p146)
      (colour p146 red)
      (surface-condition p146 verysmooth)
      (treatment p146 varnished)
      (available p147)
      (colour p147 white)
      (treatment p147 glazed)
      (available p148)
      (wood p148 mahogany)
      (surface-condition p148 verysmooth)
      (treatment p148 varnished)
      (available p149)
      (colour p149 white)
      (treatment p149 varnished)
      (available p150)
      (surface-condition p150 verysmooth)
      (treatment p150 glazed)
      (available p151)
      (colour p151 blue)
      (wood p151 mahogany)
      (available p152)
      (colour p152 mauve)
      (wood p152 beech)
      (available p153)
      (colour p153 black)
      (wood p153 teak)
      (surface-condition p153 smooth)
      (treatment p153 glazed)
      (available p154)
      (colour p154 mauve)
      (surface-condition p154 verysmooth)
      (treatment p154 varnished)
      (available p155)
      (colour p155 black)
      (treatment p155 varnished)
      (available p156)
      (colour p156 white)
      (wood p156 cherry)
      (surface-condition p156 verysmooth)
      (treatment p156 glazed)
      (available p157)
      (colour p157 green)
      (wood p157 walnut)
      (surface-condition p157 verysmooth)
      (treatment p157 varnished)
      (available p158)
      (colour p158 red)
      (surface-condition p158 smooth)
      (treatment p158 varnished)
      (available p159)
      (wood p159 beech)
      (treatment p159 varnished)
      (available p160)
      (colour p160 black)
      (treatment p160 glazed)
      (available p161)
      (colour p161 blue)
      (surface-condition p161 smooth)
      (available p162)
      (colour p162 red)
      (wood p162 teak)
      (surface-condition p162 verysmooth)
      (available p163)
      (wood p163 oak)
      (treatment p163 glazed)
      (available p164)
      (colour p164 black)
      (wood p164 beech)
      (available p165)
      (colour p165 natural)
      (treatment p165 varnished)
      (available p166)
      (colour p166 black)
      (wood p166 pine)
      (available p167)
      (colour p167 mauve)
      (wood p167 mahogany)
      (treatment p167 varnished)
      (available p168)
      (colour p168 mauve)
      (wood p168 beech)
      (surface-condition p168 smooth)
      (treatment p168 glazed)
      (available p169)
      (wood p169 beech)
      (surface-condition p169 smooth)
      (treatment p169 varnished)
      (available p170)
      (colour p170 mauve)
      (wood p170 mahogany)
      (surface-condition p170 smooth)
      (treatment p170 glazed)
      (available p171)
      (colour p171 green)
      (wood p171 mahogany)
      (treatment p171 glazed)
      (available p172)
      (wood p172 teak)
      (treatment p172 glazed)
      (available p173)
      (colour p173 natural)
      (surface-condition p173 verysmooth)
      (treatment p173 glazed)
      (available p174)
      (wood p174 pine)
      (surface-condition p174 verysmooth)
      (available p175)
      (wood p175 teak)
      (treatment p175 varnished)
      (available p176)
      (colour p176 red)
      (wood p176 walnut)
      (available p177)
      (surface-condition p177 verysmooth)
      (treatment p177 varnished)
      (available p178)
      (colour p178 black)
      (wood p178 beech)
      (surface-condition p178 smooth)
      (available p179)
      (wood p179 mahogany)
      (treatment p179 glazed)
      (available p180)
      (colour p180 black)
      (wood p180 pine)
      (surface-condition p180 verysmooth)
      (treatment p180 glazed)
      (available p181)
      (wood p181 mahogany)
      (surface-condition p181 smooth)
      (available p182)
      (colour p182 white)
      (treatment p182 varnished)
      (available p183)
      (colour p183 blue)
      (wood p183 teak)
      (surface-condition p183 smooth)
      (treatment p183 varnished)
      (available p184)
      (colour p184 natural)
      (treatment p184 varnished)
      (available p185)
      (colour p185 blue)
      (treatment p185 glazed)
      (available p186)
      (colour p186 mauve)
      (wood p186 beech)
      (treatment p186 glazed)
      (available p187)
      (colour p187 mauve)
      (treatment p187 glazed)
      (available p188)
      (colour p188 green)
      (wood p188 teak)
      (available p189)
      (wood p189 cherry)
      (surface-condition p189 verysmooth)
      (available p190)
      (colour p190 natural)
      (treatment p190 glazed)
      (available p191)
      (wood p191 beech)
      (treatment p191 varnished)
      (available p192)
      (colour p192 red)
      (wood p192 cherry)
      (treatment p192 glazed)
      (available p193)
      (colour p193 mauve)
      (surface-condition p193 smooth)
      (treatment p193 glazed)
      (available p194)
      (wood p194 pine)
      (surface-condition p194 smooth)
      (available p195)
      (surface-condition p195 verysmooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 green)
      (wood p196 beech)
      (surface-condition p196 verysmooth)
      (treatment p196 varnished)
      (available p197)
      (colour p197 white)
      (wood p197 pine)
      (surface-condition p197 verysmooth)
      (treatment p197 varnished)
      (available p198)
      (colour p198 natural)
      (wood p198 mahogany)
      (surface-condition p198 smooth)
      (treatment p198 glazed)
      (available p199)
      (colour p199 green)
      (treatment p199 glazed)
      (available p200)
      (colour p200 natural)
      (wood p200 teak)
      (treatment p200 varnished)
      (available p201)
      (colour p201 black)
      (wood p201 beech)
      (available p202)
      (colour p202 green)
      (wood p202 mahogany)
      (surface-condition p202 verysmooth)
      (available p203)
      (surface-condition p203 smooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 blue)
      (wood p204 pine)
      (available p205)
      (colour p205 black)
      (treatment p205 glazed)
      (available p206)
      (colour p206 blue)
      (wood p206 beech)
      (surface-condition p206 smooth)
      (treatment p206 varnished)
      (available p207)
      (colour p207 natural)
      (wood p207 walnut)
      (surface-condition p207 smooth)
      (treatment p207 glazed)
      (available p208)
      (surface-condition p208 smooth)
      (treatment p208 glazed)
      (available p209)
      (colour p209 mauve)
      (treatment p209 varnished)
      (available p210)
      (wood p210 oak)
      (treatment p210 varnished)
      (available p211)
      (wood p211 teak)
      (surface-condition p211 verysmooth)
      (available p212)
      (colour p212 blue)
      (wood p212 pine)
      (treatment p212 varnished)
      (available p213)
      (colour p213 mauve)
      (wood p213 mahogany)
      (surface-condition p213 verysmooth)
      (treatment p213 varnished)
      (available p214)
      (surface-condition p214 smooth)
      (treatment p214 varnished)
      (available p215)
      (wood p215 walnut)
      (surface-condition p215 verysmooth)
      (treatment p215 varnished)
      (available p216)
      (colour p216 blue)
      (wood p216 walnut)
      (available p217)
      (wood p217 pine)
      (treatment p217 varnished)
      (available p218)
      (colour p218 black)
      (wood p218 teak)
      (surface-condition p218 smooth)
      (treatment p218 varnished)
      (available p219)
      (colour p219 blue)
      (wood p219 teak)
      (surface-condition p219 verysmooth)
      (treatment p219 varnished)
      (available p220)
      (colour p220 mauve)
      (wood p220 walnut)
      (surface-condition p220 smooth)
      (treatment p220 varnished)
      (available p221)
      (colour p221 white)
      (wood p221 beech)
      (surface-condition p221 smooth)
      (available p222)
      (colour p222 black)
      (wood p222 oak)
      (surface-condition p222 smooth)
      (treatment p222 varnished)
      (available p223)
      (colour p223 white)
      (treatment p223 glazed)
      (available p224)
      (wood p224 mahogany)
      (treatment p224 varnished)
      (available p225)
      (colour p225 red)
      (treatment p225 varnished)
      (available p226)
      (surface-condition p226 verysmooth)
      (treatment p226 glazed)
      (available p227)
      (colour p227 mauve)
      (surface-condition p227 verysmooth)
      (available p228)
      (colour p228 green)
      (wood p228 beech)
      (available p229)
      (colour p229 natural)
      (wood p229 walnut)
      (surface-condition p229 smooth)
      (treatment p229 glazed)
      (available p230)
      (colour p230 blue)
      (treatment p230 varnished)
      (available p231)
      (wood p231 mahogany)
      (surface-condition p231 verysmooth)
      (treatment p231 glazed)
      (available p232)
      (colour p232 red)
      (treatment p232 varnished)
      (available p233)
      (colour p233 black)
      (wood p233 mahogany)
      (surface-condition p233 verysmooth)
      (available p234)
      (wood p234 mahogany)
      (surface-condition p234 smooth)
      (available p235)
      (colour p235 blue)
      (wood p235 beech)
      (surface-condition p235 smooth)
      (treatment p235 glazed)
      (available p236)
      (colour p236 red)
      (surface-condition p236 smooth)
      (available p237)
      (colour p237 white)
      (wood p237 walnut)
      (available p238)
      (colour p238 green)
      (wood p238 beech)
      (treatment p238 glazed)
      (available p239)
      (colour p239 natural)
      (wood p239 mahogany)
      (surface-condition p239 smooth)
      (treatment p239 varnished)
      (available p240)
      (wood p240 walnut)
      (surface-condition p240 smooth)
      (treatment p240 varnished)
      (available p241)
      (colour p241 green)
      (wood p241 teak)
      (surface-condition p241 smooth)
      (treatment p241 varnished)
      (available p242)
      (colour p242 mauve)
      (surface-condition p242 smooth)
      (available p243)
      (colour p243 white)
      (wood p243 mahogany)
      (surface-condition p243 verysmooth)
      (treatment p243 glazed)
      (available p244)
      (wood p244 oak)
      (surface-condition p244 verysmooth)
      (treatment p244 varnished)
      (available p245)
      (colour p245 black)
      (wood p245 beech)
      (available p246)
      (colour p246 white)
      (wood p246 cherry)
      (surface-condition p246 verysmooth)
      (treatment p246 glazed)
      (available p247)
      (colour p247 black)
      (wood p247 cherry)
      (available p248)
      (colour p248 white)
      (treatment p248 varnished)
      (available p249)
      (colour p249 green)
      (surface-condition p249 smooth)
      (available p250)
      (colour p250 mauve)
      (treatment p250 varnished)
      (available p251)
      (wood p251 oak)
      (surface-condition p251 verysmooth)
      (available p252)
      (colour p252 white)
      (wood p252 beech)
      (surface-condition p252 smooth)
      (available p253)
      (wood p253 pine)
      (surface-condition p253 verysmooth)
      (treatment p253 varnished)
      (available p254)
      (surface-condition p254 smooth)
      (treatment p254 glazed)
      (available p255)
      (colour p255 white)
      (wood p255 cherry)
      (surface-condition p255 verysmooth)
      (treatment p255 varnished)
      (available p256)
      (colour p256 white)
      (wood p256 teak)
      (treatment p256 varnished)
    )
  )
  
)
