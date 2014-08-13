; woodworking task with 236 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 823585

(define (problem wood-prob-sat-183)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red mauve green white black blue - acolour
    beech cherry walnut oak mahogany pine teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (available p14)
    (colour p14 green)
    (wood p14 teak)
    (surface-condition p14 smooth)
    (treatment p14 glazed)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 natural)
    (wood p21 beech)
    (surface-condition p21 verysmooth)
    (treatment p21 varnished)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 natural)
    (wood p24 mahogany)
    (surface-condition p24 smooth)
    (treatment p24 colourfragments)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (available p31)
    (colour p31 mauve)
    (wood p31 teak)
    (surface-condition p31 rough)
    (treatment p31 varnished)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (available p37)
    (colour p37 natural)
    (wood p37 beech)
    (surface-condition p37 verysmooth)
    (treatment p37 colourfragments)
    (goalsize p37 large)
    
    
    
    
    (available p38)
    (colour p38 white)
    (wood p38 pine)
    (surface-condition p38 rough)
    (treatment p38 colourfragments)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (available p41)
    (colour p41 green)
    (wood p41 mahogany)
    (surface-condition p41 rough)
    (treatment p41 colourfragments)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (available p45)
    (colour p45 natural)
    (wood p45 oak)
    (surface-condition p45 smooth)
    (treatment p45 glazed)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (available p47)
    (colour p47 blue)
    (wood p47 walnut)
    (surface-condition p47 verysmooth)
    (treatment p47 varnished)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (available p49)
    (colour p49 blue)
    (wood p49 mahogany)
    (surface-condition p49 rough)
    (treatment p49 varnished)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (available p52)
    (colour p52 red)
    (wood p52 pine)
    (surface-condition p52 rough)
    (treatment p52 colourfragments)
    (goalsize p52 medium)
    
    
    
    
    (available p53)
    (colour p53 black)
    (wood p53 cherry)
    (surface-condition p53 verysmooth)
    (treatment p53 glazed)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (available p57)
    (colour p57 white)
    (wood p57 walnut)
    (surface-condition p57 verysmooth)
    (treatment p57 varnished)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (available p59)
    (colour p59 green)
    (wood p59 oak)
    (surface-condition p59 rough)
    (treatment p59 varnished)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (available p62)
    (colour p62 white)
    (wood p62 oak)
    (surface-condition p62 smooth)
    (treatment p62 varnished)
    (goalsize p62 large)
    
    
    
    
    (available p63)
    (colour p63 black)
    (wood p63 beech)
    (surface-condition p63 rough)
    (treatment p63 glazed)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (available p68)
    (colour p68 natural)
    (wood p68 walnut)
    (surface-condition p68 rough)
    (treatment p68 glazed)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (available p73)
    (colour p73 black)
    (wood p73 beech)
    (surface-condition p73 rough)
    (treatment p73 glazed)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (available p82)
    (colour p82 black)
    (wood p82 pine)
    (surface-condition p82 verysmooth)
    (treatment p82 colourfragments)
    (goalsize p82 small)
    
    
    
    
    (available p83)
    (colour p83 red)
    (wood p83 oak)
    (surface-condition p83 rough)
    (treatment p83 varnished)
    (goalsize p83 small)
    
    
    
    
    (available p84)
    (colour p84 natural)
    (wood p84 walnut)
    (surface-condition p84 verysmooth)
    (treatment p84 varnished)
    (goalsize p84 small)
    
    
    
    
    (available p85)
    (colour p85 mauve)
    (wood p85 pine)
    (surface-condition p85 smooth)
    (treatment p85 varnished)
    (goalsize p85 small)
    
    
    
    
    (available p86)
    (colour p86 red)
    (wood p86 beech)
    (surface-condition p86 smooth)
    (treatment p86 varnished)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (available p97)
    (colour p97 mauve)
    (wood p97 oak)
    (surface-condition p97 smooth)
    (treatment p97 glazed)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (available p105)
    (colour p105 mauve)
    (wood p105 cherry)
    (surface-condition p105 smooth)
    (treatment p105 varnished)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
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
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (available p122)
    (colour p122 white)
    (wood p122 pine)
    (surface-condition p122 verysmooth)
    (treatment p122 varnished)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (available p126)
    (colour p126 mauve)
    (wood p126 oak)
    (surface-condition p126 rough)
    (treatment p126 colourfragments)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (available p129)
    (colour p129 mauve)
    (wood p129 pine)
    (surface-condition p129 rough)
    (treatment p129 colourfragments)
    (goalsize p129 medium)
    
    
    
    
    (available p130)
    (colour p130 white)
    (wood p130 beech)
    (surface-condition p130 rough)
    (treatment p130 colourfragments)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (available p134)
    (colour p134 blue)
    (wood p134 cherry)
    (surface-condition p134 verysmooth)
    (treatment p134 colourfragments)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (available p138)
    (colour p138 black)
    (wood p138 oak)
    (surface-condition p138 rough)
    (treatment p138 glazed)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (available p145)
    (colour p145 natural)
    (wood p145 walnut)
    (surface-condition p145 verysmooth)
    (treatment p145 varnished)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (available p148)
    (colour p148 red)
    (wood p148 walnut)
    (surface-condition p148 rough)
    (treatment p148 varnished)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (available p152)
    (colour p152 green)
    (wood p152 pine)
    (surface-condition p152 rough)
    (treatment p152 colourfragments)
    (goalsize p152 small)
    
    
    
    
    (available p153)
    (colour p153 red)
    (wood p153 walnut)
    (surface-condition p153 verysmooth)
    (treatment p153 glazed)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (available p162)
    (colour p162 red)
    (wood p162 teak)
    (surface-condition p162 rough)
    (treatment p162 varnished)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (available p173)
    (colour p173 white)
    (wood p173 beech)
    (surface-condition p173 rough)
    (treatment p173 colourfragments)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 large)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (available p177)
    (colour p177 mauve)
    (wood p177 cherry)
    (surface-condition p177 smooth)
    (treatment p177 varnished)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (unused p185)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (available p187)
    (colour p187 white)
    (wood p187 cherry)
    (surface-condition p187 verysmooth)
    (treatment p187 varnished)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 large)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 large)
    
    
    
    
    (unused p192)
    (goalsize p192 medium)
    
    
    
    
    (unused p193)
    (goalsize p193 large)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 small)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (available p197)
    (colour p197 white)
    (wood p197 mahogany)
    (surface-condition p197 rough)
    (treatment p197 glazed)
    (goalsize p197 small)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 medium)
    
    
    
    
    (available p200)
    (colour p200 natural)
    (wood p200 mahogany)
    (surface-condition p200 rough)
    (treatment p200 varnished)
    (goalsize p200 small)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 medium)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (available p205)
    (colour p205 natural)
    (wood p205 oak)
    (surface-condition p205 verysmooth)
    (treatment p205 colourfragments)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 small)
    
    
    
    
    (unused p209)
    (goalsize p209 large)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (unused p215)
    (goalsize p215 large)
    
    
    
    
    (unused p216)
    (goalsize p216 small)
    
    
    
    
    (unused p217)
    (goalsize p217 small)
    
    
    
    
    (unused p218)
    (goalsize p218 medium)
    
    
    
    
    (available p219)
    (colour p219 mauve)
    (wood p219 pine)
    (surface-condition p219 verysmooth)
    (treatment p219 varnished)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (available p221)
    (colour p221 black)
    (wood p221 cherry)
    (surface-condition p221 verysmooth)
    (treatment p221 varnished)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 large)
    
    
    
    
    (unused p223)
    (goalsize p223 large)
    
    
    
    
    (unused p224)
    (goalsize p224 small)
    
    
    
    
    (unused p225)
    (goalsize p225 large)
    
    
    
    
    (available p226)
    (colour p226 green)
    (wood p226 oak)
    (surface-condition p226 rough)
    (treatment p226 glazed)
    (goalsize p226 small)
    
    
    
    
    (unused p227)
    (goalsize p227 large)
    
    
    
    
    (available p228)
    (colour p228 red)
    (wood p228 oak)
    (surface-condition p228 verysmooth)
    (treatment p228 varnished)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 small)
    
    
    
    
    (unused p230)
    (goalsize p230 small)
    
    
    
    
    (unused p231)
    (goalsize p231 large)
    
    
    
    
    (unused p232)
    (goalsize p232 large)
    
    
    
    
    (available p233)
    (colour p233 red)
    (wood p233 cherry)
    (surface-condition p233 verysmooth)
    (treatment p233 glazed)
    (goalsize p233 small)
    
    
    
    
    (available p234)
    (colour p234 mauve)
    (wood p234 walnut)
    (surface-condition p234 verysmooth)
    (treatment p234 glazed)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 medium)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s4)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s5)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s3)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s10)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 mahogany)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s7)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s7)
    (wood b17 mahogany)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s10)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s6)
    (wood b19 mahogany)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s6)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s7)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s10)
    (wood b25 oak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s8)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s4)
    (wood b28 oak)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s8)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s5)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s10)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s7)
    (wood b32 pine)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s11)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s10)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 pine)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s10)
    (wood b36 pine)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s7)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s9)
    (wood b38 walnut)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s6)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s8)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s8)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s7)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s6)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s6)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s9)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s7)
    (wood b47 teak)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s12)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s5)
    (wood b49 teak)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s12)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s4)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s8)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s6)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s5)
    (wood b54 teak)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s8)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s4)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s7)
    (wood b57 beech)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s12)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s11)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s10)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s5)
    (wood b61 beech)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s6)
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
    (boardsize b65 s11)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s8)
    (wood b66 beech)
    (surface-condition b66 smooth)
    (available b66)
    (boardsize b67 s3)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 oak)
      (treatment p0 glazed)
      (available p1)
      (colour p1 blue)
      (surface-condition p1 verysmooth)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 white)
      (wood p3 cherry)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (wood p4 walnut)
      (surface-condition p4 verysmooth)
      (available p5)
      (colour p5 green)
      (wood p5 beech)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 natural)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 blue)
      (wood p7 beech)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 red)
      (wood p8 mahogany)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 black)
      (wood p9 teak)
      (surface-condition p9 verysmooth)
      (available p10)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 red)
      (surface-condition p11 smooth)
      (available p12)
      (colour p12 black)
      (treatment p12 glazed)
      (available p13)
      (colour p13 white)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 mauve)
      (wood p14 teak)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 black)
      (surface-condition p15 smooth)
      (available p16)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 white)
      (wood p17 teak)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 mauve)
      (treatment p18 varnished)
      (available p19)
      (colour p19 natural)
      (wood p19 mahogany)
      (treatment p19 glazed)
      (available p20)
      (wood p20 cherry)
      (treatment p20 varnished)
      (available p21)
      (colour p21 black)
      (wood p21 beech)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (wood p22 walnut)
      (treatment p22 varnished)
      (available p23)
      (colour p23 red)
      (wood p23 teak)
      (available p24)
      (colour p24 blue)
      (wood p24 mahogany)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 white)
      (wood p25 pine)
      (surface-condition p25 smooth)
      (available p26)
      (wood p26 mahogany)
      (treatment p26 glazed)
      (available p27)
      (colour p27 white)
      (wood p27 oak)
      (available p28)
      (colour p28 blue)
      (wood p28 mahogany)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 white)
      (wood p29 walnut)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 blue)
      (surface-condition p30 verysmooth)
      (available p31)
      (colour p31 white)
      (treatment p31 glazed)
      (available p32)
      (colour p32 green)
      (wood p32 walnut)
      (surface-condition p32 smooth)
      (available p33)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 black)
      (wood p35 oak)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 red)
      (treatment p36 varnished)
      (available p37)
      (colour p37 white)
      (wood p37 beech)
      (surface-condition p37 smooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 red)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 green)
      (wood p39 oak)
      (surface-condition p39 verysmooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 black)
      (wood p40 pine)
      (available p41)
      (colour p41 red)
      (surface-condition p41 smooth)
      (available p42)
      (wood p42 beech)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 red)
      (wood p43 walnut)
      (surface-condition p43 smooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 red)
      (wood p44 walnut)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (wood p46 cherry)
      (treatment p46 varnished)
      (available p47)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (colour p48 black)
      (wood p48 pine)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 red)
      (wood p49 mahogany)
      (available p50)
      (wood p50 walnut)
      (surface-condition p50 smooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 white)
      (wood p51 beech)
      (treatment p51 varnished)
      (available p52)
      (wood p52 pine)
      (treatment p52 varnished)
      (available p53)
      (wood p53 cherry)
      (treatment p53 varnished)
      (available p54)
      (wood p54 cherry)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (wood p55 cherry)
      (surface-condition p55 smooth)
      (treatment p55 varnished)
      (available p56)
      (wood p56 oak)
      (surface-condition p56 verysmooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 green)
      (wood p57 walnut)
      (available p58)
      (surface-condition p58 smooth)
      (treatment p58 glazed)
      (available p59)
      (wood p59 oak)
      (treatment p59 glazed)
      (available p60)
      (wood p60 cherry)
      (treatment p60 varnished)
      (available p61)
      (colour p61 blue)
      (surface-condition p61 smooth)
      (available p62)
      (colour p62 blue)
      (wood p62 oak)
      (available p63)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 natural)
      (surface-condition p64 smooth)
      (available p65)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (surface-condition p66 verysmooth)
      (treatment p66 glazed)
      (available p67)
      (colour p67 green)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 red)
      (wood p68 walnut)
      (surface-condition p68 smooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 blue)
      (surface-condition p69 verysmooth)
      (available p70)
      (wood p70 beech)
      (surface-condition p70 verysmooth)
      (available p71)
      (wood p71 mahogany)
      (treatment p71 glazed)
      (available p72)
      (colour p72 red)
      (surface-condition p72 smooth)
      (treatment p72 varnished)
      (available p73)
      (colour p73 mauve)
      (wood p73 beech)
      (available p74)
      (colour p74 blue)
      (surface-condition p74 smooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 blue)
      (treatment p75 glazed)
      (available p76)
      (colour p76 red)
      (wood p76 teak)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 natural)
      (wood p77 teak)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (surface-condition p78 smooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 green)
      (wood p79 cherry)
      (treatment p79 varnished)
      (available p80)
      (colour p80 natural)
      (wood p80 oak)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (wood p81 walnut)
      (surface-condition p81 smooth)
      (available p82)
      (colour p82 mauve)
      (treatment p82 varnished)
      (available p83)
      (wood p83 oak)
      (treatment p83 glazed)
      (available p84)
      (wood p84 walnut)
      (treatment p84 glazed)
      (available p85)
      (wood p85 pine)
      (surface-condition p85 verysmooth)
      (available p86)
      (colour p86 mauve)
      (wood p86 beech)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 red)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 red)
      (wood p88 teak)
      (surface-condition p88 smooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 green)
      (wood p89 mahogany)
      (available p90)
      (colour p90 white)
      (wood p90 teak)
      (available p91)
      (surface-condition p91 verysmooth)
      (treatment p91 glazed)
      (available p92)
      (colour p92 white)
      (wood p92 mahogany)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 natural)
      (wood p93 walnut)
      (available p94)
      (colour p94 natural)
      (wood p94 teak)
      (available p95)
      (colour p95 green)
      (treatment p95 varnished)
      (available p96)
      (colour p96 black)
      (wood p96 teak)
      (surface-condition p96 smooth)
      (treatment p96 glazed)
      (available p97)
      (wood p97 oak)
      (surface-condition p97 verysmooth)
      (available p98)
      (wood p98 mahogany)
      (treatment p98 varnished)
      (available p99)
      (colour p99 blue)
      (wood p99 walnut)
      (available p100)
      (colour p100 green)
      (wood p100 pine)
      (available p101)
      (colour p101 red)
      (surface-condition p101 smooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 white)
      (wood p102 cherry)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 black)
      (wood p103 mahogany)
      (surface-condition p103 verysmooth)
      (treatment p103 varnished)
      (available p104)
      (colour p104 natural)
      (surface-condition p104 verysmooth)
      (available p105)
      (colour p105 green)
      (wood p105 cherry)
      (surface-condition p105 verysmooth)
      (treatment p105 varnished)
      (available p106)
      (colour p106 red)
      (wood p106 teak)
      (surface-condition p106 verysmooth)
      (treatment p106 varnished)
      (available p107)
      (colour p107 black)
      (wood p107 pine)
      (surface-condition p107 verysmooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 mauve)
      (wood p108 cherry)
      (surface-condition p108 smooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 black)
      (surface-condition p109 smooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 green)
      (wood p110 mahogany)
      (treatment p110 varnished)
      (available p111)
      (colour p111 black)
      (wood p111 mahogany)
      (available p112)
      (colour p112 green)
      (wood p112 pine)
      (surface-condition p112 smooth)
      (treatment p112 glazed)
      (available p113)
      (wood p113 oak)
      (treatment p113 varnished)
      (available p114)
      (wood p114 walnut)
      (surface-condition p114 verysmooth)
      (available p115)
      (colour p115 green)
      (wood p115 teak)
      (treatment p115 varnished)
      (available p116)
      (wood p116 mahogany)
      (treatment p116 varnished)
      (available p117)
      (colour p117 black)
      (wood p117 oak)
      (surface-condition p117 smooth)
      (treatment p117 glazed)
      (available p118)
      (colour p118 mauve)
      (wood p118 oak)
      (treatment p118 varnished)
      (available p119)
      (colour p119 white)
      (treatment p119 varnished)
      (available p120)
      (wood p120 beech)
      (surface-condition p120 smooth)
      (available p121)
      (colour p121 blue)
      (wood p121 mahogany)
      (treatment p121 glazed)
      (available p122)
      (colour p122 green)
      (wood p122 pine)
      (surface-condition p122 smooth)
      (treatment p122 varnished)
      (available p123)
      (colour p123 white)
      (wood p123 beech)
      (surface-condition p123 smooth)
      (treatment p123 varnished)
      (available p124)
      (wood p124 beech)
      (surface-condition p124 verysmooth)
      (available p125)
      (wood p125 beech)
      (surface-condition p125 smooth)
      (available p126)
      (wood p126 oak)
      (treatment p126 glazed)
      (available p127)
      (colour p127 red)
      (wood p127 teak)
      (treatment p127 glazed)
      (available p128)
      (colour p128 blue)
      (wood p128 pine)
      (available p129)
      (colour p129 white)
      (surface-condition p129 verysmooth)
      (available p130)
      (wood p130 beech)
      (treatment p130 varnished)
      (available p131)
      (colour p131 blue)
      (wood p131 walnut)
      (surface-condition p131 smooth)
      (treatment p131 varnished)
      (available p132)
      (wood p132 pine)
      (treatment p132 varnished)
      (available p133)
      (colour p133 natural)
      (wood p133 mahogany)
      (surface-condition p133 verysmooth)
      (treatment p133 varnished)
      (available p134)
      (colour p134 white)
      (wood p134 cherry)
      (surface-condition p134 smooth)
      (treatment p134 glazed)
      (available p135)
      (colour p135 mauve)
      (treatment p135 varnished)
      (available p136)
      (wood p136 mahogany)
      (surface-condition p136 smooth)
      (available p137)
      (colour p137 black)
      (wood p137 cherry)
      (available p138)
      (colour p138 red)
      (wood p138 oak)
      (treatment p138 varnished)
      (available p139)
      (wood p139 pine)
      (treatment p139 glazed)
      (available p140)
      (colour p140 blue)
      (treatment p140 glazed)
      (available p141)
      (colour p141 red)
      (surface-condition p141 verysmooth)
      (available p142)
      (colour p142 green)
      (wood p142 pine)
      (surface-condition p142 verysmooth)
      (treatment p142 varnished)
      (available p143)
      (wood p143 cherry)
      (treatment p143 glazed)
      (available p144)
      (wood p144 teak)
      (treatment p144 varnished)
      (available p145)
      (colour p145 blue)
      (surface-condition p145 verysmooth)
      (treatment p145 glazed)
      (available p146)
      (colour p146 black)
      (treatment p146 glazed)
      (available p147)
      (colour p147 black)
      (wood p147 teak)
      (available p148)
      (colour p148 natural)
      (wood p148 walnut)
      (treatment p148 glazed)
      (available p149)
      (wood p149 mahogany)
      (treatment p149 varnished)
      (available p150)
      (wood p150 beech)
      (surface-condition p150 verysmooth)
      (available p151)
      (colour p151 red)
      (wood p151 teak)
      (available p152)
      (colour p152 mauve)
      (wood p152 pine)
      (available p153)
      (colour p153 white)
      (surface-condition p153 verysmooth)
      (treatment p153 glazed)
      (available p154)
      (wood p154 teak)
      (treatment p154 varnished)
      (available p155)
      (colour p155 blue)
      (surface-condition p155 smooth)
      (available p156)
      (colour p156 black)
      (surface-condition p156 smooth)
      (available p157)
      (colour p157 mauve)
      (wood p157 pine)
      (available p158)
      (colour p158 green)
      (surface-condition p158 verysmooth)
      (available p159)
      (wood p159 teak)
      (treatment p159 glazed)
      (available p160)
      (colour p160 white)
      (surface-condition p160 verysmooth)
      (treatment p160 varnished)
      (available p161)
      (colour p161 red)
      (wood p161 beech)
      (surface-condition p161 verysmooth)
      (treatment p161 glazed)
      (available p162)
      (colour p162 natural)
      (surface-condition p162 verysmooth)
      (treatment p162 glazed)
      (available p163)
      (colour p163 red)
      (wood p163 pine)
      (surface-condition p163 smooth)
      (treatment p163 glazed)
      (available p164)
      (colour p164 blue)
      (treatment p164 varnished)
      (available p165)
      (wood p165 walnut)
      (surface-condition p165 smooth)
      (available p166)
      (colour p166 red)
      (wood p166 cherry)
      (surface-condition p166 smooth)
      (treatment p166 glazed)
      (available p167)
      (colour p167 natural)
      (wood p167 walnut)
      (surface-condition p167 smooth)
      (treatment p167 glazed)
      (available p168)
      (colour p168 mauve)
      (treatment p168 varnished)
      (available p169)
      (colour p169 natural)
      (surface-condition p169 smooth)
      (available p170)
      (colour p170 mauve)
      (wood p170 pine)
      (surface-condition p170 verysmooth)
      (treatment p170 varnished)
      (available p171)
      (colour p171 red)
      (wood p171 mahogany)
      (surface-condition p171 verysmooth)
      (treatment p171 varnished)
      (available p172)
      (colour p172 red)
      (treatment p172 varnished)
      (available p173)
      (wood p173 beech)
      (surface-condition p173 smooth)
      (treatment p173 varnished)
      (available p174)
      (wood p174 cherry)
      (treatment p174 glazed)
      (available p175)
      (colour p175 white)
      (surface-condition p175 verysmooth)
      (available p176)
      (wood p176 walnut)
      (treatment p176 varnished)
      (available p177)
      (colour p177 white)
      (surface-condition p177 smooth)
      (available p178)
      (colour p178 white)
      (surface-condition p178 verysmooth)
      (available p179)
      (wood p179 beech)
      (treatment p179 glazed)
      (available p180)
      (surface-condition p180 smooth)
      (treatment p180 varnished)
      (available p181)
      (colour p181 white)
      (wood p181 cherry)
      (surface-condition p181 verysmooth)
      (treatment p181 glazed)
      (available p182)
      (colour p182 red)
      (wood p182 cherry)
      (surface-condition p182 smooth)
      (treatment p182 varnished)
      (available p183)
      (colour p183 green)
      (wood p183 cherry)
      (surface-condition p183 smooth)
      (treatment p183 varnished)
      (available p184)
      (wood p184 pine)
      (surface-condition p184 smooth)
      (treatment p184 glazed)
      (available p185)
      (colour p185 mauve)
      (wood p185 oak)
      (available p186)
      (colour p186 blue)
      (surface-condition p186 smooth)
      (available p187)
      (wood p187 cherry)
      (treatment p187 glazed)
      (available p188)
      (surface-condition p188 verysmooth)
      (treatment p188 varnished)
      (available p189)
      (wood p189 beech)
      (treatment p189 glazed)
      (available p190)
      (surface-condition p190 verysmooth)
      (treatment p190 varnished)
      (available p191)
      (colour p191 red)
      (surface-condition p191 verysmooth)
      (available p192)
      (surface-condition p192 smooth)
      (treatment p192 glazed)
      (available p193)
      (wood p193 cherry)
      (treatment p193 varnished)
      (available p194)
      (colour p194 natural)
      (wood p194 beech)
      (surface-condition p194 smooth)
      (treatment p194 varnished)
      (available p195)
      (surface-condition p195 smooth)
      (treatment p195 varnished)
      (available p196)
      (colour p196 red)
      (wood p196 walnut)
      (surface-condition p196 smooth)
      (treatment p196 glazed)
      (available p197)
      (colour p197 mauve)
      (wood p197 mahogany)
      (surface-condition p197 smooth)
      (treatment p197 varnished)
      (available p198)
      (wood p198 beech)
      (treatment p198 varnished)
      (available p199)
      (colour p199 mauve)
      (wood p199 beech)
      (surface-condition p199 smooth)
      (treatment p199 glazed)
      (available p200)
      (colour p200 white)
      (wood p200 mahogany)
      (surface-condition p200 verysmooth)
      (treatment p200 varnished)
      (available p201)
      (colour p201 white)
      (treatment p201 glazed)
      (available p202)
      (wood p202 pine)
      (treatment p202 glazed)
      (available p203)
      (wood p203 pine)
      (surface-condition p203 smooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 red)
      (surface-condition p204 smooth)
      (available p205)
      (colour p205 mauve)
      (wood p205 oak)
      (treatment p205 glazed)
      (available p206)
      (colour p206 mauve)
      (treatment p206 varnished)
      (available p207)
      (colour p207 blue)
      (wood p207 cherry)
      (surface-condition p207 verysmooth)
      (treatment p207 varnished)
      (available p208)
      (wood p208 cherry)
      (surface-condition p208 smooth)
      (available p209)
      (wood p209 oak)
      (treatment p209 varnished)
      (available p210)
      (colour p210 red)
      (wood p210 teak)
      (surface-condition p210 verysmooth)
      (treatment p210 glazed)
      (available p211)
      (wood p211 pine)
      (surface-condition p211 smooth)
      (available p212)
      (colour p212 green)
      (wood p212 beech)
      (available p213)
      (wood p213 beech)
      (treatment p213 glazed)
      (available p214)
      (colour p214 mauve)
      (wood p214 mahogany)
      (available p215)
      (colour p215 green)
      (wood p215 pine)
      (available p216)
      (wood p216 walnut)
      (treatment p216 glazed)
      (available p217)
      (wood p217 mahogany)
      (surface-condition p217 smooth)
      (available p218)
      (wood p218 oak)
      (surface-condition p218 verysmooth)
      (treatment p218 glazed)
      (available p219)
      (colour p219 white)
      (wood p219 pine)
      (surface-condition p219 smooth)
      (treatment p219 varnished)
      (available p220)
      (colour p220 blue)
      (surface-condition p220 smooth)
      (treatment p220 varnished)
      (available p221)
      (colour p221 red)
      (treatment p221 glazed)
      (available p222)
      (colour p222 green)
      (surface-condition p222 smooth)
      (available p223)
      (colour p223 white)
      (wood p223 teak)
      (surface-condition p223 verysmooth)
      (treatment p223 varnished)
      (available p224)
      (colour p224 white)
      (treatment p224 glazed)
      (available p225)
      (colour p225 black)
      (treatment p225 varnished)
      (available p226)
      (wood p226 oak)
      (surface-condition p226 smooth)
      (treatment p226 glazed)
      (available p227)
      (surface-condition p227 verysmooth)
      (treatment p227 glazed)
      (available p228)
      (wood p228 oak)
      (treatment p228 glazed)
      (available p229)
      (colour p229 green)
      (treatment p229 glazed)
      (available p230)
      (colour p230 red)
      (surface-condition p230 smooth)
      (available p231)
      (colour p231 natural)
      (surface-condition p231 verysmooth)
      (available p232)
      (wood p232 cherry)
      (surface-condition p232 verysmooth)
      (available p233)
      (wood p233 cherry)
      (surface-condition p233 smooth)
      (available p234)
      (colour p234 green)
      (wood p234 walnut)
      (available p235)
      (wood p235 pine)
      (surface-condition p235 verysmooth)
      (treatment p235 glazed)
    )
  )
  
)
