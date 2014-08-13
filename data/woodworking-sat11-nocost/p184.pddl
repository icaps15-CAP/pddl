; woodworking task with 239 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 776143

(define (problem wood-prob-sat-184)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red mauve black white blue green - acolour
    pine cherry oak mahogany beech teak walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 - board
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
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 mauve)
    (wood p4 oak)
    (surface-condition p4 smooth)
    (treatment p4 varnished)
    (goalsize p4 large)
    
    
    
    
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
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 red)
    (wood p15 cherry)
    (surface-condition p15 verysmooth)
    (treatment p15 glazed)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (available p30)
    (colour p30 red)
    (wood p30 beech)
    (surface-condition p30 verysmooth)
    (treatment p30 glazed)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (available p32)
    (colour p32 white)
    (wood p32 teak)
    (surface-condition p32 smooth)
    (treatment p32 glazed)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (available p34)
    (colour p34 blue)
    (wood p34 walnut)
    (surface-condition p34 smooth)
    (treatment p34 glazed)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 black)
    (wood p36 beech)
    (surface-condition p36 verysmooth)
    (treatment p36 colourfragments)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (available p58)
    (colour p58 natural)
    (wood p58 oak)
    (surface-condition p58 rough)
    (treatment p58 colourfragments)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (available p71)
    (colour p71 red)
    (wood p71 cherry)
    (surface-condition p71 rough)
    (treatment p71 glazed)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (available p83)
    (colour p83 mauve)
    (wood p83 teak)
    (surface-condition p83 rough)
    (treatment p83 glazed)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (available p85)
    (colour p85 red)
    (wood p85 cherry)
    (surface-condition p85 rough)
    (treatment p85 colourfragments)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (available p88)
    (colour p88 natural)
    (wood p88 walnut)
    (surface-condition p88 rough)
    (treatment p88 varnished)
    (goalsize p88 medium)
    
    
    
    
    (available p89)
    (colour p89 mauve)
    (wood p89 cherry)
    (surface-condition p89 verysmooth)
    (treatment p89 glazed)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (available p94)
    (colour p94 white)
    (wood p94 beech)
    (surface-condition p94 rough)
    (treatment p94 varnished)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (available p106)
    (colour p106 blue)
    (wood p106 teak)
    (surface-condition p106 rough)
    (treatment p106 varnished)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (available p109)
    (colour p109 white)
    (wood p109 beech)
    (surface-condition p109 rough)
    (treatment p109 varnished)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (available p111)
    (colour p111 red)
    (wood p111 oak)
    (surface-condition p111 smooth)
    (treatment p111 colourfragments)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (available p115)
    (colour p115 natural)
    (wood p115 walnut)
    (surface-condition p115 verysmooth)
    (treatment p115 varnished)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (available p125)
    (colour p125 red)
    (wood p125 oak)
    (surface-condition p125 smooth)
    (treatment p125 colourfragments)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (available p127)
    (colour p127 blue)
    (wood p127 pine)
    (surface-condition p127 rough)
    (treatment p127 glazed)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (available p129)
    (colour p129 white)
    (wood p129 beech)
    (surface-condition p129 smooth)
    (treatment p129 colourfragments)
    (goalsize p129 small)
    
    
    
    
    (available p130)
    (colour p130 black)
    (wood p130 pine)
    (surface-condition p130 verysmooth)
    (treatment p130 varnished)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (available p133)
    (colour p133 white)
    (wood p133 teak)
    (surface-condition p133 rough)
    (treatment p133 colourfragments)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (available p138)
    (colour p138 natural)
    (wood p138 pine)
    (surface-condition p138 verysmooth)
    (treatment p138 glazed)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (available p145)
    (colour p145 black)
    (wood p145 walnut)
    (surface-condition p145 verysmooth)
    (treatment p145 colourfragments)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (available p148)
    (colour p148 red)
    (wood p148 teak)
    (surface-condition p148 smooth)
    (treatment p148 glazed)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (available p151)
    (colour p151 white)
    (wood p151 oak)
    (surface-condition p151 smooth)
    (treatment p151 colourfragments)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (available p160)
    (colour p160 natural)
    (wood p160 pine)
    (surface-condition p160 smooth)
    (treatment p160 glazed)
    (goalsize p160 small)
    
    
    
    
    (available p161)
    (colour p161 black)
    (wood p161 oak)
    (surface-condition p161 rough)
    (treatment p161 colourfragments)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
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
    (goalsize p171 small)
    
    
    
    
    (unused p172)
    (goalsize p172 medium)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (available p175)
    (colour p175 green)
    (wood p175 walnut)
    (surface-condition p175 verysmooth)
    (treatment p175 colourfragments)
    (goalsize p175 small)
    
    
    
    
    (available p176)
    (colour p176 white)
    (wood p176 walnut)
    (surface-condition p176 smooth)
    (treatment p176 glazed)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (available p180)
    (colour p180 red)
    (wood p180 cherry)
    (surface-condition p180 smooth)
    (treatment p180 glazed)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 small)
    
    
    
    
    (available p185)
    (colour p185 mauve)
    (wood p185 pine)
    (surface-condition p185 smooth)
    (treatment p185 glazed)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (available p187)
    (colour p187 red)
    (wood p187 cherry)
    (surface-condition p187 smooth)
    (treatment p187 glazed)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 medium)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (available p194)
    (colour p194 blue)
    (wood p194 beech)
    (surface-condition p194 smooth)
    (treatment p194 glazed)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (available p196)
    (colour p196 mauve)
    (wood p196 oak)
    (surface-condition p196 smooth)
    (treatment p196 glazed)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 small)
    
    
    
    
    (available p201)
    (colour p201 blue)
    (wood p201 mahogany)
    (surface-condition p201 smooth)
    (treatment p201 glazed)
    (goalsize p201 small)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (available p203)
    (colour p203 white)
    (wood p203 mahogany)
    (surface-condition p203 rough)
    (treatment p203 glazed)
    (goalsize p203 large)
    
    
    
    
    (available p204)
    (colour p204 green)
    (wood p204 teak)
    (surface-condition p204 smooth)
    (treatment p204 varnished)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 medium)
    
    
    
    
    (unused p206)
    (goalsize p206 medium)
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 medium)
    
    
    
    
    (available p211)
    (colour p211 natural)
    (wood p211 teak)
    (surface-condition p211 rough)
    (treatment p211 glazed)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (available p213)
    (colour p213 natural)
    (wood p213 teak)
    (surface-condition p213 smooth)
    (treatment p213 colourfragments)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (available p215)
    (colour p215 natural)
    (wood p215 walnut)
    (surface-condition p215 rough)
    (treatment p215 glazed)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 small)
    
    
    
    
    (unused p219)
    (goalsize p219 large)
    
    
    
    
    (unused p220)
    (goalsize p220 large)
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 medium)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (unused p224)
    (goalsize p224 large)
    
    
    
    
    (available p225)
    (colour p225 black)
    (wood p225 cherry)
    (surface-condition p225 rough)
    (treatment p225 glazed)
    (goalsize p225 medium)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (unused p227)
    (goalsize p227 large)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 large)
    
    
    
    
    (unused p230)
    (goalsize p230 small)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (available p232)
    (colour p232 green)
    (wood p232 pine)
    (surface-condition p232 verysmooth)
    (treatment p232 colourfragments)
    (goalsize p232 large)
    
    
    
    
    (unused p233)
    (goalsize p233 medium)
    
    
    
    
    (unused p234)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 small)
    
    
    
    
    (available p236)
    (colour p236 natural)
    (wood p236 walnut)
    (surface-condition p236 smooth)
    (treatment p236 colourfragments)
    (goalsize p236 small)
    
    
    
    
    (unused p237)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s11)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s8)
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
    (boardsize b5 s8)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s5)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s5)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s12)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s10)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s11)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s10)
    (wood b18 mahogany)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s8)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s5)
    (wood b20 mahogany)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s9)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 oak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s7)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s9)
    (wood b24 oak)
    (surface-condition b24 rough)
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
    (boardsize b28 s8)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s4)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s7)
    (wood b31 oak)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s8)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s8)
    (wood b33 pine)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s9)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s7)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s8)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s6)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s9)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s5)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s10)
    (wood b40 pine)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s10)
    (wood b41 pine)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s6)
    (wood b42 pine)
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
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s9)
    (wood b46 walnut)
    (surface-condition b46 smooth)
    (available b46)
    (boardsize b47 s9)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s7)
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
    (boardsize b51 s7)
    (wood b51 walnut)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s7)
    (wood b52 teak)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s5)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s10)
    (wood b54 teak)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s8)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s6)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s10)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s10)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s7)
    (wood b59 teak)
    (surface-condition b59 smooth)
    (available b59)
    (boardsize b60 s6)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s8)
    (wood b61 beech)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s7)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s8)
    (wood b63 beech)
    (surface-condition b63 smooth)
    (available b63)
    (boardsize b64 s7)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s6)
    (wood b65 beech)
    (surface-condition b65 smooth)
    (available b65)
    (boardsize b66 s9)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s8)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s12)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s8)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (wood p0 cherry)
      (surface-condition p0 smooth)
      (available p1)
      (wood p1 oak)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 green)
      (treatment p2 glazed)
      (available p3)
      (colour p3 red)
      (wood p3 cherry)
      (treatment p3 varnished)
      (available p4)
      (wood p4 oak)
      (treatment p4 glazed)
      (available p5)
      (wood p5 oak)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 natural)
      (treatment p6 glazed)
      (available p7)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 black)
      (treatment p8 varnished)
      (available p9)
      (colour p9 black)
      (wood p9 cherry)
      (available p10)
      (colour p10 blue)
      (wood p10 teak)
      (surface-condition p10 verysmooth)
      (available p11)
      (colour p11 white)
      (wood p11 cherry)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 blue)
      (wood p12 mahogany)
      (surface-condition p12 smooth)
      (available p13)
      (colour p13 natural)
      (wood p13 mahogany)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (wood p14 pine)
      (treatment p14 glazed)
      (available p15)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 blue)
      (wood p16 beech)
      (surface-condition p16 verysmooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 black)
      (treatment p17 varnished)
      (available p18)
      (wood p18 teak)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 black)
      (treatment p19 varnished)
      (available p20)
      (colour p20 green)
      (wood p20 walnut)
      (available p21)
      (wood p21 beech)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 blue)
      (treatment p22 glazed)
      (available p23)
      (colour p23 mauve)
      (wood p23 cherry)
      (surface-condition p23 smooth)
      (available p24)
      (colour p24 red)
      (treatment p24 varnished)
      (available p25)
      (wood p25 pine)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 black)
      (wood p26 oak)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 red)
      (wood p27 beech)
      (surface-condition p27 smooth)
      (available p28)
      (wood p28 oak)
      (surface-condition p28 smooth)
      (available p29)
      (colour p29 red)
      (treatment p29 glazed)
      (available p30)
      (colour p30 blue)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 blue)
      (wood p31 mahogany)
      (available p32)
      (wood p32 teak)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (wood p33 mahogany)
      (treatment p33 glazed)
      (available p34)
      (colour p34 black)
      (treatment p34 glazed)
      (available p35)
      (colour p35 black)
      (wood p35 teak)
      (available p36)
      (colour p36 blue)
      (wood p36 beech)
      (available p37)
      (colour p37 black)
      (surface-condition p37 verysmooth)
      (available p38)
      (colour p38 natural)
      (wood p38 mahogany)
      (available p39)
      (wood p39 beech)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 black)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 red)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 black)
      (wood p42 walnut)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 white)
      (treatment p43 glazed)
      (available p44)
      (wood p44 pine)
      (surface-condition p44 smooth)
      (available p45)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 natural)
      (wood p46 teak)
      (surface-condition p46 verysmooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 natural)
      (wood p47 pine)
      (treatment p47 glazed)
      (available p48)
      (colour p48 natural)
      (treatment p48 glazed)
      (available p49)
      (colour p49 natural)
      (wood p49 walnut)
      (surface-condition p49 verysmooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 white)
      (wood p50 walnut)
      (available p51)
      (wood p51 pine)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 natural)
      (treatment p52 glazed)
      (available p53)
      (colour p53 mauve)
      (wood p53 mahogany)
      (surface-condition p53 smooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 green)
      (wood p54 oak)
      (surface-condition p54 smooth)
      (available p55)
      (wood p55 mahogany)
      (surface-condition p55 verysmooth)
      (available p56)
      (colour p56 black)
      (wood p56 mahogany)
      (available p57)
      (colour p57 mauve)
      (wood p57 cherry)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (surface-condition p58 verysmooth)
      (treatment p58 varnished)
      (available p59)
      (wood p59 walnut)
      (treatment p59 glazed)
      (available p60)
      (colour p60 mauve)
      (treatment p60 glazed)
      (available p61)
      (colour p61 red)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 red)
      (wood p62 walnut)
      (available p63)
      (wood p63 beech)
      (surface-condition p63 verysmooth)
      (available p64)
      (wood p64 pine)
      (surface-condition p64 verysmooth)
      (available p65)
      (colour p65 black)
      (wood p65 mahogany)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (wood p66 mahogany)
      (treatment p66 glazed)
      (available p67)
      (wood p67 cherry)
      (surface-condition p67 verysmooth)
      (available p68)
      (colour p68 black)
      (surface-condition p68 smooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 black)
      (wood p69 cherry)
      (available p70)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 green)
      (surface-condition p71 smooth)
      (available p72)
      (colour p72 blue)
      (wood p72 mahogany)
      (available p73)
      (colour p73 blue)
      (wood p73 cherry)
      (surface-condition p73 verysmooth)
      (treatment p73 varnished)
      (available p74)
      (surface-condition p74 smooth)
      (treatment p74 varnished)
      (available p75)
      (colour p75 white)
      (wood p75 beech)
      (treatment p75 glazed)
      (available p76)
      (surface-condition p76 smooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 natural)
      (surface-condition p77 smooth)
      (available p78)
      (wood p78 cherry)
      (treatment p78 glazed)
      (available p79)
      (colour p79 blue)
      (wood p79 walnut)
      (surface-condition p79 smooth)
      (treatment p79 varnished)
      (available p80)
      (colour p80 black)
      (treatment p80 varnished)
      (available p81)
      (wood p81 teak)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (wood p82 oak)
      (surface-condition p82 verysmooth)
      (available p83)
      (colour p83 red)
      (wood p83 teak)
      (surface-condition p83 verysmooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 green)
      (wood p84 cherry)
      (available p85)
      (colour p85 natural)
      (surface-condition p85 smooth)
      (available p86)
      (colour p86 blue)
      (surface-condition p86 smooth)
      (treatment p86 glazed)
      (available p87)
      (wood p87 beech)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 red)
      (wood p88 walnut)
      (available p89)
      (colour p89 green)
      (surface-condition p89 verysmooth)
      (treatment p89 varnished)
      (available p90)
      (wood p90 pine)
      (treatment p90 varnished)
      (available p91)
      (colour p91 blue)
      (surface-condition p91 verysmooth)
      (available p92)
      (wood p92 pine)
      (treatment p92 varnished)
      (available p93)
      (colour p93 green)
      (wood p93 teak)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (colour p94 natural)
      (wood p94 beech)
      (treatment p94 glazed)
      (available p95)
      (colour p95 red)
      (surface-condition p95 verysmooth)
      (available p96)
      (wood p96 cherry)
      (surface-condition p96 verysmooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 red)
      (wood p97 oak)
      (surface-condition p97 verysmooth)
      (treatment p97 varnished)
      (available p98)
      (wood p98 oak)
      (treatment p98 glazed)
      (available p99)
      (colour p99 mauve)
      (wood p99 oak)
      (available p100)
      (colour p100 black)
      (surface-condition p100 smooth)
      (available p101)
      (colour p101 white)
      (wood p101 oak)
      (surface-condition p101 smooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 red)
      (wood p102 pine)
      (available p103)
      (colour p103 white)
      (wood p103 pine)
      (treatment p103 glazed)
      (available p104)
      (colour p104 red)
      (surface-condition p104 verysmooth)
      (available p105)
      (colour p105 black)
      (treatment p105 varnished)
      (available p106)
      (colour p106 natural)
      (surface-condition p106 verysmooth)
      (available p107)
      (colour p107 red)
      (surface-condition p107 verysmooth)
      (available p108)
      (surface-condition p108 smooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 mauve)
      (wood p109 beech)
      (surface-condition p109 smooth)
      (treatment p109 glazed)
      (available p110)
      (wood p110 walnut)
      (surface-condition p110 verysmooth)
      (treatment p110 glazed)
      (available p111)
      (colour p111 green)
      (surface-condition p111 smooth)
      (treatment p111 varnished)
      (available p112)
      (surface-condition p112 verysmooth)
      (treatment p112 varnished)
      (available p113)
      (colour p113 red)
      (wood p113 teak)
      (available p114)
      (colour p114 mauve)
      (treatment p114 varnished)
      (available p115)
      (colour p115 green)
      (wood p115 walnut)
      (treatment p115 glazed)
      (available p116)
      (colour p116 natural)
      (treatment p116 varnished)
      (available p117)
      (colour p117 mauve)
      (wood p117 oak)
      (surface-condition p117 verysmooth)
      (treatment p117 varnished)
      (available p118)
      (surface-condition p118 smooth)
      (treatment p118 glazed)
      (available p119)
      (surface-condition p119 smooth)
      (treatment p119 glazed)
      (available p120)
      (colour p120 white)
      (surface-condition p120 smooth)
      (available p121)
      (wood p121 pine)
      (treatment p121 glazed)
      (available p122)
      (wood p122 cherry)
      (surface-condition p122 verysmooth)
      (treatment p122 varnished)
      (available p123)
      (colour p123 mauve)
      (wood p123 walnut)
      (treatment p123 glazed)
      (available p124)
      (wood p124 walnut)
      (treatment p124 varnished)
      (available p125)
      (colour p125 mauve)
      (wood p125 oak)
      (available p126)
      (colour p126 blue)
      (surface-condition p126 verysmooth)
      (available p127)
      (colour p127 red)
      (surface-condition p127 smooth)
      (treatment p127 varnished)
      (available p128)
      (wood p128 mahogany)
      (surface-condition p128 smooth)
      (available p129)
      (colour p129 red)
      (wood p129 beech)
      (surface-condition p129 verysmooth)
      (treatment p129 glazed)
      (available p130)
      (colour p130 natural)
      (treatment p130 glazed)
      (available p131)
      (colour p131 white)
      (wood p131 walnut)
      (surface-condition p131 verysmooth)
      (available p132)
      (colour p132 natural)
      (wood p132 oak)
      (available p133)
      (wood p133 teak)
      (treatment p133 glazed)
      (available p134)
      (colour p134 natural)
      (wood p134 pine)
      (treatment p134 varnished)
      (available p135)
      (colour p135 green)
      (wood p135 cherry)
      (available p136)
      (wood p136 beech)
      (surface-condition p136 smooth)
      (available p137)
      (wood p137 teak)
      (treatment p137 glazed)
      (available p138)
      (colour p138 black)
      (treatment p138 glazed)
      (available p139)
      (wood p139 cherry)
      (surface-condition p139 smooth)
      (available p140)
      (colour p140 blue)
      (wood p140 mahogany)
      (surface-condition p140 verysmooth)
      (available p141)
      (colour p141 black)
      (wood p141 mahogany)
      (available p142)
      (colour p142 white)
      (wood p142 oak)
      (surface-condition p142 verysmooth)
      (available p143)
      (colour p143 black)
      (wood p143 mahogany)
      (available p144)
      (colour p144 mauve)
      (treatment p144 glazed)
      (available p145)
      (colour p145 red)
      (wood p145 walnut)
      (available p146)
      (colour p146 green)
      (wood p146 beech)
      (treatment p146 varnished)
      (available p147)
      (surface-condition p147 verysmooth)
      (treatment p147 varnished)
      (available p148)
      (colour p148 natural)
      (treatment p148 varnished)
      (available p149)
      (colour p149 red)
      (surface-condition p149 verysmooth)
      (treatment p149 varnished)
      (available p150)
      (wood p150 walnut)
      (surface-condition p150 smooth)
      (treatment p150 glazed)
      (available p151)
      (colour p151 mauve)
      (treatment p151 glazed)
      (available p152)
      (wood p152 beech)
      (surface-condition p152 verysmooth)
      (treatment p152 glazed)
      (available p153)
      (wood p153 oak)
      (surface-condition p153 verysmooth)
      (available p154)
      (wood p154 pine)
      (treatment p154 varnished)
      (available p155)
      (colour p155 red)
      (wood p155 beech)
      (surface-condition p155 smooth)
      (treatment p155 glazed)
      (available p156)
      (colour p156 red)
      (wood p156 mahogany)
      (treatment p156 glazed)
      (available p157)
      (colour p157 natural)
      (surface-condition p157 verysmooth)
      (available p158)
      (colour p158 white)
      (wood p158 pine)
      (available p159)
      (colour p159 red)
      (surface-condition p159 verysmooth)
      (available p160)
      (colour p160 mauve)
      (wood p160 pine)
      (surface-condition p160 verysmooth)
      (treatment p160 glazed)
      (available p161)
      (wood p161 oak)
      (surface-condition p161 smooth)
      (treatment p161 glazed)
      (available p162)
      (colour p162 mauve)
      (surface-condition p162 smooth)
      (available p163)
      (colour p163 mauve)
      (wood p163 walnut)
      (surface-condition p163 smooth)
      (available p164)
      (colour p164 red)
      (wood p164 cherry)
      (available p165)
      (colour p165 black)
      (wood p165 beech)
      (surface-condition p165 smooth)
      (treatment p165 glazed)
      (available p166)
      (wood p166 oak)
      (treatment p166 varnished)
      (available p167)
      (colour p167 mauve)
      (wood p167 teak)
      (surface-condition p167 verysmooth)
      (treatment p167 varnished)
      (available p168)
      (surface-condition p168 verysmooth)
      (treatment p168 glazed)
      (available p169)
      (wood p169 cherry)
      (surface-condition p169 verysmooth)
      (available p170)
      (colour p170 black)
      (wood p170 oak)
      (surface-condition p170 verysmooth)
      (treatment p170 glazed)
      (available p171)
      (wood p171 oak)
      (treatment p171 glazed)
      (available p172)
      (colour p172 black)
      (wood p172 beech)
      (surface-condition p172 smooth)
      (treatment p172 glazed)
      (available p173)
      (colour p173 red)
      (wood p173 cherry)
      (surface-condition p173 verysmooth)
      (treatment p173 glazed)
      (available p174)
      (wood p174 walnut)
      (surface-condition p174 verysmooth)
      (treatment p174 varnished)
      (available p175)
      (colour p175 mauve)
      (surface-condition p175 smooth)
      (available p176)
      (colour p176 green)
      (wood p176 walnut)
      (available p177)
      (colour p177 white)
      (wood p177 teak)
      (surface-condition p177 verysmooth)
      (treatment p177 glazed)
      (available p178)
      (colour p178 blue)
      (surface-condition p178 verysmooth)
      (available p179)
      (colour p179 mauve)
      (treatment p179 varnished)
      (available p180)
      (colour p180 mauve)
      (treatment p180 glazed)
      (available p181)
      (colour p181 red)
      (treatment p181 varnished)
      (available p182)
      (wood p182 walnut)
      (surface-condition p182 verysmooth)
      (available p183)
      (surface-condition p183 smooth)
      (treatment p183 glazed)
      (available p184)
      (colour p184 red)
      (wood p184 oak)
      (surface-condition p184 smooth)
      (treatment p184 varnished)
      (available p185)
      (wood p185 pine)
      (treatment p185 varnished)
      (available p186)
      (wood p186 walnut)
      (surface-condition p186 verysmooth)
      (available p187)
      (colour p187 white)
      (surface-condition p187 smooth)
      (available p188)
      (colour p188 green)
      (wood p188 teak)
      (treatment p188 glazed)
      (available p189)
      (colour p189 black)
      (wood p189 beech)
      (surface-condition p189 verysmooth)
      (treatment p189 glazed)
      (available p190)
      (surface-condition p190 smooth)
      (treatment p190 glazed)
      (available p191)
      (colour p191 mauve)
      (treatment p191 glazed)
      (available p192)
      (colour p192 blue)
      (surface-condition p192 verysmooth)
      (available p193)
      (colour p193 natural)
      (wood p193 cherry)
      (surface-condition p193 verysmooth)
      (treatment p193 glazed)
      (available p194)
      (colour p194 natural)
      (surface-condition p194 verysmooth)
      (available p195)
      (wood p195 pine)
      (surface-condition p195 smooth)
      (treatment p195 glazed)
      (available p196)
      (wood p196 oak)
      (treatment p196 varnished)
      (available p197)
      (colour p197 mauve)
      (wood p197 beech)
      (surface-condition p197 smooth)
      (treatment p197 varnished)
      (available p198)
      (surface-condition p198 smooth)
      (treatment p198 varnished)
      (available p199)
      (wood p199 beech)
      (treatment p199 varnished)
      (available p200)
      (colour p200 green)
      (treatment p200 varnished)
      (available p201)
      (colour p201 green)
      (treatment p201 glazed)
      (available p202)
      (colour p202 mauve)
      (treatment p202 glazed)
      (available p203)
      (wood p203 mahogany)
      (surface-condition p203 smooth)
      (treatment p203 varnished)
      (available p204)
      (wood p204 teak)
      (surface-condition p204 verysmooth)
      (available p205)
      (surface-condition p205 smooth)
      (treatment p205 varnished)
      (available p206)
      (wood p206 cherry)
      (treatment p206 varnished)
      (available p207)
      (wood p207 beech)
      (treatment p207 varnished)
      (available p208)
      (colour p208 white)
      (treatment p208 varnished)
      (available p209)
      (colour p209 white)
      (surface-condition p209 verysmooth)
      (available p210)
      (surface-condition p210 verysmooth)
      (treatment p210 glazed)
      (available p211)
      (wood p211 teak)
      (surface-condition p211 verysmooth)
      (treatment p211 glazed)
      (available p212)
      (colour p212 black)
      (wood p212 pine)
      (surface-condition p212 smooth)
      (treatment p212 varnished)
      (available p213)
      (wood p213 teak)
      (surface-condition p213 verysmooth)
      (treatment p213 varnished)
      (available p214)
      (colour p214 blue)
      (surface-condition p214 smooth)
      (available p215)
      (colour p215 black)
      (treatment p215 glazed)
      (available p216)
      (colour p216 natural)
      (wood p216 mahogany)
      (surface-condition p216 verysmooth)
      (available p217)
      (colour p217 white)
      (treatment p217 glazed)
      (available p218)
      (colour p218 white)
      (wood p218 teak)
      (surface-condition p218 smooth)
      (treatment p218 varnished)
      (available p219)
      (surface-condition p219 verysmooth)
      (treatment p219 glazed)
      (available p220)
      (colour p220 white)
      (surface-condition p220 verysmooth)
      (available p221)
      (colour p221 black)
      (wood p221 teak)
      (surface-condition p221 verysmooth)
      (treatment p221 glazed)
      (available p222)
      (colour p222 red)
      (wood p222 walnut)
      (surface-condition p222 verysmooth)
      (available p223)
      (colour p223 blue)
      (wood p223 oak)
      (available p224)
      (colour p224 black)
      (treatment p224 varnished)
      (available p225)
      (wood p225 cherry)
      (surface-condition p225 smooth)
      (available p226)
      (surface-condition p226 smooth)
      (treatment p226 glazed)
      (available p227)
      (wood p227 oak)
      (treatment p227 varnished)
      (available p228)
      (surface-condition p228 verysmooth)
      (treatment p228 varnished)
      (available p229)
      (colour p229 green)
      (wood p229 mahogany)
      (surface-condition p229 smooth)
      (available p230)
      (colour p230 red)
      (wood p230 mahogany)
      (surface-condition p230 verysmooth)
      (treatment p230 glazed)
      (available p231)
      (surface-condition p231 verysmooth)
      (treatment p231 glazed)
      (available p232)
      (wood p232 pine)
      (surface-condition p232 smooth)
      (available p233)
      (colour p233 natural)
      (wood p233 teak)
      (surface-condition p233 smooth)
      (available p234)
      (colour p234 mauve)
      (wood p234 teak)
      (surface-condition p234 verysmooth)
      (treatment p234 glazed)
      (available p235)
      (colour p235 natural)
      (treatment p235 varnished)
      (available p236)
      (surface-condition p236 verysmooth)
      (treatment p236 varnished)
      (available p237)
      (colour p237 blue)
      (wood p237 pine)
      (surface-condition p237 smooth)
      (treatment p237 varnished)
      (available p238)
      (colour p238 red)
      (wood p238 cherry)
      (surface-condition p238 verysmooth)
      (treatment p238 varnished)
    )
  )
  
)
