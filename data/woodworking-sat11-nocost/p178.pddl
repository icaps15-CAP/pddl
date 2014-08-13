; woodworking task with 221 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 443126

(define (problem wood-prob-sat-178)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green blue red white black mauve - acolour
    mahogany walnut teak cherry beech oak pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 - part
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
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
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 black)
    (available p0)
    (colour p0 red)
    (wood p0 walnut)
    (surface-condition p0 rough)
    (treatment p0 glazed)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
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
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 black)
    (wood p12 mahogany)
    (surface-condition p12 verysmooth)
    (treatment p12 colourfragments)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (available p14)
    (colour p14 natural)
    (wood p14 teak)
    (surface-condition p14 verysmooth)
    (treatment p14 varnished)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 mauve)
    (wood p16 teak)
    (surface-condition p16 rough)
    (treatment p16 glazed)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 white)
    (wood p17 beech)
    (surface-condition p17 smooth)
    (treatment p17 varnished)
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
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (available p26)
    (colour p26 blue)
    (wood p26 beech)
    (surface-condition p26 rough)
    (treatment p26 glazed)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (available p32)
    (colour p32 black)
    (wood p32 pine)
    (surface-condition p32 rough)
    (treatment p32 varnished)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (available p34)
    (colour p34 natural)
    (wood p34 mahogany)
    (surface-condition p34 rough)
    (treatment p34 colourfragments)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 green)
    (wood p37 cherry)
    (surface-condition p37 smooth)
    (treatment p37 varnished)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (available p45)
    (colour p45 white)
    (wood p45 cherry)
    (surface-condition p45 verysmooth)
    (treatment p45 colourfragments)
    (goalsize p45 medium)
    
    
    
    
    (available p46)
    (colour p46 white)
    (wood p46 walnut)
    (surface-condition p46 smooth)
    (treatment p46 glazed)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (available p48)
    (colour p48 blue)
    (wood p48 mahogany)
    (surface-condition p48 smooth)
    (treatment p48 glazed)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (available p51)
    (colour p51 blue)
    (wood p51 pine)
    (surface-condition p51 rough)
    (treatment p51 colourfragments)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (available p53)
    (colour p53 mauve)
    (wood p53 mahogany)
    (surface-condition p53 rough)
    (treatment p53 varnished)
    (goalsize p53 large)
    
    
    
    
    (available p54)
    (colour p54 green)
    (wood p54 oak)
    (surface-condition p54 smooth)
    (treatment p54 varnished)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (available p66)
    (colour p66 natural)
    (wood p66 oak)
    (surface-condition p66 verysmooth)
    (treatment p66 glazed)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (available p70)
    (colour p70 red)
    (wood p70 beech)
    (surface-condition p70 smooth)
    (treatment p70 glazed)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (available p76)
    (colour p76 mauve)
    (wood p76 pine)
    (surface-condition p76 verysmooth)
    (treatment p76 varnished)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (available p95)
    (colour p95 white)
    (wood p95 beech)
    (surface-condition p95 rough)
    (treatment p95 colourfragments)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (available p103)
    (colour p103 mauve)
    (wood p103 cherry)
    (surface-condition p103 verysmooth)
    (treatment p103 varnished)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (available p106)
    (colour p106 white)
    (wood p106 beech)
    (surface-condition p106 rough)
    (treatment p106 glazed)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (available p108)
    (colour p108 red)
    (wood p108 mahogany)
    (surface-condition p108 rough)
    (treatment p108 colourfragments)
    (goalsize p108 small)
    
    
    
    
    (available p109)
    (colour p109 white)
    (wood p109 oak)
    (surface-condition p109 rough)
    (treatment p109 glazed)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (available p115)
    (colour p115 white)
    (wood p115 beech)
    (surface-condition p115 rough)
    (treatment p115 glazed)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (available p123)
    (colour p123 blue)
    (wood p123 cherry)
    (surface-condition p123 rough)
    (treatment p123 glazed)
    (goalsize p123 small)
    
    
    
    
    (available p124)
    (colour p124 green)
    (wood p124 walnut)
    (surface-condition p124 verysmooth)
    (treatment p124 colourfragments)
    (goalsize p124 medium)
    
    
    
    
    (available p125)
    (colour p125 blue)
    (wood p125 walnut)
    (surface-condition p125 smooth)
    (treatment p125 colourfragments)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 small)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (available p138)
    (colour p138 red)
    (wood p138 cherry)
    (surface-condition p138 verysmooth)
    (treatment p138 varnished)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (available p141)
    (colour p141 natural)
    (wood p141 oak)
    (surface-condition p141 rough)
    (treatment p141 glazed)
    (goalsize p141 large)
    
    
    
    
    (available p142)
    (colour p142 black)
    (wood p142 cherry)
    (surface-condition p142 verysmooth)
    (treatment p142 colourfragments)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (available p145)
    (colour p145 green)
    (wood p145 oak)
    (surface-condition p145 smooth)
    (treatment p145 colourfragments)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (available p157)
    (colour p157 blue)
    (wood p157 walnut)
    (surface-condition p157 verysmooth)
    (treatment p157 colourfragments)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (available p164)
    (colour p164 red)
    (wood p164 teak)
    (surface-condition p164 rough)
    (treatment p164 glazed)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 small)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (available p177)
    (colour p177 natural)
    (wood p177 cherry)
    (surface-condition p177 smooth)
    (treatment p177 glazed)
    (goalsize p177 medium)
    
    
    
    
    (available p178)
    (colour p178 black)
    (wood p178 walnut)
    (surface-condition p178 smooth)
    (treatment p178 varnished)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (unused p181)
    (goalsize p181 large)
    
    
    
    
    (unused p182)
    (goalsize p182 large)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 small)
    
    
    
    
    (unused p185)
    (goalsize p185 small)
    
    
    
    
    (available p186)
    (colour p186 blue)
    (wood p186 mahogany)
    (surface-condition p186 smooth)
    (treatment p186 varnished)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 medium)
    
    
    
    
    (unused p188)
    (goalsize p188 medium)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 medium)
    
    
    
    
    (available p193)
    (colour p193 white)
    (wood p193 pine)
    (surface-condition p193 rough)
    (treatment p193 varnished)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (available p199)
    (colour p199 white)
    (wood p199 walnut)
    (surface-condition p199 smooth)
    (treatment p199 colourfragments)
    (goalsize p199 medium)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (available p201)
    (colour p201 green)
    (wood p201 pine)
    (surface-condition p201 rough)
    (treatment p201 varnished)
    (goalsize p201 medium)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 medium)
    
    
    
    
    (unused p206)
    (goalsize p206 medium)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 medium)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 medium)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (available p213)
    (colour p213 green)
    (wood p213 walnut)
    (surface-condition p213 rough)
    (treatment p213 glazed)
    (goalsize p213 small)
    
    
    
    
    (available p214)
    (colour p214 mauve)
    (wood p214 oak)
    (surface-condition p214 smooth)
    (treatment p214 colourfragments)
    (goalsize p214 large)
    
    
    
    
    (available p215)
    (colour p215 blue)
    (wood p215 teak)
    (surface-condition p215 rough)
    (treatment p215 colourfragments)
    (goalsize p215 large)
    
    
    
    
    (available p216)
    (colour p216 mauve)
    (wood p216 beech)
    (surface-condition p216 smooth)
    (treatment p216 glazed)
    (goalsize p216 large)
    
    
    
    
    (available p217)
    (colour p217 natural)
    (wood p217 walnut)
    (surface-condition p217 verysmooth)
    (treatment p217 colourfragments)
    (goalsize p217 small)
    
    
    
    
    (available p218)
    (colour p218 mauve)
    (wood p218 teak)
    (surface-condition p218 verysmooth)
    (treatment p218 glazed)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 small)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s5)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s10)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s4)
    (wood b8 cherry)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
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
    (boardsize b13 s7)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 mahogany)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s11)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s5)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 mahogany)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s7)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 mahogany)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s6)
    (wood b23 oak)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s7)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s8)
    (wood b25 oak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s5)
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
    (boardsize b29 s1)
    (wood b29 oak)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s8)
    (wood b30 pine)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s8)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s7)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s11)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s10)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s10)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s6)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s5)
    (wood b39 pine)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s8)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s6)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s6)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s6)
    (wood b43 walnut)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s10)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s10)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s9)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s9)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s10)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s10)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s9)
    (wood b50 walnut)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s1)
    (wood b51 walnut)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s7)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s9)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s6)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s9)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s9)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s8)
    (wood b57 teak)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s9)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s7)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s4)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s9)
    (wood b61 beech)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s8)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s10)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s7)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s4)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (surface-condition p0 smooth)
      (available p1)
      (colour p1 white)
      (wood p1 teak)
      (treatment p1 glazed)
      (available p2)
      (colour p2 red)
      (wood p2 mahogany)
      (treatment p2 varnished)
      (available p3)
      (colour p3 white)
      (treatment p3 varnished)
      (available p4)
      (wood p4 oak)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 red)
      (wood p5 mahogany)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 black)
      (surface-condition p6 verysmooth)
      (available p7)
      (colour p7 mauve)
      (wood p7 walnut)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 white)
      (wood p8 mahogany)
      (treatment p8 glazed)
      (available p9)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 red)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 red)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 black)
      (wood p15 pine)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 green)
      (wood p16 teak)
      (treatment p16 varnished)
      (available p17)
      (wood p17 beech)
      (treatment p17 glazed)
      (available p18)
      (colour p18 green)
      (wood p18 beech)
      (treatment p18 varnished)
      (available p19)
      (colour p19 natural)
      (treatment p19 varnished)
      (available p20)
      (colour p20 white)
      (wood p20 teak)
      (treatment p20 varnished)
      (available p21)
      (colour p21 green)
      (treatment p21 varnished)
      (available p22)
      (colour p22 green)
      (wood p22 cherry)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 black)
      (wood p23 mahogany)
      (available p24)
      (colour p24 natural)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 blue)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 white)
      (wood p26 beech)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (wood p28 beech)
      (treatment p28 varnished)
      (available p29)
      (colour p29 black)
      (surface-condition p29 verysmooth)
      (available p30)
      (wood p30 mahogany)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 black)
      (wood p31 walnut)
      (surface-condition p31 verysmooth)
      (treatment p31 varnished)
      (available p32)
      (wood p32 pine)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 blue)
      (wood p33 teak)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 green)
      (wood p34 mahogany)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 natural)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 natural)
      (treatment p36 varnished)
      (available p37)
      (colour p37 blue)
      (wood p37 cherry)
      (surface-condition p37 verysmooth)
      (available p38)
      (colour p38 black)
      (wood p38 walnut)
      (treatment p38 varnished)
      (available p39)
      (colour p39 red)
      (wood p39 walnut)
      (surface-condition p39 verysmooth)
      (available p40)
      (wood p40 oak)
      (treatment p40 glazed)
      (available p41)
      (wood p41 cherry)
      (treatment p41 glazed)
      (available p42)
      (wood p42 mahogany)
      (surface-condition p42 verysmooth)
      (available p43)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (wood p44 mahogany)
      (treatment p44 varnished)
      (available p45)
      (surface-condition p45 smooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 mauve)
      (wood p46 walnut)
      (available p47)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (wood p48 mahogany)
      (treatment p48 varnished)
      (available p49)
      (wood p49 pine)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
      (available p50)
      (surface-condition p50 verysmooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 red)
      (wood p51 pine)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (wood p52 teak)
      (treatment p52 glazed)
      (available p53)
      (colour p53 red)
      (wood p53 mahogany)
      (available p54)
      (colour p54 red)
      (wood p54 oak)
      (surface-condition p54 verysmooth)
      (available p55)
      (wood p55 pine)
      (surface-condition p55 smooth)
      (available p56)
      (wood p56 oak)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 white)
      (wood p57 mahogany)
      (surface-condition p57 smooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 red)
      (wood p58 teak)
      (available p59)
      (colour p59 white)
      (wood p59 beech)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 blue)
      (treatment p60 varnished)
      (available p61)
      (colour p61 blue)
      (wood p61 mahogany)
      (surface-condition p61 verysmooth)
      (treatment p61 glazed)
      (available p62)
      (colour p62 white)
      (treatment p62 varnished)
      (available p63)
      (colour p63 green)
      (wood p63 oak)
      (available p64)
      (colour p64 black)
      (wood p64 pine)
      (surface-condition p64 verysmooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 black)
      (wood p65 cherry)
      (surface-condition p65 smooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 red)
      (treatment p66 glazed)
      (available p67)
      (wood p67 oak)
      (treatment p67 varnished)
      (available p68)
      (surface-condition p68 smooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 mauve)
      (wood p69 walnut)
      (treatment p69 varnished)
      (available p70)
      (surface-condition p70 smooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 white)
      (treatment p71 glazed)
      (available p72)
      (colour p72 white)
      (wood p72 walnut)
      (surface-condition p72 smooth)
      (available p73)
      (wood p73 walnut)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (wood p74 pine)
      (surface-condition p74 verysmooth)
      (available p75)
      (wood p75 pine)
      (treatment p75 glazed)
      (available p76)
      (colour p76 natural)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 green)
      (treatment p77 varnished)
      (available p78)
      (wood p78 teak)
      (treatment p78 glazed)
      (available p79)
      (wood p79 mahogany)
      (surface-condition p79 smooth)
      (available p80)
      (colour p80 green)
      (wood p80 teak)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 white)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 mauve)
      (surface-condition p82 verysmooth)
      (treatment p82 glazed)
      (available p83)
      (colour p83 blue)
      (wood p83 walnut)
      (surface-condition p83 verysmooth)
      (available p84)
      (wood p84 mahogany)
      (surface-condition p84 verysmooth)
      (available p85)
      (wood p85 teak)
      (treatment p85 varnished)
      (available p86)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 white)
      (wood p87 mahogany)
      (surface-condition p87 smooth)
      (treatment p87 glazed)
      (available p88)
      (colour p88 red)
      (surface-condition p88 smooth)
      (treatment p88 glazed)
      (available p89)
      (wood p89 oak)
      (surface-condition p89 smooth)
      (available p90)
      (wood p90 mahogany)
      (treatment p90 glazed)
      (available p91)
      (wood p91 teak)
      (surface-condition p91 smooth)
      (available p92)
      (surface-condition p92 smooth)
      (treatment p92 varnished)
      (available p93)
      (surface-condition p93 smooth)
      (treatment p93 varnished)
      (available p94)
      (wood p94 walnut)
      (treatment p94 glazed)
      (available p95)
      (wood p95 beech)
      (surface-condition p95 smooth)
      (available p96)
      (colour p96 green)
      (wood p96 mahogany)
      (surface-condition p96 smooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 black)
      (wood p97 mahogany)
      (treatment p97 varnished)
      (available p98)
      (colour p98 blue)
      (wood p98 walnut)
      (surface-condition p98 smooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 black)
      (wood p99 mahogany)
      (available p100)
      (colour p100 red)
      (wood p100 cherry)
      (surface-condition p100 verysmooth)
      (treatment p100 varnished)
      (available p101)
      (surface-condition p101 smooth)
      (treatment p101 varnished)
      (available p102)
      (surface-condition p102 smooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 black)
      (surface-condition p103 verysmooth)
      (treatment p103 varnished)
      (available p104)
      (colour p104 blue)
      (treatment p104 varnished)
      (available p105)
      (colour p105 blue)
      (wood p105 cherry)
      (available p106)
      (wood p106 beech)
      (surface-condition p106 verysmooth)
      (available p107)
      (colour p107 red)
      (treatment p107 varnished)
      (available p108)
      (colour p108 blue)
      (surface-condition p108 verysmooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 blue)
      (surface-condition p109 verysmooth)
      (available p110)
      (colour p110 white)
      (wood p110 walnut)
      (surface-condition p110 smooth)
      (available p111)
      (colour p111 green)
      (wood p111 cherry)
      (surface-condition p111 verysmooth)
      (treatment p111 glazed)
      (available p112)
      (surface-condition p112 smooth)
      (treatment p112 glazed)
      (available p113)
      (colour p113 blue)
      (wood p113 mahogany)
      (surface-condition p113 verysmooth)
      (available p114)
      (wood p114 teak)
      (treatment p114 glazed)
      (available p115)
      (wood p115 beech)
      (surface-condition p115 verysmooth)
      (treatment p115 varnished)
      (available p116)
      (wood p116 pine)
      (surface-condition p116 smooth)
      (treatment p116 glazed)
      (available p117)
      (colour p117 mauve)
      (wood p117 pine)
      (available p118)
      (wood p118 teak)
      (surface-condition p118 verysmooth)
      (available p119)
      (colour p119 white)
      (wood p119 teak)
      (surface-condition p119 smooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 mauve)
      (surface-condition p120 verysmooth)
      (available p121)
      (colour p121 red)
      (wood p121 pine)
      (available p122)
      (colour p122 black)
      (surface-condition p122 smooth)
      (available p123)
      (colour p123 black)
      (surface-condition p123 verysmooth)
      (treatment p123 glazed)
      (available p124)
      (surface-condition p124 verysmooth)
      (treatment p124 glazed)
      (available p125)
      (colour p125 mauve)
      (surface-condition p125 verysmooth)
      (treatment p125 glazed)
      (available p126)
      (surface-condition p126 verysmooth)
      (treatment p126 varnished)
      (available p127)
      (colour p127 natural)
      (surface-condition p127 verysmooth)
      (available p128)
      (wood p128 cherry)
      (surface-condition p128 verysmooth)
      (treatment p128 varnished)
      (available p129)
      (colour p129 mauve)
      (wood p129 pine)
      (available p130)
      (colour p130 mauve)
      (wood p130 teak)
      (treatment p130 glazed)
      (available p131)
      (wood p131 cherry)
      (surface-condition p131 smooth)
      (available p132)
      (colour p132 white)
      (wood p132 cherry)
      (treatment p132 glazed)
      (available p133)
      (surface-condition p133 smooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 black)
      (wood p134 oak)
      (surface-condition p134 verysmooth)
      (treatment p134 glazed)
      (available p135)
      (colour p135 natural)
      (wood p135 mahogany)
      (surface-condition p135 verysmooth)
      (treatment p135 glazed)
      (available p136)
      (colour p136 green)
      (wood p136 pine)
      (surface-condition p136 verysmooth)
      (treatment p136 varnished)
      (available p137)
      (colour p137 mauve)
      (wood p137 mahogany)
      (treatment p137 glazed)
      (available p138)
      (colour p138 blue)
      (wood p138 cherry)
      (surface-condition p138 smooth)
      (treatment p138 varnished)
      (available p139)
      (surface-condition p139 verysmooth)
      (treatment p139 varnished)
      (available p140)
      (wood p140 mahogany)
      (surface-condition p140 smooth)
      (available p141)
      (colour p141 red)
      (wood p141 oak)
      (treatment p141 glazed)
      (available p142)
      (wood p142 cherry)
      (treatment p142 varnished)
      (available p143)
      (colour p143 black)
      (wood p143 mahogany)
      (surface-condition p143 smooth)
      (treatment p143 glazed)
      (available p144)
      (colour p144 black)
      (wood p144 beech)
      (surface-condition p144 smooth)
      (available p145)
      (wood p145 oak)
      (surface-condition p145 verysmooth)
      (available p146)
      (colour p146 green)
      (wood p146 teak)
      (surface-condition p146 smooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 blue)
      (wood p147 walnut)
      (surface-condition p147 verysmooth)
      (treatment p147 glazed)
      (available p148)
      (wood p148 pine)
      (surface-condition p148 smooth)
      (available p149)
      (wood p149 mahogany)
      (surface-condition p149 smooth)
      (available p150)
      (wood p150 walnut)
      (surface-condition p150 verysmooth)
      (available p151)
      (colour p151 green)
      (wood p151 oak)
      (available p152)
      (wood p152 beech)
      (surface-condition p152 verysmooth)
      (available p153)
      (surface-condition p153 smooth)
      (treatment p153 glazed)
      (available p154)
      (colour p154 white)
      (surface-condition p154 smooth)
      (available p155)
      (colour p155 black)
      (wood p155 oak)
      (surface-condition p155 verysmooth)
      (available p156)
      (surface-condition p156 smooth)
      (treatment p156 glazed)
      (available p157)
      (surface-condition p157 smooth)
      (treatment p157 varnished)
      (available p158)
      (colour p158 blue)
      (treatment p158 glazed)
      (available p159)
      (colour p159 black)
      (treatment p159 varnished)
      (available p160)
      (wood p160 walnut)
      (treatment p160 varnished)
      (available p161)
      (colour p161 blue)
      (wood p161 beech)
      (surface-condition p161 smooth)
      (available p162)
      (colour p162 green)
      (treatment p162 varnished)
      (available p163)
      (colour p163 green)
      (surface-condition p163 verysmooth)
      (available p164)
      (colour p164 blue)
      (wood p164 teak)
      (surface-condition p164 verysmooth)
      (treatment p164 varnished)
      (available p165)
      (wood p165 oak)
      (surface-condition p165 smooth)
      (treatment p165 varnished)
      (available p166)
      (colour p166 mauve)
      (wood p166 pine)
      (available p167)
      (colour p167 red)
      (treatment p167 glazed)
      (available p168)
      (colour p168 red)
      (surface-condition p168 verysmooth)
      (available p169)
      (colour p169 red)
      (wood p169 oak)
      (available p170)
      (colour p170 green)
      (treatment p170 glazed)
      (available p171)
      (colour p171 green)
      (treatment p171 varnished)
      (available p172)
      (colour p172 green)
      (wood p172 pine)
      (surface-condition p172 smooth)
      (treatment p172 varnished)
      (available p173)
      (colour p173 red)
      (wood p173 beech)
      (surface-condition p173 verysmooth)
      (treatment p173 glazed)
      (available p174)
      (wood p174 pine)
      (treatment p174 glazed)
      (available p175)
      (wood p175 pine)
      (surface-condition p175 verysmooth)
      (available p176)
      (colour p176 mauve)
      (wood p176 beech)
      (surface-condition p176 verysmooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 white)
      (wood p177 cherry)
      (available p178)
      (wood p178 walnut)
      (treatment p178 glazed)
      (available p179)
      (colour p179 mauve)
      (wood p179 walnut)
      (available p180)
      (colour p180 green)
      (wood p180 oak)
      (surface-condition p180 verysmooth)
      (available p181)
      (colour p181 natural)
      (wood p181 cherry)
      (surface-condition p181 smooth)
      (treatment p181 varnished)
      (available p182)
      (colour p182 white)
      (wood p182 pine)
      (treatment p182 varnished)
      (available p183)
      (surface-condition p183 smooth)
      (treatment p183 glazed)
      (available p184)
      (colour p184 black)
      (surface-condition p184 verysmooth)
      (available p185)
      (colour p185 natural)
      (wood p185 teak)
      (surface-condition p185 smooth)
      (treatment p185 glazed)
      (available p186)
      (colour p186 natural)
      (wood p186 mahogany)
      (surface-condition p186 verysmooth)
      (treatment p186 glazed)
      (available p187)
      (colour p187 mauve)
      (surface-condition p187 smooth)
      (treatment p187 varnished)
      (available p188)
      (surface-condition p188 smooth)
      (treatment p188 varnished)
      (available p189)
      (colour p189 white)
      (wood p189 cherry)
      (surface-condition p189 verysmooth)
      (available p190)
      (colour p190 white)
      (wood p190 oak)
      (available p191)
      (colour p191 black)
      (wood p191 walnut)
      (surface-condition p191 smooth)
      (treatment p191 varnished)
      (available p192)
      (wood p192 mahogany)
      (surface-condition p192 smooth)
      (treatment p192 glazed)
      (available p193)
      (wood p193 pine)
      (surface-condition p193 verysmooth)
      (available p194)
      (colour p194 green)
      (treatment p194 varnished)
      (available p195)
      (colour p195 green)
      (wood p195 walnut)
      (surface-condition p195 verysmooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 red)
      (surface-condition p196 smooth)
      (treatment p196 glazed)
      (available p197)
      (colour p197 blue)
      (wood p197 oak)
      (surface-condition p197 smooth)
      (treatment p197 glazed)
      (available p198)
      (colour p198 black)
      (wood p198 walnut)
      (surface-condition p198 smooth)
      (treatment p198 varnished)
      (available p199)
      (wood p199 walnut)
      (treatment p199 glazed)
      (available p200)
      (colour p200 red)
      (wood p200 pine)
      (treatment p200 varnished)
      (available p201)
      (colour p201 black)
      (treatment p201 varnished)
      (available p202)
      (colour p202 red)
      (surface-condition p202 verysmooth)
      (available p203)
      (surface-condition p203 smooth)
      (treatment p203 glazed)
      (available p204)
      (colour p204 red)
      (wood p204 teak)
      (surface-condition p204 smooth)
      (treatment p204 varnished)
      (available p205)
      (surface-condition p205 verysmooth)
      (treatment p205 varnished)
      (available p206)
      (wood p206 beech)
      (surface-condition p206 smooth)
      (treatment p206 glazed)
      (available p207)
      (colour p207 black)
      (wood p207 cherry)
      (available p208)
      (wood p208 cherry)
      (surface-condition p208 smooth)
      (treatment p208 glazed)
      (available p209)
      (colour p209 black)
      (wood p209 mahogany)
      (surface-condition p209 smooth)
      (treatment p209 varnished)
      (available p210)
      (colour p210 blue)
      (treatment p210 varnished)
      (available p211)
      (wood p211 teak)
      (treatment p211 varnished)
      (available p212)
      (colour p212 black)
      (wood p212 cherry)
      (surface-condition p212 smooth)
      (treatment p212 glazed)
      (available p213)
      (wood p213 walnut)
      (treatment p213 varnished)
      (available p214)
      (colour p214 white)
      (treatment p214 glazed)
      (available p215)
      (colour p215 mauve)
      (surface-condition p215 verysmooth)
      (treatment p215 varnished)
      (available p216)
      (colour p216 natural)
      (surface-condition p216 smooth)
      (available p217)
      (colour p217 red)
      (surface-condition p217 verysmooth)
      (treatment p217 varnished)
      (available p218)
      (colour p218 black)
      (wood p218 teak)
      (available p219)
      (colour p219 green)
      (wood p219 walnut)
      (surface-condition p219 verysmooth)
      (treatment p219 glazed)
      (available p220)
      (colour p220 red)
      (treatment p220 varnished)
    )
  )
  
)
