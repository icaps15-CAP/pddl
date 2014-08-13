; woodworking task with 233 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 339885

(define (problem wood-prob-sat-88)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black blue green red white mauve - acolour
    teak cherry oak beech mahogany pine walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
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
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 green)
    (wood p6 cherry)
    (surface-condition p6 smooth)
    (treatment p6 colourfragments)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (available p8)
    (colour p8 blue)
    (wood p8 teak)
    (surface-condition p8 verysmooth)
    (treatment p8 varnished)
    (goalsize p8 small)
    
    
    
    
    (available p9)
    (colour p9 black)
    (wood p9 cherry)
    (surface-condition p9 rough)
    (treatment p9 colourfragments)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 green)
    (wood p12 oak)
    (surface-condition p12 smooth)
    (treatment p12 varnished)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 white)
    (wood p20 mahogany)
    (surface-condition p20 verysmooth)
    (treatment p20 varnished)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (available p25)
    (colour p25 blue)
    (wood p25 mahogany)
    (surface-condition p25 rough)
    (treatment p25 colourfragments)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 blue)
    (wood p27 pine)
    (surface-condition p27 smooth)
    (treatment p27 colourfragments)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (available p32)
    (colour p32 green)
    (wood p32 walnut)
    (surface-condition p32 smooth)
    (treatment p32 glazed)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (available p34)
    (colour p34 red)
    (wood p34 oak)
    (surface-condition p34 smooth)
    (treatment p34 colourfragments)
    (goalsize p34 medium)
    
    
    
    
    (available p35)
    (colour p35 red)
    (wood p35 oak)
    (surface-condition p35 verysmooth)
    (treatment p35 varnished)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (available p45)
    (colour p45 green)
    (wood p45 oak)
    (surface-condition p45 verysmooth)
    (treatment p45 colourfragments)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (available p47)
    (colour p47 natural)
    (wood p47 mahogany)
    (surface-condition p47 smooth)
    (treatment p47 glazed)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (available p52)
    (colour p52 blue)
    (wood p52 beech)
    (surface-condition p52 verysmooth)
    (treatment p52 varnished)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (available p54)
    (colour p54 red)
    (wood p54 beech)
    (surface-condition p54 verysmooth)
    (treatment p54 colourfragments)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (available p59)
    (colour p59 mauve)
    (wood p59 cherry)
    (surface-condition p59 smooth)
    (treatment p59 colourfragments)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 white)
    (wood p67 oak)
    (surface-condition p67 smooth)
    (treatment p67 glazed)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (available p70)
    (colour p70 mauve)
    (wood p70 oak)
    (surface-condition p70 rough)
    (treatment p70 glazed)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (available p74)
    (colour p74 blue)
    (wood p74 pine)
    (surface-condition p74 rough)
    (treatment p74 colourfragments)
    (goalsize p74 large)
    
    
    
    
    (available p75)
    (colour p75 red)
    (wood p75 cherry)
    (surface-condition p75 verysmooth)
    (treatment p75 colourfragments)
    (goalsize p75 medium)
    
    
    
    
    (available p76)
    (colour p76 natural)
    (wood p76 pine)
    (surface-condition p76 smooth)
    (treatment p76 colourfragments)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (available p93)
    (colour p93 natural)
    (wood p93 teak)
    (surface-condition p93 rough)
    (treatment p93 colourfragments)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (available p97)
    (colour p97 white)
    (wood p97 walnut)
    (surface-condition p97 smooth)
    (treatment p97 varnished)
    (goalsize p97 large)
    
    
    
    
    (available p98)
    (colour p98 natural)
    (wood p98 pine)
    (surface-condition p98 smooth)
    (treatment p98 colourfragments)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (available p101)
    (colour p101 natural)
    (wood p101 teak)
    (surface-condition p101 verysmooth)
    (treatment p101 glazed)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (available p103)
    (colour p103 white)
    (wood p103 beech)
    (surface-condition p103 smooth)
    (treatment p103 varnished)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (available p105)
    (colour p105 white)
    (wood p105 beech)
    (surface-condition p105 verysmooth)
    (treatment p105 glazed)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (available p110)
    (colour p110 black)
    (wood p110 mahogany)
    (surface-condition p110 verysmooth)
    (treatment p110 colourfragments)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (available p113)
    (colour p113 mauve)
    (wood p113 pine)
    (surface-condition p113 verysmooth)
    (treatment p113 colourfragments)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (available p119)
    (colour p119 black)
    (wood p119 pine)
    (surface-condition p119 verysmooth)
    (treatment p119 glazed)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (available p121)
    (colour p121 white)
    (wood p121 pine)
    (surface-condition p121 smooth)
    (treatment p121 glazed)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (available p124)
    (colour p124 blue)
    (wood p124 pine)
    (surface-condition p124 rough)
    (treatment p124 colourfragments)
    (goalsize p124 large)
    
    
    
    
    (available p125)
    (colour p125 green)
    (wood p125 cherry)
    (surface-condition p125 verysmooth)
    (treatment p125 colourfragments)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (available p129)
    (colour p129 white)
    (wood p129 teak)
    (surface-condition p129 rough)
    (treatment p129 glazed)
    (goalsize p129 large)
    
    
    
    
    (available p130)
    (colour p130 black)
    (wood p130 beech)
    (surface-condition p130 rough)
    (treatment p130 glazed)
    (goalsize p130 medium)
    
    
    
    
    (available p131)
    (colour p131 black)
    (wood p131 mahogany)
    (surface-condition p131 smooth)
    (treatment p131 varnished)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (available p135)
    (colour p135 natural)
    (wood p135 pine)
    (surface-condition p135 smooth)
    (treatment p135 colourfragments)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (available p148)
    (colour p148 red)
    (wood p148 teak)
    (surface-condition p148 rough)
    (treatment p148 colourfragments)
    (goalsize p148 medium)
    
    
    
    
    (available p149)
    (colour p149 red)
    (wood p149 oak)
    (surface-condition p149 rough)
    (treatment p149 glazed)
    (goalsize p149 large)
    
    
    
    
    (available p150)
    (colour p150 blue)
    (wood p150 oak)
    (surface-condition p150 verysmooth)
    (treatment p150 glazed)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (available p152)
    (colour p152 natural)
    (wood p152 cherry)
    (surface-condition p152 smooth)
    (treatment p152 glazed)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (available p154)
    (colour p154 green)
    (wood p154 cherry)
    (surface-condition p154 verysmooth)
    (treatment p154 colourfragments)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (available p156)
    (colour p156 green)
    (wood p156 cherry)
    (surface-condition p156 rough)
    (treatment p156 colourfragments)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (available p159)
    (colour p159 blue)
    (wood p159 teak)
    (surface-condition p159 verysmooth)
    (treatment p159 colourfragments)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (available p161)
    (colour p161 blue)
    (wood p161 pine)
    (surface-condition p161 verysmooth)
    (treatment p161 varnished)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (available p163)
    (colour p163 mauve)
    (wood p163 teak)
    (surface-condition p163 verysmooth)
    (treatment p163 glazed)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (available p167)
    (colour p167 red)
    (wood p167 beech)
    (surface-condition p167 rough)
    (treatment p167 varnished)
    (goalsize p167 medium)
    
    
    
    
    (available p168)
    (colour p168 natural)
    (wood p168 oak)
    (surface-condition p168 smooth)
    (treatment p168 colourfragments)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
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
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (available p180)
    (colour p180 black)
    (wood p180 mahogany)
    (surface-condition p180 rough)
    (treatment p180 colourfragments)
    (goalsize p180 large)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 medium)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 large)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 small)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 medium)
    
    
    
    
    (available p204)
    (colour p204 mauve)
    (wood p204 walnut)
    (surface-condition p204 rough)
    (treatment p204 varnished)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 large)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 medium)
    
    
    
    
    (available p212)
    (colour p212 mauve)
    (wood p212 cherry)
    (surface-condition p212 smooth)
    (treatment p212 colourfragments)
    (goalsize p212 medium)
    
    
    
    
    (available p213)
    (colour p213 green)
    (wood p213 walnut)
    (surface-condition p213 rough)
    (treatment p213 varnished)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (available p215)
    (colour p215 red)
    (wood p215 pine)
    (surface-condition p215 verysmooth)
    (treatment p215 glazed)
    (goalsize p215 large)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 small)
    
    
    
    
    (available p218)
    (colour p218 blue)
    (wood p218 teak)
    (surface-condition p218 verysmooth)
    (treatment p218 varnished)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 large)
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 large)
    
    
    
    
    (unused p223)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 large)
    
    
    
    
    (unused p225)
    (goalsize p225 large)
    
    
    
    
    (available p226)
    (colour p226 black)
    (wood p226 walnut)
    (surface-condition p226 verysmooth)
    (treatment p226 colourfragments)
    (goalsize p226 large)
    
    
    
    
    (available p227)
    (colour p227 black)
    (wood p227 pine)
    (surface-condition p227 smooth)
    (treatment p227 colourfragments)
    (goalsize p227 medium)
    
    
    
    
    (unused p228)
    (goalsize p228 medium)
    
    
    
    
    (unused p229)
    (goalsize p229 large)
    
    
    
    
    (unused p230)
    (goalsize p230 small)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (unused p232)
    (goalsize p232 large)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s11)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s11)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s5)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s10)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 mahogany)
    (surface-condition b12 rough)
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
    (boardsize b16 s2)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s8)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
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
    (boardsize b22 s8)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s3)
    (wood b23 oak)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s9)
    (wood b24 pine)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s9)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s8)
    (wood b26 pine)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s8)
    (wood b27 pine)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s10)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s8)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s8)
    (wood b31 pine)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s11)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s5)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s9)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s5)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s11)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s7)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s11)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s8)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s9)
    (wood b40 walnut)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s8)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s7)
    (wood b42 walnut)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s1)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s9)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s10)
    (wood b45 teak)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s7)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s8)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s5)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s9)
    (wood b49 beech)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s7)
    (wood b50 beech)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s9)
    (wood b51 beech)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s7)
    (wood b52 beech)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s7)
    (wood b53 beech)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s11)
    (wood b54 beech)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s8)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s6)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
  )
  (:goal
    (and
      (available p0)
      (wood p0 teak)
      (treatment p0 varnished)
      (available p1)
      (colour p1 blue)
      (wood p1 pine)
      (treatment p1 glazed)
      (available p2)
      (colour p2 red)
      (wood p2 walnut)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 mauve)
      (wood p3 cherry)
      (surface-condition p3 smooth)
      (available p4)
      (wood p4 walnut)
      (surface-condition p4 verysmooth)
      (available p5)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 red)
      (wood p7 oak)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 mauve)
      (treatment p8 varnished)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (wood p10 beech)
      (treatment p10 glazed)
      (available p11)
      (colour p11 black)
      (wood p11 mahogany)
      (available p12)
      (wood p12 oak)
      (treatment p12 glazed)
      (available p13)
      (wood p13 beech)
      (treatment p13 glazed)
      (available p14)
      (colour p14 mauve)
      (treatment p14 glazed)
      (available p15)
      (colour p15 mauve)
      (wood p15 oak)
      (treatment p15 varnished)
      (available p16)
      (colour p16 white)
      (wood p16 cherry)
      (treatment p16 glazed)
      (available p17)
      (colour p17 mauve)
      (surface-condition p17 verysmooth)
      (available p18)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 blue)
      (wood p19 oak)
      (treatment p19 glazed)
      (available p20)
      (wood p20 mahogany)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 mauve)
      (wood p21 pine)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 mauve)
      (treatment p22 varnished)
      (available p23)
      (colour p23 natural)
      (wood p23 beech)
      (treatment p23 varnished)
      (available p24)
      (colour p24 natural)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 mauve)
      (wood p25 mahogany)
      (treatment p25 varnished)
      (available p26)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 blue)
      (surface-condition p28 smooth)
      (available p29)
      (wood p29 mahogany)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (wood p30 teak)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 black)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 red)
      (wood p32 walnut)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 natural)
      (wood p33 pine)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 black)
      (wood p34 oak)
      (available p35)
      (colour p35 black)
      (wood p35 oak)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 blue)
      (wood p36 beech)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 green)
      (treatment p37 glazed)
      (available p38)
      (colour p38 blue)
      (surface-condition p38 smooth)
      (available p39)
      (colour p39 mauve)
      (wood p39 cherry)
      (surface-condition p39 smooth)
      (available p40)
      (colour p40 mauve)
      (treatment p40 varnished)
      (available p41)
      (colour p41 black)
      (wood p41 teak)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (wood p42 pine)
      (treatment p42 glazed)
      (available p43)
      (colour p43 red)
      (wood p43 walnut)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 blue)
      (wood p45 oak)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 mauve)
      (wood p46 teak)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 blue)
      (treatment p47 varnished)
      (available p48)
      (colour p48 blue)
      (wood p48 oak)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 blue)
      (wood p49 walnut)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 green)
      (treatment p50 varnished)
      (available p51)
      (colour p51 red)
      (surface-condition p51 smooth)
      (available p52)
      (colour p52 red)
      (wood p52 beech)
      (surface-condition p52 verysmooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 black)
      (wood p53 mahogany)
      (surface-condition p53 smooth)
      (available p54)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (wood p55 cherry)
      (treatment p55 glazed)
      (available p56)
      (colour p56 green)
      (wood p56 pine)
      (surface-condition p56 verysmooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 black)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 red)
      (wood p58 teak)
      (treatment p58 glazed)
      (available p59)
      (colour p59 black)
      (wood p59 cherry)
      (surface-condition p59 smooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 white)
      (surface-condition p60 verysmooth)
      (available p61)
      (colour p61 red)
      (wood p61 cherry)
      (treatment p61 glazed)
      (available p62)
      (colour p62 natural)
      (wood p62 mahogany)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 black)
      (surface-condition p63 verysmooth)
      (available p64)
      (colour p64 green)
      (wood p64 pine)
      (available p65)
      (wood p65 cherry)
      (treatment p65 varnished)
      (available p66)
      (colour p66 red)
      (wood p66 pine)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 black)
      (wood p67 oak)
      (available p68)
      (colour p68 mauve)
      (wood p68 mahogany)
      (surface-condition p68 smooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 black)
      (treatment p69 varnished)
      (available p70)
      (colour p70 white)
      (wood p70 oak)
      (available p71)
      (wood p71 cherry)
      (surface-condition p71 verysmooth)
      (available p72)
      (wood p72 cherry)
      (surface-condition p72 verysmooth)
      (treatment p72 varnished)
      (available p73)
      (surface-condition p73 verysmooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 red)
      (surface-condition p74 smooth)
      (available p75)
      (colour p75 mauve)
      (surface-condition p75 verysmooth)
      (treatment p75 varnished)
      (available p76)
      (colour p76 blue)
      (wood p76 pine)
      (surface-condition p76 smooth)
      (available p77)
      (colour p77 blue)
      (wood p77 pine)
      (available p78)
      (colour p78 blue)
      (wood p78 beech)
      (surface-condition p78 smooth)
      (available p79)
      (wood p79 mahogany)
      (surface-condition p79 smooth)
      (available p80)
      (colour p80 mauve)
      (wood p80 pine)
      (surface-condition p80 verysmooth)
      (treatment p80 glazed)
      (available p81)
      (colour p81 natural)
      (treatment p81 glazed)
      (available p82)
      (colour p82 white)
      (treatment p82 varnished)
      (available p83)
      (colour p83 natural)
      (treatment p83 varnished)
      (available p84)
      (colour p84 mauve)
      (treatment p84 varnished)
      (available p85)
      (colour p85 red)
      (wood p85 oak)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 black)
      (treatment p86 varnished)
      (available p87)
      (colour p87 blue)
      (surface-condition p87 verysmooth)
      (treatment p87 varnished)
      (available p88)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 green)
      (treatment p89 glazed)
      (available p90)
      (wood p90 mahogany)
      (surface-condition p90 verysmooth)
      (available p91)
      (colour p91 black)
      (wood p91 cherry)
      (available p92)
      (wood p92 pine)
      (surface-condition p92 smooth)
      (treatment p92 varnished)
      (available p93)
      (colour p93 green)
      (wood p93 teak)
      (available p94)
      (colour p94 natural)
      (treatment p94 glazed)
      (available p95)
      (colour p95 black)
      (wood p95 pine)
      (surface-condition p95 smooth)
      (treatment p95 glazed)
      (available p96)
      (colour p96 red)
      (treatment p96 glazed)
      (available p97)
      (wood p97 walnut)
      (surface-condition p97 verysmooth)
      (available p98)
      (colour p98 mauve)
      (wood p98 pine)
      (treatment p98 varnished)
      (available p99)
      (colour p99 blue)
      (wood p99 cherry)
      (surface-condition p99 smooth)
      (treatment p99 varnished)
      (available p100)
      (wood p100 pine)
      (treatment p100 varnished)
      (available p101)
      (colour p101 green)
      (wood p101 teak)
      (available p102)
      (colour p102 black)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 natural)
      (surface-condition p103 verysmooth)
      (available p104)
      (colour p104 green)
      (surface-condition p104 verysmooth)
      (available p105)
      (colour p105 red)
      (wood p105 beech)
      (available p106)
      (colour p106 white)
      (surface-condition p106 verysmooth)
      (available p107)
      (colour p107 black)
      (wood p107 beech)
      (surface-condition p107 verysmooth)
      (treatment p107 varnished)
      (available p108)
      (colour p108 natural)
      (wood p108 walnut)
      (surface-condition p108 verysmooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 green)
      (treatment p109 glazed)
      (available p110)
      (wood p110 mahogany)
      (treatment p110 glazed)
      (available p111)
      (wood p111 pine)
      (treatment p111 glazed)
      (available p112)
      (surface-condition p112 smooth)
      (treatment p112 glazed)
      (available p113)
      (colour p113 green)
      (wood p113 pine)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 mauve)
      (surface-condition p114 smooth)
      (available p115)
      (wood p115 mahogany)
      (treatment p115 varnished)
      (available p116)
      (colour p116 blue)
      (wood p116 walnut)
      (surface-condition p116 verysmooth)
      (treatment p116 glazed)
      (available p117)
      (colour p117 blue)
      (wood p117 teak)
      (surface-condition p117 verysmooth)
      (treatment p117 varnished)
      (available p118)
      (surface-condition p118 smooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 blue)
      (surface-condition p119 smooth)
      (available p120)
      (surface-condition p120 verysmooth)
      (treatment p120 varnished)
      (available p121)
      (colour p121 natural)
      (treatment p121 varnished)
      (available p122)
      (wood p122 mahogany)
      (surface-condition p122 smooth)
      (available p123)
      (colour p123 mauve)
      (wood p123 teak)
      (surface-condition p123 smooth)
      (treatment p123 glazed)
      (available p124)
      (wood p124 pine)
      (surface-condition p124 smooth)
      (available p125)
      (wood p125 cherry)
      (treatment p125 varnished)
      (available p126)
      (wood p126 beech)
      (treatment p126 varnished)
      (available p127)
      (colour p127 red)
      (wood p127 mahogany)
      (surface-condition p127 smooth)
      (treatment p127 glazed)
      (available p128)
      (colour p128 black)
      (treatment p128 glazed)
      (available p129)
      (wood p129 teak)
      (surface-condition p129 verysmooth)
      (available p130)
      (colour p130 mauve)
      (wood p130 beech)
      (surface-condition p130 verysmooth)
      (available p131)
      (colour p131 mauve)
      (wood p131 mahogany)
      (surface-condition p131 smooth)
      (treatment p131 varnished)
      (available p132)
      (colour p132 natural)
      (wood p132 cherry)
      (surface-condition p132 smooth)
      (treatment p132 glazed)
      (available p133)
      (colour p133 mauve)
      (wood p133 pine)
      (surface-condition p133 verysmooth)
      (treatment p133 varnished)
      (available p134)
      (colour p134 black)
      (wood p134 mahogany)
      (available p135)
      (colour p135 red)
      (wood p135 pine)
      (available p136)
      (colour p136 green)
      (wood p136 walnut)
      (surface-condition p136 smooth)
      (treatment p136 varnished)
      (available p137)
      (surface-condition p137 verysmooth)
      (treatment p137 glazed)
      (available p138)
      (colour p138 blue)
      (wood p138 walnut)
      (surface-condition p138 verysmooth)
      (available p139)
      (colour p139 white)
      (wood p139 walnut)
      (surface-condition p139 verysmooth)
      (treatment p139 varnished)
      (available p140)
      (colour p140 green)
      (wood p140 walnut)
      (surface-condition p140 smooth)
      (available p141)
      (colour p141 natural)
      (wood p141 walnut)
      (available p142)
      (colour p142 white)
      (wood p142 cherry)
      (surface-condition p142 verysmooth)
      (treatment p142 glazed)
      (available p143)
      (wood p143 mahogany)
      (surface-condition p143 verysmooth)
      (available p144)
      (surface-condition p144 verysmooth)
      (treatment p144 glazed)
      (available p145)
      (colour p145 natural)
      (surface-condition p145 verysmooth)
      (treatment p145 varnished)
      (available p146)
      (colour p146 white)
      (wood p146 pine)
      (treatment p146 varnished)
      (available p147)
      (colour p147 natural)
      (surface-condition p147 smooth)
      (treatment p147 varnished)
      (available p148)
      (colour p148 blue)
      (wood p148 teak)
      (surface-condition p148 verysmooth)
      (available p149)
      (surface-condition p149 smooth)
      (treatment p149 glazed)
      (available p150)
      (colour p150 red)
      (wood p150 oak)
      (surface-condition p150 verysmooth)
      (treatment p150 varnished)
      (available p151)
      (surface-condition p151 verysmooth)
      (treatment p151 varnished)
      (available p152)
      (colour p152 white)
      (treatment p152 glazed)
      (available p153)
      (colour p153 red)
      (wood p153 beech)
      (surface-condition p153 smooth)
      (treatment p153 glazed)
      (available p154)
      (wood p154 cherry)
      (treatment p154 varnished)
      (available p155)
      (surface-condition p155 smooth)
      (treatment p155 glazed)
      (available p156)
      (colour p156 blue)
      (surface-condition p156 smooth)
      (available p157)
      (wood p157 mahogany)
      (surface-condition p157 smooth)
      (available p158)
      (wood p158 teak)
      (surface-condition p158 verysmooth)
      (available p159)
      (wood p159 teak)
      (treatment p159 varnished)
      (available p160)
      (colour p160 mauve)
      (wood p160 beech)
      (available p161)
      (colour p161 black)
      (wood p161 pine)
      (surface-condition p161 smooth)
      (treatment p161 glazed)
      (available p162)
      (colour p162 black)
      (wood p162 walnut)
      (treatment p162 varnished)
      (available p163)
      (colour p163 natural)
      (treatment p163 glazed)
      (available p164)
      (surface-condition p164 smooth)
      (treatment p164 varnished)
      (available p165)
      (colour p165 black)
      (wood p165 mahogany)
      (surface-condition p165 verysmooth)
      (treatment p165 glazed)
      (available p166)
      (surface-condition p166 smooth)
      (treatment p166 glazed)
      (available p167)
      (colour p167 green)
      (surface-condition p167 smooth)
      (available p168)
      (colour p168 black)
      (surface-condition p168 verysmooth)
      (available p169)
      (colour p169 green)
      (wood p169 walnut)
      (treatment p169 varnished)
      (available p170)
      (wood p170 cherry)
      (surface-condition p170 smooth)
      (treatment p170 varnished)
      (available p171)
      (colour p171 white)
      (wood p171 beech)
      (surface-condition p171 smooth)
      (treatment p171 glazed)
      (available p172)
      (colour p172 blue)
      (wood p172 pine)
      (surface-condition p172 smooth)
      (treatment p172 glazed)
      (available p173)
      (colour p173 white)
      (treatment p173 glazed)
      (available p174)
      (colour p174 natural)
      (treatment p174 glazed)
      (available p175)
      (colour p175 white)
      (surface-condition p175 verysmooth)
      (available p176)
      (colour p176 red)
      (wood p176 oak)
      (surface-condition p176 smooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 red)
      (treatment p177 glazed)
      (available p178)
      (colour p178 white)
      (wood p178 teak)
      (surface-condition p178 smooth)
      (available p179)
      (colour p179 blue)
      (wood p179 beech)
      (available p180)
      (colour p180 mauve)
      (wood p180 mahogany)
      (surface-condition p180 smooth)
      (treatment p180 glazed)
      (available p181)
      (surface-condition p181 smooth)
      (treatment p181 varnished)
      (available p182)
      (colour p182 mauve)
      (surface-condition p182 smooth)
      (available p183)
      (colour p183 mauve)
      (wood p183 pine)
      (treatment p183 varnished)
      (available p184)
      (colour p184 white)
      (wood p184 walnut)
      (available p185)
      (colour p185 blue)
      (wood p185 cherry)
      (treatment p185 varnished)
      (available p186)
      (colour p186 blue)
      (treatment p186 glazed)
      (available p187)
      (colour p187 red)
      (surface-condition p187 smooth)
      (treatment p187 varnished)
      (available p188)
      (colour p188 red)
      (treatment p188 varnished)
      (available p189)
      (colour p189 mauve)
      (surface-condition p189 smooth)
      (available p190)
      (colour p190 red)
      (wood p190 oak)
      (available p191)
      (colour p191 white)
      (wood p191 beech)
      (available p192)
      (colour p192 white)
      (wood p192 beech)
      (surface-condition p192 verysmooth)
      (treatment p192 glazed)
      (available p193)
      (colour p193 blue)
      (wood p193 walnut)
      (surface-condition p193 verysmooth)
      (available p194)
      (wood p194 oak)
      (surface-condition p194 verysmooth)
      (available p195)
      (colour p195 red)
      (wood p195 pine)
      (surface-condition p195 verysmooth)
      (treatment p195 glazed)
      (available p196)
      (wood p196 oak)
      (surface-condition p196 verysmooth)
      (available p197)
      (colour p197 black)
      (wood p197 pine)
      (surface-condition p197 verysmooth)
      (treatment p197 varnished)
      (available p198)
      (colour p198 white)
      (wood p198 pine)
      (available p199)
      (colour p199 black)
      (surface-condition p199 verysmooth)
      (available p200)
      (colour p200 mauve)
      (surface-condition p200 verysmooth)
      (available p201)
      (colour p201 black)
      (surface-condition p201 verysmooth)
      (available p202)
      (colour p202 red)
      (wood p202 mahogany)
      (available p203)
      (wood p203 walnut)
      (treatment p203 glazed)
      (available p204)
      (colour p204 blue)
      (surface-condition p204 smooth)
      (available p205)
      (colour p205 black)
      (surface-condition p205 verysmooth)
      (available p206)
      (colour p206 green)
      (surface-condition p206 smooth)
      (available p207)
      (wood p207 teak)
      (treatment p207 glazed)
      (available p208)
      (wood p208 walnut)
      (surface-condition p208 smooth)
      (available p209)
      (colour p209 mauve)
      (treatment p209 glazed)
      (available p210)
      (colour p210 blue)
      (wood p210 beech)
      (surface-condition p210 smooth)
      (available p211)
      (colour p211 white)
      (wood p211 walnut)
      (surface-condition p211 verysmooth)
      (treatment p211 glazed)
      (available p212)
      (colour p212 natural)
      (wood p212 cherry)
      (surface-condition p212 smooth)
      (treatment p212 glazed)
      (available p213)
      (colour p213 red)
      (treatment p213 glazed)
      (available p214)
      (surface-condition p214 verysmooth)
      (treatment p214 varnished)
      (available p215)
      (surface-condition p215 verysmooth)
      (treatment p215 varnished)
      (available p216)
      (surface-condition p216 verysmooth)
      (treatment p216 glazed)
      (available p217)
      (colour p217 white)
      (surface-condition p217 smooth)
      (available p218)
      (wood p218 teak)
      (treatment p218 glazed)
      (available p219)
      (colour p219 natural)
      (wood p219 walnut)
      (surface-condition p219 smooth)
      (available p220)
      (wood p220 walnut)
      (treatment p220 varnished)
      (available p221)
      (wood p221 walnut)
      (treatment p221 glazed)
      (available p222)
      (surface-condition p222 smooth)
      (treatment p222 glazed)
      (available p223)
      (colour p223 natural)
      (wood p223 walnut)
      (treatment p223 varnished)
      (available p224)
      (colour p224 green)
      (treatment p224 varnished)
      (available p225)
      (colour p225 red)
      (treatment p225 varnished)
      (available p226)
      (colour p226 red)
      (surface-condition p226 verysmooth)
      (treatment p226 glazed)
      (available p227)
      (colour p227 natural)
      (surface-condition p227 smooth)
      (available p228)
      (colour p228 green)
      (wood p228 pine)
      (surface-condition p228 smooth)
      (treatment p228 varnished)
      (available p229)
      (wood p229 beech)
      (surface-condition p229 verysmooth)
      (available p230)
      (colour p230 natural)
      (wood p230 mahogany)
      (surface-condition p230 verysmooth)
      (treatment p230 varnished)
      (available p231)
      (colour p231 black)
      (wood p231 oak)
      (surface-condition p231 smooth)
      (available p232)
      (colour p232 white)
      (surface-condition p232 verysmooth)
      (treatment p232 glazed)
    )
  )
  
)
