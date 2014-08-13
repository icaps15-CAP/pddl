; woodworking task with 242 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 907313

(define (problem wood-prob-sat-185)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white mauve black green red blue - acolour
    oak cherry pine mahogany beech teak walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 - part
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
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
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
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 black)
    (wood p0 walnut)
    (surface-condition p0 verysmooth)
    (treatment p0 glazed)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (available p4)
    (colour p4 red)
    (wood p4 teak)
    (surface-condition p4 smooth)
    (treatment p4 varnished)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 mauve)
    (wood p6 teak)
    (surface-condition p6 smooth)
    (treatment p6 varnished)
    (goalsize p6 large)
    
    
    
    
    (available p7)
    (colour p7 white)
    (wood p7 beech)
    (surface-condition p7 rough)
    (treatment p7 varnished)
    (goalsize p7 small)
    
    
    
    
    (available p8)
    (colour p8 natural)
    (wood p8 pine)
    (surface-condition p8 verysmooth)
    (treatment p8 glazed)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 red)
    (wood p9 beech)
    (surface-condition p9 smooth)
    (treatment p9 colourfragments)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 mauve)
    (wood p15 walnut)
    (surface-condition p15 smooth)
    (treatment p15 colourfragments)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
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
    
    
    
    
    (available p25)
    (colour p25 white)
    (wood p25 teak)
    (surface-condition p25 verysmooth)
    (treatment p25 varnished)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (available p30)
    (colour p30 black)
    (wood p30 oak)
    (surface-condition p30 smooth)
    (treatment p30 varnished)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (available p38)
    (colour p38 blue)
    (wood p38 mahogany)
    (surface-condition p38 rough)
    (treatment p38 colourfragments)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (available p44)
    (colour p44 mauve)
    (wood p44 pine)
    (surface-condition p44 smooth)
    (treatment p44 varnished)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (available p46)
    (colour p46 red)
    (wood p46 pine)
    (surface-condition p46 rough)
    (treatment p46 colourfragments)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (available p51)
    (colour p51 green)
    (wood p51 beech)
    (surface-condition p51 verysmooth)
    (treatment p51 varnished)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (available p54)
    (colour p54 white)
    (wood p54 walnut)
    (surface-condition p54 smooth)
    (treatment p54 glazed)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (available p59)
    (colour p59 natural)
    (wood p59 beech)
    (surface-condition p59 rough)
    (treatment p59 glazed)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (available p66)
    (colour p66 red)
    (wood p66 pine)
    (surface-condition p66 verysmooth)
    (treatment p66 varnished)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (available p71)
    (colour p71 natural)
    (wood p71 walnut)
    (surface-condition p71 smooth)
    (treatment p71 varnished)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (available p73)
    (colour p73 black)
    (wood p73 oak)
    (surface-condition p73 rough)
    (treatment p73 colourfragments)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (available p81)
    (colour p81 blue)
    (wood p81 beech)
    (surface-condition p81 rough)
    (treatment p81 varnished)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (available p87)
    (colour p87 mauve)
    (wood p87 beech)
    (surface-condition p87 smooth)
    (treatment p87 varnished)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (available p90)
    (colour p90 green)
    (wood p90 beech)
    (surface-condition p90 rough)
    (treatment p90 glazed)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (available p94)
    (colour p94 mauve)
    (wood p94 cherry)
    (surface-condition p94 smooth)
    (treatment p94 colourfragments)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (available p98)
    (colour p98 black)
    (wood p98 mahogany)
    (surface-condition p98 verysmooth)
    (treatment p98 varnished)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (available p102)
    (colour p102 red)
    (wood p102 beech)
    (surface-condition p102 smooth)
    (treatment p102 glazed)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (available p112)
    (colour p112 mauve)
    (wood p112 teak)
    (surface-condition p112 rough)
    (treatment p112 colourfragments)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (available p116)
    (colour p116 mauve)
    (wood p116 oak)
    (surface-condition p116 smooth)
    (treatment p116 colourfragments)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (available p122)
    (colour p122 green)
    (wood p122 walnut)
    (surface-condition p122 rough)
    (treatment p122 varnished)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (available p125)
    (colour p125 white)
    (wood p125 oak)
    (surface-condition p125 smooth)
    (treatment p125 colourfragments)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (available p139)
    (colour p139 mauve)
    (wood p139 mahogany)
    (surface-condition p139 rough)
    (treatment p139 colourfragments)
    (goalsize p139 medium)
    
    
    
    
    (available p140)
    (colour p140 black)
    (wood p140 oak)
    (surface-condition p140 verysmooth)
    (treatment p140 colourfragments)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (available p144)
    (colour p144 mauve)
    (wood p144 pine)
    (surface-condition p144 rough)
    (treatment p144 glazed)
    (goalsize p144 small)
    
    
    
    
    (available p145)
    (colour p145 green)
    (wood p145 walnut)
    (surface-condition p145 smooth)
    (treatment p145 colourfragments)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (available p148)
    (colour p148 blue)
    (wood p148 teak)
    (surface-condition p148 verysmooth)
    (treatment p148 colourfragments)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (available p155)
    (colour p155 black)
    (wood p155 beech)
    (surface-condition p155 rough)
    (treatment p155 varnished)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (available p165)
    (colour p165 blue)
    (wood p165 mahogany)
    (surface-condition p165 rough)
    (treatment p165 varnished)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (available p168)
    (colour p168 red)
    (wood p168 mahogany)
    (surface-condition p168 smooth)
    (treatment p168 colourfragments)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (available p170)
    (colour p170 green)
    (wood p170 teak)
    (surface-condition p170 smooth)
    (treatment p170 colourfragments)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (available p174)
    (colour p174 black)
    (wood p174 beech)
    (surface-condition p174 rough)
    (treatment p174 varnished)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 medium)
    
    
    
    
    (unused p178)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 large)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (available p187)
    (colour p187 natural)
    (wood p187 teak)
    (surface-condition p187 smooth)
    (treatment p187 varnished)
    (goalsize p187 medium)
    
    
    
    
    (unused p188)
    (goalsize p188 medium)
    
    
    
    
    (available p189)
    (colour p189 green)
    (wood p189 oak)
    (surface-condition p189 rough)
    (treatment p189 glazed)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (available p193)
    (colour p193 red)
    (wood p193 walnut)
    (surface-condition p193 rough)
    (treatment p193 colourfragments)
    (goalsize p193 large)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 small)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (available p198)
    (colour p198 black)
    (wood p198 oak)
    (surface-condition p198 rough)
    (treatment p198 colourfragments)
    (goalsize p198 medium)
    
    
    
    
    (unused p199)
    (goalsize p199 medium)
    
    
    
    
    (unused p200)
    (goalsize p200 small)
    
    
    
    
    (available p201)
    (colour p201 white)
    (wood p201 mahogany)
    (surface-condition p201 verysmooth)
    (treatment p201 colourfragments)
    (goalsize p201 medium)
    
    
    
    
    (available p202)
    (colour p202 blue)
    (wood p202 walnut)
    (surface-condition p202 smooth)
    (treatment p202 colourfragments)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 small)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (available p208)
    (colour p208 white)
    (wood p208 walnut)
    (surface-condition p208 rough)
    (treatment p208 colourfragments)
    (goalsize p208 medium)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 small)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (unused p215)
    (goalsize p215 large)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 small)
    
    
    
    
    (unused p218)
    (goalsize p218 medium)
    
    
    
    
    (available p219)
    (colour p219 green)
    (wood p219 mahogany)
    (surface-condition p219 smooth)
    (treatment p219 varnished)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 large)
    
    
    
    
    (unused p221)
    (goalsize p221 small)
    
    
    
    
    (unused p222)
    (goalsize p222 medium)
    
    
    
    
    (unused p223)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 large)
    
    
    
    
    (available p225)
    (colour p225 mauve)
    (wood p225 walnut)
    (surface-condition p225 smooth)
    (treatment p225 glazed)
    (goalsize p225 large)
    
    
    
    
    (unused p226)
    (goalsize p226 small)
    
    
    
    
    (available p227)
    (colour p227 natural)
    (wood p227 oak)
    (surface-condition p227 verysmooth)
    (treatment p227 colourfragments)
    (goalsize p227 large)
    
    
    
    
    (available p228)
    (colour p228 black)
    (wood p228 beech)
    (surface-condition p228 rough)
    (treatment p228 varnished)
    (goalsize p228 large)
    
    
    
    
    (unused p229)
    (goalsize p229 small)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (unused p231)
    (goalsize p231 small)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 medium)
    
    
    
    
    (unused p234)
    (goalsize p234 large)
    
    
    
    
    (unused p235)
    (goalsize p235 small)
    
    
    
    
    (unused p236)
    (goalsize p236 medium)
    
    
    
    
    (unused p237)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 small)
    
    
    
    
    (unused p239)
    (goalsize p239 small)
    
    
    
    
    (available p240)
    (colour p240 white)
    (wood p240 pine)
    (surface-condition p240 rough)
    (treatment p240 varnished)
    (goalsize p240 small)
    
    
    
    
    (unused p241)
    (goalsize p241 large)
    
    
    
    
    (boardsize b0 s11)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s5)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s5)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s9)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s9)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s1)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s5)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 oak)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s10)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s11)
    (wood b19 oak)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s10)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s7)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s11)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s11)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s12)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s5)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s6)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s5)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s9)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 pine)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s9)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s7)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s9)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s7)
    (wood b35 pine)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s7)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s6)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s8)
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
    (boardsize b42 s6)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s9)
    (wood b43 walnut)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s9)
    (wood b44 walnut)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s5)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s8)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s9)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s8)
    (wood b48 walnut)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s6)
    (wood b49 walnut)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s9)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s10)
    (wood b51 teak)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s9)
    (wood b52 teak)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s8)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s6)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s7)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s10)
    (wood b56 teak)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s6)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s8)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s7)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s8)
    (wood b60 teak)
    (surface-condition b60 smooth)
    (available b60)
    (boardsize b61 s2)
    (wood b61 teak)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s8)
    (wood b62 beech)
    (surface-condition b62 smooth)
    (available b62)
    (boardsize b63 s9)
    (wood b63 beech)
    (surface-condition b63 smooth)
    (available b63)
    (boardsize b64 s10)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s6)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s8)
    (wood b66 beech)
    (surface-condition b66 smooth)
    (available b66)
    (boardsize b67 s8)
    (wood b67 beech)
    (surface-condition b67 smooth)
    (available b67)
    (boardsize b68 s6)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
    (boardsize b69 s3)
    (wood b69 beech)
    (surface-condition b69 rough)
    (available b69)
  )
  (:goal
    (and
      (available p0)
      (colour p0 red)
      (wood p0 walnut)
      (surface-condition p0 smooth)
      (available p1)
      (wood p1 cherry)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (wood p2 walnut)
      (treatment p2 varnished)
      (available p3)
      (colour p3 black)
      (wood p3 pine)
      (available p4)
      (colour p4 black)
      (wood p4 teak)
      (treatment p4 glazed)
      (available p5)
      (wood p5 teak)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 blue)
      (treatment p6 glazed)
      (available p7)
      (wood p7 beech)
      (surface-condition p7 verysmooth)
      (available p8)
      (wood p8 pine)
      (treatment p8 varnished)
      (available p9)
      (colour p9 green)
      (wood p9 beech)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 blue)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 white)
      (treatment p11 varnished)
      (available p12)
      (colour p12 black)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 walnut)
      (treatment p15 varnished)
      (available p16)
      (colour p16 white)
      (surface-condition p16 smooth)
      (available p17)
      (colour p17 natural)
      (wood p17 oak)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 red)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 natural)
      (wood p19 mahogany)
      (treatment p19 varnished)
      (available p20)
      (wood p20 pine)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 mauve)
      (wood p21 teak)
      (surface-condition p21 verysmooth)
      (available p22)
      (wood p22 teak)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 mauve)
      (wood p23 walnut)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 blue)
      (wood p24 mahogany)
      (available p25)
      (colour p25 green)
      (wood p25 teak)
      (available p26)
      (wood p26 pine)
      (treatment p26 glazed)
      (available p27)
      (colour p27 green)
      (wood p27 pine)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (surface-condition p28 verysmooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 red)
      (wood p29 mahogany)
      (available p30)
      (colour p30 red)
      (wood p30 oak)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (wood p31 teak)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (wood p32 walnut)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 mauve)
      (wood p33 pine)
      (available p34)
      (colour p34 mauve)
      (treatment p34 varnished)
      (available p35)
      (wood p35 oak)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 white)
      (treatment p36 varnished)
      (available p37)
      (colour p37 white)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 natural)
      (wood p38 mahogany)
      (available p39)
      (colour p39 white)
      (wood p39 walnut)
      (treatment p39 glazed)
      (available p40)
      (wood p40 walnut)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 red)
      (wood p41 teak)
      (available p42)
      (colour p42 natural)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 black)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 white)
      (wood p44 pine)
      (treatment p44 glazed)
      (available p45)
      (colour p45 mauve)
      (wood p45 cherry)
      (surface-condition p45 smooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 natural)
      (wood p46 pine)
      (surface-condition p46 smooth)
      (available p47)
      (wood p47 oak)
      (treatment p47 glazed)
      (available p48)
      (wood p48 beech)
      (treatment p48 glazed)
      (available p49)
      (colour p49 green)
      (wood p49 oak)
      (surface-condition p49 verysmooth)
      (available p50)
      (wood p50 beech)
      (treatment p50 glazed)
      (available p51)
      (colour p51 red)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 black)
      (treatment p52 glazed)
      (available p53)
      (wood p53 mahogany)
      (surface-condition p53 verysmooth)
      (available p54)
      (wood p54 walnut)
      (surface-condition p54 verysmooth)
      (available p55)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 blue)
      (wood p56 beech)
      (treatment p56 varnished)
      (available p57)
      (wood p57 beech)
      (treatment p57 varnished)
      (available p58)
      (colour p58 red)
      (wood p58 teak)
      (surface-condition p58 verysmooth)
      (available p59)
      (colour p59 green)
      (wood p59 beech)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 natural)
      (wood p60 oak)
      (available p61)
      (colour p61 green)
      (wood p61 beech)
      (surface-condition p61 verysmooth)
      (treatment p61 glazed)
      (available p62)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (wood p63 walnut)
      (surface-condition p63 verysmooth)
      (available p64)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 blue)
      (surface-condition p65 smooth)
      (available p66)
      (colour p66 black)
      (wood p66 pine)
      (available p67)
      (colour p67 mauve)
      (wood p67 mahogany)
      (treatment p67 varnished)
      (available p68)
      (colour p68 natural)
      (wood p68 cherry)
      (surface-condition p68 verysmooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 red)
      (wood p69 walnut)
      (surface-condition p69 smooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 natural)
      (wood p70 mahogany)
      (surface-condition p70 smooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 red)
      (wood p71 walnut)
      (available p72)
      (colour p72 red)
      (wood p72 teak)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 red)
      (wood p73 oak)
      (available p74)
      (wood p74 teak)
      (treatment p74 varnished)
      (available p75)
      (colour p75 natural)
      (surface-condition p75 verysmooth)
      (treatment p75 varnished)
      (available p76)
      (colour p76 black)
      (treatment p76 varnished)
      (available p77)
      (wood p77 teak)
      (treatment p77 varnished)
      (available p78)
      (colour p78 red)
      (wood p78 teak)
      (surface-condition p78 smooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 red)
      (wood p79 walnut)
      (surface-condition p79 smooth)
      (treatment p79 varnished)
      (available p80)
      (colour p80 natural)
      (surface-condition p80 verysmooth)
      (available p81)
      (colour p81 green)
      (treatment p81 varnished)
      (available p82)
      (colour p82 red)
      (surface-condition p82 smooth)
      (available p83)
      (colour p83 red)
      (surface-condition p83 verysmooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 red)
      (treatment p84 glazed)
      (available p85)
      (colour p85 red)
      (surface-condition p85 verysmooth)
      (available p86)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 black)
      (wood p87 beech)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 natural)
      (wood p88 walnut)
      (available p89)
      (wood p89 walnut)
      (surface-condition p89 verysmooth)
      (available p90)
      (wood p90 beech)
      (surface-condition p90 verysmooth)
      (available p91)
      (colour p91 natural)
      (treatment p91 varnished)
      (available p92)
      (wood p92 teak)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (colour p93 black)
      (wood p93 teak)
      (available p94)
      (wood p94 cherry)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 blue)
      (wood p95 beech)
      (available p96)
      (colour p96 white)
      (wood p96 mahogany)
      (surface-condition p96 smooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 natural)
      (treatment p97 glazed)
      (available p98)
      (colour p98 mauve)
      (wood p98 mahogany)
      (available p99)
      (colour p99 blue)
      (surface-condition p99 smooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 mauve)
      (wood p100 beech)
      (surface-condition p100 smooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 black)
      (wood p101 walnut)
      (surface-condition p101 smooth)
      (treatment p101 varnished)
      (available p102)
      (wood p102 beech)
      (surface-condition p102 verysmooth)
      (available p103)
      (colour p103 white)
      (treatment p103 glazed)
      (available p104)
      (colour p104 green)
      (wood p104 pine)
      (surface-condition p104 verysmooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 red)
      (treatment p105 glazed)
      (available p106)
      (wood p106 oak)
      (treatment p106 glazed)
      (available p107)
      (wood p107 cherry)
      (surface-condition p107 smooth)
      (available p108)
      (wood p108 oak)
      (surface-condition p108 smooth)
      (available p109)
      (colour p109 black)
      (treatment p109 varnished)
      (available p110)
      (colour p110 black)
      (wood p110 pine)
      (surface-condition p110 smooth)
      (treatment p110 glazed)
      (available p111)
      (colour p111 red)
      (wood p111 teak)
      (surface-condition p111 verysmooth)
      (treatment p111 varnished)
      (available p112)
      (colour p112 blue)
      (wood p112 teak)
      (surface-condition p112 verysmooth)
      (treatment p112 glazed)
      (available p113)
      (colour p113 white)
      (wood p113 walnut)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 blue)
      (surface-condition p114 verysmooth)
      (available p115)
      (colour p115 natural)
      (wood p115 mahogany)
      (available p116)
      (colour p116 black)
      (treatment p116 varnished)
      (available p117)
      (colour p117 red)
      (treatment p117 glazed)
      (available p118)
      (colour p118 green)
      (surface-condition p118 smooth)
      (available p119)
      (colour p119 natural)
      (wood p119 pine)
      (surface-condition p119 smooth)
      (treatment p119 varnished)
      (available p120)
      (wood p120 mahogany)
      (surface-condition p120 verysmooth)
      (treatment p120 varnished)
      (available p121)
      (colour p121 black)
      (wood p121 walnut)
      (available p122)
      (wood p122 walnut)
      (surface-condition p122 verysmooth)
      (available p123)
      (wood p123 oak)
      (surface-condition p123 verysmooth)
      (treatment p123 varnished)
      (available p124)
      (wood p124 pine)
      (surface-condition p124 smooth)
      (available p125)
      (colour p125 red)
      (wood p125 oak)
      (surface-condition p125 verysmooth)
      (treatment p125 glazed)
      (available p126)
      (colour p126 black)
      (surface-condition p126 verysmooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 red)
      (wood p127 walnut)
      (available p128)
      (colour p128 green)
      (surface-condition p128 smooth)
      (treatment p128 glazed)
      (available p129)
      (colour p129 white)
      (wood p129 cherry)
      (surface-condition p129 verysmooth)
      (treatment p129 glazed)
      (available p130)
      (wood p130 teak)
      (surface-condition p130 verysmooth)
      (treatment p130 varnished)
      (available p131)
      (wood p131 pine)
      (surface-condition p131 smooth)
      (available p132)
      (colour p132 mauve)
      (wood p132 mahogany)
      (available p133)
      (wood p133 mahogany)
      (treatment p133 varnished)
      (available p134)
      (wood p134 oak)
      (treatment p134 glazed)
      (available p135)
      (colour p135 green)
      (wood p135 teak)
      (surface-condition p135 verysmooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 blue)
      (wood p136 oak)
      (surface-condition p136 smooth)
      (treatment p136 varnished)
      (available p137)
      (surface-condition p137 verysmooth)
      (treatment p137 glazed)
      (available p138)
      (wood p138 pine)
      (treatment p138 varnished)
      (available p139)
      (wood p139 mahogany)
      (surface-condition p139 smooth)
      (treatment p139 varnished)
      (available p140)
      (colour p140 white)
      (wood p140 oak)
      (surface-condition p140 verysmooth)
      (treatment p140 glazed)
      (available p141)
      (colour p141 natural)
      (wood p141 oak)
      (available p142)
      (wood p142 oak)
      (surface-condition p142 smooth)
      (available p143)
      (colour p143 mauve)
      (wood p143 beech)
      (available p144)
      (colour p144 red)
      (wood p144 pine)
      (treatment p144 varnished)
      (available p145)
      (wood p145 walnut)
      (surface-condition p145 verysmooth)
      (available p146)
      (colour p146 mauve)
      (wood p146 oak)
      (surface-condition p146 verysmooth)
      (treatment p146 varnished)
      (available p147)
      (colour p147 black)
      (treatment p147 varnished)
      (available p148)
      (colour p148 red)
      (surface-condition p148 smooth)
      (available p149)
      (wood p149 teak)
      (surface-condition p149 verysmooth)
      (available p150)
      (wood p150 oak)
      (surface-condition p150 smooth)
      (treatment p150 glazed)
      (available p151)
      (colour p151 mauve)
      (wood p151 cherry)
      (surface-condition p151 smooth)
      (treatment p151 varnished)
      (available p152)
      (colour p152 white)
      (wood p152 oak)
      (surface-condition p152 verysmooth)
      (treatment p152 glazed)
      (available p153)
      (colour p153 natural)
      (treatment p153 glazed)
      (available p154)
      (colour p154 blue)
      (treatment p154 glazed)
      (available p155)
      (surface-condition p155 verysmooth)
      (treatment p155 varnished)
      (available p156)
      (colour p156 mauve)
      (wood p156 mahogany)
      (available p157)
      (surface-condition p157 smooth)
      (treatment p157 varnished)
      (available p158)
      (colour p158 red)
      (surface-condition p158 smooth)
      (available p159)
      (colour p159 red)
      (treatment p159 varnished)
      (available p160)
      (colour p160 black)
      (wood p160 walnut)
      (surface-condition p160 smooth)
      (treatment p160 varnished)
      (available p161)
      (colour p161 green)
      (surface-condition p161 verysmooth)
      (available p162)
      (colour p162 green)
      (wood p162 beech)
      (surface-condition p162 verysmooth)
      (available p163)
      (wood p163 oak)
      (treatment p163 glazed)
      (available p164)
      (colour p164 blue)
      (surface-condition p164 smooth)
      (treatment p164 varnished)
      (available p165)
      (colour p165 natural)
      (wood p165 mahogany)
      (surface-condition p165 smooth)
      (treatment p165 glazed)
      (available p166)
      (wood p166 mahogany)
      (treatment p166 glazed)
      (available p167)
      (surface-condition p167 smooth)
      (treatment p167 glazed)
      (available p168)
      (colour p168 white)
      (surface-condition p168 verysmooth)
      (available p169)
      (surface-condition p169 smooth)
      (treatment p169 varnished)
      (available p170)
      (colour p170 mauve)
      (wood p170 teak)
      (surface-condition p170 verysmooth)
      (treatment p170 glazed)
      (available p171)
      (wood p171 pine)
      (surface-condition p171 verysmooth)
      (available p172)
      (wood p172 walnut)
      (treatment p172 varnished)
      (available p173)
      (wood p173 pine)
      (surface-condition p173 smooth)
      (treatment p173 varnished)
      (available p174)
      (surface-condition p174 smooth)
      (treatment p174 glazed)
      (available p175)
      (colour p175 red)
      (treatment p175 varnished)
      (available p176)
      (colour p176 blue)
      (wood p176 teak)
      (surface-condition p176 smooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 natural)
      (surface-condition p177 smooth)
      (available p178)
      (colour p178 natural)
      (wood p178 teak)
      (available p179)
      (colour p179 blue)
      (wood p179 oak)
      (surface-condition p179 verysmooth)
      (treatment p179 varnished)
      (available p180)
      (colour p180 white)
      (treatment p180 glazed)
      (available p181)
      (surface-condition p181 smooth)
      (treatment p181 glazed)
      (available p182)
      (colour p182 mauve)
      (treatment p182 glazed)
      (available p183)
      (wood p183 oak)
      (surface-condition p183 verysmooth)
      (available p184)
      (surface-condition p184 smooth)
      (treatment p184 glazed)
      (available p185)
      (colour p185 mauve)
      (surface-condition p185 verysmooth)
      (available p186)
      (colour p186 mauve)
      (surface-condition p186 verysmooth)
      (treatment p186 varnished)
      (available p187)
      (colour p187 green)
      (wood p187 teak)
      (surface-condition p187 smooth)
      (treatment p187 glazed)
      (available p188)
      (colour p188 black)
      (wood p188 teak)
      (surface-condition p188 smooth)
      (treatment p188 glazed)
      (available p189)
      (wood p189 oak)
      (surface-condition p189 verysmooth)
      (available p190)
      (colour p190 green)
      (wood p190 teak)
      (surface-condition p190 verysmooth)
      (available p191)
      (colour p191 black)
      (wood p191 walnut)
      (available p192)
      (colour p192 natural)
      (wood p192 cherry)
      (surface-condition p192 smooth)
      (treatment p192 glazed)
      (available p193)
      (colour p193 blue)
      (surface-condition p193 verysmooth)
      (available p194)
      (colour p194 white)
      (surface-condition p194 smooth)
      (available p195)
      (colour p195 black)
      (wood p195 beech)
      (surface-condition p195 smooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 natural)
      (wood p196 teak)
      (surface-condition p196 smooth)
      (treatment p196 varnished)
      (available p197)
      (colour p197 mauve)
      (treatment p197 varnished)
      (available p198)
      (colour p198 red)
      (surface-condition p198 smooth)
      (available p199)
      (colour p199 natural)
      (wood p199 pine)
      (surface-condition p199 smooth)
      (treatment p199 glazed)
      (available p200)
      (colour p200 natural)
      (wood p200 walnut)
      (surface-condition p200 verysmooth)
      (treatment p200 glazed)
      (available p201)
      (surface-condition p201 verysmooth)
      (treatment p201 varnished)
      (available p202)
      (colour p202 black)
      (wood p202 walnut)
      (available p203)
      (surface-condition p203 verysmooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 green)
      (surface-condition p204 verysmooth)
      (treatment p204 varnished)
      (available p205)
      (wood p205 cherry)
      (surface-condition p205 verysmooth)
      (available p206)
      (colour p206 black)
      (wood p206 cherry)
      (treatment p206 glazed)
      (available p207)
      (colour p207 mauve)
      (wood p207 teak)
      (treatment p207 varnished)
      (available p208)
      (colour p208 blue)
      (surface-condition p208 smooth)
      (treatment p208 glazed)
      (available p209)
      (colour p209 white)
      (wood p209 oak)
      (treatment p209 varnished)
      (available p210)
      (colour p210 red)
      (treatment p210 varnished)
      (available p211)
      (colour p211 green)
      (wood p211 beech)
      (surface-condition p211 smooth)
      (treatment p211 glazed)
      (available p212)
      (colour p212 black)
      (surface-condition p212 smooth)
      (treatment p212 glazed)
      (available p213)
      (colour p213 blue)
      (wood p213 cherry)
      (treatment p213 glazed)
      (available p214)
      (colour p214 white)
      (surface-condition p214 smooth)
      (available p215)
      (colour p215 green)
      (wood p215 oak)
      (surface-condition p215 verysmooth)
      (available p216)
      (colour p216 green)
      (wood p216 walnut)
      (available p217)
      (wood p217 beech)
      (treatment p217 varnished)
      (available p218)
      (wood p218 mahogany)
      (surface-condition p218 verysmooth)
      (treatment p218 varnished)
      (available p219)
      (wood p219 mahogany)
      (surface-condition p219 verysmooth)
      (available p220)
      (colour p220 white)
      (wood p220 teak)
      (surface-condition p220 smooth)
      (treatment p220 varnished)
      (available p221)
      (colour p221 mauve)
      (wood p221 walnut)
      (available p222)
      (wood p222 oak)
      (treatment p222 glazed)
      (available p223)
      (colour p223 natural)
      (wood p223 pine)
      (available p224)
      (colour p224 green)
      (surface-condition p224 smooth)
      (treatment p224 varnished)
      (available p225)
      (colour p225 black)
      (wood p225 walnut)
      (surface-condition p225 smooth)
      (treatment p225 varnished)
      (available p226)
      (surface-condition p226 smooth)
      (treatment p226 glazed)
      (available p227)
      (wood p227 oak)
      (treatment p227 varnished)
      (available p228)
      (surface-condition p228 smooth)
      (treatment p228 varnished)
      (available p229)
      (colour p229 blue)
      (wood p229 teak)
      (available p230)
      (surface-condition p230 verysmooth)
      (treatment p230 glazed)
      (available p231)
      (wood p231 pine)
      (treatment p231 varnished)
      (available p232)
      (colour p232 natural)
      (surface-condition p232 smooth)
      (available p233)
      (colour p233 mauve)
      (treatment p233 glazed)
      (available p234)
      (colour p234 green)
      (wood p234 oak)
      (surface-condition p234 verysmooth)
      (treatment p234 varnished)
      (available p235)
      (colour p235 mauve)
      (surface-condition p235 smooth)
      (available p236)
      (colour p236 blue)
      (treatment p236 varnished)
      (available p237)
      (colour p237 blue)
      (surface-condition p237 smooth)
      (available p238)
      (colour p238 white)
      (wood p238 cherry)
      (surface-condition p238 verysmooth)
      (treatment p238 glazed)
      (available p239)
      (wood p239 oak)
      (treatment p239 varnished)
      (available p240)
      (colour p240 green)
      (wood p240 pine)
      (surface-condition p240 smooth)
      (treatment p240 varnished)
      (available p241)
      (colour p241 blue)
      (surface-condition p241 smooth)
    )
  )
  
)
