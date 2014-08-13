; woodworking task with 218 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 96052

(define (problem wood-prob-sat-177)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red green black white mauve blue - acolour
    mahogany cherry pine teak oak beech walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
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
    
    
    
    
    (available p1)
    (colour p1 mauve)
    (wood p1 beech)
    (surface-condition p1 rough)
    (treatment p1 varnished)
    (goalsize p1 small)
    
    
    
    
    (available p2)
    (colour p2 natural)
    (wood p2 cherry)
    (surface-condition p2 smooth)
    (treatment p2 glazed)
    (goalsize p2 large)
    
    
    
    
    (available p3)
    (colour p3 green)
    (wood p3 mahogany)
    (surface-condition p3 verysmooth)
    (treatment p3 glazed)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (available p8)
    (colour p8 green)
    (wood p8 walnut)
    (surface-condition p8 smooth)
    (treatment p8 varnished)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 black)
    (wood p9 walnut)
    (surface-condition p9 smooth)
    (treatment p9 varnished)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (available p12)
    (colour p12 black)
    (wood p12 mahogany)
    (surface-condition p12 verysmooth)
    (treatment p12 glazed)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (available p18)
    (colour p18 black)
    (wood p18 oak)
    (surface-condition p18 verysmooth)
    (treatment p18 glazed)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 blue)
    (wood p19 pine)
    (surface-condition p19 smooth)
    (treatment p19 colourfragments)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 blue)
    (wood p24 cherry)
    (surface-condition p24 rough)
    (treatment p24 varnished)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 black)
    (wood p28 walnut)
    (surface-condition p28 smooth)
    (treatment p28 glazed)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 blue)
    (wood p31 mahogany)
    (surface-condition p31 rough)
    (treatment p31 varnished)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (available p39)
    (colour p39 blue)
    (wood p39 walnut)
    (surface-condition p39 verysmooth)
    (treatment p39 glazed)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (available p41)
    (colour p41 green)
    (wood p41 pine)
    (surface-condition p41 smooth)
    (treatment p41 colourfragments)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (available p45)
    (colour p45 white)
    (wood p45 oak)
    (surface-condition p45 verysmooth)
    (treatment p45 varnished)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (available p47)
    (colour p47 red)
    (wood p47 cherry)
    (surface-condition p47 smooth)
    (treatment p47 glazed)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (available p50)
    (colour p50 blue)
    (wood p50 mahogany)
    (surface-condition p50 smooth)
    (treatment p50 varnished)
    (goalsize p50 large)
    
    
    
    
    (available p51)
    (colour p51 green)
    (wood p51 oak)
    (surface-condition p51 smooth)
    (treatment p51 varnished)
    (goalsize p51 large)
    
    
    
    
    (available p52)
    (colour p52 red)
    (wood p52 beech)
    (surface-condition p52 smooth)
    (treatment p52 varnished)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (available p56)
    (colour p56 red)
    (wood p56 mahogany)
    (surface-condition p56 smooth)
    (treatment p56 colourfragments)
    (goalsize p56 medium)
    
    
    
    
    (available p57)
    (colour p57 black)
    (wood p57 cherry)
    (surface-condition p57 verysmooth)
    (treatment p57 colourfragments)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
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
    
    
    
    
    (available p65)
    (colour p65 red)
    (wood p65 teak)
    (surface-condition p65 verysmooth)
    (treatment p65 colourfragments)
    (goalsize p65 medium)
    
    
    
    
    (available p66)
    (colour p66 black)
    (wood p66 beech)
    (surface-condition p66 verysmooth)
    (treatment p66 colourfragments)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (available p71)
    (colour p71 natural)
    (wood p71 beech)
    (surface-condition p71 verysmooth)
    (treatment p71 colourfragments)
    (goalsize p71 small)
    
    
    
    
    (available p72)
    (colour p72 green)
    (wood p72 teak)
    (surface-condition p72 smooth)
    (treatment p72 glazed)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (available p74)
    (colour p74 green)
    (wood p74 teak)
    (surface-condition p74 rough)
    (treatment p74 colourfragments)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (available p78)
    (colour p78 green)
    (wood p78 beech)
    (surface-condition p78 smooth)
    (treatment p78 colourfragments)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (available p86)
    (colour p86 green)
    (wood p86 oak)
    (surface-condition p86 smooth)
    (treatment p86 varnished)
    (goalsize p86 medium)
    
    
    
    
    (available p87)
    (colour p87 natural)
    (wood p87 mahogany)
    (surface-condition p87 rough)
    (treatment p87 varnished)
    (goalsize p87 small)
    
    
    
    
    (available p88)
    (colour p88 natural)
    (wood p88 beech)
    (surface-condition p88 verysmooth)
    (treatment p88 glazed)
    (goalsize p88 medium)
    
    
    
    
    (available p89)
    (colour p89 black)
    (wood p89 mahogany)
    (surface-condition p89 smooth)
    (treatment p89 varnished)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (available p95)
    (colour p95 blue)
    (wood p95 beech)
    (surface-condition p95 verysmooth)
    (treatment p95 varnished)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (available p97)
    (colour p97 green)
    (wood p97 walnut)
    (surface-condition p97 rough)
    (treatment p97 glazed)
    (goalsize p97 large)
    
    
    
    
    (available p98)
    (colour p98 green)
    (wood p98 walnut)
    (surface-condition p98 verysmooth)
    (treatment p98 colourfragments)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (available p100)
    (colour p100 green)
    (wood p100 pine)
    (surface-condition p100 verysmooth)
    (treatment p100 colourfragments)
    (goalsize p100 small)
    
    
    
    
    (available p101)
    (colour p101 natural)
    (wood p101 beech)
    (surface-condition p101 verysmooth)
    (treatment p101 colourfragments)
    (goalsize p101 medium)
    
    
    
    
    (available p102)
    (colour p102 mauve)
    (wood p102 mahogany)
    (surface-condition p102 verysmooth)
    (treatment p102 colourfragments)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (available p113)
    (colour p113 red)
    (wood p113 walnut)
    (surface-condition p113 rough)
    (treatment p113 glazed)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (available p120)
    (colour p120 natural)
    (wood p120 mahogany)
    (surface-condition p120 smooth)
    (treatment p120 glazed)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (available p130)
    (colour p130 black)
    (wood p130 mahogany)
    (surface-condition p130 smooth)
    (treatment p130 varnished)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (available p141)
    (colour p141 mauve)
    (wood p141 pine)
    (surface-condition p141 smooth)
    (treatment p141 colourfragments)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (available p148)
    (colour p148 white)
    (wood p148 pine)
    (surface-condition p148 smooth)
    (treatment p148 colourfragments)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (available p161)
    (colour p161 mauve)
    (wood p161 oak)
    (surface-condition p161 rough)
    (treatment p161 colourfragments)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (available p168)
    (colour p168 black)
    (wood p168 walnut)
    (surface-condition p168 rough)
    (treatment p168 varnished)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 medium)
    
    
    
    
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
    (goalsize p176 small)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (available p178)
    (colour p178 mauve)
    (wood p178 pine)
    (surface-condition p178 verysmooth)
    (treatment p178 glazed)
    (goalsize p178 medium)
    
    
    
    
    (available p179)
    (colour p179 natural)
    (wood p179 beech)
    (surface-condition p179 verysmooth)
    (treatment p179 glazed)
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (available p181)
    (colour p181 natural)
    (wood p181 teak)
    (surface-condition p181 verysmooth)
    (treatment p181 glazed)
    (goalsize p181 small)
    
    
    
    
    (unused p182)
    (goalsize p182 large)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (available p185)
    (colour p185 natural)
    (wood p185 beech)
    (surface-condition p185 rough)
    (treatment p185 glazed)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 small)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
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
    
    
    
    
    (available p197)
    (colour p197 green)
    (wood p197 teak)
    (surface-condition p197 rough)
    (treatment p197 varnished)
    (goalsize p197 small)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (unused p199)
    (goalsize p199 medium)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 small)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
    (unused p204)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 small)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 medium)
    
    
    
    
    (unused p211)
    (goalsize p211 medium)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (available p213)
    (colour p213 mauve)
    (wood p213 mahogany)
    (surface-condition p213 rough)
    (treatment p213 colourfragments)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (unused p215)
    (goalsize p215 medium)
    
    
    
    
    (available p216)
    (colour p216 black)
    (wood p216 mahogany)
    (surface-condition p216 verysmooth)
    (treatment p216 varnished)
    (goalsize p216 large)
    
    
    
    
    (available p217)
    (colour p217 blue)
    (wood p217 mahogany)
    (surface-condition p217 smooth)
    (treatment p217 varnished)
    (goalsize p217 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s4)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s8)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s5)
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
    (boardsize b13 s6)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s2)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 oak)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s8)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 oak)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s9)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
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
    (boardsize b25 s8)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s7)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s8)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s9)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 pine)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s7)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s7)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s6)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s12)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s8)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s7)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s7)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s9)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s7)
    (wood b40 walnut)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s11)
    (wood b41 walnut)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s9)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s4)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s10)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s7)
    (wood b45 teak)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s8)
    (wood b46 teak)
    (surface-condition b46 smooth)
    (available b46)
    (boardsize b47 s5)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s7)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s7)
    (wood b49 teak)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s11)
    (wood b50 teak)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s1)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 beech)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s6)
    (wood b53 beech)
    (surface-condition b53 smooth)
    (available b53)
    (boardsize b54 s5)
    (wood b54 beech)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s9)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s9)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s9)
    (wood b57 beech)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s10)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s9)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s3)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (treatment p0 varnished)
      (available p1)
      (colour p1 white)
      (wood p1 beech)
      (treatment p1 varnished)
      (available p2)
      (colour p2 mauve)
      (treatment p2 glazed)
      (available p3)
      (colour p3 white)
      (wood p3 mahogany)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 mauve)
      (wood p4 oak)
      (available p5)
      (colour p5 white)
      (wood p5 teak)
      (available p6)
      (colour p6 natural)
      (treatment p6 glazed)
      (available p7)
      (wood p7 pine)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 natural)
      (wood p8 walnut)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 natural)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 blue)
      (wood p10 oak)
      (surface-condition p10 verysmooth)
      (available p11)
      (colour p11 white)
      (treatment p11 glazed)
      (available p12)
      (colour p12 natural)
      (wood p12 mahogany)
      (treatment p12 glazed)
      (available p13)
      (colour p13 mauve)
      (wood p13 oak)
      (surface-condition p13 verysmooth)
      (available p14)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 cherry)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 black)
      (wood p16 cherry)
      (available p17)
      (colour p17 blue)
      (surface-condition p17 verysmooth)
      (available p18)
      (wood p18 oak)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 mauve)
      (surface-condition p19 smooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 green)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 red)
      (wood p21 beech)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 green)
      (wood p22 beech)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 mauve)
      (wood p23 walnut)
      (available p24)
      (colour p24 green)
      (wood p24 cherry)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 mauve)
      (wood p25 beech)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 red)
      (wood p26 mahogany)
      (surface-condition p26 smooth)
      (available p27)
      (wood p27 pine)
      (surface-condition p27 verysmooth)
      (available p28)
      (colour p28 green)
      (wood p28 walnut)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 natural)
      (treatment p30 glazed)
      (available p31)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 green)
      (wood p32 walnut)
      (available p33)
      (colour p33 mauve)
      (wood p33 walnut)
      (treatment p33 varnished)
      (available p34)
      (colour p34 white)
      (wood p34 pine)
      (available p35)
      (wood p35 pine)
      (treatment p35 varnished)
      (available p36)
      (wood p36 beech)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 black)
      (treatment p37 varnished)
      (available p38)
      (colour p38 white)
      (wood p38 pine)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 black)
      (wood p39 walnut)
      (treatment p39 glazed)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 blue)
      (wood p41 pine)
      (available p42)
      (wood p42 oak)
      (surface-condition p42 verysmooth)
      (available p43)
      (wood p43 cherry)
      (surface-condition p43 smooth)
      (treatment p43 varnished)
      (available p44)
      (wood p44 teak)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 natural)
      (wood p45 oak)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 blue)
      (surface-condition p47 verysmooth)
      (available p48)
      (wood p48 oak)
      (treatment p48 glazed)
      (available p49)
      (wood p49 pine)
      (treatment p49 glazed)
      (available p50)
      (colour p50 black)
      (wood p50 mahogany)
      (surface-condition p50 smooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 blue)
      (treatment p51 glazed)
      (available p52)
      (colour p52 blue)
      (treatment p52 varnished)
      (available p53)
      (colour p53 red)
      (wood p53 teak)
      (treatment p53 glazed)
      (available p54)
      (colour p54 green)
      (treatment p54 glazed)
      (available p55)
      (wood p55 pine)
      (surface-condition p55 verysmooth)
      (available p56)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 white)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 natural)
      (treatment p58 glazed)
      (available p59)
      (colour p59 black)
      (surface-condition p59 verysmooth)
      (available p60)
      (colour p60 green)
      (wood p60 pine)
      (surface-condition p60 verysmooth)
      (available p61)
      (colour p61 natural)
      (wood p61 beech)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 mauve)
      (wood p62 pine)
      (available p63)
      (colour p63 black)
      (surface-condition p63 verysmooth)
      (available p64)
      (colour p64 red)
      (surface-condition p64 smooth)
      (available p65)
      (colour p65 white)
      (wood p65 teak)
      (treatment p65 glazed)
      (available p66)
      (colour p66 white)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 green)
      (wood p67 mahogany)
      (treatment p67 varnished)
      (available p68)
      (colour p68 blue)
      (treatment p68 glazed)
      (available p69)
      (colour p69 blue)
      (surface-condition p69 verysmooth)
      (available p70)
      (wood p70 cherry)
      (surface-condition p70 verysmooth)
      (available p71)
      (colour p71 blue)
      (surface-condition p71 smooth)
      (available p72)
      (wood p72 teak)
      (surface-condition p72 verysmooth)
      (treatment p72 varnished)
      (available p73)
      (wood p73 mahogany)
      (surface-condition p73 verysmooth)
      (available p74)
      (colour p74 black)
      (treatment p74 varnished)
      (available p75)
      (wood p75 beech)
      (surface-condition p75 smooth)
      (available p76)
      (colour p76 natural)
      (treatment p76 varnished)
      (available p77)
      (colour p77 black)
      (wood p77 walnut)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (wood p78 beech)
      (surface-condition p78 verysmooth)
      (available p79)
      (colour p79 natural)
      (wood p79 beech)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 natural)
      (wood p80 walnut)
      (treatment p80 glazed)
      (available p81)
      (colour p81 white)
      (treatment p81 varnished)
      (available p82)
      (colour p82 mauve)
      (treatment p82 glazed)
      (available p83)
      (colour p83 red)
      (wood p83 walnut)
      (surface-condition p83 verysmooth)
      (available p84)
      (colour p84 green)
      (surface-condition p84 verysmooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 red)
      (wood p85 cherry)
      (surface-condition p85 verysmooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 white)
      (surface-condition p86 verysmooth)
      (treatment p86 glazed)
      (available p87)
      (colour p87 mauve)
      (wood p87 mahogany)
      (surface-condition p87 verysmooth)
      (treatment p87 glazed)
      (available p88)
      (colour p88 red)
      (treatment p88 varnished)
      (available p89)
      (wood p89 mahogany)
      (surface-condition p89 verysmooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 red)
      (wood p90 teak)
      (available p91)
      (colour p91 red)
      (wood p91 walnut)
      (surface-condition p91 smooth)
      (available p92)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 white)
      (wood p93 pine)
      (available p94)
      (colour p94 green)
      (wood p94 mahogany)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 natural)
      (wood p95 beech)
      (surface-condition p95 verysmooth)
      (available p96)
      (wood p96 oak)
      (treatment p96 varnished)
      (available p97)
      (wood p97 walnut)
      (treatment p97 varnished)
      (available p98)
      (colour p98 red)
      (wood p98 walnut)
      (surface-condition p98 smooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 mauve)
      (surface-condition p99 smooth)
      (available p100)
      (wood p100 pine)
      (surface-condition p100 smooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 mauve)
      (wood p101 beech)
      (treatment p101 varnished)
      (available p102)
      (colour p102 white)
      (treatment p102 glazed)
      (available p103)
      (colour p103 white)
      (surface-condition p103 verysmooth)
      (available p104)
      (colour p104 black)
      (wood p104 pine)
      (treatment p104 varnished)
      (available p105)
      (wood p105 pine)
      (treatment p105 glazed)
      (available p106)
      (colour p106 white)
      (wood p106 pine)
      (surface-condition p106 smooth)
      (treatment p106 glazed)
      (available p107)
      (colour p107 white)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (wood p108 pine)
      (surface-condition p108 verysmooth)
      (available p109)
      (colour p109 natural)
      (wood p109 cherry)
      (surface-condition p109 smooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 black)
      (surface-condition p110 verysmooth)
      (available p111)
      (colour p111 mauve)
      (treatment p111 varnished)
      (available p112)
      (colour p112 blue)
      (wood p112 oak)
      (surface-condition p112 smooth)
      (treatment p112 varnished)
      (available p113)
      (surface-condition p113 smooth)
      (treatment p113 glazed)
      (available p114)
      (colour p114 red)
      (treatment p114 varnished)
      (available p115)
      (colour p115 red)
      (wood p115 walnut)
      (surface-condition p115 smooth)
      (treatment p115 varnished)
      (available p116)
      (colour p116 natural)
      (wood p116 walnut)
      (available p117)
      (colour p117 mauve)
      (wood p117 cherry)
      (surface-condition p117 verysmooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 mauve)
      (wood p118 walnut)
      (available p119)
      (surface-condition p119 smooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 blue)
      (wood p120 mahogany)
      (surface-condition p120 verysmooth)
      (treatment p120 glazed)
      (available p121)
      (wood p121 pine)
      (treatment p121 varnished)
      (available p122)
      (wood p122 cherry)
      (treatment p122 varnished)
      (available p123)
      (wood p123 pine)
      (surface-condition p123 smooth)
      (treatment p123 glazed)
      (available p124)
      (colour p124 green)
      (surface-condition p124 smooth)
      (available p125)
      (colour p125 natural)
      (wood p125 beech)
      (available p126)
      (colour p126 white)
      (surface-condition p126 smooth)
      (available p127)
      (colour p127 red)
      (treatment p127 varnished)
      (available p128)
      (colour p128 white)
      (wood p128 beech)
      (treatment p128 varnished)
      (available p129)
      (colour p129 mauve)
      (treatment p129 varnished)
      (available p130)
      (colour p130 blue)
      (wood p130 mahogany)
      (surface-condition p130 smooth)
      (treatment p130 varnished)
      (available p131)
      (colour p131 green)
      (wood p131 teak)
      (surface-condition p131 verysmooth)
      (treatment p131 glazed)
      (available p132)
      (colour p132 white)
      (wood p132 walnut)
      (treatment p132 glazed)
      (available p133)
      (surface-condition p133 smooth)
      (treatment p133 varnished)
      (available p134)
      (colour p134 black)
      (treatment p134 glazed)
      (available p135)
      (wood p135 mahogany)
      (surface-condition p135 smooth)
      (available p136)
      (colour p136 green)
      (wood p136 cherry)
      (surface-condition p136 verysmooth)
      (treatment p136 glazed)
      (available p137)
      (colour p137 red)
      (wood p137 oak)
      (surface-condition p137 smooth)
      (treatment p137 glazed)
      (available p138)
      (colour p138 green)
      (wood p138 teak)
      (surface-condition p138 verysmooth)
      (treatment p138 varnished)
      (available p139)
      (wood p139 mahogany)
      (surface-condition p139 smooth)
      (available p140)
      (wood p140 cherry)
      (surface-condition p140 smooth)
      (treatment p140 glazed)
      (available p141)
      (wood p141 pine)
      (treatment p141 varnished)
      (available p142)
      (colour p142 natural)
      (treatment p142 glazed)
      (available p143)
      (wood p143 teak)
      (surface-condition p143 smooth)
      (available p144)
      (colour p144 natural)
      (wood p144 pine)
      (surface-condition p144 verysmooth)
      (treatment p144 varnished)
      (available p145)
      (colour p145 natural)
      (wood p145 beech)
      (surface-condition p145 verysmooth)
      (treatment p145 glazed)
      (available p146)
      (colour p146 red)
      (wood p146 beech)
      (available p147)
      (colour p147 white)
      (wood p147 oak)
      (surface-condition p147 smooth)
      (treatment p147 glazed)
      (available p148)
      (colour p148 natural)
      (wood p148 pine)
      (surface-condition p148 verysmooth)
      (available p149)
      (wood p149 oak)
      (surface-condition p149 verysmooth)
      (available p150)
      (wood p150 mahogany)
      (treatment p150 varnished)
      (available p151)
      (colour p151 green)
      (wood p151 teak)
      (surface-condition p151 smooth)
      (treatment p151 glazed)
      (available p152)
      (colour p152 red)
      (surface-condition p152 verysmooth)
      (available p153)
      (colour p153 natural)
      (wood p153 cherry)
      (surface-condition p153 smooth)
      (available p154)
      (colour p154 red)
      (wood p154 walnut)
      (treatment p154 varnished)
      (available p155)
      (colour p155 white)
      (treatment p155 glazed)
      (available p156)
      (colour p156 natural)
      (wood p156 oak)
      (available p157)
      (colour p157 black)
      (surface-condition p157 verysmooth)
      (available p158)
      (colour p158 white)
      (wood p158 walnut)
      (surface-condition p158 smooth)
      (treatment p158 varnished)
      (available p159)
      (colour p159 black)
      (wood p159 cherry)
      (surface-condition p159 smooth)
      (treatment p159 glazed)
      (available p160)
      (wood p160 beech)
      (surface-condition p160 verysmooth)
      (treatment p160 glazed)
      (available p161)
      (colour p161 green)
      (surface-condition p161 verysmooth)
      (treatment p161 glazed)
      (available p162)
      (colour p162 natural)
      (wood p162 oak)
      (surface-condition p162 verysmooth)
      (treatment p162 varnished)
      (available p163)
      (colour p163 black)
      (surface-condition p163 smooth)
      (available p164)
      (wood p164 teak)
      (surface-condition p164 verysmooth)
      (available p165)
      (colour p165 mauve)
      (wood p165 oak)
      (available p166)
      (surface-condition p166 verysmooth)
      (treatment p166 glazed)
      (available p167)
      (colour p167 natural)
      (wood p167 beech)
      (surface-condition p167 verysmooth)
      (available p168)
      (colour p168 natural)
      (wood p168 walnut)
      (surface-condition p168 smooth)
      (treatment p168 varnished)
      (available p169)
      (colour p169 white)
      (wood p169 mahogany)
      (available p170)
      (colour p170 natural)
      (wood p170 mahogany)
      (surface-condition p170 verysmooth)
      (treatment p170 glazed)
      (available p171)
      (colour p171 natural)
      (wood p171 cherry)
      (surface-condition p171 smooth)
      (available p172)
      (wood p172 teak)
      (treatment p172 glazed)
      (available p173)
      (colour p173 blue)
      (wood p173 beech)
      (treatment p173 glazed)
      (available p174)
      (colour p174 black)
      (wood p174 pine)
      (surface-condition p174 smooth)
      (treatment p174 glazed)
      (available p175)
      (colour p175 white)
      (surface-condition p175 verysmooth)
      (available p176)
      (colour p176 white)
      (wood p176 teak)
      (surface-condition p176 verysmooth)
      (treatment p176 glazed)
      (available p177)
      (surface-condition p177 verysmooth)
      (treatment p177 varnished)
      (available p178)
      (wood p178 pine)
      (surface-condition p178 smooth)
      (available p179)
      (colour p179 green)
      (surface-condition p179 smooth)
      (available p180)
      (colour p180 green)
      (surface-condition p180 smooth)
      (available p181)
      (colour p181 blue)
      (wood p181 teak)
      (available p182)
      (wood p182 oak)
      (surface-condition p182 smooth)
      (available p183)
      (wood p183 cherry)
      (treatment p183 glazed)
      (available p184)
      (wood p184 pine)
      (surface-condition p184 smooth)
      (available p185)
      (colour p185 white)
      (surface-condition p185 smooth)
      (available p186)
      (colour p186 black)
      (treatment p186 varnished)
      (available p187)
      (colour p187 natural)
      (surface-condition p187 smooth)
      (available p188)
      (wood p188 teak)
      (surface-condition p188 verysmooth)
      (treatment p188 glazed)
      (available p189)
      (colour p189 green)
      (wood p189 mahogany)
      (surface-condition p189 smooth)
      (treatment p189 glazed)
      (available p190)
      (colour p190 white)
      (surface-condition p190 verysmooth)
      (available p191)
      (colour p191 black)
      (surface-condition p191 verysmooth)
      (available p192)
      (colour p192 mauve)
      (surface-condition p192 smooth)
      (available p193)
      (colour p193 green)
      (wood p193 pine)
      (surface-condition p193 verysmooth)
      (treatment p193 varnished)
      (available p194)
      (colour p194 mauve)
      (surface-condition p194 verysmooth)
      (available p195)
      (wood p195 mahogany)
      (surface-condition p195 smooth)
      (available p196)
      (colour p196 black)
      (treatment p196 varnished)
      (available p197)
      (colour p197 natural)
      (wood p197 teak)
      (surface-condition p197 smooth)
      (treatment p197 glazed)
      (available p198)
      (colour p198 green)
      (wood p198 oak)
      (surface-condition p198 smooth)
      (treatment p198 varnished)
      (available p199)
      (colour p199 blue)
      (treatment p199 varnished)
      (available p200)
      (colour p200 red)
      (wood p200 oak)
      (available p201)
      (colour p201 green)
      (treatment p201 varnished)
      (available p202)
      (colour p202 natural)
      (surface-condition p202 smooth)
      (available p203)
      (colour p203 blue)
      (surface-condition p203 verysmooth)
      (available p204)
      (colour p204 black)
      (surface-condition p204 verysmooth)
      (available p205)
      (colour p205 natural)
      (surface-condition p205 smooth)
      (available p206)
      (colour p206 red)
      (treatment p206 glazed)
      (available p207)
      (wood p207 walnut)
      (treatment p207 varnished)
      (available p208)
      (colour p208 green)
      (wood p208 walnut)
      (treatment p208 varnished)
      (available p209)
      (colour p209 mauve)
      (wood p209 beech)
      (surface-condition p209 verysmooth)
      (treatment p209 glazed)
      (available p210)
      (colour p210 natural)
      (wood p210 walnut)
      (surface-condition p210 smooth)
      (treatment p210 glazed)
      (available p211)
      (wood p211 mahogany)
      (treatment p211 varnished)
      (available p212)
      (colour p212 green)
      (wood p212 beech)
      (treatment p212 varnished)
      (available p213)
      (wood p213 mahogany)
      (surface-condition p213 verysmooth)
      (treatment p213 varnished)
      (available p214)
      (colour p214 mauve)
      (surface-condition p214 smooth)
      (available p215)
      (colour p215 black)
      (surface-condition p215 smooth)
      (available p216)
      (colour p216 mauve)
      (wood p216 mahogany)
      (surface-condition p216 smooth)
      (treatment p216 glazed)
      (available p217)
      (colour p217 black)
      (wood p217 mahogany)
      (treatment p217 varnished)
    )
  )
  
)
