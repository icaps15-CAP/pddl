; woodworking task with 233 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 999342

(define (problem wood-prob-sat-182)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white green blue mauve black red - acolour
    mahogany teak cherry pine walnut oak beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 - board
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
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 natural)
    (wood p1 walnut)
    (surface-condition p1 rough)
    (treatment p1 varnished)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 green)
    (wood p6 cherry)
    (surface-condition p6 rough)
    (treatment p6 varnished)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (available p11)
    (colour p11 blue)
    (wood p11 beech)
    (surface-condition p11 smooth)
    (treatment p11 colourfragments)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (available p13)
    (colour p13 natural)
    (wood p13 teak)
    (surface-condition p13 rough)
    (treatment p13 colourfragments)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (available p17)
    (colour p17 green)
    (wood p17 oak)
    (surface-condition p17 smooth)
    (treatment p17 glazed)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (available p25)
    (colour p25 natural)
    (wood p25 pine)
    (surface-condition p25 smooth)
    (treatment p25 varnished)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (available p32)
    (colour p32 natural)
    (wood p32 cherry)
    (surface-condition p32 rough)
    (treatment p32 glazed)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 natural)
    (wood p33 teak)
    (surface-condition p33 rough)
    (treatment p33 varnished)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (available p42)
    (colour p42 white)
    (wood p42 beech)
    (surface-condition p42 verysmooth)
    (treatment p42 varnished)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (available p44)
    (colour p44 black)
    (wood p44 mahogany)
    (surface-condition p44 smooth)
    (treatment p44 varnished)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (available p59)
    (colour p59 blue)
    (wood p59 beech)
    (surface-condition p59 rough)
    (treatment p59 colourfragments)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (available p61)
    (colour p61 blue)
    (wood p61 pine)
    (surface-condition p61 verysmooth)
    (treatment p61 colourfragments)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (available p64)
    (colour p64 white)
    (wood p64 cherry)
    (surface-condition p64 rough)
    (treatment p64 varnished)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (available p69)
    (colour p69 blue)
    (wood p69 teak)
    (surface-condition p69 rough)
    (treatment p69 glazed)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (available p74)
    (colour p74 white)
    (wood p74 teak)
    (surface-condition p74 verysmooth)
    (treatment p74 glazed)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (available p78)
    (colour p78 white)
    (wood p78 cherry)
    (surface-condition p78 smooth)
    (treatment p78 varnished)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (available p82)
    (colour p82 mauve)
    (wood p82 walnut)
    (surface-condition p82 smooth)
    (treatment p82 colourfragments)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (available p84)
    (colour p84 green)
    (wood p84 teak)
    (surface-condition p84 smooth)
    (treatment p84 varnished)
    (goalsize p84 large)
    
    
    
    
    (available p85)
    (colour p85 mauve)
    (wood p85 walnut)
    (surface-condition p85 rough)
    (treatment p85 varnished)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (available p97)
    (colour p97 red)
    (wood p97 mahogany)
    (surface-condition p97 rough)
    (treatment p97 colourfragments)
    (goalsize p97 large)
    
    
    
    
    (available p98)
    (colour p98 white)
    (wood p98 pine)
    (surface-condition p98 smooth)
    (treatment p98 colourfragments)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (available p101)
    (colour p101 natural)
    (wood p101 beech)
    (surface-condition p101 smooth)
    (treatment p101 varnished)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (available p104)
    (colour p104 blue)
    (wood p104 mahogany)
    (surface-condition p104 rough)
    (treatment p104 glazed)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (available p107)
    (colour p107 red)
    (wood p107 beech)
    (surface-condition p107 smooth)
    (treatment p107 glazed)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (available p117)
    (colour p117 white)
    (wood p117 mahogany)
    (surface-condition p117 smooth)
    (treatment p117 varnished)
    (goalsize p117 small)
    
    
    
    
    (available p118)
    (colour p118 blue)
    (wood p118 beech)
    (surface-condition p118 verysmooth)
    (treatment p118 varnished)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (available p130)
    (colour p130 blue)
    (wood p130 beech)
    (surface-condition p130 smooth)
    (treatment p130 varnished)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (available p139)
    (colour p139 green)
    (wood p139 cherry)
    (surface-condition p139 verysmooth)
    (treatment p139 glazed)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (available p145)
    (colour p145 mauve)
    (wood p145 cherry)
    (surface-condition p145 verysmooth)
    (treatment p145 glazed)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (available p147)
    (colour p147 natural)
    (wood p147 teak)
    (surface-condition p147 smooth)
    (treatment p147 colourfragments)
    (goalsize p147 medium)
    
    
    
    
    (available p148)
    (colour p148 white)
    (wood p148 pine)
    (surface-condition p148 verysmooth)
    (treatment p148 glazed)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (available p152)
    (colour p152 green)
    (wood p152 teak)
    (surface-condition p152 smooth)
    (treatment p152 colourfragments)
    (goalsize p152 small)
    
    
    
    
    (available p153)
    (colour p153 black)
    (wood p153 mahogany)
    (surface-condition p153 rough)
    (treatment p153 varnished)
    (goalsize p153 small)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (available p155)
    (colour p155 red)
    (wood p155 cherry)
    (surface-condition p155 smooth)
    (treatment p155 varnished)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (available p158)
    (colour p158 blue)
    (wood p158 cherry)
    (surface-condition p158 smooth)
    (treatment p158 glazed)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (available p166)
    (colour p166 white)
    (wood p166 mahogany)
    (surface-condition p166 verysmooth)
    (treatment p166 glazed)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (available p170)
    (colour p170 mauve)
    (wood p170 cherry)
    (surface-condition p170 rough)
    (treatment p170 varnished)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
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
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 large)
    
    
    
    
    (unused p181)
    (goalsize p181 large)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (available p183)
    (colour p183 blue)
    (wood p183 oak)
    (surface-condition p183 smooth)
    (treatment p183 varnished)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 small)
    
    
    
    
    (available p185)
    (colour p185 green)
    (wood p185 pine)
    (surface-condition p185 rough)
    (treatment p185 varnished)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 medium)
    
    
    
    
    (unused p189)
    (goalsize p189 large)
    
    
    
    
    (unused p190)
    (goalsize p190 large)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 small)
    
    
    
    
    (available p196)
    (colour p196 black)
    (wood p196 beech)
    (surface-condition p196 verysmooth)
    (treatment p196 glazed)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (available p200)
    (colour p200 natural)
    (wood p200 cherry)
    (surface-condition p200 smooth)
    (treatment p200 varnished)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 small)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (available p206)
    (colour p206 green)
    (wood p206 pine)
    (surface-condition p206 verysmooth)
    (treatment p206 glazed)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 medium)
    
    
    
    
    (unused p212)
    (goalsize p212 small)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (unused p215)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 medium)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 large)
    
    
    
    
    (unused p222)
    (goalsize p222 large)
    
    
    
    
    (available p223)
    (colour p223 green)
    (wood p223 beech)
    (surface-condition p223 rough)
    (treatment p223 glazed)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 large)
    
    
    
    
    (unused p225)
    (goalsize p225 medium)
    
    
    
    
    (unused p226)
    (goalsize p226 large)
    
    
    
    
    (unused p227)
    (goalsize p227 small)
    
    
    
    
    (available p228)
    (colour p228 natural)
    (wood p228 walnut)
    (surface-condition p228 smooth)
    (treatment p228 colourfragments)
    (goalsize p228 large)
    
    
    
    
    (unused p229)
    (goalsize p229 medium)
    
    
    
    
    (available p230)
    (colour p230 white)
    (wood p230 oak)
    (surface-condition p230 smooth)
    (treatment p230 colourfragments)
    (goalsize p230 large)
    
    
    
    
    (unused p231)
    (goalsize p231 small)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s11)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s6)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s9)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s5)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s10)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s6)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s10)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s11)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s3)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s8)
    (wood b15 oak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s11)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s6)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s10)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 oak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s8)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s6)
    (wood b25 pine)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s10)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s6)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s6)
    (wood b31 pine)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s9)
    (wood b32 pine)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s4)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s6)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s9)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s11)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s11)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s7)
    (wood b39 walnut)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s9)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s6)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s5)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s6)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s8)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s8)
    (wood b45 teak)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s6)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s10)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s8)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s9)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s8)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s8)
    (wood b51 teak)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s6)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s11)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s1)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s5)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s9)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s10)
    (wood b57 beech)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s11)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s8)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s11)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s7)
    (wood b61 beech)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s7)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s6)
    (wood b63 beech)
    (surface-condition b63 smooth)
    (available b63)
    (boardsize b64 s10)
    (wood b64 beech)
    (surface-condition b64 smooth)
    (available b64)
    (boardsize b65 s8)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s9)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s2)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (wood p0 walnut)
      (treatment p0 glazed)
      (available p1)
      (wood p1 walnut)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 red)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 blue)
      (wood p3 teak)
      (surface-condition p3 verysmooth)
      (available p4)
      (colour p4 black)
      (wood p4 cherry)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (wood p5 teak)
      (treatment p5 glazed)
      (available p6)
      (colour p6 red)
      (treatment p6 varnished)
      (available p7)
      (colour p7 black)
      (treatment p7 varnished)
      (available p8)
      (colour p8 black)
      (treatment p8 varnished)
      (available p9)
      (wood p9 beech)
      (surface-condition p9 verysmooth)
      (available p10)
      (wood p10 beech)
      (surface-condition p10 smooth)
      (available p11)
      (wood p11 beech)
      (treatment p11 glazed)
      (available p12)
      (wood p12 oak)
      (surface-condition p12 smooth)
      (available p13)
      (wood p13 teak)
      (surface-condition p13 verysmooth)
      (available p14)
      (wood p14 walnut)
      (treatment p14 varnished)
      (available p15)
      (wood p15 oak)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 green)
      (wood p16 teak)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 blue)
      (wood p17 oak)
      (available p18)
      (colour p18 blue)
      (wood p18 walnut)
      (available p19)
      (colour p19 blue)
      (surface-condition p19 smooth)
      (available p20)
      (wood p20 pine)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 mauve)
      (wood p21 beech)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 natural)
      (wood p22 pine)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 mauve)
      (wood p23 pine)
      (surface-condition p23 smooth)
      (available p24)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (wood p25 pine)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 blue)
      (wood p26 beech)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 black)
      (treatment p28 glazed)
      (available p29)
      (colour p29 blue)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 white)
      (treatment p30 glazed)
      (available p31)
      (colour p31 natural)
      (surface-condition p31 verysmooth)
      (available p32)
      (wood p32 cherry)
      (treatment p32 varnished)
      (available p33)
      (colour p33 red)
      (wood p33 teak)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (wood p34 walnut)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 blue)
      (wood p35 oak)
      (surface-condition p35 smooth)
      (available p36)
      (colour p36 blue)
      (treatment p36 varnished)
      (available p37)
      (colour p37 natural)
      (surface-condition p37 smooth)
      (available p38)
      (colour p38 natural)
      (wood p38 mahogany)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (wood p41 cherry)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 mauve)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 green)
      (treatment p43 varnished)
      (available p44)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 blue)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 natural)
      (treatment p46 glazed)
      (available p47)
      (colour p47 natural)
      (wood p47 pine)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (wood p48 cherry)
      (surface-condition p48 verysmooth)
      (available p49)
      (colour p49 black)
      (wood p49 pine)
      (available p50)
      (colour p50 blue)
      (wood p50 pine)
      (treatment p50 varnished)
      (available p51)
      (colour p51 red)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 red)
      (wood p52 mahogany)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 green)
      (wood p53 beech)
      (available p54)
      (colour p54 mauve)
      (surface-condition p54 verysmooth)
      (available p55)
      (colour p55 red)
      (wood p55 pine)
      (treatment p55 varnished)
      (available p56)
      (colour p56 red)
      (wood p56 walnut)
      (available p57)
      (wood p57 teak)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (wood p58 walnut)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 green)
      (wood p59 beech)
      (surface-condition p59 smooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 red)
      (wood p60 oak)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 green)
      (wood p61 pine)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 red)
      (wood p62 walnut)
      (available p63)
      (colour p63 black)
      (treatment p63 varnished)
      (available p64)
      (colour p64 red)
      (treatment p64 varnished)
      (available p65)
      (colour p65 mauve)
      (surface-condition p65 verysmooth)
      (available p66)
      (wood p66 teak)
      (treatment p66 varnished)
      (available p67)
      (wood p67 pine)
      (surface-condition p67 verysmooth)
      (available p68)
      (wood p68 beech)
      (surface-condition p68 smooth)
      (available p69)
      (colour p69 black)
      (wood p69 teak)
      (available p70)
      (wood p70 walnut)
      (surface-condition p70 verysmooth)
      (available p71)
      (colour p71 black)
      (wood p71 teak)
      (available p72)
      (colour p72 black)
      (surface-condition p72 smooth)
      (treatment p72 glazed)
      (available p73)
      (wood p73 beech)
      (treatment p73 varnished)
      (available p74)
      (colour p74 red)
      (wood p74 teak)
      (available p75)
      (colour p75 mauve)
      (wood p75 teak)
      (available p76)
      (wood p76 oak)
      (treatment p76 glazed)
      (available p77)
      (wood p77 teak)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (wood p78 cherry)
      (surface-condition p78 verysmooth)
      (treatment p78 varnished)
      (available p79)
      (colour p79 mauve)
      (wood p79 oak)
      (available p80)
      (colour p80 white)
      (wood p80 walnut)
      (treatment p80 glazed)
      (available p81)
      (surface-condition p81 verysmooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 black)
      (wood p82 walnut)
      (surface-condition p82 verysmooth)
      (treatment p82 glazed)
      (available p83)
      (colour p83 red)
      (wood p83 teak)
      (surface-condition p83 verysmooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 black)
      (wood p84 teak)
      (surface-condition p84 verysmooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 blue)
      (wood p85 walnut)
      (treatment p85 glazed)
      (available p86)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (wood p87 teak)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 white)
      (surface-condition p88 smooth)
      (available p89)
      (colour p89 natural)
      (treatment p89 varnished)
      (available p90)
      (wood p90 walnut)
      (surface-condition p90 verysmooth)
      (available p91)
      (colour p91 black)
      (treatment p91 glazed)
      (available p92)
      (wood p92 walnut)
      (surface-condition p92 smooth)
      (available p93)
      (colour p93 white)
      (wood p93 mahogany)
      (surface-condition p93 smooth)
      (available p94)
      (wood p94 oak)
      (treatment p94 varnished)
      (available p95)
      (wood p95 cherry)
      (treatment p95 varnished)
      (available p96)
      (wood p96 mahogany)
      (treatment p96 varnished)
      (available p97)
      (surface-condition p97 verysmooth)
      (treatment p97 varnished)
      (available p98)
      (colour p98 green)
      (wood p98 pine)
      (surface-condition p98 verysmooth)
      (available p99)
      (colour p99 blue)
      (wood p99 teak)
      (available p100)
      (colour p100 natural)
      (wood p100 mahogany)
      (surface-condition p100 verysmooth)
      (available p101)
      (colour p101 black)
      (wood p101 beech)
      (surface-condition p101 smooth)
      (treatment p101 varnished)
      (available p102)
      (wood p102 mahogany)
      (surface-condition p102 verysmooth)
      (available p103)
      (colour p103 white)
      (wood p103 teak)
      (treatment p103 glazed)
      (available p104)
      (colour p104 mauve)
      (treatment p104 varnished)
      (available p105)
      (wood p105 beech)
      (surface-condition p105 verysmooth)
      (available p106)
      (colour p106 green)
      (wood p106 oak)
      (surface-condition p106 smooth)
      (treatment p106 glazed)
      (available p107)
      (colour p107 green)
      (wood p107 beech)
      (available p108)
      (wood p108 walnut)
      (surface-condition p108 verysmooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 natural)
      (surface-condition p109 verysmooth)
      (available p110)
      (colour p110 red)
      (wood p110 cherry)
      (surface-condition p110 smooth)
      (available p111)
      (colour p111 red)
      (treatment p111 glazed)
      (available p112)
      (colour p112 red)
      (wood p112 oak)
      (available p113)
      (colour p113 black)
      (surface-condition p113 verysmooth)
      (available p114)
      (colour p114 white)
      (wood p114 teak)
      (surface-condition p114 verysmooth)
      (available p115)
      (colour p115 natural)
      (wood p115 oak)
      (available p116)
      (wood p116 beech)
      (surface-condition p116 verysmooth)
      (available p117)
      (colour p117 blue)
      (surface-condition p117 smooth)
      (available p118)
      (colour p118 green)
      (surface-condition p118 smooth)
      (available p119)
      (wood p119 teak)
      (surface-condition p119 smooth)
      (available p120)
      (wood p120 teak)
      (treatment p120 glazed)
      (available p121)
      (colour p121 red)
      (wood p121 mahogany)
      (surface-condition p121 verysmooth)
      (treatment p121 varnished)
      (available p122)
      (wood p122 mahogany)
      (treatment p122 glazed)
      (available p123)
      (colour p123 white)
      (treatment p123 glazed)
      (available p124)
      (colour p124 natural)
      (treatment p124 varnished)
      (available p125)
      (colour p125 mauve)
      (wood p125 beech)
      (surface-condition p125 verysmooth)
      (treatment p125 glazed)
      (available p126)
      (colour p126 green)
      (wood p126 oak)
      (surface-condition p126 verysmooth)
      (available p127)
      (colour p127 natural)
      (wood p127 pine)
      (treatment p127 varnished)
      (available p128)
      (colour p128 natural)
      (wood p128 pine)
      (surface-condition p128 smooth)
      (treatment p128 varnished)
      (available p129)
      (colour p129 green)
      (treatment p129 glazed)
      (available p130)
      (surface-condition p130 smooth)
      (treatment p130 glazed)
      (available p131)
      (colour p131 white)
      (wood p131 teak)
      (treatment p131 varnished)
      (available p132)
      (colour p132 mauve)
      (surface-condition p132 verysmooth)
      (available p133)
      (colour p133 white)
      (wood p133 beech)
      (surface-condition p133 verysmooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 white)
      (wood p134 teak)
      (surface-condition p134 smooth)
      (treatment p134 glazed)
      (available p135)
      (colour p135 mauve)
      (wood p135 teak)
      (surface-condition p135 verysmooth)
      (treatment p135 varnished)
      (available p136)
      (surface-condition p136 verysmooth)
      (treatment p136 varnished)
      (available p137)
      (colour p137 black)
      (wood p137 walnut)
      (available p138)
      (wood p138 teak)
      (surface-condition p138 verysmooth)
      (treatment p138 varnished)
      (available p139)
      (colour p139 blue)
      (wood p139 cherry)
      (available p140)
      (colour p140 blue)
      (wood p140 oak)
      (surface-condition p140 smooth)
      (treatment p140 varnished)
      (available p141)
      (wood p141 teak)
      (surface-condition p141 smooth)
      (treatment p141 varnished)
      (available p142)
      (colour p142 blue)
      (surface-condition p142 verysmooth)
      (treatment p142 varnished)
      (available p143)
      (colour p143 red)
      (treatment p143 glazed)
      (available p144)
      (wood p144 cherry)
      (surface-condition p144 verysmooth)
      (treatment p144 glazed)
      (available p145)
      (colour p145 red)
      (wood p145 cherry)
      (available p146)
      (wood p146 walnut)
      (surface-condition p146 verysmooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 blue)
      (surface-condition p147 smooth)
      (treatment p147 varnished)
      (available p148)
      (colour p148 red)
      (surface-condition p148 smooth)
      (treatment p148 varnished)
      (available p149)
      (colour p149 white)
      (wood p149 mahogany)
      (surface-condition p149 verysmooth)
      (treatment p149 varnished)
      (available p150)
      (colour p150 white)
      (wood p150 mahogany)
      (surface-condition p150 smooth)
      (available p151)
      (colour p151 mauve)
      (surface-condition p151 verysmooth)
      (treatment p151 varnished)
      (available p152)
      (colour p152 mauve)
      (wood p152 teak)
      (available p153)
      (colour p153 natural)
      (wood p153 mahogany)
      (available p154)
      (colour p154 green)
      (treatment p154 varnished)
      (available p155)
      (colour p155 blue)
      (wood p155 cherry)
      (available p156)
      (colour p156 mauve)
      (wood p156 beech)
      (surface-condition p156 smooth)
      (treatment p156 varnished)
      (available p157)
      (wood p157 beech)
      (treatment p157 glazed)
      (available p158)
      (colour p158 red)
      (surface-condition p158 smooth)
      (available p159)
      (colour p159 natural)
      (wood p159 oak)
      (available p160)
      (colour p160 red)
      (wood p160 cherry)
      (surface-condition p160 smooth)
      (treatment p160 varnished)
      (available p161)
      (colour p161 white)
      (wood p161 pine)
      (surface-condition p161 smooth)
      (treatment p161 glazed)
      (available p162)
      (wood p162 beech)
      (surface-condition p162 verysmooth)
      (available p163)
      (surface-condition p163 verysmooth)
      (treatment p163 varnished)
      (available p164)
      (colour p164 white)
      (wood p164 mahogany)
      (surface-condition p164 smooth)
      (treatment p164 varnished)
      (available p165)
      (colour p165 blue)
      (treatment p165 glazed)
      (available p166)
      (colour p166 red)
      (wood p166 mahogany)
      (surface-condition p166 smooth)
      (treatment p166 varnished)
      (available p167)
      (colour p167 white)
      (surface-condition p167 smooth)
      (available p168)
      (wood p168 walnut)
      (treatment p168 varnished)
      (available p169)
      (colour p169 blue)
      (surface-condition p169 smooth)
      (treatment p169 varnished)
      (available p170)
      (wood p170 cherry)
      (surface-condition p170 verysmooth)
      (available p171)
      (surface-condition p171 smooth)
      (treatment p171 varnished)
      (available p172)
      (colour p172 white)
      (wood p172 mahogany)
      (surface-condition p172 smooth)
      (treatment p172 glazed)
      (available p173)
      (colour p173 black)
      (wood p173 beech)
      (surface-condition p173 smooth)
      (treatment p173 varnished)
      (available p174)
      (wood p174 beech)
      (surface-condition p174 smooth)
      (treatment p174 glazed)
      (available p175)
      (surface-condition p175 verysmooth)
      (treatment p175 glazed)
      (available p176)
      (colour p176 black)
      (wood p176 mahogany)
      (surface-condition p176 smooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 green)
      (wood p177 walnut)
      (surface-condition p177 verysmooth)
      (available p178)
      (wood p178 cherry)
      (surface-condition p178 verysmooth)
      (available p179)
      (colour p179 mauve)
      (surface-condition p179 smooth)
      (treatment p179 varnished)
      (available p180)
      (colour p180 red)
      (surface-condition p180 smooth)
      (available p181)
      (colour p181 white)
      (wood p181 cherry)
      (treatment p181 varnished)
      (available p182)
      (colour p182 black)
      (surface-condition p182 smooth)
      (available p183)
      (colour p183 mauve)
      (treatment p183 glazed)
      (available p184)
      (colour p184 black)
      (wood p184 pine)
      (surface-condition p184 verysmooth)
      (treatment p184 glazed)
      (available p185)
      (wood p185 pine)
      (surface-condition p185 verysmooth)
      (treatment p185 glazed)
      (available p186)
      (colour p186 red)
      (surface-condition p186 verysmooth)
      (available p187)
      (colour p187 black)
      (wood p187 mahogany)
      (surface-condition p187 verysmooth)
      (treatment p187 varnished)
      (available p188)
      (colour p188 natural)
      (surface-condition p188 verysmooth)
      (available p189)
      (colour p189 white)
      (wood p189 pine)
      (surface-condition p189 verysmooth)
      (available p190)
      (colour p190 black)
      (surface-condition p190 verysmooth)
      (treatment p190 varnished)
      (available p191)
      (colour p191 red)
      (wood p191 oak)
      (available p192)
      (colour p192 blue)
      (surface-condition p192 verysmooth)
      (available p193)
      (wood p193 beech)
      (surface-condition p193 verysmooth)
      (available p194)
      (colour p194 black)
      (wood p194 oak)
      (surface-condition p194 verysmooth)
      (treatment p194 glazed)
      (available p195)
      (colour p195 mauve)
      (wood p195 walnut)
      (available p196)
      (colour p196 blue)
      (wood p196 beech)
      (surface-condition p196 smooth)
      (available p197)
      (colour p197 mauve)
      (wood p197 oak)
      (surface-condition p197 smooth)
      (treatment p197 varnished)
      (available p198)
      (colour p198 mauve)
      (surface-condition p198 smooth)
      (available p199)
      (colour p199 white)
      (wood p199 oak)
      (available p200)
      (colour p200 black)
      (treatment p200 varnished)
      (available p201)
      (wood p201 walnut)
      (surface-condition p201 smooth)
      (available p202)
      (wood p202 cherry)
      (treatment p202 varnished)
      (available p203)
      (wood p203 walnut)
      (surface-condition p203 smooth)
      (available p204)
      (colour p204 natural)
      (wood p204 beech)
      (surface-condition p204 verysmooth)
      (available p205)
      (wood p205 beech)
      (treatment p205 varnished)
      (available p206)
      (colour p206 red)
      (wood p206 pine)
      (surface-condition p206 smooth)
      (available p207)
      (colour p207 mauve)
      (wood p207 oak)
      (available p208)
      (colour p208 black)
      (wood p208 teak)
      (available p209)
      (colour p209 white)
      (wood p209 oak)
      (surface-condition p209 verysmooth)
      (treatment p209 varnished)
      (available p210)
      (colour p210 mauve)
      (wood p210 pine)
      (surface-condition p210 smooth)
      (treatment p210 glazed)
      (available p211)
      (wood p211 beech)
      (surface-condition p211 verysmooth)
      (available p212)
      (wood p212 mahogany)
      (surface-condition p212 smooth)
      (available p213)
      (colour p213 blue)
      (wood p213 pine)
      (surface-condition p213 smooth)
      (treatment p213 varnished)
      (available p214)
      (wood p214 walnut)
      (surface-condition p214 smooth)
      (available p215)
      (wood p215 walnut)
      (surface-condition p215 verysmooth)
      (available p216)
      (colour p216 red)
      (wood p216 teak)
      (surface-condition p216 verysmooth)
      (treatment p216 glazed)
      (available p217)
      (wood p217 oak)
      (treatment p217 glazed)
      (available p218)
      (wood p218 beech)
      (treatment p218 varnished)
      (available p219)
      (wood p219 cherry)
      (treatment p219 glazed)
      (available p220)
      (wood p220 cherry)
      (surface-condition p220 smooth)
      (treatment p220 varnished)
      (available p221)
      (colour p221 green)
      (surface-condition p221 smooth)
      (available p222)
      (colour p222 black)
      (wood p222 cherry)
      (surface-condition p222 verysmooth)
      (treatment p222 varnished)
      (available p223)
      (colour p223 black)
      (wood p223 beech)
      (surface-condition p223 verysmooth)
      (treatment p223 glazed)
      (available p224)
      (colour p224 green)
      (surface-condition p224 smooth)
      (treatment p224 varnished)
      (available p225)
      (wood p225 beech)
      (surface-condition p225 smooth)
      (available p226)
      (colour p226 natural)
      (wood p226 beech)
      (available p227)
      (colour p227 mauve)
      (wood p227 pine)
      (surface-condition p227 verysmooth)
      (treatment p227 varnished)
      (available p228)
      (wood p228 walnut)
      (surface-condition p228 verysmooth)
      (available p229)
      (colour p229 red)
      (wood p229 beech)
      (treatment p229 varnished)
      (available p230)
      (colour p230 blue)
      (treatment p230 varnished)
      (available p231)
      (colour p231 mauve)
      (wood p231 cherry)
      (available p232)
      (colour p232 mauve)
      (surface-condition p232 smooth)
    )
  )
  
)
