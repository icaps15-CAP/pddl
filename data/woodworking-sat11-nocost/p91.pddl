; woodworking task with 242 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 306853

(define (problem wood-prob-sat-91)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black green red blue white mauve - acolour
    pine beech walnut cherry mahogany teak oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 - board
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
    (has-colour glazer0 red)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (available p2)
    (colour p2 green)
    (wood p2 walnut)
    (surface-condition p2 rough)
    (treatment p2 glazed)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 black)
    (wood p3 mahogany)
    (surface-condition p3 verysmooth)
    (treatment p3 varnished)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (available p17)
    (colour p17 natural)
    (wood p17 cherry)
    (surface-condition p17 rough)
    (treatment p17 colourfragments)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 mauve)
    (wood p21 beech)
    (surface-condition p21 rough)
    (treatment p21 colourfragments)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (available p25)
    (colour p25 mauve)
    (wood p25 pine)
    (surface-condition p25 rough)
    (treatment p25 varnished)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 blue)
    (wood p28 oak)
    (surface-condition p28 smooth)
    (treatment p28 glazed)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (available p31)
    (colour p31 natural)
    (wood p31 teak)
    (surface-condition p31 verysmooth)
    (treatment p31 colourfragments)
    (goalsize p31 medium)
    
    
    
    
    (available p32)
    (colour p32 natural)
    (wood p32 walnut)
    (surface-condition p32 smooth)
    (treatment p32 colourfragments)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 white)
    (wood p36 teak)
    (surface-condition p36 verysmooth)
    (treatment p36 glazed)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (available p40)
    (colour p40 mauve)
    (wood p40 beech)
    (surface-condition p40 smooth)
    (treatment p40 varnished)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (available p53)
    (colour p53 red)
    (wood p53 oak)
    (surface-condition p53 verysmooth)
    (treatment p53 glazed)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (available p76)
    (colour p76 mauve)
    (wood p76 cherry)
    (surface-condition p76 rough)
    (treatment p76 colourfragments)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (available p82)
    (colour p82 white)
    (wood p82 mahogany)
    (surface-condition p82 smooth)
    (treatment p82 colourfragments)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (available p86)
    (colour p86 red)
    (wood p86 beech)
    (surface-condition p86 smooth)
    (treatment p86 varnished)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (available p90)
    (colour p90 white)
    (wood p90 cherry)
    (surface-condition p90 verysmooth)
    (treatment p90 glazed)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (available p92)
    (colour p92 blue)
    (wood p92 cherry)
    (surface-condition p92 rough)
    (treatment p92 glazed)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (available p94)
    (colour p94 black)
    (wood p94 beech)
    (surface-condition p94 verysmooth)
    (treatment p94 glazed)
    (goalsize p94 medium)
    
    
    
    
    (available p95)
    (colour p95 black)
    (wood p95 cherry)
    (surface-condition p95 smooth)
    (treatment p95 varnished)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (available p100)
    (colour p100 red)
    (wood p100 pine)
    (surface-condition p100 verysmooth)
    (treatment p100 colourfragments)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (available p110)
    (colour p110 black)
    (wood p110 cherry)
    (surface-condition p110 smooth)
    (treatment p110 colourfragments)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (available p114)
    (colour p114 mauve)
    (wood p114 mahogany)
    (surface-condition p114 verysmooth)
    (treatment p114 varnished)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (available p129)
    (colour p129 green)
    (wood p129 oak)
    (surface-condition p129 verysmooth)
    (treatment p129 colourfragments)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (available p132)
    (colour p132 black)
    (wood p132 walnut)
    (surface-condition p132 rough)
    (treatment p132 glazed)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (available p138)
    (colour p138 green)
    (wood p138 mahogany)
    (surface-condition p138 rough)
    (treatment p138 colourfragments)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (available p141)
    (colour p141 natural)
    (wood p141 teak)
    (surface-condition p141 smooth)
    (treatment p141 colourfragments)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (available p144)
    (colour p144 white)
    (wood p144 oak)
    (surface-condition p144 verysmooth)
    (treatment p144 colourfragments)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (available p151)
    (colour p151 mauve)
    (wood p151 beech)
    (surface-condition p151 smooth)
    (treatment p151 colourfragments)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
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
    (goalsize p171 large)
    
    
    
    
    (available p172)
    (colour p172 green)
    (wood p172 pine)
    (surface-condition p172 rough)
    (treatment p172 glazed)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (available p178)
    (colour p178 green)
    (wood p178 pine)
    (surface-condition p178 smooth)
    (treatment p178 colourfragments)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (available p182)
    (colour p182 white)
    (wood p182 cherry)
    (surface-condition p182 verysmooth)
    (treatment p182 varnished)
    (goalsize p182 large)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (available p184)
    (colour p184 white)
    (wood p184 beech)
    (surface-condition p184 rough)
    (treatment p184 colourfragments)
    (goalsize p184 small)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 medium)
    
    
    
    
    (unused p189)
    (goalsize p189 large)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (available p193)
    (colour p193 red)
    (wood p193 walnut)
    (surface-condition p193 smooth)
    (treatment p193 varnished)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 small)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 medium)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 large)
    
    
    
    
    (unused p201)
    (goalsize p201 medium)
    
    
    
    
    (unused p202)
    (goalsize p202 small)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 small)
    
    
    
    
    (unused p205)
    (goalsize p205 large)
    
    
    
    
    (available p206)
    (colour p206 red)
    (wood p206 mahogany)
    (surface-condition p206 rough)
    (treatment p206 glazed)
    (goalsize p206 small)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 small)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 medium)
    
    
    
    
    (available p212)
    (colour p212 natural)
    (wood p212 pine)
    (surface-condition p212 verysmooth)
    (treatment p212 glazed)
    (goalsize p212 small)
    
    
    
    
    (unused p213)
    (goalsize p213 small)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (unused p215)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 large)
    
    
    
    
    (unused p217)
    (goalsize p217 medium)
    
    
    
    
    (unused p218)
    (goalsize p218 small)
    
    
    
    
    (unused p219)
    (goalsize p219 medium)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 large)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 large)
    
    
    
    
    (unused p224)
    (goalsize p224 medium)
    
    
    
    
    (unused p225)
    (goalsize p225 large)
    
    
    
    
    (unused p226)
    (goalsize p226 small)
    
    
    
    
    (available p227)
    (colour p227 mauve)
    (wood p227 mahogany)
    (surface-condition p227 smooth)
    (treatment p227 colourfragments)
    (goalsize p227 small)
    
    
    
    
    (unused p228)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 large)
    
    
    
    
    (unused p230)
    (goalsize p230 large)
    
    
    
    
    (available p231)
    (colour p231 white)
    (wood p231 teak)
    (surface-condition p231 rough)
    (treatment p231 varnished)
    (goalsize p231 large)
    
    
    
    
    (unused p232)
    (goalsize p232 small)
    
    
    
    
    (unused p233)
    (goalsize p233 small)
    
    
    
    
    (unused p234)
    (goalsize p234 large)
    
    
    
    
    (unused p235)
    (goalsize p235 small)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (unused p237)
    (goalsize p237 large)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (unused p239)
    (goalsize p239 small)
    
    
    
    
    (unused p240)
    (goalsize p240 large)
    
    
    
    
    (unused p241)
    (goalsize p241 small)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s10)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s5)
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
    (boardsize b10 s8)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s10)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s5)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s12)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s8)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s4)
    (wood b18 mahogany)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s7)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s10)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s6)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s11)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s6)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s2)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s10)
    (wood b27 pine)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s10)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s7)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s6)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 pine)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s8)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s3)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s5)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s5)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s7)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s12)
    (wood b40 walnut)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s7)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s8)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s6)
    (wood b43 walnut)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s6)
    (wood b44 teak)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s7)
    (wood b45 teak)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s6)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s8)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s8)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s8)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s8)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s9)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s6)
    (wood b52 teak)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s7)
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
    (boardsize b56 s4)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s9)
    (wood b57 beech)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s8)
    (wood b58 beech)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s8)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s6)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s10)
    (wood b61 beech)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s4)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (surface-condition p0 verysmooth)
      (available p1)
      (colour p1 red)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 white)
      (wood p2 walnut)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 white)
      (wood p3 mahogany)
      (treatment p3 varnished)
      (available p4)
      (colour p4 green)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (wood p5 cherry)
      (treatment p5 glazed)
      (available p6)
      (wood p6 cherry)
      (treatment p6 glazed)
      (available p7)
      (colour p7 green)
      (wood p7 cherry)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 green)
      (wood p8 cherry)
      (available p9)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 blue)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 black)
      (wood p11 oak)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 natural)
      (surface-condition p12 smooth)
      (available p13)
      (wood p13 beech)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 white)
      (wood p14 pine)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 red)
      (treatment p15 glazed)
      (available p16)
      (wood p16 beech)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 mauve)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 red)
      (wood p18 pine)
      (available p19)
      (colour p19 natural)
      (treatment p19 glazed)
      (available p20)
      (colour p20 black)
      (wood p20 cherry)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (wood p21 beech)
      (surface-condition p21 verysmooth)
      (available p22)
      (wood p22 mahogany)
      (treatment p22 varnished)
      (available p23)
      (wood p23 pine)
      (treatment p23 glazed)
      (available p24)
      (colour p24 white)
      (surface-condition p24 smooth)
      (treatment p24 varnished)
      (available p25)
      (surface-condition p25 smooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 blue)
      (wood p26 oak)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 natural)
      (wood p27 cherry)
      (treatment p27 glazed)
      (available p28)
      (wood p28 oak)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 mauve)
      (surface-condition p29 verysmooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 red)
      (wood p30 walnut)
      (treatment p30 glazed)
      (available p31)
      (colour p31 mauve)
      (wood p31 teak)
      (available p32)
      (colour p32 white)
      (treatment p32 varnished)
      (available p33)
      (colour p33 blue)
      (wood p33 beech)
      (surface-condition p33 verysmooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 natural)
      (treatment p34 varnished)
      (available p35)
      (colour p35 black)
      (wood p35 pine)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 black)
      (wood p36 teak)
      (available p37)
      (colour p37 mauve)
      (surface-condition p37 verysmooth)
      (available p38)
      (wood p38 mahogany)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (surface-condition p39 smooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 natural)
      (wood p40 beech)
      (available p41)
      (colour p41 mauve)
      (wood p41 pine)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 red)
      (wood p42 pine)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (wood p44 walnut)
      (treatment p44 varnished)
      (available p45)
      (colour p45 mauve)
      (treatment p45 glazed)
      (available p46)
      (colour p46 mauve)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 green)
      (wood p47 mahogany)
      (available p48)
      (wood p48 oak)
      (treatment p48 glazed)
      (available p49)
      (wood p49 oak)
      (surface-condition p49 smooth)
      (available p50)
      (wood p50 beech)
      (surface-condition p50 smooth)
      (available p51)
      (wood p51 oak)
      (treatment p51 glazed)
      (available p52)
      (colour p52 green)
      (wood p52 walnut)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 blue)
      (wood p53 oak)
      (surface-condition p53 smooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 green)
      (wood p54 cherry)
      (surface-condition p54 smooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 mauve)
      (wood p55 walnut)
      (available p56)
      (colour p56 black)
      (wood p56 beech)
      (available p57)
      (colour p57 natural)
      (surface-condition p57 smooth)
      (treatment p57 varnished)
      (available p58)
      (wood p58 mahogany)
      (surface-condition p58 smooth)
      (available p59)
      (wood p59 beech)
      (treatment p59 glazed)
      (available p60)
      (wood p60 oak)
      (treatment p60 glazed)
      (available p61)
      (wood p61 mahogany)
      (treatment p61 varnished)
      (available p62)
      (wood p62 teak)
      (treatment p62 varnished)
      (available p63)
      (colour p63 mauve)
      (surface-condition p63 verysmooth)
      (available p64)
      (colour p64 white)
      (wood p64 mahogany)
      (treatment p64 glazed)
      (available p65)
      (wood p65 beech)
      (surface-condition p65 smooth)
      (available p66)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 blue)
      (wood p67 teak)
      (surface-condition p67 smooth)
      (available p68)
      (colour p68 black)
      (treatment p68 glazed)
      (available p69)
      (surface-condition p69 smooth)
      (treatment p69 varnished)
      (available p70)
      (colour p70 blue)
      (wood p70 beech)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (wood p71 teak)
      (surface-condition p71 smooth)
      (available p72)
      (colour p72 blue)
      (wood p72 mahogany)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 red)
      (treatment p73 glazed)
      (available p74)
      (surface-condition p74 smooth)
      (treatment p74 varnished)
      (available p75)
      (colour p75 green)
      (wood p75 oak)
      (surface-condition p75 verysmooth)
      (available p76)
      (wood p76 cherry)
      (surface-condition p76 smooth)
      (available p77)
      (wood p77 beech)
      (treatment p77 glazed)
      (available p78)
      (colour p78 white)
      (wood p78 beech)
      (available p79)
      (colour p79 red)
      (wood p79 pine)
      (available p80)
      (colour p80 red)
      (wood p80 walnut)
      (available p81)
      (wood p81 pine)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 black)
      (wood p82 mahogany)
      (available p83)
      (wood p83 mahogany)
      (surface-condition p83 verysmooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 green)
      (surface-condition p84 verysmooth)
      (available p85)
      (colour p85 blue)
      (surface-condition p85 smooth)
      (available p86)
      (colour p86 mauve)
      (wood p86 beech)
      (surface-condition p86 verysmooth)
      (treatment p86 glazed)
      (available p87)
      (colour p87 natural)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 blue)
      (wood p88 oak)
      (treatment p88 glazed)
      (available p89)
      (wood p89 oak)
      (treatment p89 varnished)
      (available p90)
      (surface-condition p90 smooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 natural)
      (wood p91 walnut)
      (surface-condition p91 smooth)
      (treatment p91 glazed)
      (available p92)
      (colour p92 mauve)
      (wood p92 cherry)
      (treatment p92 varnished)
      (available p93)
      (wood p93 cherry)
      (treatment p93 glazed)
      (available p94)
      (colour p94 red)
      (wood p94 beech)
      (surface-condition p94 verysmooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 white)
      (wood p95 cherry)
      (available p96)
      (wood p96 walnut)
      (surface-condition p96 verysmooth)
      (treatment p96 glazed)
      (available p97)
      (wood p97 cherry)
      (treatment p97 glazed)
      (available p98)
      (wood p98 pine)
      (treatment p98 varnished)
      (available p99)
      (colour p99 blue)
      (wood p99 pine)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 natural)
      (wood p100 pine)
      (surface-condition p100 verysmooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 white)
      (wood p101 teak)
      (available p102)
      (colour p102 mauve)
      (wood p102 teak)
      (surface-condition p102 smooth)
      (available p103)
      (colour p103 green)
      (wood p103 mahogany)
      (surface-condition p103 smooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 red)
      (surface-condition p104 smooth)
      (available p105)
      (surface-condition p105 verysmooth)
      (treatment p105 varnished)
      (available p106)
      (wood p106 teak)
      (surface-condition p106 smooth)
      (treatment p106 varnished)
      (available p107)
      (colour p107 white)
      (surface-condition p107 smooth)
      (available p108)
      (wood p108 oak)
      (surface-condition p108 verysmooth)
      (available p109)
      (colour p109 red)
      (treatment p109 varnished)
      (available p110)
      (wood p110 cherry)
      (treatment p110 varnished)
      (available p111)
      (colour p111 green)
      (surface-condition p111 smooth)
      (available p112)
      (colour p112 white)
      (wood p112 cherry)
      (available p113)
      (colour p113 white)
      (wood p113 mahogany)
      (treatment p113 varnished)
      (available p114)
      (wood p114 mahogany)
      (treatment p114 glazed)
      (available p115)
      (wood p115 beech)
      (treatment p115 varnished)
      (available p116)
      (wood p116 teak)
      (treatment p116 varnished)
      (available p117)
      (colour p117 green)
      (treatment p117 varnished)
      (available p118)
      (surface-condition p118 verysmooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 white)
      (wood p119 beech)
      (surface-condition p119 smooth)
      (treatment p119 varnished)
      (available p120)
      (surface-condition p120 verysmooth)
      (treatment p120 glazed)
      (available p121)
      (wood p121 cherry)
      (surface-condition p121 verysmooth)
      (available p122)
      (colour p122 white)
      (wood p122 beech)
      (surface-condition p122 smooth)
      (treatment p122 varnished)
      (available p123)
      (colour p123 blue)
      (surface-condition p123 smooth)
      (treatment p123 varnished)
      (available p124)
      (wood p124 mahogany)
      (surface-condition p124 smooth)
      (available p125)
      (wood p125 teak)
      (surface-condition p125 verysmooth)
      (treatment p125 glazed)
      (available p126)
      (colour p126 white)
      (wood p126 oak)
      (surface-condition p126 verysmooth)
      (treatment p126 varnished)
      (available p127)
      (colour p127 blue)
      (surface-condition p127 smooth)
      (treatment p127 glazed)
      (available p128)
      (colour p128 mauve)
      (wood p128 beech)
      (surface-condition p128 smooth)
      (treatment p128 varnished)
      (available p129)
      (colour p129 blue)
      (wood p129 oak)
      (available p130)
      (colour p130 red)
      (wood p130 walnut)
      (surface-condition p130 verysmooth)
      (treatment p130 varnished)
      (available p131)
      (wood p131 teak)
      (surface-condition p131 verysmooth)
      (treatment p131 varnished)
      (available p132)
      (colour p132 white)
      (wood p132 walnut)
      (surface-condition p132 smooth)
      (treatment p132 glazed)
      (available p133)
      (colour p133 green)
      (wood p133 teak)
      (surface-condition p133 smooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 black)
      (wood p134 walnut)
      (surface-condition p134 verysmooth)
      (treatment p134 varnished)
      (available p135)
      (colour p135 mauve)
      (treatment p135 varnished)
      (available p136)
      (colour p136 blue)
      (wood p136 walnut)
      (available p137)
      (colour p137 natural)
      (treatment p137 varnished)
      (available p138)
      (colour p138 white)
      (wood p138 mahogany)
      (available p139)
      (colour p139 natural)
      (wood p139 mahogany)
      (surface-condition p139 smooth)
      (treatment p139 glazed)
      (available p140)
      (wood p140 oak)
      (treatment p140 varnished)
      (available p141)
      (colour p141 green)
      (surface-condition p141 verysmooth)
      (available p142)
      (colour p142 white)
      (wood p142 mahogany)
      (available p143)
      (colour p143 black)
      (treatment p143 varnished)
      (available p144)
      (colour p144 green)
      (wood p144 oak)
      (surface-condition p144 verysmooth)
      (treatment p144 varnished)
      (available p145)
      (wood p145 oak)
      (treatment p145 varnished)
      (available p146)
      (wood p146 cherry)
      (surface-condition p146 verysmooth)
      (available p147)
      (surface-condition p147 verysmooth)
      (treatment p147 varnished)
      (available p148)
      (colour p148 green)
      (wood p148 pine)
      (surface-condition p148 smooth)
      (treatment p148 glazed)
      (available p149)
      (colour p149 black)
      (wood p149 mahogany)
      (surface-condition p149 smooth)
      (treatment p149 varnished)
      (available p150)
      (colour p150 black)
      (wood p150 oak)
      (surface-condition p150 smooth)
      (treatment p150 varnished)
      (available p151)
      (surface-condition p151 smooth)
      (treatment p151 varnished)
      (available p152)
      (colour p152 natural)
      (treatment p152 varnished)
      (available p153)
      (colour p153 green)
      (wood p153 pine)
      (surface-condition p153 verysmooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 green)
      (surface-condition p154 verysmooth)
      (available p155)
      (colour p155 natural)
      (treatment p155 glazed)
      (available p156)
      (colour p156 blue)
      (treatment p156 varnished)
      (available p157)
      (colour p157 white)
      (wood p157 pine)
      (treatment p157 glazed)
      (available p158)
      (wood p158 teak)
      (treatment p158 glazed)
      (available p159)
      (colour p159 green)
      (surface-condition p159 smooth)
      (treatment p159 glazed)
      (available p160)
      (colour p160 green)
      (wood p160 oak)
      (treatment p160 glazed)
      (available p161)
      (colour p161 blue)
      (wood p161 walnut)
      (surface-condition p161 smooth)
      (treatment p161 glazed)
      (available p162)
      (colour p162 black)
      (surface-condition p162 smooth)
      (available p163)
      (colour p163 natural)
      (surface-condition p163 verysmooth)
      (treatment p163 varnished)
      (available p164)
      (colour p164 natural)
      (wood p164 pine)
      (surface-condition p164 verysmooth)
      (treatment p164 varnished)
      (available p165)
      (colour p165 mauve)
      (wood p165 oak)
      (treatment p165 varnished)
      (available p166)
      (colour p166 green)
      (wood p166 oak)
      (surface-condition p166 smooth)
      (treatment p166 glazed)
      (available p167)
      (colour p167 black)
      (wood p167 pine)
      (available p168)
      (colour p168 black)
      (wood p168 teak)
      (surface-condition p168 verysmooth)
      (treatment p168 varnished)
      (available p169)
      (colour p169 red)
      (treatment p169 glazed)
      (available p170)
      (colour p170 natural)
      (treatment p170 glazed)
      (available p171)
      (colour p171 mauve)
      (wood p171 teak)
      (surface-condition p171 verysmooth)
      (available p172)
      (colour p172 natural)
      (wood p172 pine)
      (surface-condition p172 smooth)
      (treatment p172 glazed)
      (available p173)
      (colour p173 mauve)
      (wood p173 pine)
      (available p174)
      (wood p174 cherry)
      (surface-condition p174 smooth)
      (treatment p174 glazed)
      (available p175)
      (colour p175 green)
      (wood p175 walnut)
      (treatment p175 varnished)
      (available p176)
      (colour p176 white)
      (wood p176 oak)
      (surface-condition p176 verysmooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 green)
      (wood p177 pine)
      (surface-condition p177 verysmooth)
      (treatment p177 glazed)
      (available p178)
      (colour p178 natural)
      (surface-condition p178 verysmooth)
      (available p179)
      (colour p179 natural)
      (wood p179 cherry)
      (surface-condition p179 verysmooth)
      (available p180)
      (colour p180 mauve)
      (surface-condition p180 verysmooth)
      (treatment p180 glazed)
      (available p181)
      (wood p181 teak)
      (treatment p181 varnished)
      (available p182)
      (colour p182 black)
      (treatment p182 varnished)
      (available p183)
      (colour p183 black)
      (treatment p183 glazed)
      (available p184)
      (colour p184 mauve)
      (wood p184 beech)
      (available p185)
      (wood p185 cherry)
      (surface-condition p185 verysmooth)
      (treatment p185 glazed)
      (available p186)
      (colour p186 mauve)
      (wood p186 teak)
      (surface-condition p186 smooth)
      (available p187)
      (surface-condition p187 smooth)
      (treatment p187 glazed)
      (available p188)
      (wood p188 teak)
      (treatment p188 glazed)
      (available p189)
      (colour p189 white)
      (surface-condition p189 verysmooth)
      (available p190)
      (colour p190 white)
      (wood p190 beech)
      (surface-condition p190 verysmooth)
      (treatment p190 varnished)
      (available p191)
      (colour p191 natural)
      (wood p191 walnut)
      (treatment p191 varnished)
      (available p192)
      (wood p192 mahogany)
      (treatment p192 glazed)
      (available p193)
      (colour p193 green)
      (treatment p193 glazed)
      (available p194)
      (surface-condition p194 smooth)
      (treatment p194 glazed)
      (available p195)
      (colour p195 red)
      (wood p195 teak)
      (treatment p195 glazed)
      (available p196)
      (wood p196 cherry)
      (treatment p196 glazed)
      (available p197)
      (colour p197 mauve)
      (wood p197 cherry)
      (available p198)
      (colour p198 natural)
      (surface-condition p198 smooth)
      (available p199)
      (wood p199 cherry)
      (surface-condition p199 verysmooth)
      (available p200)
      (surface-condition p200 smooth)
      (treatment p200 varnished)
      (available p201)
      (colour p201 white)
      (wood p201 oak)
      (available p202)
      (colour p202 mauve)
      (wood p202 cherry)
      (treatment p202 varnished)
      (available p203)
      (colour p203 green)
      (wood p203 oak)
      (surface-condition p203 verysmooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 mauve)
      (surface-condition p204 smooth)
      (available p205)
      (surface-condition p205 verysmooth)
      (treatment p205 varnished)
      (available p206)
      (colour p206 white)
      (surface-condition p206 verysmooth)
      (available p207)
      (colour p207 green)
      (wood p207 pine)
      (available p208)
      (colour p208 red)
      (wood p208 beech)
      (treatment p208 glazed)
      (available p209)
      (colour p209 white)
      (treatment p209 varnished)
      (available p210)
      (colour p210 white)
      (wood p210 pine)
      (surface-condition p210 verysmooth)
      (treatment p210 varnished)
      (available p211)
      (colour p211 black)
      (surface-condition p211 verysmooth)
      (treatment p211 glazed)
      (available p212)
      (colour p212 mauve)
      (wood p212 pine)
      (available p213)
      (colour p213 white)
      (wood p213 pine)
      (treatment p213 glazed)
      (available p214)
      (wood p214 oak)
      (surface-condition p214 verysmooth)
      (treatment p214 glazed)
      (available p215)
      (colour p215 natural)
      (surface-condition p215 smooth)
      (treatment p215 varnished)
      (available p216)
      (colour p216 red)
      (surface-condition p216 smooth)
      (available p217)
      (wood p217 teak)
      (surface-condition p217 verysmooth)
      (available p218)
      (colour p218 natural)
      (wood p218 cherry)
      (surface-condition p218 smooth)
      (available p219)
      (colour p219 red)
      (wood p219 mahogany)
      (surface-condition p219 smooth)
      (treatment p219 glazed)
      (available p220)
      (colour p220 natural)
      (treatment p220 varnished)
      (available p221)
      (wood p221 cherry)
      (surface-condition p221 smooth)
      (available p222)
      (colour p222 white)
      (wood p222 walnut)
      (available p223)
      (colour p223 white)
      (wood p223 cherry)
      (surface-condition p223 smooth)
      (treatment p223 varnished)
      (available p224)
      (wood p224 oak)
      (surface-condition p224 verysmooth)
      (treatment p224 glazed)
      (available p225)
      (colour p225 green)
      (wood p225 walnut)
      (surface-condition p225 smooth)
      (treatment p225 varnished)
      (available p226)
      (surface-condition p226 verysmooth)
      (treatment p226 glazed)
      (available p227)
      (colour p227 green)
      (treatment p227 glazed)
      (available p228)
      (colour p228 natural)
      (wood p228 teak)
      (surface-condition p228 verysmooth)
      (treatment p228 glazed)
      (available p229)
      (surface-condition p229 verysmooth)
      (treatment p229 varnished)
      (available p230)
      (surface-condition p230 verysmooth)
      (treatment p230 glazed)
      (available p231)
      (colour p231 black)
      (wood p231 teak)
      (surface-condition p231 smooth)
      (treatment p231 varnished)
      (available p232)
      (surface-condition p232 smooth)
      (treatment p232 glazed)
      (available p233)
      (colour p233 red)
      (wood p233 pine)
      (available p234)
      (wood p234 beech)
      (surface-condition p234 smooth)
      (available p235)
      (colour p235 natural)
      (surface-condition p235 verysmooth)
      (available p236)
      (colour p236 mauve)
      (wood p236 pine)
      (surface-condition p236 verysmooth)
      (treatment p236 varnished)
      (available p237)
      (surface-condition p237 smooth)
      (treatment p237 glazed)
      (available p238)
      (colour p238 green)
      (surface-condition p238 smooth)
      (treatment p238 varnished)
      (available p239)
      (colour p239 blue)
      (wood p239 pine)
      (available p240)
      (wood p240 mahogany)
      (surface-condition p240 smooth)
      (treatment p240 varnished)
      (available p241)
      (colour p241 mauve)
      (wood p241 beech)
      (treatment p241 varnished)
    )
  )
  
)
