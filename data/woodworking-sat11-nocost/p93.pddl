; woodworking task with 248 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 1609

(define (problem wood-prob-sat-93)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve red black green white blue - acolour
    mahogany beech teak pine oak walnut cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 p245 p246 p247 - part
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
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 natural)
    (wood p0 mahogany)
    (surface-condition p0 verysmooth)
    (treatment p0 varnished)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 red)
    (wood p7 oak)
    (surface-condition p7 verysmooth)
    (treatment p7 varnished)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (available p14)
    (colour p14 red)
    (wood p14 beech)
    (surface-condition p14 smooth)
    (treatment p14 varnished)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (available p20)
    (colour p20 blue)
    (wood p20 walnut)
    (surface-condition p20 rough)
    (treatment p20 colourfragments)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
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
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (available p35)
    (colour p35 red)
    (wood p35 oak)
    (surface-condition p35 verysmooth)
    (treatment p35 varnished)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 natural)
    (wood p37 mahogany)
    (surface-condition p37 verysmooth)
    (treatment p37 varnished)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 green)
    (wood p38 teak)
    (surface-condition p38 verysmooth)
    (treatment p38 glazed)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (available p42)
    (colour p42 blue)
    (wood p42 pine)
    (surface-condition p42 verysmooth)
    (treatment p42 varnished)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (available p46)
    (colour p46 red)
    (wood p46 teak)
    (surface-condition p46 rough)
    (treatment p46 colourfragments)
    (goalsize p46 medium)
    
    
    
    
    (available p47)
    (colour p47 mauve)
    (wood p47 mahogany)
    (surface-condition p47 rough)
    (treatment p47 glazed)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (available p52)
    (colour p52 natural)
    (wood p52 walnut)
    (surface-condition p52 verysmooth)
    (treatment p52 colourfragments)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (available p62)
    (colour p62 natural)
    (wood p62 walnut)
    (surface-condition p62 verysmooth)
    (treatment p62 varnished)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (available p67)
    (colour p67 black)
    (wood p67 walnut)
    (surface-condition p67 verysmooth)
    (treatment p67 colourfragments)
    (goalsize p67 medium)
    
    
    
    
    (available p68)
    (colour p68 natural)
    (wood p68 cherry)
    (surface-condition p68 verysmooth)
    (treatment p68 glazed)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (available p70)
    (colour p70 mauve)
    (wood p70 teak)
    (surface-condition p70 smooth)
    (treatment p70 colourfragments)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (available p75)
    (colour p75 red)
    (wood p75 beech)
    (surface-condition p75 verysmooth)
    (treatment p75 colourfragments)
    (goalsize p75 large)
    
    
    
    
    (available p76)
    (colour p76 green)
    (wood p76 beech)
    (surface-condition p76 verysmooth)
    (treatment p76 colourfragments)
    (goalsize p76 large)
    
    
    
    
    (available p77)
    (colour p77 green)
    (wood p77 beech)
    (surface-condition p77 smooth)
    (treatment p77 colourfragments)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (available p80)
    (colour p80 green)
    (wood p80 walnut)
    (surface-condition p80 verysmooth)
    (treatment p80 varnished)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (available p93)
    (colour p93 blue)
    (wood p93 cherry)
    (surface-condition p93 rough)
    (treatment p93 varnished)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (available p97)
    (colour p97 mauve)
    (wood p97 mahogany)
    (surface-condition p97 smooth)
    (treatment p97 varnished)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (available p100)
    (colour p100 white)
    (wood p100 walnut)
    (surface-condition p100 verysmooth)
    (treatment p100 colourfragments)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (available p108)
    (colour p108 black)
    (wood p108 mahogany)
    (surface-condition p108 rough)
    (treatment p108 glazed)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (available p116)
    (colour p116 green)
    (wood p116 oak)
    (surface-condition p116 verysmooth)
    (treatment p116 varnished)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (available p119)
    (colour p119 natural)
    (wood p119 teak)
    (surface-condition p119 smooth)
    (treatment p119 glazed)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (available p122)
    (colour p122 blue)
    (wood p122 beech)
    (surface-condition p122 smooth)
    (treatment p122 colourfragments)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (available p124)
    (colour p124 natural)
    (wood p124 beech)
    (surface-condition p124 verysmooth)
    (treatment p124 colourfragments)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (available p126)
    (colour p126 black)
    (wood p126 walnut)
    (surface-condition p126 verysmooth)
    (treatment p126 varnished)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 small)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (available p132)
    (colour p132 natural)
    (wood p132 pine)
    (surface-condition p132 smooth)
    (treatment p132 colourfragments)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (available p144)
    (colour p144 blue)
    (wood p144 pine)
    (surface-condition p144 rough)
    (treatment p144 glazed)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (available p148)
    (colour p148 white)
    (wood p148 mahogany)
    (surface-condition p148 rough)
    (treatment p148 colourfragments)
    (goalsize p148 large)
    
    
    
    
    (available p149)
    (colour p149 blue)
    (wood p149 teak)
    (surface-condition p149 verysmooth)
    (treatment p149 varnished)
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
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (available p156)
    (colour p156 blue)
    (wood p156 cherry)
    (surface-condition p156 smooth)
    (treatment p156 varnished)
    (goalsize p156 large)
    
    
    
    
    (available p157)
    (colour p157 white)
    (wood p157 mahogany)
    (surface-condition p157 rough)
    (treatment p157 glazed)
    (goalsize p157 large)
    
    
    
    
    (available p158)
    (colour p158 red)
    (wood p158 walnut)
    (surface-condition p158 rough)
    (treatment p158 glazed)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (available p164)
    (colour p164 blue)
    (wood p164 pine)
    (surface-condition p164 verysmooth)
    (treatment p164 glazed)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (available p167)
    (colour p167 blue)
    (wood p167 oak)
    (surface-condition p167 rough)
    (treatment p167 colourfragments)
    (goalsize p167 large)
    
    
    
    
    (available p168)
    (colour p168 white)
    (wood p168 teak)
    (surface-condition p168 verysmooth)
    (treatment p168 colourfragments)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (available p172)
    (colour p172 black)
    (wood p172 beech)
    (surface-condition p172 smooth)
    (treatment p172 varnished)
    (goalsize p172 large)
    
    
    
    
    (available p173)
    (colour p173 red)
    (wood p173 cherry)
    (surface-condition p173 rough)
    (treatment p173 colourfragments)
    (goalsize p173 medium)
    
    
    
    
    (available p174)
    (colour p174 red)
    (wood p174 mahogany)
    (surface-condition p174 verysmooth)
    (treatment p174 colourfragments)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (available p176)
    (colour p176 black)
    (wood p176 beech)
    (surface-condition p176 verysmooth)
    (treatment p176 colourfragments)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (available p178)
    (colour p178 mauve)
    (wood p178 oak)
    (surface-condition p178 rough)
    (treatment p178 glazed)
    (goalsize p178 medium)
    
    
    
    
    (available p179)
    (colour p179 green)
    (wood p179 walnut)
    (surface-condition p179 rough)
    (treatment p179 varnished)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (unused p182)
    (goalsize p182 large)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 small)
    
    
    
    
    (unused p185)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 medium)
    
    
    
    
    (available p188)
    (colour p188 green)
    (wood p188 teak)
    (surface-condition p188 smooth)
    (treatment p188 colourfragments)
    (goalsize p188 medium)
    
    
    
    
    (available p189)
    (colour p189 green)
    (wood p189 teak)
    (surface-condition p189 verysmooth)
    (treatment p189 glazed)
    (goalsize p189 large)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 large)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (available p196)
    (colour p196 blue)
    (wood p196 walnut)
    (surface-condition p196 verysmooth)
    (treatment p196 glazed)
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 medium)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (available p200)
    (colour p200 white)
    (wood p200 oak)
    (surface-condition p200 rough)
    (treatment p200 glazed)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 medium)
    
    
    
    
    (available p202)
    (colour p202 blue)
    (wood p202 walnut)
    (surface-condition p202 verysmooth)
    (treatment p202 colourfragments)
    (goalsize p202 small)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 medium)
    
    
    
    
    (available p206)
    (colour p206 black)
    (wood p206 oak)
    (surface-condition p206 smooth)
    (treatment p206 colourfragments)
    (goalsize p206 small)
    
    
    
    
    (available p207)
    (colour p207 green)
    (wood p207 oak)
    (surface-condition p207 verysmooth)
    (treatment p207 varnished)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (available p209)
    (colour p209 red)
    (wood p209 mahogany)
    (surface-condition p209 verysmooth)
    (treatment p209 colourfragments)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 medium)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 large)
    
    
    
    
    (unused p215)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 small)
    
    
    
    
    (available p217)
    (colour p217 green)
    (wood p217 pine)
    (surface-condition p217 smooth)
    (treatment p217 varnished)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 large)
    
    
    
    
    (available p219)
    (colour p219 black)
    (wood p219 teak)
    (surface-condition p219 rough)
    (treatment p219 colourfragments)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 small)
    
    
    
    
    (unused p221)
    (goalsize p221 large)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 small)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 small)
    
    
    
    
    (unused p226)
    (goalsize p226 large)
    
    
    
    
    (unused p227)
    (goalsize p227 large)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 medium)
    
    
    
    
    (unused p230)
    (goalsize p230 large)
    
    
    
    
    (available p231)
    (colour p231 green)
    (wood p231 beech)
    (surface-condition p231 rough)
    (treatment p231 varnished)
    (goalsize p231 large)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 large)
    
    
    
    
    (unused p234)
    (goalsize p234 large)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 large)
    
    
    
    
    (unused p237)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 small)
    
    
    
    
    (available p239)
    (colour p239 mauve)
    (wood p239 cherry)
    (surface-condition p239 verysmooth)
    (treatment p239 colourfragments)
    (goalsize p239 medium)
    
    
    
    
    (unused p240)
    (goalsize p240 medium)
    
    
    
    
    (unused p241)
    (goalsize p241 medium)
    
    
    
    
    (unused p242)
    (goalsize p242 medium)
    
    
    
    
    (unused p243)
    (goalsize p243 small)
    
    
    
    
    (available p244)
    (colour p244 white)
    (wood p244 oak)
    (surface-condition p244 smooth)
    (treatment p244 colourfragments)
    (goalsize p244 small)
    
    
    
    
    (unused p245)
    (goalsize p245 large)
    
    
    
    
    (unused p246)
    (goalsize p246 small)
    
    
    
    
    (unused p247)
    (goalsize p247 medium)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s6)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s5)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 mahogany)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s10)
    (wood b17 oak)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s8)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s5)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s6)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s10)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s6)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s7)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 pine)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s7)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s12)
    (wood b31 pine)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s8)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s6)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s10)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 walnut)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s10)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 walnut)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s11)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s9)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s6)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s7)
    (wood b41 walnut)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s3)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s9)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s6)
    (wood b44 teak)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s8)
    (wood b45 teak)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s6)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s10)
    (wood b47 teak)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s7)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s12)
    (wood b49 beech)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s9)
    (wood b50 beech)
    (surface-condition b50 rough)
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
    (surface-condition b53 smooth)
    (available b53)
    (boardsize b54 s9)
    (wood b54 beech)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s8)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s7)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s8)
    (wood b57 beech)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s8)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
  )
  (:goal
    (and
      (available p0)
      (colour p0 red)
      (wood p0 mahogany)
      (available p1)
      (wood p1 beech)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 natural)
      (wood p2 walnut)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 white)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 blue)
      (wood p4 teak)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (wood p5 pine)
      (treatment p5 glazed)
      (available p6)
      (colour p6 blue)
      (surface-condition p6 smooth)
      (available p7)
      (wood p7 oak)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 green)
      (wood p8 cherry)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (wood p9 walnut)
      (treatment p9 varnished)
      (available p10)
      (colour p10 green)
      (wood p10 mahogany)
      (available p11)
      (wood p11 beech)
      (treatment p11 glazed)
      (available p12)
      (wood p12 teak)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 blue)
      (wood p13 oak)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 green)
      (wood p14 beech)
      (available p15)
      (wood p15 oak)
      (treatment p15 glazed)
      (available p16)
      (colour p16 mauve)
      (wood p16 cherry)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 natural)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 red)
      (wood p19 oak)
      (surface-condition p19 verysmooth)
      (available p20)
      (wood p20 walnut)
      (treatment p20 varnished)
      (available p21)
      (wood p21 beech)
      (surface-condition p21 verysmooth)
      (available p22)
      (wood p22 oak)
      (surface-condition p22 smooth)
      (available p23)
      (surface-condition p23 smooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 white)
      (wood p24 teak)
      (surface-condition p24 verysmooth)
      (available p25)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (wood p26 teak)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 green)
      (treatment p27 varnished)
      (available p28)
      (colour p28 blue)
      (treatment p28 varnished)
      (available p29)
      (colour p29 blue)
      (surface-condition p29 smooth)
      (available p30)
      (wood p30 mahogany)
      (treatment p30 glazed)
      (available p31)
      (wood p31 mahogany)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (wood p32 pine)
      (treatment p32 glazed)
      (available p33)
      (colour p33 mauve)
      (treatment p33 glazed)
      (available p34)
      (wood p34 teak)
      (surface-condition p34 verysmooth)
      (available p35)
      (colour p35 blue)
      (wood p35 oak)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (wood p36 cherry)
      (treatment p36 glazed)
      (available p37)
      (colour p37 black)
      (wood p37 mahogany)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 black)
      (surface-condition p38 verysmooth)
      (available p39)
      (colour p39 blue)
      (wood p39 oak)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (wood p42 pine)
      (treatment p42 glazed)
      (available p43)
      (wood p43 oak)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 white)
      (wood p44 mahogany)
      (treatment p44 varnished)
      (available p45)
      (wood p45 pine)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 black)
      (surface-condition p46 verysmooth)
      (available p47)
      (colour p47 green)
      (wood p47 mahogany)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (wood p48 mahogany)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 natural)
      (wood p49 walnut)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 natural)
      (surface-condition p50 verysmooth)
      (available p51)
      (wood p51 mahogany)
      (treatment p51 glazed)
      (available p52)
      (wood p52 walnut)
      (surface-condition p52 smooth)
      (available p53)
      (colour p53 white)
      (wood p53 pine)
      (surface-condition p53 verysmooth)
      (available p54)
      (colour p54 black)
      (treatment p54 glazed)
      (available p55)
      (surface-condition p55 verysmooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 red)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (wood p57 mahogany)
      (surface-condition p57 verysmooth)
      (available p58)
      (colour p58 red)
      (wood p58 oak)
      (surface-condition p58 smooth)
      (treatment p58 varnished)
      (available p59)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 mauve)
      (wood p60 oak)
      (available p61)
      (colour p61 green)
      (wood p61 pine)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 blue)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 white)
      (wood p63 beech)
      (surface-condition p63 smooth)
      (treatment p63 glazed)
      (available p64)
      (colour p64 mauve)
      (wood p64 oak)
      (treatment p64 varnished)
      (available p65)
      (colour p65 blue)
      (wood p65 cherry)
      (surface-condition p65 smooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 green)
      (wood p66 cherry)
      (surface-condition p66 verysmooth)
      (treatment p66 glazed)
      (available p67)
      (wood p67 walnut)
      (treatment p67 varnished)
      (available p68)
      (colour p68 green)
      (wood p68 cherry)
      (surface-condition p68 verysmooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 blue)
      (treatment p69 glazed)
      (available p70)
      (colour p70 white)
      (surface-condition p70 smooth)
      (available p71)
      (colour p71 green)
      (wood p71 oak)
      (available p72)
      (colour p72 mauve)
      (treatment p72 varnished)
      (available p73)
      (colour p73 red)
      (wood p73 mahogany)
      (surface-condition p73 verysmooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 white)
      (wood p74 teak)
      (surface-condition p74 verysmooth)
      (treatment p74 glazed)
      (available p75)
      (wood p75 beech)
      (treatment p75 varnished)
      (available p76)
      (colour p76 mauve)
      (treatment p76 glazed)
      (available p77)
      (colour p77 black)
      (wood p77 beech)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 red)
      (surface-condition p78 verysmooth)
      (treatment p78 varnished)
      (available p79)
      (colour p79 white)
      (wood p79 cherry)
      (treatment p79 varnished)
      (available p80)
      (colour p80 red)
      (wood p80 walnut)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 natural)
      (treatment p81 varnished)
      (available p82)
      (colour p82 natural)
      (surface-condition p82 smooth)
      (available p83)
      (surface-condition p83 verysmooth)
      (treatment p83 glazed)
      (available p84)
      (wood p84 oak)
      (treatment p84 glazed)
      (available p85)
      (colour p85 blue)
      (treatment p85 varnished)
      (available p86)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (wood p87 cherry)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 blue)
      (wood p88 beech)
      (surface-condition p88 verysmooth)
      (available p89)
      (colour p89 white)
      (wood p89 cherry)
      (surface-condition p89 smooth)
      (available p90)
      (colour p90 black)
      (wood p90 walnut)
      (surface-condition p90 verysmooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 black)
      (wood p91 beech)
      (surface-condition p91 smooth)
      (treatment p91 varnished)
      (available p92)
      (colour p92 natural)
      (surface-condition p92 smooth)
      (available p93)
      (colour p93 natural)
      (surface-condition p93 smooth)
      (available p94)
      (wood p94 beech)
      (surface-condition p94 verysmooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 green)
      (wood p95 oak)
      (surface-condition p95 verysmooth)
      (treatment p95 glazed)
      (available p96)
      (wood p96 walnut)
      (treatment p96 glazed)
      (available p97)
      (wood p97 mahogany)
      (surface-condition p97 verysmooth)
      (available p98)
      (wood p98 beech)
      (treatment p98 glazed)
      (available p99)
      (colour p99 green)
      (treatment p99 varnished)
      (available p100)
      (colour p100 blue)
      (treatment p100 varnished)
      (available p101)
      (colour p101 green)
      (surface-condition p101 verysmooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 blue)
      (wood p102 oak)
      (available p103)
      (colour p103 green)
      (surface-condition p103 smooth)
      (available p104)
      (colour p104 red)
      (wood p104 walnut)
      (surface-condition p104 verysmooth)
      (treatment p104 varnished)
      (available p105)
      (surface-condition p105 verysmooth)
      (treatment p105 varnished)
      (available p106)
      (colour p106 red)
      (treatment p106 glazed)
      (available p107)
      (colour p107 white)
      (wood p107 walnut)
      (surface-condition p107 verysmooth)
      (available p108)
      (colour p108 mauve)
      (wood p108 mahogany)
      (surface-condition p108 verysmooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 natural)
      (wood p109 mahogany)
      (available p110)
      (colour p110 white)
      (surface-condition p110 smooth)
      (available p111)
      (wood p111 beech)
      (surface-condition p111 verysmooth)
      (treatment p111 glazed)
      (available p112)
      (colour p112 natural)
      (treatment p112 glazed)
      (available p113)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (wood p114 cherry)
      (surface-condition p114 verysmooth)
      (available p115)
      (wood p115 mahogany)
      (surface-condition p115 smooth)
      (available p116)
      (colour p116 white)
      (surface-condition p116 smooth)
      (available p117)
      (colour p117 mauve)
      (wood p117 walnut)
      (surface-condition p117 verysmooth)
      (available p118)
      (colour p118 blue)
      (wood p118 beech)
      (surface-condition p118 verysmooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 mauve)
      (surface-condition p119 smooth)
      (available p120)
      (wood p120 teak)
      (treatment p120 varnished)
      (available p121)
      (colour p121 blue)
      (wood p121 beech)
      (surface-condition p121 smooth)
      (treatment p121 glazed)
      (available p122)
      (colour p122 white)
      (wood p122 beech)
      (surface-condition p122 verysmooth)
      (treatment p122 varnished)
      (available p123)
      (surface-condition p123 verysmooth)
      (treatment p123 glazed)
      (available p124)
      (colour p124 red)
      (treatment p124 glazed)
      (available p125)
      (surface-condition p125 smooth)
      (treatment p125 glazed)
      (available p126)
      (colour p126 natural)
      (wood p126 walnut)
      (surface-condition p126 smooth)
      (available p127)
      (colour p127 red)
      (wood p127 oak)
      (treatment p127 varnished)
      (available p128)
      (surface-condition p128 smooth)
      (treatment p128 glazed)
      (available p129)
      (colour p129 green)
      (wood p129 cherry)
      (surface-condition p129 verysmooth)
      (available p130)
      (wood p130 teak)
      (surface-condition p130 smooth)
      (available p131)
      (colour p131 natural)
      (wood p131 beech)
      (treatment p131 glazed)
      (available p132)
      (colour p132 green)
      (wood p132 pine)
      (surface-condition p132 smooth)
      (treatment p132 varnished)
      (available p133)
      (wood p133 oak)
      (surface-condition p133 smooth)
      (available p134)
      (colour p134 green)
      (wood p134 cherry)
      (surface-condition p134 smooth)
      (treatment p134 varnished)
      (available p135)
      (colour p135 natural)
      (wood p135 cherry)
      (available p136)
      (colour p136 white)
      (wood p136 pine)
      (available p137)
      (colour p137 green)
      (surface-condition p137 smooth)
      (available p138)
      (colour p138 natural)
      (surface-condition p138 verysmooth)
      (treatment p138 varnished)
      (available p139)
      (colour p139 white)
      (wood p139 cherry)
      (surface-condition p139 smooth)
      (treatment p139 varnished)
      (available p140)
      (colour p140 red)
      (wood p140 pine)
      (treatment p140 glazed)
      (available p141)
      (colour p141 black)
      (wood p141 cherry)
      (available p142)
      (wood p142 mahogany)
      (surface-condition p142 smooth)
      (available p143)
      (surface-condition p143 verysmooth)
      (treatment p143 varnished)
      (available p144)
      (colour p144 mauve)
      (wood p144 pine)
      (available p145)
      (colour p145 white)
      (wood p145 teak)
      (surface-condition p145 verysmooth)
      (treatment p145 glazed)
      (available p146)
      (colour p146 red)
      (wood p146 cherry)
      (surface-condition p146 verysmooth)
      (available p147)
      (colour p147 mauve)
      (surface-condition p147 smooth)
      (treatment p147 varnished)
      (available p148)
      (colour p148 blue)
      (wood p148 mahogany)
      (surface-condition p148 smooth)
      (treatment p148 varnished)
      (available p149)
      (surface-condition p149 verysmooth)
      (treatment p149 glazed)
      (available p150)
      (colour p150 black)
      (surface-condition p150 smooth)
      (available p151)
      (wood p151 teak)
      (treatment p151 glazed)
      (available p152)
      (colour p152 blue)
      (surface-condition p152 smooth)
      (available p153)
      (wood p153 beech)
      (treatment p153 varnished)
      (available p154)
      (colour p154 blue)
      (wood p154 teak)
      (available p155)
      (colour p155 white)
      (wood p155 beech)
      (surface-condition p155 smooth)
      (treatment p155 glazed)
      (available p156)
      (colour p156 black)
      (surface-condition p156 verysmooth)
      (available p157)
      (colour p157 natural)
      (wood p157 mahogany)
      (surface-condition p157 smooth)
      (treatment p157 varnished)
      (available p158)
      (wood p158 walnut)
      (surface-condition p158 smooth)
      (available p159)
      (colour p159 red)
      (surface-condition p159 smooth)
      (available p160)
      (colour p160 blue)
      (wood p160 pine)
      (surface-condition p160 smooth)
      (available p161)
      (colour p161 red)
      (wood p161 beech)
      (surface-condition p161 smooth)
      (available p162)
      (colour p162 red)
      (wood p162 walnut)
      (surface-condition p162 verysmooth)
      (treatment p162 glazed)
      (available p163)
      (wood p163 walnut)
      (treatment p163 varnished)
      (available p164)
      (wood p164 pine)
      (treatment p164 varnished)
      (available p165)
      (colour p165 natural)
      (wood p165 teak)
      (treatment p165 glazed)
      (available p166)
      (wood p166 pine)
      (surface-condition p166 smooth)
      (available p167)
      (wood p167 oak)
      (surface-condition p167 verysmooth)
      (treatment p167 varnished)
      (available p168)
      (colour p168 black)
      (wood p168 teak)
      (surface-condition p168 smooth)
      (treatment p168 varnished)
      (available p169)
      (surface-condition p169 verysmooth)
      (treatment p169 glazed)
      (available p170)
      (colour p170 red)
      (wood p170 teak)
      (available p171)
      (colour p171 mauve)
      (treatment p171 varnished)
      (available p172)
      (colour p172 natural)
      (surface-condition p172 smooth)
      (treatment p172 glazed)
      (available p173)
      (wood p173 cherry)
      (surface-condition p173 verysmooth)
      (available p174)
      (colour p174 natural)
      (wood p174 mahogany)
      (surface-condition p174 verysmooth)
      (treatment p174 varnished)
      (available p175)
      (colour p175 black)
      (treatment p175 glazed)
      (available p176)
      (surface-condition p176 verysmooth)
      (treatment p176 varnished)
      (available p177)
      (colour p177 white)
      (treatment p177 varnished)
      (available p178)
      (wood p178 oak)
      (surface-condition p178 smooth)
      (available p179)
      (colour p179 white)
      (wood p179 walnut)
      (available p180)
      (wood p180 walnut)
      (treatment p180 varnished)
      (available p181)
      (colour p181 red)
      (wood p181 cherry)
      (available p182)
      (colour p182 black)
      (wood p182 mahogany)
      (available p183)
      (colour p183 natural)
      (treatment p183 varnished)
      (available p184)
      (wood p184 mahogany)
      (surface-condition p184 verysmooth)
      (available p185)
      (colour p185 green)
      (wood p185 beech)
      (surface-condition p185 verysmooth)
      (treatment p185 varnished)
      (available p186)
      (colour p186 mauve)
      (wood p186 oak)
      (surface-condition p186 verysmooth)
      (available p187)
      (wood p187 cherry)
      (treatment p187 glazed)
      (available p188)
      (colour p188 mauve)
      (wood p188 teak)
      (available p189)
      (colour p189 red)
      (treatment p189 glazed)
      (available p190)
      (colour p190 green)
      (wood p190 cherry)
      (available p191)
      (colour p191 white)
      (wood p191 cherry)
      (surface-condition p191 verysmooth)
      (treatment p191 varnished)
      (available p192)
      (wood p192 oak)
      (surface-condition p192 smooth)
      (available p193)
      (colour p193 red)
      (wood p193 teak)
      (surface-condition p193 verysmooth)
      (treatment p193 varnished)
      (available p194)
      (surface-condition p194 smooth)
      (treatment p194 glazed)
      (available p195)
      (colour p195 green)
      (wood p195 mahogany)
      (surface-condition p195 smooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 white)
      (surface-condition p196 verysmooth)
      (available p197)
      (colour p197 blue)
      (wood p197 cherry)
      (available p198)
      (colour p198 white)
      (wood p198 oak)
      (treatment p198 varnished)
      (available p199)
      (wood p199 pine)
      (surface-condition p199 verysmooth)
      (treatment p199 varnished)
      (available p200)
      (colour p200 natural)
      (wood p200 oak)
      (available p201)
      (surface-condition p201 smooth)
      (treatment p201 glazed)
      (available p202)
      (wood p202 walnut)
      (treatment p202 glazed)
      (available p203)
      (colour p203 natural)
      (surface-condition p203 smooth)
      (treatment p203 glazed)
      (available p204)
      (colour p204 green)
      (surface-condition p204 smooth)
      (treatment p204 varnished)
      (available p205)
      (colour p205 natural)
      (wood p205 walnut)
      (treatment p205 varnished)
      (available p206)
      (surface-condition p206 verysmooth)
      (treatment p206 glazed)
      (available p207)
      (colour p207 black)
      (wood p207 oak)
      (surface-condition p207 verysmooth)
      (treatment p207 varnished)
      (available p208)
      (colour p208 white)
      (treatment p208 varnished)
      (available p209)
      (colour p209 black)
      (wood p209 mahogany)
      (surface-condition p209 smooth)
      (treatment p209 varnished)
      (available p210)
      (colour p210 green)
      (wood p210 oak)
      (surface-condition p210 smooth)
      (treatment p210 glazed)
      (available p211)
      (colour p211 mauve)
      (wood p211 pine)
      (available p212)
      (colour p212 red)
      (treatment p212 varnished)
      (available p213)
      (colour p213 green)
      (wood p213 beech)
      (surface-condition p213 verysmooth)
      (treatment p213 varnished)
      (available p214)
      (colour p214 black)
      (wood p214 beech)
      (surface-condition p214 smooth)
      (available p215)
      (surface-condition p215 verysmooth)
      (treatment p215 varnished)
      (available p216)
      (colour p216 black)
      (wood p216 cherry)
      (surface-condition p216 smooth)
      (available p217)
      (colour p217 black)
      (treatment p217 glazed)
      (available p218)
      (colour p218 black)
      (wood p218 walnut)
      (treatment p218 glazed)
      (available p219)
      (colour p219 red)
      (surface-condition p219 smooth)
      (available p220)
      (colour p220 green)
      (surface-condition p220 verysmooth)
      (treatment p220 varnished)
      (available p221)
      (colour p221 blue)
      (wood p221 walnut)
      (treatment p221 varnished)
      (available p222)
      (surface-condition p222 smooth)
      (treatment p222 glazed)
      (available p223)
      (colour p223 red)
      (wood p223 cherry)
      (surface-condition p223 smooth)
      (treatment p223 varnished)
      (available p224)
      (surface-condition p224 verysmooth)
      (treatment p224 varnished)
      (available p225)
      (wood p225 beech)
      (surface-condition p225 smooth)
      (available p226)
      (colour p226 natural)
      (wood p226 pine)
      (treatment p226 glazed)
      (available p227)
      (surface-condition p227 smooth)
      (treatment p227 glazed)
      (available p228)
      (colour p228 natural)
      (wood p228 mahogany)
      (treatment p228 glazed)
      (available p229)
      (wood p229 beech)
      (surface-condition p229 verysmooth)
      (treatment p229 varnished)
      (available p230)
      (colour p230 white)
      (wood p230 walnut)
      (available p231)
      (surface-condition p231 smooth)
      (treatment p231 varnished)
      (available p232)
      (colour p232 white)
      (wood p232 oak)
      (surface-condition p232 verysmooth)
      (treatment p232 varnished)
      (available p233)
      (colour p233 blue)
      (wood p233 beech)
      (surface-condition p233 smooth)
      (treatment p233 varnished)
      (available p234)
      (colour p234 blue)
      (wood p234 mahogany)
      (surface-condition p234 smooth)
      (treatment p234 glazed)
      (available p235)
      (wood p235 beech)
      (treatment p235 varnished)
      (available p236)
      (wood p236 beech)
      (surface-condition p236 smooth)
      (available p237)
      (colour p237 red)
      (surface-condition p237 smooth)
      (available p238)
      (colour p238 blue)
      (wood p238 oak)
      (surface-condition p238 smooth)
      (treatment p238 glazed)
      (available p239)
      (colour p239 red)
      (treatment p239 varnished)
      (available p240)
      (wood p240 pine)
      (surface-condition p240 verysmooth)
      (available p241)
      (colour p241 blue)
      (wood p241 teak)
      (available p242)
      (colour p242 white)
      (wood p242 cherry)
      (surface-condition p242 smooth)
      (treatment p242 glazed)
      (available p243)
      (colour p243 mauve)
      (surface-condition p243 smooth)
      (available p244)
      (colour p244 mauve)
      (wood p244 oak)
      (surface-condition p244 verysmooth)
      (treatment p244 varnished)
      (available p245)
      (wood p245 walnut)
      (treatment p245 varnished)
      (available p246)
      (wood p246 walnut)
      (surface-condition p246 smooth)
      (treatment p246 varnished)
      (available p247)
      (colour p247 black)
      (wood p247 oak)
    )
  )
  
)
