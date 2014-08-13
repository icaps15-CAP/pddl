; woodworking task with 239 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 613045

(define (problem wood-prob-sat-90)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green blue black mauve white red - acolour
    beech pine teak walnut cherry oak mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
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
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (available p4)
    (colour p4 red)
    (wood p4 mahogany)
    (surface-condition p4 smooth)
    (treatment p4 varnished)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (available p10)
    (colour p10 white)
    (wood p10 cherry)
    (surface-condition p10 rough)
    (treatment p10 varnished)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (available p17)
    (colour p17 natural)
    (wood p17 beech)
    (surface-condition p17 rough)
    (treatment p17 colourfragments)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 blue)
    (wood p21 oak)
    (surface-condition p21 smooth)
    (treatment p21 glazed)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (available p23)
    (colour p23 white)
    (wood p23 teak)
    (surface-condition p23 verysmooth)
    (treatment p23 colourfragments)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 blue)
    (wood p33 oak)
    (surface-condition p33 rough)
    (treatment p33 colourfragments)
    (goalsize p33 medium)
    
    
    
    
    (available p34)
    (colour p34 natural)
    (wood p34 cherry)
    (surface-condition p34 rough)
    (treatment p34 varnished)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (available p41)
    (colour p41 black)
    (wood p41 mahogany)
    (surface-condition p41 smooth)
    (treatment p41 varnished)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (available p46)
    (colour p46 mauve)
    (wood p46 pine)
    (surface-condition p46 smooth)
    (treatment p46 varnished)
    (goalsize p46 large)
    
    
    
    
    (available p47)
    (colour p47 white)
    (wood p47 oak)
    (surface-condition p47 verysmooth)
    (treatment p47 varnished)
    (goalsize p47 medium)
    
    
    
    
    (available p48)
    (colour p48 red)
    (wood p48 walnut)
    (surface-condition p48 verysmooth)
    (treatment p48 varnished)
    (goalsize p48 medium)
    
    
    
    
    (available p49)
    (colour p49 white)
    (wood p49 pine)
    (surface-condition p49 smooth)
    (treatment p49 glazed)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (available p52)
    (colour p52 green)
    (wood p52 oak)
    (surface-condition p52 rough)
    (treatment p52 varnished)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (available p58)
    (colour p58 mauve)
    (wood p58 cherry)
    (surface-condition p58 verysmooth)
    (treatment p58 glazed)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (available p61)
    (colour p61 green)
    (wood p61 walnut)
    (surface-condition p61 rough)
    (treatment p61 glazed)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (available p66)
    (colour p66 natural)
    (wood p66 cherry)
    (surface-condition p66 verysmooth)
    (treatment p66 glazed)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (available p75)
    (colour p75 natural)
    (wood p75 cherry)
    (surface-condition p75 verysmooth)
    (treatment p75 glazed)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (available p77)
    (colour p77 mauve)
    (wood p77 mahogany)
    (surface-condition p77 verysmooth)
    (treatment p77 glazed)
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
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (available p98)
    (colour p98 natural)
    (wood p98 oak)
    (surface-condition p98 verysmooth)
    (treatment p98 colourfragments)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (available p105)
    (colour p105 black)
    (wood p105 oak)
    (surface-condition p105 verysmooth)
    (treatment p105 varnished)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (available p109)
    (colour p109 green)
    (wood p109 oak)
    (surface-condition p109 verysmooth)
    (treatment p109 colourfragments)
    (goalsize p109 large)
    
    
    
    
    (available p110)
    (colour p110 red)
    (wood p110 beech)
    (surface-condition p110 smooth)
    (treatment p110 glazed)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (available p116)
    (colour p116 black)
    (wood p116 mahogany)
    (surface-condition p116 smooth)
    (treatment p116 colourfragments)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (available p118)
    (colour p118 red)
    (wood p118 beech)
    (surface-condition p118 verysmooth)
    (treatment p118 glazed)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (available p121)
    (colour p121 red)
    (wood p121 teak)
    (surface-condition p121 smooth)
    (treatment p121 colourfragments)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (available p131)
    (colour p131 green)
    (wood p131 walnut)
    (surface-condition p131 verysmooth)
    (treatment p131 colourfragments)
    (goalsize p131 large)
    
    
    
    
    (available p132)
    (colour p132 mauve)
    (wood p132 mahogany)
    (surface-condition p132 rough)
    (treatment p132 varnished)
    (goalsize p132 large)
    
    
    
    
    (available p133)
    (colour p133 natural)
    (wood p133 teak)
    (surface-condition p133 rough)
    (treatment p133 varnished)
    (goalsize p133 medium)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (available p135)
    (colour p135 natural)
    (wood p135 walnut)
    (surface-condition p135 smooth)
    (treatment p135 colourfragments)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (available p141)
    (colour p141 white)
    (wood p141 pine)
    (surface-condition p141 verysmooth)
    (treatment p141 varnished)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (available p143)
    (colour p143 black)
    (wood p143 beech)
    (surface-condition p143 smooth)
    (treatment p143 glazed)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (available p148)
    (colour p148 red)
    (wood p148 oak)
    (surface-condition p148 smooth)
    (treatment p148 colourfragments)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (available p150)
    (colour p150 natural)
    (wood p150 cherry)
    (surface-condition p150 rough)
    (treatment p150 varnished)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (available p160)
    (colour p160 green)
    (wood p160 teak)
    (surface-condition p160 rough)
    (treatment p160 varnished)
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
    (colour p165 mauve)
    (wood p165 cherry)
    (surface-condition p165 smooth)
    (treatment p165 colourfragments)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (available p169)
    (colour p169 white)
    (wood p169 teak)
    (surface-condition p169 rough)
    (treatment p169 glazed)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (available p174)
    (colour p174 black)
    (wood p174 mahogany)
    (surface-condition p174 smooth)
    (treatment p174 colourfragments)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (available p177)
    (colour p177 black)
    (wood p177 cherry)
    (surface-condition p177 rough)
    (treatment p177 colourfragments)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (available p180)
    (colour p180 blue)
    (wood p180 beech)
    (surface-condition p180 rough)
    (treatment p180 colourfragments)
    (goalsize p180 large)
    
    
    
    
    (unused p181)
    (goalsize p181 large)
    
    
    
    
    (available p182)
    (colour p182 natural)
    (wood p182 oak)
    (surface-condition p182 verysmooth)
    (treatment p182 glazed)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (available p184)
    (colour p184 blue)
    (wood p184 oak)
    (surface-condition p184 rough)
    (treatment p184 glazed)
    (goalsize p184 medium)
    
    
    
    
    (available p185)
    (colour p185 green)
    (wood p185 pine)
    (surface-condition p185 verysmooth)
    (treatment p185 glazed)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 medium)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (available p191)
    (colour p191 natural)
    (wood p191 cherry)
    (surface-condition p191 verysmooth)
    (treatment p191 colourfragments)
    (goalsize p191 large)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (available p194)
    (colour p194 red)
    (wood p194 teak)
    (surface-condition p194 verysmooth)
    (treatment p194 colourfragments)
    (goalsize p194 small)
    
    
    
    
    (available p195)
    (colour p195 white)
    (wood p195 cherry)
    (surface-condition p195 rough)
    (treatment p195 glazed)
    (goalsize p195 medium)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (available p197)
    (colour p197 green)
    (wood p197 beech)
    (surface-condition p197 verysmooth)
    (treatment p197 varnished)
    (goalsize p197 small)
    
    
    
    
    (available p198)
    (colour p198 green)
    (wood p198 teak)
    (surface-condition p198 verysmooth)
    (treatment p198 glazed)
    (goalsize p198 small)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 small)
    
    
    
    
    (unused p202)
    (goalsize p202 large)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (available p204)
    (colour p204 mauve)
    (wood p204 walnut)
    (surface-condition p204 verysmooth)
    (treatment p204 colourfragments)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 medium)
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 small)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 medium)
    
    
    
    
    (available p211)
    (colour p211 black)
    (wood p211 cherry)
    (surface-condition p211 verysmooth)
    (treatment p211 colourfragments)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (available p217)
    (colour p217 green)
    (wood p217 oak)
    (surface-condition p217 rough)
    (treatment p217 glazed)
    (goalsize p217 small)
    
    
    
    
    (unused p218)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 large)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 small)
    
    
    
    
    (unused p225)
    (goalsize p225 small)
    
    
    
    
    (unused p226)
    (goalsize p226 medium)
    
    
    
    
    (unused p227)
    (goalsize p227 medium)
    
    
    
    
    (available p228)
    (colour p228 mauve)
    (wood p228 pine)
    (surface-condition p228 smooth)
    (treatment p228 glazed)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 medium)
    
    
    
    
    (available p230)
    (colour p230 mauve)
    (wood p230 cherry)
    (surface-condition p230 verysmooth)
    (treatment p230 glazed)
    (goalsize p230 large)
    
    
    
    
    (available p231)
    (colour p231 blue)
    (wood p231 mahogany)
    (surface-condition p231 verysmooth)
    (treatment p231 colourfragments)
    (goalsize p231 medium)
    
    
    
    
    (available p232)
    (colour p232 white)
    (wood p232 oak)
    (surface-condition p232 smooth)
    (treatment p232 glazed)
    (goalsize p232 small)
    
    
    
    
    (unused p233)
    (goalsize p233 medium)
    
    
    
    
    (unused p234)
    (goalsize p234 small)
    
    
    
    
    (unused p235)
    (goalsize p235 medium)
    
    
    
    
    (available p236)
    (colour p236 green)
    (wood p236 beech)
    (surface-condition p236 verysmooth)
    (treatment p236 varnished)
    (goalsize p236 small)
    
    
    
    
    (unused p237)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 large)
    
    
    
    
    (boardsize b0 s5)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s12)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s11)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s5)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s10)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s8)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 oak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s9)
    (wood b15 oak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s10)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s10)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s6)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s12)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s7)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 pine)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s9)
    (wood b25 pine)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s7)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s10)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s9)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s6)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s5)
    (wood b32 pine)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s9)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s9)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s5)
    (wood b35 walnut)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s7)
    (wood b36 walnut)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s8)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s8)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s10)
    (wood b39 walnut)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s2)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s9)
    (wood b41 teak)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s6)
    (wood b42 teak)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s10)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s10)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s7)
    (wood b45 teak)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s5)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s8)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s3)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s8)
    (wood b49 beech)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s6)
    (wood b50 beech)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s6)
    (wood b51 beech)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s8)
    (wood b52 beech)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s11)
    (wood b53 beech)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s6)
    (wood b54 beech)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s7)
    (wood b55 beech)
    (surface-condition b55 smooth)
    (available b55)
    (boardsize b56 s4)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 blue)
      (wood p1 teak)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 blue)
      (wood p2 teak)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 green)
      (wood p3 walnut)
      (treatment p3 varnished)
      (available p4)
      (colour p4 white)
      (wood p4 mahogany)
      (available p5)
      (colour p5 black)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 black)
      (wood p6 pine)
      (available p7)
      (wood p7 beech)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (wood p8 oak)
      (treatment p8 varnished)
      (available p9)
      (wood p9 walnut)
      (treatment p9 varnished)
      (available p10)
      (wood p10 cherry)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 white)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 natural)
      (surface-condition p12 verysmooth)
      (available p13)
      (wood p13 oak)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 green)
      (treatment p14 glazed)
      (available p15)
      (colour p15 red)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 green)
      (wood p16 mahogany)
      (surface-condition p16 verysmooth)
      (available p17)
      (wood p17 beech)
      (treatment p17 varnished)
      (available p18)
      (colour p18 mauve)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 blue)
      (treatment p19 varnished)
      (available p20)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 black)
      (wood p21 oak)
      (treatment p21 glazed)
      (available p22)
      (wood p22 teak)
      (treatment p22 glazed)
      (available p23)
      (colour p23 green)
      (wood p23 teak)
      (available p24)
      (colour p24 green)
      (wood p24 walnut)
      (treatment p24 varnished)
      (available p25)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 black)
      (wood p26 pine)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (wood p27 mahogany)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 green)
      (wood p28 pine)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (wood p30 walnut)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 black)
      (wood p31 cherry)
      (available p32)
      (colour p32 green)
      (wood p32 mahogany)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 black)
      (wood p33 oak)
      (available p34)
      (colour p34 green)
      (wood p34 cherry)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 white)
      (wood p35 pine)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (wood p36 cherry)
      (surface-condition p36 smooth)
      (available p37)
      (colour p37 white)
      (wood p37 teak)
      (available p38)
      (colour p38 mauve)
      (wood p38 walnut)
      (surface-condition p38 smooth)
      (available p39)
      (wood p39 oak)
      (treatment p39 glazed)
      (available p40)
      (colour p40 mauve)
      (wood p40 teak)
      (available p41)
      (colour p41 red)
      (wood p41 mahogany)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 green)
      (wood p42 oak)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 natural)
      (treatment p43 glazed)
      (available p44)
      (colour p44 green)
      (wood p44 beech)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 black)
      (wood p46 pine)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 mauve)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 blue)
      (wood p48 walnut)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (wood p49 pine)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 mauve)
      (treatment p50 glazed)
      (available p51)
      (colour p51 green)
      (wood p51 oak)
      (available p52)
      (wood p52 oak)
      (treatment p52 glazed)
      (available p53)
      (colour p53 natural)
      (wood p53 beech)
      (surface-condition p53 smooth)
      (treatment p53 varnished)
      (available p54)
      (wood p54 pine)
      (surface-condition p54 verysmooth)
      (available p55)
      (colour p55 mauve)
      (surface-condition p55 verysmooth)
      (available p56)
      (colour p56 green)
      (wood p56 oak)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 blue)
      (wood p57 walnut)
      (surface-condition p57 verysmooth)
      (available p58)
      (surface-condition p58 smooth)
      (treatment p58 varnished)
      (available p59)
      (wood p59 beech)
      (surface-condition p59 smooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 white)
      (wood p60 oak)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 blue)
      (wood p61 walnut)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 red)
      (wood p62 mahogany)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 white)
      (treatment p63 glazed)
      (available p64)
      (wood p64 cherry)
      (surface-condition p64 smooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 black)
      (wood p65 pine)
      (available p66)
      (colour p66 blue)
      (treatment p66 glazed)
      (available p67)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (wood p68 oak)
      (surface-condition p68 smooth)
      (treatment p68 glazed)
      (available p69)
      (surface-condition p69 verysmooth)
      (treatment p69 glazed)
      (available p70)
      (wood p70 oak)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 natural)
      (surface-condition p71 smooth)
      (available p72)
      (colour p72 red)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 black)
      (wood p73 walnut)
      (treatment p73 varnished)
      (available p74)
      (colour p74 black)
      (surface-condition p74 verysmooth)
      (treatment p74 varnished)
      (available p75)
      (colour p75 mauve)
      (surface-condition p75 smooth)
      (available p76)
      (colour p76 natural)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 red)
      (wood p77 mahogany)
      (available p78)
      (colour p78 blue)
      (wood p78 walnut)
      (available p79)
      (wood p79 walnut)
      (treatment p79 glazed)
      (available p80)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 red)
      (surface-condition p81 verysmooth)
      (available p82)
      (surface-condition p82 smooth)
      (treatment p82 glazed)
      (available p83)
      (colour p83 green)
      (wood p83 oak)
      (surface-condition p83 verysmooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 red)
      (surface-condition p84 verysmooth)
      (available p85)
      (wood p85 beech)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (surface-condition p86 verysmooth)
      (treatment p86 glazed)
      (available p87)
      (colour p87 natural)
      (wood p87 pine)
      (available p88)
      (colour p88 natural)
      (wood p88 teak)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 blue)
      (wood p89 teak)
      (treatment p89 glazed)
      (available p90)
      (colour p90 black)
      (wood p90 pine)
      (surface-condition p90 smooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 white)
      (treatment p91 glazed)
      (available p92)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 red)
      (treatment p93 varnished)
      (available p94)
      (wood p94 cherry)
      (surface-condition p94 verysmooth)
      (available p95)
      (surface-condition p95 verysmooth)
      (treatment p95 varnished)
      (available p96)
      (wood p96 pine)
      (treatment p96 varnished)
      (available p97)
      (colour p97 black)
      (wood p97 pine)
      (surface-condition p97 verysmooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 blue)
      (treatment p98 varnished)
      (available p99)
      (surface-condition p99 smooth)
      (treatment p99 varnished)
      (available p100)
      (wood p100 beech)
      (treatment p100 varnished)
      (available p101)
      (colour p101 green)
      (wood p101 beech)
      (surface-condition p101 verysmooth)
      (treatment p101 glazed)
      (available p102)
      (wood p102 mahogany)
      (treatment p102 glazed)
      (available p103)
      (colour p103 white)
      (wood p103 pine)
      (surface-condition p103 smooth)
      (treatment p103 glazed)
      (available p104)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 green)
      (surface-condition p105 smooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 mauve)
      (wood p106 pine)
      (available p107)
      (colour p107 mauve)
      (surface-condition p107 verysmooth)
      (available p108)
      (colour p108 mauve)
      (wood p108 mahogany)
      (available p109)
      (surface-condition p109 smooth)
      (treatment p109 glazed)
      (available p110)
      (wood p110 beech)
      (treatment p110 varnished)
      (available p111)
      (wood p111 pine)
      (surface-condition p111 smooth)
      (treatment p111 glazed)
      (available p112)
      (colour p112 green)
      (wood p112 mahogany)
      (surface-condition p112 smooth)
      (available p113)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 red)
      (wood p114 beech)
      (surface-condition p114 verysmooth)
      (treatment p114 varnished)
      (available p115)
      (colour p115 black)
      (wood p115 cherry)
      (treatment p115 varnished)
      (available p116)
      (wood p116 mahogany)
      (surface-condition p116 verysmooth)
      (treatment p116 glazed)
      (available p117)
      (colour p117 white)
      (surface-condition p117 smooth)
      (available p118)
      (colour p118 black)
      (wood p118 beech)
      (surface-condition p118 smooth)
      (treatment p118 glazed)
      (available p119)
      (colour p119 black)
      (wood p119 mahogany)
      (surface-condition p119 verysmooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 mauve)
      (treatment p120 glazed)
      (available p121)
      (colour p121 green)
      (wood p121 teak)
      (surface-condition p121 verysmooth)
      (available p122)
      (wood p122 mahogany)
      (surface-condition p122 smooth)
      (available p123)
      (colour p123 red)
      (treatment p123 varnished)
      (available p124)
      (colour p124 natural)
      (surface-condition p124 smooth)
      (available p125)
      (wood p125 teak)
      (surface-condition p125 verysmooth)
      (available p126)
      (colour p126 red)
      (treatment p126 glazed)
      (available p127)
      (colour p127 natural)
      (surface-condition p127 smooth)
      (treatment p127 varnished)
      (available p128)
      (colour p128 black)
      (wood p128 beech)
      (surface-condition p128 verysmooth)
      (available p129)
      (colour p129 blue)
      (treatment p129 varnished)
      (available p130)
      (colour p130 mauve)
      (wood p130 teak)
      (surface-condition p130 verysmooth)
      (treatment p130 varnished)
      (available p131)
      (wood p131 walnut)
      (treatment p131 varnished)
      (available p132)
      (colour p132 red)
      (wood p132 mahogany)
      (available p133)
      (colour p133 white)
      (wood p133 teak)
      (surface-condition p133 verysmooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 mauve)
      (wood p134 mahogany)
      (available p135)
      (colour p135 black)
      (wood p135 walnut)
      (treatment p135 varnished)
      (available p136)
      (colour p136 natural)
      (wood p136 cherry)
      (treatment p136 varnished)
      (available p137)
      (colour p137 red)
      (wood p137 mahogany)
      (surface-condition p137 verysmooth)
      (treatment p137 varnished)
      (available p138)
      (colour p138 natural)
      (surface-condition p138 smooth)
      (treatment p138 glazed)
      (available p139)
      (colour p139 green)
      (wood p139 beech)
      (surface-condition p139 smooth)
      (treatment p139 varnished)
      (available p140)
      (colour p140 green)
      (wood p140 mahogany)
      (surface-condition p140 verysmooth)
      (treatment p140 glazed)
      (available p141)
      (colour p141 blue)
      (surface-condition p141 smooth)
      (treatment p141 varnished)
      (available p142)
      (colour p142 mauve)
      (wood p142 cherry)
      (surface-condition p142 verysmooth)
      (available p143)
      (colour p143 blue)
      (wood p143 beech)
      (treatment p143 varnished)
      (available p144)
      (colour p144 white)
      (wood p144 oak)
      (surface-condition p144 verysmooth)
      (treatment p144 glazed)
      (available p145)
      (colour p145 green)
      (wood p145 teak)
      (surface-condition p145 smooth)
      (available p146)
      (colour p146 black)
      (wood p146 teak)
      (surface-condition p146 verysmooth)
      (treatment p146 varnished)
      (available p147)
      (colour p147 black)
      (wood p147 cherry)
      (surface-condition p147 verysmooth)
      (treatment p147 glazed)
      (available p148)
      (wood p148 oak)
      (surface-condition p148 verysmooth)
      (available p149)
      (colour p149 mauve)
      (treatment p149 varnished)
      (available p150)
      (colour p150 red)
      (wood p150 cherry)
      (surface-condition p150 smooth)
      (treatment p150 varnished)
      (available p151)
      (surface-condition p151 verysmooth)
      (treatment p151 glazed)
      (available p152)
      (colour p152 mauve)
      (surface-condition p152 smooth)
      (treatment p152 varnished)
      (available p153)
      (colour p153 mauve)
      (wood p153 pine)
      (available p154)
      (colour p154 blue)
      (wood p154 cherry)
      (surface-condition p154 verysmooth)
      (treatment p154 varnished)
      (available p155)
      (colour p155 red)
      (wood p155 teak)
      (available p156)
      (colour p156 natural)
      (wood p156 mahogany)
      (surface-condition p156 smooth)
      (treatment p156 glazed)
      (available p157)
      (colour p157 mauve)
      (surface-condition p157 verysmooth)
      (available p158)
      (wood p158 oak)
      (surface-condition p158 verysmooth)
      (available p159)
      (colour p159 blue)
      (wood p159 oak)
      (treatment p159 varnished)
      (available p160)
      (colour p160 blue)
      (treatment p160 glazed)
      (available p161)
      (colour p161 mauve)
      (surface-condition p161 smooth)
      (treatment p161 glazed)
      (available p162)
      (colour p162 blue)
      (wood p162 oak)
      (surface-condition p162 verysmooth)
      (treatment p162 glazed)
      (available p163)
      (wood p163 cherry)
      (surface-condition p163 verysmooth)
      (available p164)
      (colour p164 red)
      (treatment p164 glazed)
      (available p165)
      (colour p165 red)
      (surface-condition p165 verysmooth)
      (treatment p165 glazed)
      (available p166)
      (colour p166 black)
      (treatment p166 glazed)
      (available p167)
      (colour p167 white)
      (wood p167 oak)
      (available p168)
      (colour p168 black)
      (wood p168 mahogany)
      (surface-condition p168 smooth)
      (available p169)
      (colour p169 green)
      (treatment p169 glazed)
      (available p170)
      (colour p170 white)
      (wood p170 oak)
      (surface-condition p170 smooth)
      (available p171)
      (wood p171 pine)
      (treatment p171 glazed)
      (available p172)
      (colour p172 red)
      (surface-condition p172 verysmooth)
      (available p173)
      (colour p173 white)
      (treatment p173 varnished)
      (available p174)
      (colour p174 natural)
      (wood p174 mahogany)
      (treatment p174 glazed)
      (available p175)
      (colour p175 blue)
      (surface-condition p175 smooth)
      (available p176)
      (colour p176 mauve)
      (wood p176 pine)
      (surface-condition p176 smooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 green)
      (treatment p177 glazed)
      (available p178)
      (colour p178 natural)
      (treatment p178 glazed)
      (available p179)
      (wood p179 pine)
      (surface-condition p179 verysmooth)
      (treatment p179 varnished)
      (available p180)
      (colour p180 green)
      (wood p180 beech)
      (surface-condition p180 smooth)
      (treatment p180 varnished)
      (available p181)
      (wood p181 mahogany)
      (treatment p181 varnished)
      (available p182)
      (colour p182 black)
      (surface-condition p182 smooth)
      (treatment p182 glazed)
      (available p183)
      (colour p183 red)
      (surface-condition p183 verysmooth)
      (available p184)
      (surface-condition p184 verysmooth)
      (treatment p184 glazed)
      (available p185)
      (colour p185 mauve)
      (surface-condition p185 smooth)
      (available p186)
      (colour p186 natural)
      (treatment p186 glazed)
      (available p187)
      (colour p187 black)
      (wood p187 beech)
      (surface-condition p187 smooth)
      (treatment p187 glazed)
      (available p188)
      (colour p188 red)
      (treatment p188 varnished)
      (available p189)
      (wood p189 teak)
      (surface-condition p189 smooth)
      (available p190)
      (colour p190 mauve)
      (wood p190 walnut)
      (treatment p190 glazed)
      (available p191)
      (colour p191 red)
      (wood p191 cherry)
      (treatment p191 glazed)
      (available p192)
      (wood p192 beech)
      (surface-condition p192 verysmooth)
      (treatment p192 varnished)
      (available p193)
      (wood p193 oak)
      (surface-condition p193 smooth)
      (available p194)
      (colour p194 natural)
      (wood p194 teak)
      (surface-condition p194 verysmooth)
      (treatment p194 glazed)
      (available p195)
      (surface-condition p195 verysmooth)
      (treatment p195 varnished)
      (available p196)
      (colour p196 blue)
      (wood p196 walnut)
      (available p197)
      (colour p197 red)
      (surface-condition p197 verysmooth)
      (available p198)
      (colour p198 white)
      (wood p198 teak)
      (surface-condition p198 smooth)
      (treatment p198 glazed)
      (available p199)
      (colour p199 green)
      (surface-condition p199 verysmooth)
      (treatment p199 glazed)
      (available p200)
      (colour p200 mauve)
      (surface-condition p200 smooth)
      (treatment p200 varnished)
      (available p201)
      (wood p201 cherry)
      (treatment p201 glazed)
      (available p202)
      (wood p202 teak)
      (surface-condition p202 smooth)
      (available p203)
      (colour p203 white)
      (wood p203 beech)
      (surface-condition p203 smooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 green)
      (treatment p204 varnished)
      (available p205)
      (surface-condition p205 verysmooth)
      (treatment p205 varnished)
      (available p206)
      (wood p206 walnut)
      (surface-condition p206 smooth)
      (treatment p206 varnished)
      (available p207)
      (colour p207 black)
      (surface-condition p207 verysmooth)
      (treatment p207 varnished)
      (available p208)
      (colour p208 blue)
      (wood p208 beech)
      (surface-condition p208 verysmooth)
      (treatment p208 varnished)
      (available p209)
      (colour p209 mauve)
      (wood p209 beech)
      (surface-condition p209 smooth)
      (treatment p209 glazed)
      (available p210)
      (colour p210 mauve)
      (wood p210 oak)
      (available p211)
      (colour p211 natural)
      (wood p211 cherry)
      (surface-condition p211 verysmooth)
      (treatment p211 varnished)
      (available p212)
      (colour p212 black)
      (surface-condition p212 smooth)
      (available p213)
      (wood p213 oak)
      (treatment p213 varnished)
      (available p214)
      (surface-condition p214 smooth)
      (treatment p214 glazed)
      (available p215)
      (colour p215 mauve)
      (wood p215 mahogany)
      (surface-condition p215 smooth)
      (treatment p215 varnished)
      (available p216)
      (colour p216 blue)
      (surface-condition p216 verysmooth)
      (treatment p216 glazed)
      (available p217)
      (surface-condition p217 smooth)
      (treatment p217 varnished)
      (available p218)
      (colour p218 natural)
      (treatment p218 varnished)
      (available p219)
      (colour p219 red)
      (wood p219 oak)
      (surface-condition p219 smooth)
      (treatment p219 varnished)
      (available p220)
      (colour p220 mauve)
      (wood p220 pine)
      (available p221)
      (colour p221 blue)
      (treatment p221 varnished)
      (available p222)
      (colour p222 white)
      (surface-condition p222 verysmooth)
      (available p223)
      (colour p223 black)
      (wood p223 oak)
      (treatment p223 glazed)
      (available p224)
      (colour p224 natural)
      (wood p224 oak)
      (surface-condition p224 smooth)
      (available p225)
      (colour p225 natural)
      (wood p225 mahogany)
      (surface-condition p225 smooth)
      (treatment p225 varnished)
      (available p226)
      (colour p226 red)
      (wood p226 teak)
      (surface-condition p226 smooth)
      (treatment p226 glazed)
      (available p227)
      (colour p227 white)
      (surface-condition p227 smooth)
      (available p228)
      (wood p228 pine)
      (surface-condition p228 verysmooth)
      (available p229)
      (surface-condition p229 verysmooth)
      (treatment p229 glazed)
      (available p230)
      (colour p230 black)
      (wood p230 cherry)
      (surface-condition p230 smooth)
      (treatment p230 glazed)
      (available p231)
      (colour p231 mauve)
      (wood p231 mahogany)
      (surface-condition p231 smooth)
      (treatment p231 glazed)
      (available p232)
      (colour p232 natural)
      (wood p232 oak)
      (surface-condition p232 smooth)
      (treatment p232 varnished)
      (available p233)
      (wood p233 oak)
      (surface-condition p233 smooth)
      (available p234)
      (colour p234 green)
      (treatment p234 glazed)
      (available p235)
      (colour p235 green)
      (wood p235 walnut)
      (treatment p235 varnished)
      (available p236)
      (colour p236 red)
      (treatment p236 varnished)
      (available p237)
      (colour p237 blue)
      (surface-condition p237 smooth)
      (available p238)
      (colour p238 black)
      (wood p238 cherry)
    )
  )
  
)
