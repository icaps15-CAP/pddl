; woodworking task with 227 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 520425

(define (problem wood-prob-sat-180)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue white red green black mauve - acolour
    beech walnut mahogany pine cherry oak teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 white)
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
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (available p8)
    (colour p8 green)
    (wood p8 mahogany)
    (surface-condition p8 verysmooth)
    (treatment p8 colourfragments)
    (goalsize p8 large)
    
    
    
    
    (available p9)
    (colour p9 white)
    (wood p9 teak)
    (surface-condition p9 smooth)
    (treatment p9 glazed)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 white)
    (wood p16 pine)
    (surface-condition p16 smooth)
    (treatment p16 glazed)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 mauve)
    (wood p19 pine)
    (surface-condition p19 smooth)
    (treatment p19 colourfragments)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 natural)
    (wood p21 cherry)
    (surface-condition p21 smooth)
    (treatment p21 colourfragments)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 blue)
    (wood p28 beech)
    (surface-condition p28 smooth)
    (treatment p28 colourfragments)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 green)
    (wood p36 oak)
    (surface-condition p36 rough)
    (treatment p36 varnished)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 white)
    (wood p37 cherry)
    (surface-condition p37 smooth)
    (treatment p37 glazed)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (available p40)
    (colour p40 natural)
    (wood p40 teak)
    (surface-condition p40 rough)
    (treatment p40 varnished)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (available p43)
    (colour p43 white)
    (wood p43 walnut)
    (surface-condition p43 smooth)
    (treatment p43 varnished)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (available p52)
    (colour p52 white)
    (wood p52 walnut)
    (surface-condition p52 rough)
    (treatment p52 varnished)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (available p59)
    (colour p59 mauve)
    (wood p59 mahogany)
    (surface-condition p59 rough)
    (treatment p59 colourfragments)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (available p65)
    (colour p65 mauve)
    (wood p65 teak)
    (surface-condition p65 smooth)
    (treatment p65 colourfragments)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (available p67)
    (colour p67 white)
    (wood p67 oak)
    (surface-condition p67 verysmooth)
    (treatment p67 glazed)
    (goalsize p67 small)
    
    
    
    
    (available p68)
    (colour p68 natural)
    (wood p68 mahogany)
    (surface-condition p68 verysmooth)
    (treatment p68 varnished)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (available p74)
    (colour p74 green)
    (wood p74 walnut)
    (surface-condition p74 verysmooth)
    (treatment p74 glazed)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (available p76)
    (colour p76 blue)
    (wood p76 teak)
    (surface-condition p76 smooth)
    (treatment p76 glazed)
    (goalsize p76 small)
    
    
    
    
    (available p77)
    (colour p77 natural)
    (wood p77 oak)
    (surface-condition p77 rough)
    (treatment p77 colourfragments)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (available p82)
    (colour p82 blue)
    (wood p82 teak)
    (surface-condition p82 smooth)
    (treatment p82 glazed)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (available p84)
    (colour p84 blue)
    (wood p84 beech)
    (surface-condition p84 rough)
    (treatment p84 varnished)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (available p90)
    (colour p90 blue)
    (wood p90 pine)
    (surface-condition p90 smooth)
    (treatment p90 glazed)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (available p106)
    (colour p106 green)
    (wood p106 teak)
    (surface-condition p106 rough)
    (treatment p106 glazed)
    (goalsize p106 small)
    
    
    
    
    (available p107)
    (colour p107 blue)
    (wood p107 walnut)
    (surface-condition p107 verysmooth)
    (treatment p107 glazed)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (available p112)
    (colour p112 red)
    (wood p112 pine)
    (surface-condition p112 verysmooth)
    (treatment p112 glazed)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (available p121)
    (colour p121 blue)
    (wood p121 mahogany)
    (surface-condition p121 rough)
    (treatment p121 colourfragments)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (available p128)
    (colour p128 black)
    (wood p128 walnut)
    (surface-condition p128 verysmooth)
    (treatment p128 colourfragments)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (available p130)
    (colour p130 mauve)
    (wood p130 mahogany)
    (surface-condition p130 verysmooth)
    (treatment p130 glazed)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (available p136)
    (colour p136 natural)
    (wood p136 walnut)
    (surface-condition p136 rough)
    (treatment p136 colourfragments)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (available p157)
    (colour p157 green)
    (wood p157 teak)
    (surface-condition p157 rough)
    (treatment p157 glazed)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (available p159)
    (colour p159 black)
    (wood p159 mahogany)
    (surface-condition p159 rough)
    (treatment p159 glazed)
    (goalsize p159 large)
    
    
    
    
    (available p160)
    (colour p160 black)
    (wood p160 oak)
    (surface-condition p160 rough)
    (treatment p160 colourfragments)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (available p163)
    (colour p163 green)
    (wood p163 oak)
    (surface-condition p163 verysmooth)
    (treatment p163 varnished)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (available p166)
    (colour p166 red)
    (wood p166 teak)
    (surface-condition p166 smooth)
    (treatment p166 varnished)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 small)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
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
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (available p181)
    (colour p181 green)
    (wood p181 walnut)
    (surface-condition p181 verysmooth)
    (treatment p181 glazed)
    (goalsize p181 large)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 medium)
    
    
    
    
    (unused p199)
    (goalsize p199 medium)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 small)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 medium)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (available p205)
    (colour p205 green)
    (wood p205 teak)
    (surface-condition p205 verysmooth)
    (treatment p205 colourfragments)
    (goalsize p205 medium)
    
    
    
    
    (available p206)
    (colour p206 green)
    (wood p206 pine)
    (surface-condition p206 rough)
    (treatment p206 colourfragments)
    (goalsize p206 medium)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 large)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (unused p212)
    (goalsize p212 large)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (available p215)
    (colour p215 blue)
    (wood p215 oak)
    (surface-condition p215 smooth)
    (treatment p215 varnished)
    (goalsize p215 small)
    
    
    
    
    (unused p216)
    (goalsize p216 medium)
    
    
    
    
    (unused p217)
    (goalsize p217 small)
    
    
    
    
    (unused p218)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 small)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 medium)
    
    
    
    
    (available p223)
    (colour p223 mauve)
    (wood p223 beech)
    (surface-condition p223 verysmooth)
    (treatment p223 glazed)
    (goalsize p223 small)
    
    
    
    
    (available p224)
    (colour p224 natural)
    (wood p224 mahogany)
    (surface-condition p224 smooth)
    (treatment p224 varnished)
    (goalsize p224 large)
    
    
    
    
    (unused p225)
    (goalsize p225 large)
    
    
    
    
    (available p226)
    (colour p226 black)
    (wood p226 beech)
    (surface-condition p226 smooth)
    (treatment p226 glazed)
    (goalsize p226 large)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s4)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s10)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s10)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s9)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s5)
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
    (boardsize b14 s11)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s6)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s10)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s10)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s3)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 oak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s9)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s9)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s11)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s10)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s9)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s9)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s10)
    (wood b27 oak)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s9)
    (wood b28 oak)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s1)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 pine)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s11)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s7)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s7)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s10)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s9)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s6)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s9)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s9)
    (wood b38 pine)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s9)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s10)
    (wood b40 pine)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s6)
    (wood b41 pine)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s8)
    (wood b42 walnut)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s8)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s8)
    (wood b44 walnut)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s8)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s7)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s4)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s10)
    (wood b48 walnut)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s11)
    (wood b49 walnut)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s6)
    (wood b50 walnut)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s7)
    (wood b51 walnut)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s9)
    (wood b52 walnut)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s5)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s7)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s9)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s8)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s7)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s5)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s7)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s5)
    (wood b60 beech)
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
    (boardsize b63 s9)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s9)
    (wood b64 beech)
    (surface-condition b64 rough)
    (available b64)
    (boardsize b65 s8)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s6)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s9)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
    (boardsize b68 s6)
    (wood b68 beech)
    (surface-condition b68 rough)
    (available b68)
  )
  (:goal
    (and
      (available p0)
      (wood p0 mahogany)
      (surface-condition p0 smooth)
      (available p1)
      (wood p1 pine)
      (treatment p1 varnished)
      (available p2)
      (colour p2 green)
      (surface-condition p2 smooth)
      (available p3)
      (wood p3 pine)
      (treatment p3 glazed)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 white)
      (wood p5 beech)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 blue)
      (wood p6 oak)
      (surface-condition p6 verysmooth)
      (treatment p6 varnished)
      (available p7)
      (wood p7 walnut)
      (surface-condition p7 verysmooth)
      (available p8)
      (wood p8 mahogany)
      (treatment p8 glazed)
      (available p9)
      (wood p9 teak)
      (surface-condition p9 verysmooth)
      (available p10)
      (colour p10 green)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 natural)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 white)
      (treatment p12 varnished)
      (available p13)
      (colour p13 blue)
      (treatment p13 varnished)
      (available p14)
      (colour p14 white)
      (treatment p14 varnished)
      (available p15)
      (colour p15 white)
      (treatment p15 glazed)
      (available p16)
      (wood p16 pine)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 mauve)
      (wood p17 teak)
      (treatment p17 glazed)
      (available p18)
      (colour p18 natural)
      (surface-condition p18 smooth)
      (available p19)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 black)
      (wood p21 cherry)
      (surface-condition p21 smooth)
      (available p22)
      (wood p22 pine)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 green)
      (wood p23 pine)
      (available p24)
      (colour p24 black)
      (wood p24 mahogany)
      (available p25)
      (colour p25 white)
      (wood p25 cherry)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 red)
      (surface-condition p26 smooth)
      (available p27)
      (wood p27 oak)
      (surface-condition p27 verysmooth)
      (available p28)
      (colour p28 red)
      (wood p28 beech)
      (surface-condition p28 smooth)
      (available p29)
      (colour p29 natural)
      (treatment p29 glazed)
      (available p30)
      (colour p30 mauve)
      (wood p30 teak)
      (treatment p30 glazed)
      (available p31)
      (wood p31 beech)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 mauve)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 natural)
      (treatment p33 glazed)
      (available p34)
      (colour p34 red)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 green)
      (wood p35 pine)
      (treatment p35 varnished)
      (available p36)
      (wood p36 oak)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 red)
      (treatment p37 glazed)
      (available p38)
      (colour p38 green)
      (treatment p38 glazed)
      (available p39)
      (wood p39 oak)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 black)
      (wood p41 mahogany)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 blue)
      (wood p42 cherry)
      (treatment p42 varnished)
      (available p43)
      (colour p43 green)
      (wood p43 walnut)
      (treatment p43 glazed)
      (available p44)
      (wood p44 walnut)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (wood p45 mahogany)
      (treatment p45 varnished)
      (available p46)
      (colour p46 black)
      (surface-condition p46 smooth)
      (available p47)
      (colour p47 natural)
      (wood p47 pine)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 natural)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 mauve)
      (surface-condition p49 smooth)
      (available p50)
      (colour p50 red)
      (wood p50 cherry)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (surface-condition p52 verysmooth)
      (treatment p52 varnished)
      (available p53)
      (surface-condition p53 smooth)
      (treatment p53 glazed)
      (available p54)
      (wood p54 walnut)
      (surface-condition p54 verysmooth)
      (available p55)
      (colour p55 natural)
      (treatment p55 varnished)
      (available p56)
      (colour p56 black)
      (wood p56 teak)
      (surface-condition p56 smooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 white)
      (surface-condition p57 verysmooth)
      (available p58)
      (wood p58 cherry)
      (surface-condition p58 smooth)
      (available p59)
      (wood p59 mahogany)
      (surface-condition p59 verysmooth)
      (available p60)
      (colour p60 mauve)
      (treatment p60 glazed)
      (available p61)
      (colour p61 mauve)
      (wood p61 pine)
      (surface-condition p61 smooth)
      (available p62)
      (wood p62 beech)
      (surface-condition p62 verysmooth)
      (available p63)
      (colour p63 red)
      (wood p63 mahogany)
      (surface-condition p63 verysmooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 white)
      (wood p64 mahogany)
      (surface-condition p64 verysmooth)
      (treatment p64 varnished)
      (available p65)
      (surface-condition p65 smooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 mauve)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 mauve)
      (wood p67 oak)
      (available p68)
      (colour p68 green)
      (wood p68 mahogany)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 blue)
      (wood p69 mahogany)
      (surface-condition p69 smooth)
      (treatment p69 varnished)
      (available p70)
      (colour p70 blue)
      (wood p70 beech)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 mauve)
      (wood p71 walnut)
      (surface-condition p71 smooth)
      (available p72)
      (wood p72 pine)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 blue)
      (treatment p73 varnished)
      (available p74)
      (colour p74 mauve)
      (treatment p74 glazed)
      (available p75)
      (colour p75 white)
      (wood p75 pine)
      (surface-condition p75 verysmooth)
      (treatment p75 varnished)
      (available p76)
      (colour p76 natural)
      (wood p76 teak)
      (surface-condition p76 verysmooth)
      (treatment p76 varnished)
      (available p77)
      (colour p77 white)
      (wood p77 oak)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (wood p78 walnut)
      (surface-condition p78 verysmooth)
      (available p79)
      (wood p79 oak)
      (treatment p79 varnished)
      (available p80)
      (surface-condition p80 smooth)
      (treatment p80 glazed)
      (available p81)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (surface-condition p82 verysmooth)
      (treatment p82 glazed)
      (available p83)
      (wood p83 mahogany)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 white)
      (surface-condition p84 verysmooth)
      (available p85)
      (wood p85 walnut)
      (surface-condition p85 verysmooth)
      (treatment p85 glazed)
      (available p86)
      (wood p86 cherry)
      (treatment p86 varnished)
      (available p87)
      (colour p87 blue)
      (wood p87 cherry)
      (surface-condition p87 smooth)
      (treatment p87 glazed)
      (available p88)
      (colour p88 mauve)
      (treatment p88 glazed)
      (available p89)
      (colour p89 natural)
      (wood p89 pine)
      (surface-condition p89 smooth)
      (treatment p89 glazed)
      (available p90)
      (wood p90 pine)
      (surface-condition p90 verysmooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 mauve)
      (wood p91 oak)
      (surface-condition p91 smooth)
      (treatment p91 varnished)
      (available p92)
      (colour p92 mauve)
      (wood p92 pine)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (wood p93 oak)
      (treatment p93 varnished)
      (available p94)
      (colour p94 green)
      (treatment p94 glazed)
      (available p95)
      (wood p95 mahogany)
      (treatment p95 varnished)
      (available p96)
      (colour p96 natural)
      (treatment p96 glazed)
      (available p97)
      (colour p97 green)
      (wood p97 pine)
      (available p98)
      (colour p98 natural)
      (surface-condition p98 verysmooth)
      (available p99)
      (colour p99 natural)
      (wood p99 cherry)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 white)
      (wood p100 beech)
      (available p101)
      (wood p101 beech)
      (treatment p101 glazed)
      (available p102)
      (wood p102 pine)
      (surface-condition p102 smooth)
      (available p103)
      (wood p103 walnut)
      (surface-condition p103 verysmooth)
      (available p104)
      (wood p104 mahogany)
      (surface-condition p104 verysmooth)
      (available p105)
      (colour p105 black)
      (wood p105 oak)
      (surface-condition p105 smooth)
      (available p106)
      (surface-condition p106 verysmooth)
      (treatment p106 glazed)
      (available p107)
      (colour p107 white)
      (treatment p107 glazed)
      (available p108)
      (colour p108 red)
      (treatment p108 glazed)
      (available p109)
      (wood p109 walnut)
      (treatment p109 glazed)
      (available p110)
      (surface-condition p110 verysmooth)
      (treatment p110 glazed)
      (available p111)
      (colour p111 natural)
      (wood p111 beech)
      (surface-condition p111 smooth)
      (treatment p111 glazed)
      (available p112)
      (colour p112 green)
      (wood p112 pine)
      (surface-condition p112 verysmooth)
      (treatment p112 glazed)
      (available p113)
      (colour p113 black)
      (treatment p113 glazed)
      (available p114)
      (colour p114 white)
      (surface-condition p114 smooth)
      (available p115)
      (colour p115 natural)
      (wood p115 cherry)
      (surface-condition p115 smooth)
      (available p116)
      (colour p116 red)
      (wood p116 beech)
      (surface-condition p116 verysmooth)
      (treatment p116 varnished)
      (available p117)
      (colour p117 mauve)
      (treatment p117 glazed)
      (available p118)
      (colour p118 blue)
      (wood p118 pine)
      (treatment p118 varnished)
      (available p119)
      (surface-condition p119 verysmooth)
      (treatment p119 glazed)
      (available p120)
      (surface-condition p120 verysmooth)
      (treatment p120 glazed)
      (available p121)
      (surface-condition p121 smooth)
      (treatment p121 glazed)
      (available p122)
      (wood p122 oak)
      (treatment p122 glazed)
      (available p123)
      (colour p123 green)
      (wood p123 beech)
      (surface-condition p123 smooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 mauve)
      (wood p124 walnut)
      (available p125)
      (colour p125 red)
      (wood p125 cherry)
      (available p126)
      (colour p126 natural)
      (surface-condition p126 smooth)
      (available p127)
      (wood p127 mahogany)
      (surface-condition p127 smooth)
      (available p128)
      (colour p128 mauve)
      (surface-condition p128 verysmooth)
      (treatment p128 varnished)
      (available p129)
      (surface-condition p129 verysmooth)
      (treatment p129 glazed)
      (available p130)
      (colour p130 white)
      (wood p130 mahogany)
      (treatment p130 glazed)
      (available p131)
      (wood p131 oak)
      (surface-condition p131 smooth)
      (available p132)
      (wood p132 mahogany)
      (surface-condition p132 smooth)
      (available p133)
      (colour p133 red)
      (surface-condition p133 verysmooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 white)
      (treatment p134 varnished)
      (available p135)
      (colour p135 white)
      (surface-condition p135 verysmooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 red)
      (wood p136 walnut)
      (surface-condition p136 verysmooth)
      (treatment p136 varnished)
      (available p137)
      (wood p137 pine)
      (surface-condition p137 smooth)
      (available p138)
      (colour p138 mauve)
      (wood p138 beech)
      (surface-condition p138 verysmooth)
      (available p139)
      (colour p139 white)
      (wood p139 walnut)
      (available p140)
      (colour p140 black)
      (wood p140 pine)
      (available p141)
      (colour p141 blue)
      (wood p141 walnut)
      (available p142)
      (colour p142 blue)
      (wood p142 mahogany)
      (surface-condition p142 smooth)
      (treatment p142 varnished)
      (available p143)
      (wood p143 walnut)
      (surface-condition p143 smooth)
      (available p144)
      (colour p144 white)
      (wood p144 walnut)
      (surface-condition p144 smooth)
      (treatment p144 varnished)
      (available p145)
      (wood p145 mahogany)
      (treatment p145 glazed)
      (available p146)
      (colour p146 green)
      (wood p146 teak)
      (surface-condition p146 smooth)
      (treatment p146 varnished)
      (available p147)
      (colour p147 black)
      (wood p147 pine)
      (treatment p147 varnished)
      (available p148)
      (colour p148 white)
      (wood p148 pine)
      (available p149)
      (wood p149 oak)
      (surface-condition p149 smooth)
      (available p150)
      (colour p150 blue)
      (wood p150 oak)
      (surface-condition p150 verysmooth)
      (treatment p150 varnished)
      (available p151)
      (colour p151 mauve)
      (wood p151 beech)
      (available p152)
      (wood p152 beech)
      (surface-condition p152 smooth)
      (treatment p152 varnished)
      (available p153)
      (colour p153 mauve)
      (treatment p153 varnished)
      (available p154)
      (colour p154 green)
      (wood p154 cherry)
      (surface-condition p154 smooth)
      (treatment p154 varnished)
      (available p155)
      (colour p155 green)
      (treatment p155 varnished)
      (available p156)
      (wood p156 oak)
      (surface-condition p156 smooth)
      (treatment p156 glazed)
      (available p157)
      (colour p157 black)
      (surface-condition p157 verysmooth)
      (available p158)
      (wood p158 walnut)
      (surface-condition p158 verysmooth)
      (available p159)
      (wood p159 mahogany)
      (surface-condition p159 verysmooth)
      (available p160)
      (colour p160 mauve)
      (surface-condition p160 verysmooth)
      (treatment p160 glazed)
      (available p161)
      (wood p161 pine)
      (treatment p161 glazed)
      (available p162)
      (colour p162 green)
      (wood p162 walnut)
      (available p163)
      (colour p163 red)
      (treatment p163 varnished)
      (available p164)
      (surface-condition p164 smooth)
      (treatment p164 varnished)
      (available p165)
      (colour p165 blue)
      (wood p165 teak)
      (available p166)
      (colour p166 white)
      (surface-condition p166 verysmooth)
      (treatment p166 varnished)
      (available p167)
      (colour p167 white)
      (surface-condition p167 verysmooth)
      (available p168)
      (wood p168 pine)
      (surface-condition p168 smooth)
      (available p169)
      (colour p169 white)
      (surface-condition p169 smooth)
      (available p170)
      (surface-condition p170 smooth)
      (treatment p170 glazed)
      (available p171)
      (colour p171 natural)
      (wood p171 mahogany)
      (surface-condition p171 smooth)
      (treatment p171 varnished)
      (available p172)
      (surface-condition p172 verysmooth)
      (treatment p172 glazed)
      (available p173)
      (wood p173 oak)
      (surface-condition p173 verysmooth)
      (available p174)
      (colour p174 red)
      (wood p174 mahogany)
      (treatment p174 glazed)
      (available p175)
      (wood p175 oak)
      (surface-condition p175 verysmooth)
      (treatment p175 glazed)
      (available p176)
      (colour p176 mauve)
      (treatment p176 glazed)
      (available p177)
      (colour p177 green)
      (surface-condition p177 smooth)
      (available p178)
      (colour p178 white)
      (wood p178 cherry)
      (surface-condition p178 verysmooth)
      (treatment p178 glazed)
      (available p179)
      (wood p179 walnut)
      (treatment p179 glazed)
      (available p180)
      (wood p180 beech)
      (surface-condition p180 smooth)
      (available p181)
      (colour p181 blue)
      (surface-condition p181 smooth)
      (available p182)
      (colour p182 red)
      (wood p182 beech)
      (surface-condition p182 smooth)
      (treatment p182 varnished)
      (available p183)
      (colour p183 white)
      (surface-condition p183 smooth)
      (available p184)
      (colour p184 natural)
      (wood p184 mahogany)
      (surface-condition p184 verysmooth)
      (treatment p184 glazed)
      (available p185)
      (colour p185 blue)
      (surface-condition p185 verysmooth)
      (available p186)
      (colour p186 red)
      (surface-condition p186 smooth)
      (available p187)
      (colour p187 natural)
      (wood p187 pine)
      (surface-condition p187 verysmooth)
      (treatment p187 varnished)
      (available p188)
      (colour p188 red)
      (treatment p188 glazed)
      (available p189)
      (colour p189 natural)
      (wood p189 cherry)
      (surface-condition p189 verysmooth)
      (treatment p189 glazed)
      (available p190)
      (colour p190 green)
      (surface-condition p190 smooth)
      (available p191)
      (wood p191 beech)
      (surface-condition p191 smooth)
      (available p192)
      (colour p192 red)
      (wood p192 oak)
      (surface-condition p192 smooth)
      (available p193)
      (colour p193 green)
      (surface-condition p193 smooth)
      (treatment p193 glazed)
      (available p194)
      (wood p194 cherry)
      (surface-condition p194 smooth)
      (available p195)
      (colour p195 black)
      (surface-condition p195 verysmooth)
      (treatment p195 varnished)
      (available p196)
      (colour p196 white)
      (wood p196 pine)
      (surface-condition p196 verysmooth)
      (treatment p196 glazed)
      (available p197)
      (colour p197 mauve)
      (surface-condition p197 smooth)
      (treatment p197 glazed)
      (available p198)
      (colour p198 natural)
      (treatment p198 varnished)
      (available p199)
      (wood p199 pine)
      (treatment p199 varnished)
      (available p200)
      (colour p200 green)
      (surface-condition p200 verysmooth)
      (available p201)
      (wood p201 teak)
      (surface-condition p201 smooth)
      (treatment p201 varnished)
      (available p202)
      (colour p202 green)
      (wood p202 mahogany)
      (available p203)
      (colour p203 natural)
      (wood p203 teak)
      (surface-condition p203 smooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 white)
      (surface-condition p204 smooth)
      (available p205)
      (colour p205 red)
      (wood p205 teak)
      (surface-condition p205 smooth)
      (treatment p205 varnished)
      (available p206)
      (wood p206 pine)
      (surface-condition p206 verysmooth)
      (treatment p206 varnished)
      (available p207)
      (colour p207 natural)
      (wood p207 pine)
      (surface-condition p207 verysmooth)
      (treatment p207 varnished)
      (available p208)
      (colour p208 green)
      (wood p208 walnut)
      (available p209)
      (colour p209 green)
      (wood p209 teak)
      (available p210)
      (colour p210 natural)
      (wood p210 mahogany)
      (surface-condition p210 smooth)
      (treatment p210 glazed)
      (available p211)
      (wood p211 beech)
      (treatment p211 glazed)
      (available p212)
      (colour p212 green)
      (wood p212 cherry)
      (available p213)
      (colour p213 mauve)
      (surface-condition p213 verysmooth)
      (available p214)
      (surface-condition p214 smooth)
      (treatment p214 glazed)
      (available p215)
      (surface-condition p215 smooth)
      (treatment p215 glazed)
      (available p216)
      (wood p216 walnut)
      (treatment p216 glazed)
      (available p217)
      (wood p217 oak)
      (surface-condition p217 smooth)
      (treatment p217 varnished)
      (available p218)
      (colour p218 green)
      (surface-condition p218 smooth)
      (available p219)
      (colour p219 green)
      (wood p219 pine)
      (available p220)
      (colour p220 red)
      (wood p220 cherry)
      (surface-condition p220 verysmooth)
      (treatment p220 glazed)
      (available p221)
      (wood p221 walnut)
      (surface-condition p221 smooth)
      (available p222)
      (colour p222 mauve)
      (wood p222 teak)
      (available p223)
      (wood p223 beech)
      (surface-condition p223 smooth)
      (treatment p223 varnished)
      (available p224)
      (colour p224 mauve)
      (treatment p224 varnished)
      (available p225)
      (colour p225 blue)
      (wood p225 beech)
      (available p226)
      (colour p226 natural)
      (wood p226 beech)
      (treatment p226 glazed)
    )
  )
  
)
