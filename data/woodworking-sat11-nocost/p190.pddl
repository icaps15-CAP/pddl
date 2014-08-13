; woodworking task with 257 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 901817

(define (problem wood-prob-sat-190)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red black mauve blue green white - acolour
    beech teak oak walnut mahogany cherry pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 p248 p249 p250 p251 p252 p253 p254 p255 p256 - part
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 mauve)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 mauve)
    (wood p1 cherry)
    (surface-condition p1 rough)
    (treatment p1 varnished)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (available p3)
    (colour p3 red)
    (wood p3 beech)
    (surface-condition p3 smooth)
    (treatment p3 glazed)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 mauve)
    (wood p6 mahogany)
    (surface-condition p6 rough)
    (treatment p6 colourfragments)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 natural)
    (wood p36 teak)
    (surface-condition p36 rough)
    (treatment p36 varnished)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 black)
    (wood p38 oak)
    (surface-condition p38 smooth)
    (treatment p38 colourfragments)
    (goalsize p38 medium)
    
    
    
    
    (available p39)
    (colour p39 natural)
    (wood p39 cherry)
    (surface-condition p39 verysmooth)
    (treatment p39 glazed)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (available p41)
    (colour p41 black)
    (wood p41 cherry)
    (surface-condition p41 rough)
    (treatment p41 varnished)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (available p43)
    (colour p43 natural)
    (wood p43 pine)
    (surface-condition p43 smooth)
    (treatment p43 varnished)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (available p48)
    (colour p48 red)
    (wood p48 pine)
    (surface-condition p48 smooth)
    (treatment p48 glazed)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (available p51)
    (colour p51 white)
    (wood p51 cherry)
    (surface-condition p51 smooth)
    (treatment p51 glazed)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (available p60)
    (colour p60 blue)
    (wood p60 mahogany)
    (surface-condition p60 rough)
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
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (available p68)
    (colour p68 white)
    (wood p68 oak)
    (surface-condition p68 smooth)
    (treatment p68 varnished)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (available p88)
    (colour p88 black)
    (wood p88 teak)
    (surface-condition p88 rough)
    (treatment p88 glazed)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (available p92)
    (colour p92 white)
    (wood p92 teak)
    (surface-condition p92 smooth)
    (treatment p92 colourfragments)
    (goalsize p92 small)
    
    
    
    
    (available p93)
    (colour p93 white)
    (wood p93 walnut)
    (surface-condition p93 smooth)
    (treatment p93 colourfragments)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
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
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (available p107)
    (colour p107 green)
    (wood p107 beech)
    (surface-condition p107 verysmooth)
    (treatment p107 varnished)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (available p110)
    (colour p110 mauve)
    (wood p110 mahogany)
    (surface-condition p110 verysmooth)
    (treatment p110 glazed)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (available p117)
    (colour p117 black)
    (wood p117 walnut)
    (surface-condition p117 verysmooth)
    (treatment p117 varnished)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (available p121)
    (colour p121 natural)
    (wood p121 beech)
    (surface-condition p121 rough)
    (treatment p121 varnished)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (available p126)
    (colour p126 black)
    (wood p126 pine)
    (surface-condition p126 rough)
    (treatment p126 glazed)
    (goalsize p126 medium)
    
    
    
    
    (available p127)
    (colour p127 black)
    (wood p127 mahogany)
    (surface-condition p127 rough)
    (treatment p127 colourfragments)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 medium)
    
    
    
    
    (available p137)
    (colour p137 black)
    (wood p137 cherry)
    (surface-condition p137 smooth)
    (treatment p137 varnished)
    (goalsize p137 large)
    
    
    
    
    (available p138)
    (colour p138 mauve)
    (wood p138 teak)
    (surface-condition p138 rough)
    (treatment p138 colourfragments)
    (goalsize p138 small)
    
    
    
    
    (available p139)
    (colour p139 natural)
    (wood p139 oak)
    (surface-condition p139 rough)
    (treatment p139 colourfragments)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (available p141)
    (colour p141 blue)
    (wood p141 cherry)
    (surface-condition p141 rough)
    (treatment p141 glazed)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (available p144)
    (colour p144 green)
    (wood p144 teak)
    (surface-condition p144 smooth)
    (treatment p144 varnished)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (available p152)
    (colour p152 white)
    (wood p152 pine)
    (surface-condition p152 smooth)
    (treatment p152 varnished)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (available p160)
    (colour p160 red)
    (wood p160 pine)
    (surface-condition p160 rough)
    (treatment p160 glazed)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 large)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (available p179)
    (colour p179 red)
    (wood p179 oak)
    (surface-condition p179 smooth)
    (treatment p179 colourfragments)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (available p181)
    (colour p181 green)
    (wood p181 pine)
    (surface-condition p181 verysmooth)
    (treatment p181 glazed)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 small)
    
    
    
    
    (available p187)
    (colour p187 black)
    (wood p187 teak)
    (surface-condition p187 verysmooth)
    (treatment p187 varnished)
    (goalsize p187 medium)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 medium)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 small)
    
    
    
    
    (unused p197)
    (goalsize p197 small)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (available p200)
    (colour p200 mauve)
    (wood p200 mahogany)
    (surface-condition p200 rough)
    (treatment p200 glazed)
    (goalsize p200 large)
    
    
    
    
    (available p201)
    (colour p201 blue)
    (wood p201 mahogany)
    (surface-condition p201 smooth)
    (treatment p201 colourfragments)
    (goalsize p201 large)
    
    
    
    
    (available p202)
    (colour p202 green)
    (wood p202 beech)
    (surface-condition p202 rough)
    (treatment p202 varnished)
    (goalsize p202 large)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 small)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (available p206)
    (colour p206 red)
    (wood p206 pine)
    (surface-condition p206 verysmooth)
    (treatment p206 colourfragments)
    (goalsize p206 large)
    
    
    
    
    (available p207)
    (colour p207 natural)
    (wood p207 teak)
    (surface-condition p207 rough)
    (treatment p207 varnished)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 medium)
    
    
    
    
    (unused p209)
    (goalsize p209 large)
    
    
    
    
    (available p210)
    (colour p210 white)
    (wood p210 teak)
    (surface-condition p210 rough)
    (treatment p210 varnished)
    (goalsize p210 medium)
    
    
    
    
    (available p211)
    (colour p211 green)
    (wood p211 beech)
    (surface-condition p211 rough)
    (treatment p211 colourfragments)
    (goalsize p211 small)
    
    
    
    
    (available p212)
    (colour p212 mauve)
    (wood p212 walnut)
    (surface-condition p212 verysmooth)
    (treatment p212 glazed)
    (goalsize p212 small)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 large)
    
    
    
    
    (unused p215)
    (goalsize p215 large)
    
    
    
    
    (unused p216)
    (goalsize p216 medium)
    
    
    
    
    (unused p217)
    (goalsize p217 small)
    
    
    
    
    (unused p218)
    (goalsize p218 medium)
    
    
    
    
    (unused p219)
    (goalsize p219 small)
    
    
    
    
    (available p220)
    (colour p220 green)
    (wood p220 oak)
    (surface-condition p220 smooth)
    (treatment p220 colourfragments)
    (goalsize p220 large)
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (unused p224)
    (goalsize p224 small)
    
    
    
    
    (unused p225)
    (goalsize p225 small)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (unused p227)
    (goalsize p227 small)
    
    
    
    
    (unused p228)
    (goalsize p228 medium)
    
    
    
    
    (unused p229)
    (goalsize p229 medium)
    
    
    
    
    (available p230)
    (colour p230 black)
    (wood p230 mahogany)
    (surface-condition p230 verysmooth)
    (treatment p230 colourfragments)
    (goalsize p230 small)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (unused p232)
    (goalsize p232 small)
    
    
    
    
    (unused p233)
    (goalsize p233 large)
    
    
    
    
    (unused p234)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (available p237)
    (colour p237 blue)
    (wood p237 walnut)
    (surface-condition p237 verysmooth)
    (treatment p237 glazed)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (unused p239)
    (goalsize p239 medium)
    
    
    
    
    (unused p240)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 small)
    
    
    
    
    (available p242)
    (colour p242 natural)
    (wood p242 cherry)
    (surface-condition p242 smooth)
    (treatment p242 colourfragments)
    (goalsize p242 large)
    
    
    
    
    (available p243)
    (colour p243 blue)
    (wood p243 walnut)
    (surface-condition p243 rough)
    (treatment p243 varnished)
    (goalsize p243 medium)
    
    
    
    
    (unused p244)
    (goalsize p244 medium)
    
    
    
    
    (unused p245)
    (goalsize p245 medium)
    
    
    
    
    (unused p246)
    (goalsize p246 large)
    
    
    
    
    (unused p247)
    (goalsize p247 medium)
    
    
    
    
    (unused p248)
    (goalsize p248 large)
    
    
    
    
    (unused p249)
    (goalsize p249 large)
    
    
    
    
    (unused p250)
    (goalsize p250 large)
    
    
    
    
    (unused p251)
    (goalsize p251 small)
    
    
    
    
    (unused p252)
    (goalsize p252 medium)
    
    
    
    
    (unused p253)
    (goalsize p253 small)
    
    
    
    
    (unused p254)
    (goalsize p254 medium)
    
    
    
    
    (unused p255)
    (goalsize p255 medium)
    
    
    
    
    (unused p256)
    (goalsize p256 small)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s11)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s6)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s9)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s6)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s6)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s4)
    (wood b11 cherry)
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
    (boardsize b14 s8)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s9)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s10)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 mahogany)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 mahogany)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 mahogany)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s10)
    (wood b24 mahogany)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s5)
    (wood b25 mahogany)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s9)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s8)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s7)
    (wood b31 oak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s6)
    (wood b32 oak)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s12)
    (wood b33 oak)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s9)
    (wood b34 oak)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s6)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s10)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 pine)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s9)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s7)
    (wood b39 pine)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s9)
    (wood b40 pine)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s5)
    (wood b41 pine)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s6)
    (wood b42 pine)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s6)
    (wood b43 pine)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s9)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s9)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s10)
    (wood b46 walnut)
    (surface-condition b46 smooth)
    (available b46)
    (boardsize b47 s10)
    (wood b47 walnut)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s8)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s8)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s10)
    (wood b50 walnut)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s7)
    (wood b51 walnut)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s7)
    (wood b52 walnut)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s9)
    (wood b53 walnut)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s6)
    (wood b54 walnut)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s3)
    (wood b55 walnut)
    (surface-condition b55 smooth)
    (available b55)
    (boardsize b56 s6)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s9)
    (wood b57 teak)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s10)
    (wood b58 teak)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s10)
    (wood b59 teak)
    (surface-condition b59 smooth)
    (available b59)
    (boardsize b60 s7)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s10)
    (wood b61 teak)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s7)
    (wood b62 teak)
    (surface-condition b62 smooth)
    (available b62)
    (boardsize b63 s5)
    (wood b63 teak)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s7)
    (wood b64 teak)
    (surface-condition b64 smooth)
    (available b64)
    (boardsize b65 s9)
    (wood b65 teak)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s6)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s7)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s8)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s9)
    (wood b69 beech)
    (surface-condition b69 smooth)
    (available b69)
    (boardsize b70 s8)
    (wood b70 beech)
    (surface-condition b70 rough)
    (available b70)
    (boardsize b71 s7)
    (wood b71 beech)
    (surface-condition b71 rough)
    (available b71)
    (boardsize b72 s7)
    (wood b72 beech)
    (surface-condition b72 rough)
    (available b72)
    (boardsize b73 s8)
    (wood b73 beech)
    (surface-condition b73 rough)
    (available b73)
    (boardsize b74 s10)
    (wood b74 beech)
    (surface-condition b74 rough)
    (available b74)
    (boardsize b75 s5)
    (wood b75 beech)
    (surface-condition b75 smooth)
    (available b75)
    (boardsize b76 s2)
    (wood b76 beech)
    (surface-condition b76 rough)
    (available b76)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (treatment p0 varnished)
      (available p1)
      (colour p1 blue)
      (treatment p1 glazed)
      (available p2)
      (colour p2 blue)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 white)
      (wood p3 beech)
      (available p4)
      (wood p4 beech)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 natural)
      (wood p5 walnut)
      (available p6)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 mauve)
      (treatment p8 glazed)
      (available p9)
      (colour p9 blue)
      (wood p9 teak)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (wood p10 walnut)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 mauve)
      (wood p11 beech)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (wood p12 oak)
      (treatment p12 glazed)
      (available p13)
      (colour p13 mauve)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 natural)
      (wood p14 mahogany)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 natural)
      (wood p15 walnut)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 mauve)
      (surface-condition p16 verysmooth)
      (available p17)
      (wood p17 oak)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 mauve)
      (wood p18 walnut)
      (available p19)
      (colour p19 natural)
      (treatment p19 glazed)
      (available p20)
      (colour p20 natural)
      (wood p20 cherry)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 mauve)
      (wood p21 beech)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 red)
      (wood p22 mahogany)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 black)
      (wood p23 walnut)
      (available p24)
      (colour p24 natural)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 blue)
      (wood p25 mahogany)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 white)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (wood p27 teak)
      (treatment p27 varnished)
      (available p28)
      (colour p28 white)
      (wood p28 mahogany)
      (treatment p28 varnished)
      (available p29)
      (surface-condition p29 verysmooth)
      (treatment p29 varnished)
      (available p30)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 green)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 blue)
      (wood p33 walnut)
      (surface-condition p33 verysmooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 natural)
      (wood p34 mahogany)
      (treatment p34 varnished)
      (available p35)
      (colour p35 blue)
      (wood p35 walnut)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 black)
      (wood p36 teak)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (wood p37 walnut)
      (surface-condition p37 smooth)
      (available p38)
      (colour p38 green)
      (surface-condition p38 verysmooth)
      (available p39)
      (colour p39 white)
      (wood p39 cherry)
      (surface-condition p39 verysmooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 green)
      (wood p40 pine)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 blue)
      (wood p41 cherry)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 mauve)
      (wood p42 teak)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 mauve)
      (wood p43 pine)
      (treatment p43 glazed)
      (available p44)
      (colour p44 black)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 blue)
      (wood p45 cherry)
      (available p46)
      (wood p46 mahogany)
      (treatment p46 glazed)
      (available p47)
      (colour p47 green)
      (wood p47 walnut)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 white)
      (surface-condition p48 verysmooth)
      (available p49)
      (wood p49 mahogany)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 green)
      (treatment p50 glazed)
      (available p51)
      (colour p51 black)
      (treatment p51 glazed)
      (available p52)
      (wood p52 cherry)
      (surface-condition p52 smooth)
      (available p53)
      (colour p53 blue)
      (wood p53 pine)
      (treatment p53 varnished)
      (available p54)
      (wood p54 walnut)
      (treatment p54 glazed)
      (available p55)
      (colour p55 white)
      (surface-condition p55 verysmooth)
      (available p56)
      (wood p56 mahogany)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 blue)
      (treatment p57 glazed)
      (available p58)
      (wood p58 mahogany)
      (treatment p58 glazed)
      (available p59)
      (colour p59 black)
      (wood p59 mahogany)
      (surface-condition p59 smooth)
      (treatment p59 glazed)
      (available p60)
      (wood p60 mahogany)
      (surface-condition p60 verysmooth)
      (available p61)
      (colour p61 blue)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 green)
      (wood p62 pine)
      (available p63)
      (colour p63 natural)
      (wood p63 oak)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (wood p64 mahogany)
      (surface-condition p64 verysmooth)
      (available p65)
      (wood p65 mahogany)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 blue)
      (wood p66 pine)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 green)
      (wood p67 mahogany)
      (surface-condition p67 verysmooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 red)
      (wood p68 oak)
      (surface-condition p68 verysmooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 mauve)
      (wood p69 walnut)
      (available p70)
      (colour p70 black)
      (wood p70 teak)
      (surface-condition p70 smooth)
      (available p71)
      (colour p71 red)
      (treatment p71 varnished)
      (available p72)
      (colour p72 blue)
      (wood p72 mahogany)
      (available p73)
      (colour p73 blue)
      (wood p73 cherry)
      (surface-condition p73 verysmooth)
      (treatment p73 glazed)
      (available p74)
      (colour p74 natural)
      (surface-condition p74 smooth)
      (available p75)
      (wood p75 beech)
      (treatment p75 varnished)
      (available p76)
      (colour p76 blue)
      (treatment p76 glazed)
      (available p77)
      (colour p77 green)
      (treatment p77 varnished)
      (available p78)
      (colour p78 white)
      (treatment p78 glazed)
      (available p79)
      (wood p79 mahogany)
      (surface-condition p79 verysmooth)
      (treatment p79 varnished)
      (available p80)
      (colour p80 black)
      (wood p80 cherry)
      (surface-condition p80 verysmooth)
      (treatment p80 glazed)
      (available p81)
      (colour p81 black)
      (wood p81 walnut)
      (surface-condition p81 smooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 blue)
      (wood p82 teak)
      (available p83)
      (colour p83 blue)
      (wood p83 pine)
      (available p84)
      (colour p84 mauve)
      (wood p84 oak)
      (surface-condition p84 verysmooth)
      (treatment p84 glazed)
      (available p85)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (surface-condition p86 smooth)
      (treatment p86 glazed)
      (available p87)
      (colour p87 blue)
      (wood p87 pine)
      (surface-condition p87 smooth)
      (treatment p87 varnished)
      (available p88)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 black)
      (treatment p89 glazed)
      (available p90)
      (colour p90 mauve)
      (treatment p90 glazed)
      (available p91)
      (wood p91 cherry)
      (surface-condition p91 verysmooth)
      (treatment p91 varnished)
      (available p92)
      (colour p92 red)
      (treatment p92 glazed)
      (available p93)
      (colour p93 green)
      (wood p93 walnut)
      (surface-condition p93 smooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 blue)
      (wood p94 teak)
      (surface-condition p94 verysmooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 green)
      (wood p95 teak)
      (surface-condition p95 smooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 blue)
      (wood p96 teak)
      (surface-condition p96 verysmooth)
      (treatment p96 glazed)
      (available p97)
      (colour p97 mauve)
      (wood p97 mahogany)
      (surface-condition p97 smooth)
      (available p98)
      (wood p98 beech)
      (treatment p98 varnished)
      (available p99)
      (colour p99 natural)
      (wood p99 beech)
      (available p100)
      (colour p100 black)
      (surface-condition p100 smooth)
      (available p101)
      (colour p101 natural)
      (wood p101 walnut)
      (surface-condition p101 verysmooth)
      (available p102)
      (colour p102 natural)
      (wood p102 beech)
      (surface-condition p102 smooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 natural)
      (wood p103 beech)
      (surface-condition p103 smooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 white)
      (wood p104 mahogany)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 red)
      (surface-condition p105 verysmooth)
      (available p106)
      (surface-condition p106 verysmooth)
      (treatment p106 varnished)
      (available p107)
      (colour p107 natural)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (surface-condition p108 verysmooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 black)
      (wood p109 mahogany)
      (surface-condition p109 verysmooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 red)
      (surface-condition p110 smooth)
      (available p111)
      (wood p111 mahogany)
      (treatment p111 glazed)
      (available p112)
      (colour p112 natural)
      (wood p112 beech)
      (surface-condition p112 verysmooth)
      (treatment p112 varnished)
      (available p113)
      (colour p113 blue)
      (wood p113 oak)
      (surface-condition p113 smooth)
      (treatment p113 glazed)
      (available p114)
      (colour p114 blue)
      (surface-condition p114 smooth)
      (available p115)
      (colour p115 black)
      (wood p115 cherry)
      (surface-condition p115 smooth)
      (treatment p115 glazed)
      (available p116)
      (wood p116 oak)
      (treatment p116 varnished)
      (available p117)
      (wood p117 walnut)
      (surface-condition p117 smooth)
      (treatment p117 glazed)
      (available p118)
      (surface-condition p118 smooth)
      (treatment p118 varnished)
      (available p119)
      (surface-condition p119 smooth)
      (treatment p119 varnished)
      (available p120)
      (wood p120 beech)
      (surface-condition p120 smooth)
      (treatment p120 varnished)
      (available p121)
      (surface-condition p121 verysmooth)
      (treatment p121 glazed)
      (available p122)
      (colour p122 blue)
      (surface-condition p122 smooth)
      (available p123)
      (colour p123 natural)
      (wood p123 walnut)
      (surface-condition p123 verysmooth)
      (available p124)
      (wood p124 pine)
      (treatment p124 glazed)
      (available p125)
      (colour p125 black)
      (wood p125 teak)
      (surface-condition p125 smooth)
      (treatment p125 glazed)
      (available p126)
      (colour p126 white)
      (treatment p126 glazed)
      (available p127)
      (colour p127 blue)
      (treatment p127 varnished)
      (available p128)
      (colour p128 blue)
      (treatment p128 glazed)
      (available p129)
      (wood p129 mahogany)
      (treatment p129 varnished)
      (available p130)
      (colour p130 red)
      (wood p130 mahogany)
      (surface-condition p130 smooth)
      (treatment p130 glazed)
      (available p131)
      (surface-condition p131 verysmooth)
      (treatment p131 varnished)
      (available p132)
      (colour p132 green)
      (treatment p132 glazed)
      (available p133)
      (wood p133 teak)
      (treatment p133 glazed)
      (available p134)
      (surface-condition p134 smooth)
      (treatment p134 varnished)
      (available p135)
      (surface-condition p135 smooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 blue)
      (surface-condition p136 verysmooth)
      (available p137)
      (wood p137 cherry)
      (surface-condition p137 verysmooth)
      (available p138)
      (colour p138 natural)
      (treatment p138 glazed)
      (available p139)
      (colour p139 white)
      (wood p139 oak)
      (surface-condition p139 smooth)
      (treatment p139 varnished)
      (available p140)
      (wood p140 teak)
      (treatment p140 varnished)
      (available p141)
      (colour p141 red)
      (treatment p141 varnished)
      (available p142)
      (colour p142 white)
      (wood p142 cherry)
      (surface-condition p142 smooth)
      (treatment p142 glazed)
      (available p143)
      (colour p143 green)
      (surface-condition p143 smooth)
      (available p144)
      (colour p144 red)
      (wood p144 teak)
      (surface-condition p144 smooth)
      (treatment p144 glazed)
      (available p145)
      (colour p145 black)
      (wood p145 pine)
      (treatment p145 glazed)
      (available p146)
      (colour p146 white)
      (wood p146 pine)
      (treatment p146 glazed)
      (available p147)
      (colour p147 blue)
      (wood p147 oak)
      (surface-condition p147 verysmooth)
      (treatment p147 varnished)
      (available p148)
      (colour p148 red)
      (wood p148 mahogany)
      (surface-condition p148 verysmooth)
      (treatment p148 glazed)
      (available p149)
      (surface-condition p149 smooth)
      (treatment p149 varnished)
      (available p150)
      (colour p150 green)
      (surface-condition p150 verysmooth)
      (available p151)
      (colour p151 blue)
      (surface-condition p151 verysmooth)
      (treatment p151 glazed)
      (available p152)
      (colour p152 natural)
      (surface-condition p152 smooth)
      (available p153)
      (colour p153 blue)
      (wood p153 beech)
      (available p154)
      (colour p154 green)
      (surface-condition p154 smooth)
      (available p155)
      (surface-condition p155 smooth)
      (treatment p155 varnished)
      (available p156)
      (wood p156 oak)
      (treatment p156 glazed)
      (available p157)
      (colour p157 blue)
      (wood p157 oak)
      (surface-condition p157 smooth)
      (available p158)
      (surface-condition p158 smooth)
      (treatment p158 glazed)
      (available p159)
      (colour p159 black)
      (wood p159 cherry)
      (surface-condition p159 smooth)
      (treatment p159 varnished)
      (available p160)
      (colour p160 green)
      (wood p160 pine)
      (surface-condition p160 smooth)
      (treatment p160 glazed)
      (available p161)
      (wood p161 mahogany)
      (surface-condition p161 smooth)
      (treatment p161 varnished)
      (available p162)
      (wood p162 beech)
      (surface-condition p162 smooth)
      (available p163)
      (wood p163 pine)
      (treatment p163 glazed)
      (available p164)
      (wood p164 pine)
      (surface-condition p164 verysmooth)
      (treatment p164 varnished)
      (available p165)
      (colour p165 white)
      (treatment p165 glazed)
      (available p166)
      (colour p166 blue)
      (wood p166 oak)
      (surface-condition p166 smooth)
      (treatment p166 varnished)
      (available p167)
      (colour p167 green)
      (treatment p167 varnished)
      (available p168)
      (wood p168 mahogany)
      (surface-condition p168 verysmooth)
      (available p169)
      (wood p169 pine)
      (treatment p169 varnished)
      (available p170)
      (colour p170 black)
      (wood p170 beech)
      (surface-condition p170 smooth)
      (treatment p170 varnished)
      (available p171)
      (colour p171 black)
      (wood p171 teak)
      (surface-condition p171 verysmooth)
      (treatment p171 glazed)
      (available p172)
      (surface-condition p172 verysmooth)
      (treatment p172 glazed)
      (available p173)
      (colour p173 black)
      (surface-condition p173 smooth)
      (treatment p173 varnished)
      (available p174)
      (colour p174 blue)
      (wood p174 teak)
      (surface-condition p174 verysmooth)
      (treatment p174 glazed)
      (available p175)
      (colour p175 natural)
      (wood p175 pine)
      (surface-condition p175 verysmooth)
      (available p176)
      (surface-condition p176 smooth)
      (treatment p176 varnished)
      (available p177)
      (colour p177 natural)
      (surface-condition p177 smooth)
      (available p178)
      (wood p178 oak)
      (surface-condition p178 verysmooth)
      (available p179)
      (wood p179 oak)
      (treatment p179 glazed)
      (available p180)
      (colour p180 mauve)
      (wood p180 cherry)
      (surface-condition p180 verysmooth)
      (treatment p180 glazed)
      (available p181)
      (colour p181 black)
      (wood p181 pine)
      (surface-condition p181 verysmooth)
      (treatment p181 glazed)
      (available p182)
      (wood p182 walnut)
      (treatment p182 varnished)
      (available p183)
      (colour p183 blue)
      (wood p183 teak)
      (treatment p183 glazed)
      (available p184)
      (colour p184 blue)
      (surface-condition p184 smooth)
      (available p185)
      (colour p185 green)
      (treatment p185 glazed)
      (available p186)
      (colour p186 white)
      (wood p186 cherry)
      (surface-condition p186 smooth)
      (treatment p186 glazed)
      (available p187)
      (colour p187 white)
      (wood p187 teak)
      (surface-condition p187 smooth)
      (available p188)
      (colour p188 green)
      (wood p188 walnut)
      (treatment p188 glazed)
      (available p189)
      (colour p189 red)
      (wood p189 oak)
      (surface-condition p189 smooth)
      (available p190)
      (colour p190 black)
      (surface-condition p190 smooth)
      (treatment p190 varnished)
      (available p191)
      (colour p191 white)
      (surface-condition p191 verysmooth)
      (available p192)
      (wood p192 cherry)
      (surface-condition p192 smooth)
      (available p193)
      (wood p193 cherry)
      (surface-condition p193 smooth)
      (treatment p193 glazed)
      (available p194)
      (surface-condition p194 smooth)
      (treatment p194 glazed)
      (available p195)
      (wood p195 teak)
      (surface-condition p195 smooth)
      (available p196)
      (wood p196 mahogany)
      (treatment p196 glazed)
      (available p197)
      (wood p197 walnut)
      (surface-condition p197 smooth)
      (available p198)
      (colour p198 black)
      (wood p198 cherry)
      (available p199)
      (wood p199 cherry)
      (treatment p199 glazed)
      (available p200)
      (colour p200 natural)
      (surface-condition p200 smooth)
      (available p201)
      (colour p201 mauve)
      (surface-condition p201 smooth)
      (treatment p201 glazed)
      (available p202)
      (surface-condition p202 smooth)
      (treatment p202 glazed)
      (available p203)
      (surface-condition p203 verysmooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 red)
      (surface-condition p204 smooth)
      (available p205)
      (wood p205 mahogany)
      (surface-condition p205 smooth)
      (treatment p205 glazed)
      (available p206)
      (colour p206 black)
      (wood p206 pine)
      (surface-condition p206 smooth)
      (treatment p206 glazed)
      (available p207)
      (colour p207 green)
      (wood p207 teak)
      (surface-condition p207 smooth)
      (treatment p207 glazed)
      (available p208)
      (wood p208 teak)
      (treatment p208 varnished)
      (available p209)
      (colour p209 blue)
      (wood p209 walnut)
      (surface-condition p209 smooth)
      (treatment p209 varnished)
      (available p210)
      (colour p210 natural)
      (surface-condition p210 verysmooth)
      (treatment p210 varnished)
      (available p211)
      (colour p211 black)
      (wood p211 beech)
      (surface-condition p211 smooth)
      (available p212)
      (wood p212 walnut)
      (treatment p212 varnished)
      (available p213)
      (colour p213 natural)
      (wood p213 teak)
      (treatment p213 glazed)
      (available p214)
      (colour p214 blue)
      (treatment p214 glazed)
      (available p215)
      (colour p215 black)
      (surface-condition p215 smooth)
      (treatment p215 glazed)
      (available p216)
      (colour p216 natural)
      (wood p216 oak)
      (surface-condition p216 verysmooth)
      (treatment p216 glazed)
      (available p217)
      (colour p217 mauve)
      (surface-condition p217 verysmooth)
      (available p218)
      (surface-condition p218 verysmooth)
      (treatment p218 varnished)
      (available p219)
      (colour p219 blue)
      (wood p219 beech)
      (available p220)
      (colour p220 mauve)
      (wood p220 oak)
      (treatment p220 glazed)
      (available p221)
      (colour p221 mauve)
      (treatment p221 glazed)
      (available p222)
      (surface-condition p222 smooth)
      (treatment p222 glazed)
      (available p223)
      (colour p223 mauve)
      (treatment p223 varnished)
      (available p224)
      (colour p224 red)
      (wood p224 beech)
      (surface-condition p224 verysmooth)
      (available p225)
      (surface-condition p225 verysmooth)
      (treatment p225 glazed)
      (available p226)
      (colour p226 black)
      (wood p226 walnut)
      (available p227)
      (colour p227 natural)
      (wood p227 cherry)
      (available p228)
      (wood p228 cherry)
      (treatment p228 glazed)
      (available p229)
      (colour p229 green)
      (surface-condition p229 smooth)
      (treatment p229 glazed)
      (available p230)
      (colour p230 red)
      (wood p230 mahogany)
      (surface-condition p230 verysmooth)
      (treatment p230 varnished)
      (available p231)
      (wood p231 cherry)
      (surface-condition p231 verysmooth)
      (available p232)
      (colour p232 white)
      (wood p232 beech)
      (surface-condition p232 verysmooth)
      (treatment p232 glazed)
      (available p233)
      (surface-condition p233 verysmooth)
      (treatment p233 glazed)
      (available p234)
      (wood p234 mahogany)
      (surface-condition p234 verysmooth)
      (available p235)
      (colour p235 green)
      (treatment p235 varnished)
      (available p236)
      (wood p236 beech)
      (surface-condition p236 smooth)
      (available p237)
      (surface-condition p237 verysmooth)
      (treatment p237 varnished)
      (available p238)
      (wood p238 pine)
      (treatment p238 glazed)
      (available p239)
      (colour p239 black)
      (wood p239 beech)
      (surface-condition p239 smooth)
      (treatment p239 glazed)
      (available p240)
      (colour p240 natural)
      (treatment p240 varnished)
      (available p241)
      (colour p241 mauve)
      (surface-condition p241 verysmooth)
      (treatment p241 varnished)
      (available p242)
      (colour p242 green)
      (wood p242 cherry)
      (available p243)
      (colour p243 green)
      (wood p243 walnut)
      (surface-condition p243 verysmooth)
      (treatment p243 varnished)
      (available p244)
      (colour p244 mauve)
      (wood p244 cherry)
      (surface-condition p244 verysmooth)
      (treatment p244 varnished)
      (available p245)
      (surface-condition p245 smooth)
      (treatment p245 varnished)
      (available p246)
      (colour p246 red)
      (surface-condition p246 smooth)
      (available p247)
      (colour p247 natural)
      (wood p247 walnut)
      (surface-condition p247 verysmooth)
      (treatment p247 varnished)
      (available p248)
      (wood p248 pine)
      (surface-condition p248 verysmooth)
      (available p249)
      (colour p249 white)
      (wood p249 mahogany)
      (surface-condition p249 smooth)
      (treatment p249 glazed)
      (available p250)
      (wood p250 beech)
      (treatment p250 glazed)
      (available p251)
      (wood p251 teak)
      (treatment p251 varnished)
      (available p252)
      (colour p252 red)
      (wood p252 walnut)
      (surface-condition p252 verysmooth)
      (treatment p252 glazed)
      (available p253)
      (colour p253 green)
      (wood p253 walnut)
      (available p254)
      (wood p254 walnut)
      (surface-condition p254 verysmooth)
      (treatment p254 glazed)
      (available p255)
      (colour p255 natural)
      (wood p255 pine)
      (surface-condition p255 smooth)
      (treatment p255 glazed)
      (available p256)
      (colour p256 green)
      (surface-condition p256 verysmooth)
    )
  )
  
)
