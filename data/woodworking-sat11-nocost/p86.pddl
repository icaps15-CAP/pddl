; woodworking task with 227 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 312248

(define (problem wood-prob-sat-86)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue black mauve red green white - acolour
    teak oak pine beech mahogany cherry walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer2 blue)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
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
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (available p0)
    (colour p0 mauve)
    (wood p0 walnut)
    (surface-condition p0 rough)
    (treatment p0 glazed)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (available p3)
    (colour p3 mauve)
    (wood p3 teak)
    (surface-condition p3 rough)
    (treatment p3 varnished)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (available p8)
    (colour p8 green)
    (wood p8 oak)
    (surface-condition p8 rough)
    (treatment p8 colourfragments)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (available p14)
    (colour p14 blue)
    (wood p14 teak)
    (surface-condition p14 verysmooth)
    (treatment p14 colourfragments)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (available p17)
    (colour p17 mauve)
    (wood p17 beech)
    (surface-condition p17 smooth)
    (treatment p17 colourfragments)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (available p19)
    (colour p19 natural)
    (wood p19 pine)
    (surface-condition p19 rough)
    (treatment p19 varnished)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (available p30)
    (colour p30 red)
    (wood p30 pine)
    (surface-condition p30 rough)
    (treatment p30 varnished)
    (goalsize p30 small)
    
    
    
    
    (available p31)
    (colour p31 white)
    (wood p31 pine)
    (surface-condition p31 rough)
    (treatment p31 glazed)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (available p33)
    (colour p33 natural)
    (wood p33 walnut)
    (surface-condition p33 smooth)
    (treatment p33 glazed)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 white)
    (wood p36 beech)
    (surface-condition p36 smooth)
    (treatment p36 varnished)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (available p43)
    (colour p43 red)
    (wood p43 mahogany)
    (surface-condition p43 smooth)
    (treatment p43 glazed)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (available p50)
    (colour p50 blue)
    (wood p50 mahogany)
    (surface-condition p50 smooth)
    (treatment p50 glazed)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 blue)
    (wood p65 cherry)
    (surface-condition p65 verysmooth)
    (treatment p65 colourfragments)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (available p68)
    (colour p68 blue)
    (wood p68 teak)
    (surface-condition p68 verysmooth)
    (treatment p68 varnished)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (available p73)
    (colour p73 green)
    (wood p73 pine)
    (surface-condition p73 rough)
    (treatment p73 glazed)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (available p78)
    (colour p78 black)
    (wood p78 cherry)
    (surface-condition p78 smooth)
    (treatment p78 glazed)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (available p80)
    (colour p80 green)
    (wood p80 pine)
    (surface-condition p80 rough)
    (treatment p80 varnished)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (available p85)
    (colour p85 blue)
    (wood p85 cherry)
    (surface-condition p85 verysmooth)
    (treatment p85 colourfragments)
    (goalsize p85 large)
    
    
    
    
    (available p86)
    (colour p86 green)
    (wood p86 beech)
    (surface-condition p86 smooth)
    (treatment p86 glazed)
    (goalsize p86 large)
    
    
    
    
    (available p87)
    (colour p87 green)
    (wood p87 mahogany)
    (surface-condition p87 verysmooth)
    (treatment p87 varnished)
    (goalsize p87 large)
    
    
    
    
    (available p88)
    (colour p88 white)
    (wood p88 oak)
    (surface-condition p88 smooth)
    (treatment p88 varnished)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (available p105)
    (colour p105 white)
    (wood p105 teak)
    (surface-condition p105 smooth)
    (treatment p105 colourfragments)
    (goalsize p105 small)
    
    
    
    
    (available p106)
    (colour p106 green)
    (wood p106 beech)
    (surface-condition p106 rough)
    (treatment p106 glazed)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (available p111)
    (colour p111 white)
    (wood p111 beech)
    (surface-condition p111 rough)
    (treatment p111 glazed)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (available p123)
    (colour p123 mauve)
    (wood p123 mahogany)
    (surface-condition p123 smooth)
    (treatment p123 glazed)
    (goalsize p123 large)
    
    
    
    
    (available p124)
    (colour p124 natural)
    (wood p124 mahogany)
    (surface-condition p124 rough)
    (treatment p124 varnished)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (available p128)
    (colour p128 green)
    (wood p128 pine)
    (surface-condition p128 rough)
    (treatment p128 glazed)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (available p130)
    (colour p130 blue)
    (wood p130 pine)
    (surface-condition p130 verysmooth)
    (treatment p130 glazed)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (available p139)
    (colour p139 black)
    (wood p139 mahogany)
    (surface-condition p139 smooth)
    (treatment p139 varnished)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (available p151)
    (colour p151 green)
    (wood p151 teak)
    (surface-condition p151 rough)
    (treatment p151 glazed)
    (goalsize p151 medium)
    
    
    
    
    (available p152)
    (colour p152 natural)
    (wood p152 beech)
    (surface-condition p152 rough)
    (treatment p152 colourfragments)
    (goalsize p152 small)
    
    
    
    
    (available p153)
    (colour p153 black)
    (wood p153 oak)
    (surface-condition p153 rough)
    (treatment p153 varnished)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (available p156)
    (colour p156 red)
    (wood p156 teak)
    (surface-condition p156 verysmooth)
    (treatment p156 glazed)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (available p159)
    (colour p159 black)
    (wood p159 mahogany)
    (surface-condition p159 verysmooth)
    (treatment p159 glazed)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (available p162)
    (colour p162 blue)
    (wood p162 walnut)
    (surface-condition p162 verysmooth)
    (treatment p162 colourfragments)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (available p164)
    (colour p164 blue)
    (wood p164 beech)
    (surface-condition p164 smooth)
    (treatment p164 varnished)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (available p172)
    (colour p172 natural)
    (wood p172 cherry)
    (surface-condition p172 smooth)
    (treatment p172 colourfragments)
    (goalsize p172 large)
    
    
    
    
    (available p173)
    (colour p173 natural)
    (wood p173 beech)
    (surface-condition p173 smooth)
    (treatment p173 colourfragments)
    (goalsize p173 medium)
    
    
    
    
    (available p174)
    (colour p174 mauve)
    (wood p174 cherry)
    (surface-condition p174 rough)
    (treatment p174 varnished)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (available p178)
    (colour p178 black)
    (wood p178 beech)
    (surface-condition p178 verysmooth)
    (treatment p178 colourfragments)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (available p185)
    (colour p185 red)
    (wood p185 teak)
    (surface-condition p185 verysmooth)
    (treatment p185 varnished)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 medium)
    
    
    
    
    (unused p189)
    (goalsize p189 large)
    
    
    
    
    (available p190)
    (colour p190 mauve)
    (wood p190 walnut)
    (surface-condition p190 smooth)
    (treatment p190 glazed)
    (goalsize p190 small)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 medium)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 medium)
    
    
    
    
    (available p202)
    (colour p202 mauve)
    (wood p202 teak)
    (surface-condition p202 verysmooth)
    (treatment p202 glazed)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 medium)
    
    
    
    
    (unused p206)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 medium)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (available p213)
    (colour p213 mauve)
    (wood p213 cherry)
    (surface-condition p213 smooth)
    (treatment p213 colourfragments)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 large)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 small)
    
    
    
    
    (unused p217)
    (goalsize p217 medium)
    
    
    
    
    (available p218)
    (colour p218 red)
    (wood p218 mahogany)
    (surface-condition p218 smooth)
    (treatment p218 glazed)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 small)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 medium)
    
    
    
    
    (unused p223)
    (goalsize p223 large)
    
    
    
    
    (unused p224)
    (goalsize p224 small)
    
    
    
    
    (available p225)
    (colour p225 blue)
    (wood p225 cherry)
    (surface-condition p225 rough)
    (treatment p225 colourfragments)
    (goalsize p225 medium)
    
    
    
    
    (unused p226)
    (goalsize p226 large)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s2)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s6)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s11)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s10)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 mahogany)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s9)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s2)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s11)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s10)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s9)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 oak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s7)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s2)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s10)
    (wood b23 pine)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s7)
    (wood b24 pine)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s10)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s8)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s10)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s9)
    (wood b29 pine)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s10)
    (wood b30 pine)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s5)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s3)
    (wood b32 pine)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s10)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s10)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s6)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s6)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s8)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s9)
    (wood b39 walnut)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s10)
    (wood b40 walnut)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s7)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s8)
    (wood b42 teak)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s12)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s7)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s11)
    (wood b45 teak)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s9)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s9)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s7)
    (wood b48 beech)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s9)
    (wood b49 beech)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s9)
    (wood b50 beech)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s10)
    (wood b51 beech)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s10)
    (wood b52 beech)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s8)
    (wood b53 beech)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s8)
    (wood b54 beech)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s7)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s10)
    (wood b56 beech)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s8)
    (wood b57 beech)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s2)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
  )
  (:goal
    (and
      (available p0)
      (colour p0 white)
      (wood p0 walnut)
      (available p1)
      (colour p1 black)
      (wood p1 walnut)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 blue)
      (wood p3 teak)
      (treatment p3 glazed)
      (available p4)
      (colour p4 mauve)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 blue)
      (wood p5 pine)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (wood p6 walnut)
      (treatment p6 varnished)
      (available p7)
      (colour p7 red)
      (wood p7 mahogany)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (wood p8 oak)
      (surface-condition p8 verysmooth)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (wood p10 beech)
      (treatment p10 varnished)
      (available p11)
      (wood p11 walnut)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 red)
      (wood p12 oak)
      (treatment p12 varnished)
      (available p13)
      (colour p13 mauve)
      (wood p13 pine)
      (available p14)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 beech)
      (treatment p15 varnished)
      (available p16)
      (colour p16 blue)
      (wood p16 cherry)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 walnut)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 red)
      (treatment p19 glazed)
      (available p20)
      (colour p20 mauve)
      (surface-condition p20 smooth)
      (available p21)
      (colour p21 mauve)
      (treatment p21 glazed)
      (available p22)
      (wood p22 beech)
      (surface-condition p22 verysmooth)
      (available p23)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 white)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 mauve)
      (wood p28 oak)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 mauve)
      (wood p29 cherry)
      (available p30)
      (colour p30 black)
      (wood p30 pine)
      (available p31)
      (colour p31 red)
      (wood p31 pine)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 blue)
      (treatment p33 varnished)
      (available p34)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 black)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 white)
      (wood p37 walnut)
      (surface-condition p37 smooth)
      (available p38)
      (colour p38 blue)
      (treatment p38 glazed)
      (available p39)
      (colour p39 mauve)
      (wood p39 beech)
      (surface-condition p39 smooth)
      (available p40)
      (colour p40 red)
      (treatment p40 glazed)
      (available p41)
      (colour p41 blue)
      (treatment p41 glazed)
      (available p42)
      (colour p42 black)
      (treatment p42 varnished)
      (available p43)
      (colour p43 natural)
      (wood p43 mahogany)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 black)
      (wood p44 pine)
      (treatment p44 varnished)
      (available p45)
      (colour p45 white)
      (wood p45 pine)
      (available p46)
      (wood p46 mahogany)
      (treatment p46 glazed)
      (available p47)
      (wood p47 beech)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 white)
      (surface-condition p48 smooth)
      (available p49)
      (wood p49 beech)
      (treatment p49 varnished)
      (available p50)
      (wood p50 mahogany)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 black)
      (treatment p51 glazed)
      (available p52)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 mauve)
      (wood p54 oak)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 red)
      (wood p55 teak)
      (available p56)
      (wood p56 walnut)
      (treatment p56 glazed)
      (available p57)
      (colour p57 mauve)
      (treatment p57 glazed)
      (available p58)
      (wood p58 walnut)
      (surface-condition p58 verysmooth)
      (available p59)
      (colour p59 green)
      (wood p59 mahogany)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 mauve)
      (wood p60 walnut)
      (surface-condition p60 verysmooth)
      (treatment p60 glazed)
      (available p61)
      (colour p61 black)
      (wood p61 pine)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 blue)
      (wood p62 oak)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (wood p63 walnut)
      (treatment p63 glazed)
      (available p64)
      (colour p64 mauve)
      (wood p64 pine)
      (surface-condition p64 verysmooth)
      (available p65)
      (colour p65 natural)
      (wood p65 cherry)
      (surface-condition p65 verysmooth)
      (available p66)
      (colour p66 natural)
      (wood p66 mahogany)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (wood p67 beech)
      (treatment p67 varnished)
      (available p68)
      (wood p68 teak)
      (treatment p68 glazed)
      (available p69)
      (colour p69 black)
      (treatment p69 varnished)
      (available p70)
      (wood p70 teak)
      (surface-condition p70 smooth)
      (treatment p70 varnished)
      (available p71)
      (wood p71 teak)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 blue)
      (surface-condition p72 verysmooth)
      (treatment p72 glazed)
      (available p73)
      (wood p73 pine)
      (surface-condition p73 verysmooth)
      (available p74)
      (wood p74 pine)
      (treatment p74 glazed)
      (available p75)
      (colour p75 red)
      (wood p75 oak)
      (available p76)
      (wood p76 walnut)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 mauve)
      (surface-condition p77 smooth)
      (available p78)
      (colour p78 mauve)
      (wood p78 cherry)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 natural)
      (treatment p79 glazed)
      (available p80)
      (colour p80 white)
      (wood p80 pine)
      (treatment p80 glazed)
      (available p81)
      (colour p81 natural)
      (wood p81 oak)
      (available p82)
      (colour p82 green)
      (treatment p82 glazed)
      (available p83)
      (colour p83 red)
      (wood p83 beech)
      (surface-condition p83 smooth)
      (available p84)
      (colour p84 mauve)
      (treatment p84 glazed)
      (available p85)
      (colour p85 red)
      (surface-condition p85 verysmooth)
      (available p86)
      (colour p86 black)
      (wood p86 beech)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 blue)
      (wood p87 mahogany)
      (treatment p87 glazed)
      (available p88)
      (colour p88 mauve)
      (wood p88 oak)
      (available p89)
      (surface-condition p89 verysmooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 mauve)
      (treatment p90 varnished)
      (available p91)
      (colour p91 black)
      (wood p91 pine)
      (surface-condition p91 smooth)
      (treatment p91 glazed)
      (available p92)
      (colour p92 black)
      (wood p92 mahogany)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (wood p93 mahogany)
      (treatment p93 varnished)
      (available p94)
      (colour p94 green)
      (wood p94 beech)
      (surface-condition p94 verysmooth)
      (available p95)
      (colour p95 natural)
      (wood p95 oak)
      (available p96)
      (wood p96 cherry)
      (surface-condition p96 smooth)
      (available p97)
      (colour p97 black)
      (wood p97 pine)
      (surface-condition p97 smooth)
      (available p98)
      (wood p98 oak)
      (surface-condition p98 verysmooth)
      (available p99)
      (colour p99 mauve)
      (wood p99 beech)
      (treatment p99 varnished)
      (available p100)
      (surface-condition p100 smooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 red)
      (treatment p101 varnished)
      (available p102)
      (colour p102 green)
      (wood p102 walnut)
      (surface-condition p102 smooth)
      (treatment p102 varnished)
      (available p103)
      (wood p103 beech)
      (surface-condition p103 verysmooth)
      (available p104)
      (colour p104 green)
      (wood p104 beech)
      (surface-condition p104 smooth)
      (treatment p104 glazed)
      (available p105)
      (colour p105 natural)
      (surface-condition p105 smooth)
      (treatment p105 varnished)
      (available p106)
      (colour p106 blue)
      (wood p106 beech)
      (available p107)
      (colour p107 red)
      (surface-condition p107 verysmooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 white)
      (wood p108 cherry)
      (surface-condition p108 verysmooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 natural)
      (treatment p109 varnished)
      (available p110)
      (wood p110 teak)
      (surface-condition p110 smooth)
      (available p111)
      (colour p111 blue)
      (wood p111 beech)
      (available p112)
      (surface-condition p112 verysmooth)
      (treatment p112 varnished)
      (available p113)
      (wood p113 cherry)
      (treatment p113 varnished)
      (available p114)
      (colour p114 black)
      (treatment p114 glazed)
      (available p115)
      (colour p115 green)
      (wood p115 mahogany)
      (surface-condition p115 smooth)
      (treatment p115 varnished)
      (available p116)
      (surface-condition p116 smooth)
      (treatment p116 varnished)
      (available p117)
      (colour p117 mauve)
      (wood p117 mahogany)
      (surface-condition p117 smooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 natural)
      (wood p118 teak)
      (treatment p118 varnished)
      (available p119)
      (colour p119 green)
      (wood p119 walnut)
      (surface-condition p119 verysmooth)
      (available p120)
      (surface-condition p120 verysmooth)
      (treatment p120 varnished)
      (available p121)
      (wood p121 beech)
      (surface-condition p121 smooth)
      (available p122)
      (colour p122 blue)
      (treatment p122 glazed)
      (available p123)
      (wood p123 mahogany)
      (surface-condition p123 verysmooth)
      (available p124)
      (colour p124 white)
      (wood p124 mahogany)
      (treatment p124 glazed)
      (available p125)
      (colour p125 natural)
      (wood p125 mahogany)
      (available p126)
      (colour p126 white)
      (surface-condition p126 smooth)
      (available p127)
      (surface-condition p127 smooth)
      (treatment p127 glazed)
      (available p128)
      (surface-condition p128 smooth)
      (treatment p128 varnished)
      (available p129)
      (wood p129 oak)
      (surface-condition p129 smooth)
      (available p130)
      (colour p130 white)
      (wood p130 pine)
      (surface-condition p130 verysmooth)
      (treatment p130 varnished)
      (available p131)
      (colour p131 green)
      (surface-condition p131 verysmooth)
      (available p132)
      (surface-condition p132 verysmooth)
      (treatment p132 glazed)
      (available p133)
      (colour p133 red)
      (treatment p133 varnished)
      (available p134)
      (colour p134 natural)
      (surface-condition p134 verysmooth)
      (available p135)
      (colour p135 green)
      (wood p135 beech)
      (surface-condition p135 smooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 black)
      (wood p136 beech)
      (surface-condition p136 verysmooth)
      (treatment p136 varnished)
      (available p137)
      (colour p137 white)
      (wood p137 mahogany)
      (surface-condition p137 verysmooth)
      (treatment p137 varnished)
      (available p138)
      (colour p138 red)
      (surface-condition p138 verysmooth)
      (available p139)
      (colour p139 white)
      (wood p139 mahogany)
      (available p140)
      (surface-condition p140 verysmooth)
      (treatment p140 glazed)
      (available p141)
      (colour p141 green)
      (treatment p141 varnished)
      (available p142)
      (colour p142 black)
      (wood p142 teak)
      (surface-condition p142 smooth)
      (treatment p142 varnished)
      (available p143)
      (wood p143 teak)
      (surface-condition p143 verysmooth)
      (treatment p143 glazed)
      (available p144)
      (colour p144 red)
      (surface-condition p144 verysmooth)
      (available p145)
      (colour p145 mauve)
      (surface-condition p145 smooth)
      (treatment p145 glazed)
      (available p146)
      (wood p146 pine)
      (surface-condition p146 smooth)
      (available p147)
      (colour p147 blue)
      (wood p147 pine)
      (surface-condition p147 verysmooth)
      (treatment p147 varnished)
      (available p148)
      (surface-condition p148 smooth)
      (treatment p148 varnished)
      (available p149)
      (colour p149 green)
      (wood p149 teak)
      (treatment p149 varnished)
      (available p150)
      (colour p150 blue)
      (treatment p150 glazed)
      (available p151)
      (colour p151 red)
      (wood p151 teak)
      (treatment p151 glazed)
      (available p152)
      (colour p152 green)
      (wood p152 beech)
      (surface-condition p152 verysmooth)
      (treatment p152 varnished)
      (available p153)
      (surface-condition p153 verysmooth)
      (treatment p153 glazed)
      (available p154)
      (wood p154 beech)
      (surface-condition p154 verysmooth)
      (available p155)
      (colour p155 mauve)
      (wood p155 oak)
      (surface-condition p155 smooth)
      (available p156)
      (colour p156 natural)
      (surface-condition p156 smooth)
      (available p157)
      (colour p157 black)
      (treatment p157 varnished)
      (available p158)
      (surface-condition p158 smooth)
      (treatment p158 varnished)
      (available p159)
      (colour p159 green)
      (wood p159 mahogany)
      (surface-condition p159 smooth)
      (treatment p159 varnished)
      (available p160)
      (colour p160 white)
      (surface-condition p160 smooth)
      (available p161)
      (wood p161 pine)
      (treatment p161 varnished)
      (available p162)
      (colour p162 white)
      (wood p162 walnut)
      (treatment p162 glazed)
      (available p163)
      (colour p163 green)
      (wood p163 cherry)
      (available p164)
      (colour p164 mauve)
      (surface-condition p164 verysmooth)
      (available p165)
      (wood p165 pine)
      (treatment p165 varnished)
      (available p166)
      (colour p166 mauve)
      (surface-condition p166 smooth)
      (treatment p166 varnished)
      (available p167)
      (colour p167 white)
      (wood p167 oak)
      (surface-condition p167 smooth)
      (treatment p167 glazed)
      (available p168)
      (wood p168 pine)
      (surface-condition p168 smooth)
      (available p169)
      (surface-condition p169 smooth)
      (treatment p169 varnished)
      (available p170)
      (colour p170 black)
      (wood p170 pine)
      (surface-condition p170 verysmooth)
      (treatment p170 varnished)
      (available p171)
      (colour p171 mauve)
      (wood p171 walnut)
      (treatment p171 glazed)
      (available p172)
      (wood p172 cherry)
      (surface-condition p172 verysmooth)
      (available p173)
      (colour p173 black)
      (wood p173 beech)
      (surface-condition p173 verysmooth)
      (treatment p173 glazed)
      (available p174)
      (colour p174 black)
      (wood p174 cherry)
      (surface-condition p174 smooth)
      (treatment p174 glazed)
      (available p175)
      (colour p175 mauve)
      (surface-condition p175 smooth)
      (available p176)
      (colour p176 mauve)
      (wood p176 walnut)
      (surface-condition p176 verysmooth)
      (treatment p176 glazed)
      (available p177)
      (wood p177 beech)
      (surface-condition p177 verysmooth)
      (available p178)
      (colour p178 natural)
      (wood p178 beech)
      (available p179)
      (colour p179 natural)
      (wood p179 pine)
      (surface-condition p179 verysmooth)
      (treatment p179 varnished)
      (available p180)
      (surface-condition p180 verysmooth)
      (treatment p180 varnished)
      (available p181)
      (wood p181 teak)
      (surface-condition p181 smooth)
      (treatment p181 glazed)
      (available p182)
      (wood p182 pine)
      (treatment p182 glazed)
      (available p183)
      (wood p183 teak)
      (surface-condition p183 verysmooth)
      (available p184)
      (wood p184 walnut)
      (surface-condition p184 verysmooth)
      (available p185)
      (colour p185 green)
      (wood p185 teak)
      (surface-condition p185 verysmooth)
      (available p186)
      (colour p186 green)
      (surface-condition p186 smooth)
      (available p187)
      (colour p187 red)
      (wood p187 oak)
      (available p188)
      (colour p188 white)
      (wood p188 teak)
      (surface-condition p188 verysmooth)
      (treatment p188 glazed)
      (available p189)
      (colour p189 black)
      (wood p189 beech)
      (treatment p189 glazed)
      (available p190)
      (wood p190 walnut)
      (surface-condition p190 verysmooth)
      (treatment p190 varnished)
      (available p191)
      (wood p191 mahogany)
      (surface-condition p191 verysmooth)
      (available p192)
      (wood p192 cherry)
      (surface-condition p192 verysmooth)
      (available p193)
      (surface-condition p193 smooth)
      (treatment p193 varnished)
      (available p194)
      (colour p194 white)
      (surface-condition p194 verysmooth)
      (available p195)
      (colour p195 green)
      (wood p195 mahogany)
      (surface-condition p195 smooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 natural)
      (surface-condition p196 verysmooth)
      (treatment p196 glazed)
      (available p197)
      (colour p197 natural)
      (wood p197 teak)
      (surface-condition p197 verysmooth)
      (available p198)
      (wood p198 pine)
      (treatment p198 glazed)
      (available p199)
      (colour p199 natural)
      (treatment p199 glazed)
      (available p200)
      (colour p200 red)
      (wood p200 pine)
      (treatment p200 varnished)
      (available p201)
      (wood p201 beech)
      (surface-condition p201 verysmooth)
      (available p202)
      (colour p202 natural)
      (wood p202 teak)
      (surface-condition p202 verysmooth)
      (available p203)
      (wood p203 mahogany)
      (surface-condition p203 verysmooth)
      (available p204)
      (colour p204 white)
      (surface-condition p204 verysmooth)
      (available p205)
      (wood p205 cherry)
      (surface-condition p205 smooth)
      (available p206)
      (colour p206 red)
      (surface-condition p206 smooth)
      (treatment p206 glazed)
      (available p207)
      (colour p207 natural)
      (wood p207 walnut)
      (available p208)
      (colour p208 natural)
      (wood p208 mahogany)
      (surface-condition p208 smooth)
      (treatment p208 varnished)
      (available p209)
      (surface-condition p209 smooth)
      (treatment p209 glazed)
      (available p210)
      (colour p210 black)
      (wood p210 oak)
      (surface-condition p210 verysmooth)
      (treatment p210 glazed)
      (available p211)
      (colour p211 green)
      (surface-condition p211 smooth)
      (available p212)
      (surface-condition p212 smooth)
      (treatment p212 glazed)
      (available p213)
      (colour p213 black)
      (treatment p213 glazed)
      (available p214)
      (colour p214 natural)
      (wood p214 beech)
      (surface-condition p214 smooth)
      (treatment p214 varnished)
      (available p215)
      (colour p215 black)
      (wood p215 beech)
      (surface-condition p215 verysmooth)
      (treatment p215 glazed)
      (available p216)
      (colour p216 mauve)
      (wood p216 pine)
      (surface-condition p216 smooth)
      (treatment p216 glazed)
      (available p217)
      (surface-condition p217 smooth)
      (treatment p217 glazed)
      (available p218)
      (colour p218 white)
      (wood p218 mahogany)
      (surface-condition p218 verysmooth)
      (treatment p218 varnished)
      (available p219)
      (wood p219 walnut)
      (treatment p219 glazed)
      (available p220)
      (colour p220 red)
      (wood p220 teak)
      (surface-condition p220 smooth)
      (treatment p220 varnished)
      (available p221)
      (wood p221 mahogany)
      (surface-condition p221 verysmooth)
      (available p222)
      (wood p222 cherry)
      (surface-condition p222 smooth)
      (available p223)
      (wood p223 teak)
      (surface-condition p223 smooth)
      (available p224)
      (wood p224 mahogany)
      (treatment p224 glazed)
      (available p225)
      (wood p225 cherry)
      (surface-condition p225 smooth)
      (available p226)
      (wood p226 oak)
      (treatment p226 glazed)
    )
  )
  
)
