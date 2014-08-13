; woodworking task with 212 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 432296

(define (problem wood-prob-sat-175)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green blue white mauve red black - acolour
    pine walnut beech mahogany cherry oak teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 - part
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
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
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
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (available p3)
    (colour p3 black)
    (wood p3 cherry)
    (surface-condition p3 rough)
    (treatment p3 varnished)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 white)
    (wood p7 beech)
    (surface-condition p7 verysmooth)
    (treatment p7 colourfragments)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 white)
    (wood p11 beech)
    (surface-condition p11 verysmooth)
    (treatment p11 varnished)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (available p18)
    (colour p18 black)
    (wood p18 pine)
    (surface-condition p18 smooth)
    (treatment p18 varnished)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (available p50)
    (colour p50 white)
    (wood p50 beech)
    (surface-condition p50 smooth)
    (treatment p50 varnished)
    (goalsize p50 medium)
    
    
    
    
    (available p51)
    (colour p51 blue)
    (wood p51 mahogany)
    (surface-condition p51 rough)
    (treatment p51 glazed)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (available p57)
    (colour p57 mauve)
    (wood p57 teak)
    (surface-condition p57 rough)
    (treatment p57 varnished)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (available p66)
    (colour p66 mauve)
    (wood p66 cherry)
    (surface-condition p66 smooth)
    (treatment p66 glazed)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (available p73)
    (colour p73 green)
    (wood p73 oak)
    (surface-condition p73 rough)
    (treatment p73 colourfragments)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (available p76)
    (colour p76 black)
    (wood p76 mahogany)
    (surface-condition p76 rough)
    (treatment p76 colourfragments)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (available p90)
    (colour p90 blue)
    (wood p90 teak)
    (surface-condition p90 rough)
    (treatment p90 glazed)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (available p99)
    (colour p99 blue)
    (wood p99 walnut)
    (surface-condition p99 verysmooth)
    (treatment p99 colourfragments)
    (goalsize p99 small)
    
    
    
    
    (available p100)
    (colour p100 white)
    (wood p100 teak)
    (surface-condition p100 smooth)
    (treatment p100 varnished)
    (goalsize p100 large)
    
    
    
    
    (available p101)
    (colour p101 natural)
    (wood p101 mahogany)
    (surface-condition p101 smooth)
    (treatment p101 glazed)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (available p104)
    (colour p104 mauve)
    (wood p104 teak)
    (surface-condition p104 rough)
    (treatment p104 colourfragments)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (available p109)
    (colour p109 mauve)
    (wood p109 cherry)
    (surface-condition p109 smooth)
    (treatment p109 varnished)
    (goalsize p109 large)
    
    
    
    
    (available p110)
    (colour p110 mauve)
    (wood p110 cherry)
    (surface-condition p110 rough)
    (treatment p110 glazed)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (available p113)
    (colour p113 red)
    (wood p113 walnut)
    (surface-condition p113 rough)
    (treatment p113 glazed)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (available p115)
    (colour p115 mauve)
    (wood p115 oak)
    (surface-condition p115 verysmooth)
    (treatment p115 colourfragments)
    (goalsize p115 small)
    
    
    
    
    (available p116)
    (colour p116 black)
    (wood p116 teak)
    (surface-condition p116 smooth)
    (treatment p116 glazed)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (available p118)
    (colour p118 mauve)
    (wood p118 walnut)
    (surface-condition p118 rough)
    (treatment p118 varnished)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (available p125)
    (colour p125 natural)
    (wood p125 walnut)
    (surface-condition p125 smooth)
    (treatment p125 colourfragments)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (available p129)
    (colour p129 green)
    (wood p129 walnut)
    (surface-condition p129 verysmooth)
    (treatment p129 varnished)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (available p134)
    (colour p134 natural)
    (wood p134 oak)
    (surface-condition p134 verysmooth)
    (treatment p134 varnished)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (available p136)
    (colour p136 natural)
    (wood p136 beech)
    (surface-condition p136 rough)
    (treatment p136 varnished)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (available p139)
    (colour p139 red)
    (wood p139 pine)
    (surface-condition p139 rough)
    (treatment p139 glazed)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (available p141)
    (colour p141 green)
    (wood p141 mahogany)
    (surface-condition p141 verysmooth)
    (treatment p141 varnished)
    (goalsize p141 medium)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (available p144)
    (colour p144 black)
    (wood p144 pine)
    (surface-condition p144 rough)
    (treatment p144 varnished)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (available p162)
    (colour p162 white)
    (wood p162 teak)
    (surface-condition p162 verysmooth)
    (treatment p162 glazed)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 small)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (available p176)
    (colour p176 black)
    (wood p176 oak)
    (surface-condition p176 smooth)
    (treatment p176 varnished)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 medium)
    
    
    
    
    (available p179)
    (colour p179 green)
    (wood p179 teak)
    (surface-condition p179 smooth)
    (treatment p179 colourfragments)
    (goalsize p179 large)
    
    
    
    
    (available p180)
    (colour p180 red)
    (wood p180 mahogany)
    (surface-condition p180 smooth)
    (treatment p180 glazed)
    (goalsize p180 small)
    
    
    
    
    (available p181)
    (colour p181 natural)
    (wood p181 oak)
    (surface-condition p181 smooth)
    (treatment p181 glazed)
    (goalsize p181 large)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (available p185)
    (colour p185 blue)
    (wood p185 pine)
    (surface-condition p185 verysmooth)
    (treatment p185 glazed)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (available p189)
    (colour p189 white)
    (wood p189 teak)
    (surface-condition p189 rough)
    (treatment p189 colourfragments)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 large)
    
    
    
    
    (unused p191)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 medium)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (available p194)
    (colour p194 natural)
    (wood p194 walnut)
    (surface-condition p194 rough)
    (treatment p194 colourfragments)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (available p196)
    (colour p196 mauve)
    (wood p196 mahogany)
    (surface-condition p196 smooth)
    (treatment p196 glazed)
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 small)
    
    
    
    
    (unused p198)
    (goalsize p198 medium)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 small)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 large)
    
    
    
    
    (unused p204)
    (goalsize p204 large)
    
    
    
    
    (unused p205)
    (goalsize p205 medium)
    
    
    
    
    (unused p206)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 large)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 medium)
    
    
    
    
    (unused p211)
    (goalsize p211 small)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s10)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s5)
    (wood b7 mahogany)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s9)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s8)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s5)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s6)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s10)
    (wood b22 oak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s9)
    (wood b23 oak)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s8)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s9)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s3)
    (wood b26 oak)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s7)
    (wood b27 pine)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s8)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s6)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s7)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s9)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s11)
    (wood b34 walnut)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s8)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s12)
    (wood b36 walnut)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s7)
    (wood b37 walnut)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s6)
    (wood b38 walnut)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s8)
    (wood b39 walnut)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s10)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s7)
    (wood b41 walnut)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s7)
    (wood b42 walnut)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s5)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s10)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s5)
    (wood b45 teak)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s12)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s8)
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
    (boardsize b50 s8)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s7)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s8)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s5)
    (wood b53 beech)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s7)
    (wood b54 beech)
    (surface-condition b54 smooth)
    (available b54)
    (boardsize b55 s9)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s10)
    (wood b56 beech)
    (surface-condition b56 smooth)
    (available b56)
    (boardsize b57 s7)
    (wood b57 beech)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s10)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s8)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s10)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s6)
    (wood b61 beech)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s3)
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
      (wood p1 walnut)
      (treatment p1 glazed)
      (available p2)
      (wood p2 walnut)
      (surface-condition p2 smooth)
      (available p3)
      (wood p3 cherry)
      (surface-condition p3 verysmooth)
      (available p4)
      (colour p4 mauve)
      (wood p4 pine)
      (surface-condition p4 verysmooth)
      (available p5)
      (wood p5 walnut)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 green)
      (treatment p6 glazed)
      (available p7)
      (colour p7 natural)
      (wood p7 beech)
      (treatment p7 varnished)
      (available p8)
      (colour p8 green)
      (treatment p8 varnished)
      (available p9)
      (colour p9 blue)
      (wood p9 teak)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 blue)
      (wood p10 beech)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 green)
      (wood p11 beech)
      (available p12)
      (colour p12 green)
      (surface-condition p12 smooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 mauve)
      (surface-condition p13 smooth)
      (available p14)
      (wood p14 oak)
      (treatment p14 glazed)
      (available p15)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 blue)
      (wood p16 oak)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 black)
      (surface-condition p17 verysmooth)
      (available p18)
      (colour p18 red)
      (wood p18 pine)
      (available p19)
      (colour p19 black)
      (wood p19 pine)
      (available p20)
      (wood p20 teak)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (wood p21 cherry)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 red)
      (wood p22 teak)
      (treatment p22 varnished)
      (available p23)
      (colour p23 mauve)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (wood p24 oak)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 black)
      (surface-condition p25 smooth)
      (available p26)
      (wood p26 pine)
      (treatment p26 glazed)
      (available p27)
      (wood p27 beech)
      (treatment p27 varnished)
      (available p28)
      (colour p28 mauve)
      (wood p28 beech)
      (available p29)
      (colour p29 natural)
      (wood p29 mahogany)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 green)
      (wood p30 oak)
      (surface-condition p30 verysmooth)
      (available p31)
      (wood p31 beech)
      (surface-condition p31 smooth)
      (available p32)
      (colour p32 mauve)
      (surface-condition p32 verysmooth)
      (available p33)
      (colour p33 red)
      (wood p33 pine)
      (treatment p33 varnished)
      (available p34)
      (colour p34 natural)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 black)
      (wood p35 teak)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 red)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 black)
      (wood p37 mahogany)
      (surface-condition p37 smooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 green)
      (wood p38 cherry)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 mauve)
      (wood p39 beech)
      (surface-condition p39 verysmooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 white)
      (wood p40 beech)
      (surface-condition p40 verysmooth)
      (available p41)
      (colour p41 red)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 blue)
      (wood p42 beech)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 natural)
      (wood p43 beech)
      (treatment p43 glazed)
      (available p44)
      (colour p44 red)
      (wood p44 mahogany)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 black)
      (wood p45 teak)
      (surface-condition p45 verysmooth)
      (available p46)
      (wood p46 mahogany)
      (surface-condition p46 verysmooth)
      (available p47)
      (colour p47 natural)
      (treatment p47 varnished)
      (available p48)
      (colour p48 red)
      (surface-condition p48 verysmooth)
      (available p49)
      (colour p49 black)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 green)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 white)
      (wood p51 mahogany)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 white)
      (wood p52 beech)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 mauve)
      (wood p53 teak)
      (available p54)
      (colour p54 white)
      (surface-condition p54 verysmooth)
      (available p55)
      (colour p55 black)
      (treatment p55 glazed)
      (available p56)
      (colour p56 red)
      (wood p56 walnut)
      (available p57)
      (colour p57 blue)
      (wood p57 teak)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 mauve)
      (surface-condition p58 smooth)
      (available p59)
      (wood p59 beech)
      (treatment p59 varnished)
      (available p60)
      (wood p60 mahogany)
      (surface-condition p60 verysmooth)
      (treatment p60 glazed)
      (available p61)
      (wood p61 mahogany)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 blue)
      (surface-condition p62 verysmooth)
      (available p63)
      (colour p63 red)
      (wood p63 teak)
      (treatment p63 glazed)
      (available p64)
      (colour p64 white)
      (surface-condition p64 verysmooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 green)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 red)
      (surface-condition p66 smooth)
      (treatment p66 glazed)
      (available p67)
      (colour p67 white)
      (wood p67 pine)
      (surface-condition p67 smooth)
      (available p68)
      (wood p68 teak)
      (treatment p68 varnished)
      (available p69)
      (wood p69 walnut)
      (surface-condition p69 smooth)
      (available p70)
      (colour p70 natural)
      (wood p70 teak)
      (available p71)
      (colour p71 mauve)
      (wood p71 beech)
      (surface-condition p71 verysmooth)
      (available p72)
      (wood p72 teak)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 red)
      (wood p73 oak)
      (treatment p73 varnished)
      (available p74)
      (colour p74 green)
      (wood p74 beech)
      (surface-condition p74 verysmooth)
      (treatment p74 varnished)
      (available p75)
      (colour p75 red)
      (wood p75 walnut)
      (available p76)
      (wood p76 mahogany)
      (surface-condition p76 verysmooth)
      (available p77)
      (wood p77 beech)
      (treatment p77 varnished)
      (available p78)
      (colour p78 natural)
      (wood p78 mahogany)
      (surface-condition p78 verysmooth)
      (treatment p78 varnished)
      (available p79)
      (wood p79 cherry)
      (surface-condition p79 verysmooth)
      (available p80)
      (colour p80 red)
      (wood p80 mahogany)
      (surface-condition p80 smooth)
      (treatment p80 glazed)
      (available p81)
      (wood p81 walnut)
      (treatment p81 glazed)
      (available p82)
      (colour p82 blue)
      (wood p82 oak)
      (surface-condition p82 smooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 natural)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 natural)
      (wood p84 pine)
      (treatment p84 varnished)
      (available p85)
      (colour p85 black)
      (treatment p85 glazed)
      (available p86)
      (colour p86 mauve)
      (wood p86 cherry)
      (available p87)
      (colour p87 green)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 white)
      (wood p88 mahogany)
      (treatment p88 varnished)
      (available p89)
      (colour p89 blue)
      (wood p89 walnut)
      (surface-condition p89 verysmooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 white)
      (wood p90 teak)
      (surface-condition p90 smooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 natural)
      (wood p91 mahogany)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 black)
      (wood p92 teak)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (surface-condition p93 verysmooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 black)
      (wood p94 cherry)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 natural)
      (surface-condition p95 verysmooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 mauve)
      (wood p96 oak)
      (surface-condition p96 verysmooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 white)
      (wood p97 teak)
      (surface-condition p97 verysmooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 black)
      (wood p98 teak)
      (available p99)
      (colour p99 green)
      (wood p99 walnut)
      (surface-condition p99 smooth)
      (treatment p99 varnished)
      (available p100)
      (wood p100 teak)
      (surface-condition p100 verysmooth)
      (available p101)
      (colour p101 white)
      (wood p101 mahogany)
      (available p102)
      (colour p102 mauve)
      (wood p102 teak)
      (surface-condition p102 verysmooth)
      (treatment p102 varnished)
      (available p103)
      (surface-condition p103 smooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 red)
      (wood p104 teak)
      (treatment p104 glazed)
      (available p105)
      (colour p105 white)
      (surface-condition p105 smooth)
      (available p106)
      (wood p106 teak)
      (surface-condition p106 smooth)
      (available p107)
      (colour p107 red)
      (wood p107 cherry)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (colour p108 green)
      (surface-condition p108 smooth)
      (available p109)
      (colour p109 green)
      (wood p109 cherry)
      (surface-condition p109 verysmooth)
      (treatment p109 glazed)
      (available p110)
      (colour p110 blue)
      (surface-condition p110 verysmooth)
      (available p111)
      (surface-condition p111 verysmooth)
      (treatment p111 glazed)
      (available p112)
      (colour p112 red)
      (wood p112 teak)
      (surface-condition p112 smooth)
      (treatment p112 varnished)
      (available p113)
      (colour p113 white)
      (wood p113 walnut)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 blue)
      (wood p114 teak)
      (surface-condition p114 verysmooth)
      (treatment p114 varnished)
      (available p115)
      (wood p115 oak)
      (treatment p115 varnished)
      (available p116)
      (colour p116 green)
      (surface-condition p116 smooth)
      (available p117)
      (colour p117 mauve)
      (wood p117 teak)
      (surface-condition p117 verysmooth)
      (available p118)
      (colour p118 natural)
      (wood p118 walnut)
      (surface-condition p118 smooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 white)
      (wood p119 pine)
      (surface-condition p119 verysmooth)
      (treatment p119 glazed)
      (available p120)
      (colour p120 red)
      (surface-condition p120 verysmooth)
      (treatment p120 varnished)
      (available p121)
      (colour p121 mauve)
      (wood p121 beech)
      (available p122)
      (wood p122 pine)
      (surface-condition p122 verysmooth)
      (available p123)
      (colour p123 green)
      (wood p123 walnut)
      (surface-condition p123 smooth)
      (available p124)
      (colour p124 red)
      (wood p124 oak)
      (surface-condition p124 verysmooth)
      (treatment p124 glazed)
      (available p125)
      (wood p125 walnut)
      (treatment p125 glazed)
      (available p126)
      (colour p126 black)
      (wood p126 beech)
      (surface-condition p126 smooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 mauve)
      (treatment p127 glazed)
      (available p128)
      (colour p128 red)
      (wood p128 mahogany)
      (surface-condition p128 verysmooth)
      (available p129)
      (colour p129 natural)
      (wood p129 walnut)
      (surface-condition p129 smooth)
      (treatment p129 glazed)
      (available p130)
      (colour p130 black)
      (surface-condition p130 smooth)
      (treatment p130 varnished)
      (available p131)
      (colour p131 red)
      (wood p131 walnut)
      (surface-condition p131 verysmooth)
      (available p132)
      (colour p132 natural)
      (wood p132 mahogany)
      (surface-condition p132 verysmooth)
      (treatment p132 varnished)
      (available p133)
      (colour p133 red)
      (surface-condition p133 verysmooth)
      (available p134)
      (colour p134 red)
      (wood p134 oak)
      (surface-condition p134 verysmooth)
      (treatment p134 varnished)
      (available p135)
      (colour p135 mauve)
      (wood p135 walnut)
      (surface-condition p135 verysmooth)
      (available p136)
      (wood p136 beech)
      (treatment p136 glazed)
      (available p137)
      (surface-condition p137 smooth)
      (treatment p137 glazed)
      (available p138)
      (colour p138 blue)
      (wood p138 beech)
      (surface-condition p138 verysmooth)
      (treatment p138 varnished)
      (available p139)
      (colour p139 natural)
      (surface-condition p139 smooth)
      (available p140)
      (surface-condition p140 verysmooth)
      (treatment p140 varnished)
      (available p141)
      (wood p141 mahogany)
      (surface-condition p141 smooth)
      (available p142)
      (colour p142 mauve)
      (wood p142 mahogany)
      (surface-condition p142 smooth)
      (treatment p142 glazed)
      (available p143)
      (wood p143 oak)
      (surface-condition p143 verysmooth)
      (available p144)
      (colour p144 green)
      (surface-condition p144 verysmooth)
      (available p145)
      (wood p145 mahogany)
      (surface-condition p145 verysmooth)
      (available p146)
      (colour p146 white)
      (wood p146 pine)
      (surface-condition p146 smooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 blue)
      (treatment p147 glazed)
      (available p148)
      (colour p148 white)
      (wood p148 mahogany)
      (available p149)
      (colour p149 natural)
      (surface-condition p149 smooth)
      (treatment p149 glazed)
      (available p150)
      (surface-condition p150 verysmooth)
      (treatment p150 varnished)
      (available p151)
      (wood p151 walnut)
      (surface-condition p151 smooth)
      (available p152)
      (wood p152 mahogany)
      (treatment p152 glazed)
      (available p153)
      (colour p153 red)
      (treatment p153 varnished)
      (available p154)
      (wood p154 mahogany)
      (surface-condition p154 verysmooth)
      (available p155)
      (colour p155 natural)
      (surface-condition p155 smooth)
      (available p156)
      (colour p156 white)
      (surface-condition p156 verysmooth)
      (available p157)
      (colour p157 green)
      (wood p157 walnut)
      (surface-condition p157 smooth)
      (treatment p157 glazed)
      (available p158)
      (colour p158 white)
      (surface-condition p158 smooth)
      (available p159)
      (colour p159 natural)
      (wood p159 oak)
      (surface-condition p159 smooth)
      (treatment p159 glazed)
      (available p160)
      (colour p160 blue)
      (treatment p160 glazed)
      (available p161)
      (wood p161 teak)
      (surface-condition p161 verysmooth)
      (available p162)
      (colour p162 red)
      (treatment p162 glazed)
      (available p163)
      (colour p163 black)
      (surface-condition p163 verysmooth)
      (treatment p163 glazed)
      (available p164)
      (surface-condition p164 verysmooth)
      (treatment p164 glazed)
      (available p165)
      (colour p165 red)
      (treatment p165 glazed)
      (available p166)
      (colour p166 natural)
      (wood p166 oak)
      (available p167)
      (wood p167 teak)
      (treatment p167 glazed)
      (available p168)
      (wood p168 beech)
      (treatment p168 varnished)
      (available p169)
      (surface-condition p169 smooth)
      (treatment p169 glazed)
      (available p170)
      (surface-condition p170 smooth)
      (treatment p170 varnished)
      (available p171)
      (colour p171 green)
      (wood p171 pine)
      (surface-condition p171 verysmooth)
      (treatment p171 varnished)
      (available p172)
      (colour p172 white)
      (treatment p172 glazed)
      (available p173)
      (colour p173 blue)
      (surface-condition p173 smooth)
      (available p174)
      (colour p174 mauve)
      (treatment p174 varnished)
      (available p175)
      (colour p175 black)
      (wood p175 beech)
      (surface-condition p175 smooth)
      (treatment p175 varnished)
      (available p176)
      (colour p176 blue)
      (surface-condition p176 smooth)
      (available p177)
      (colour p177 green)
      (surface-condition p177 smooth)
      (available p178)
      (wood p178 oak)
      (treatment p178 varnished)
      (available p179)
      (colour p179 white)
      (wood p179 teak)
      (available p180)
      (colour p180 black)
      (treatment p180 glazed)
      (available p181)
      (colour p181 white)
      (wood p181 oak)
      (available p182)
      (colour p182 white)
      (wood p182 beech)
      (treatment p182 glazed)
      (available p183)
      (colour p183 black)
      (wood p183 walnut)
      (surface-condition p183 verysmooth)
      (treatment p183 varnished)
      (available p184)
      (colour p184 black)
      (wood p184 cherry)
      (available p185)
      (colour p185 white)
      (treatment p185 varnished)
      (available p186)
      (colour p186 black)
      (treatment p186 glazed)
      (available p187)
      (surface-condition p187 verysmooth)
      (treatment p187 glazed)
      (available p188)
      (colour p188 mauve)
      (wood p188 mahogany)
      (surface-condition p188 smooth)
      (treatment p188 glazed)
      (available p189)
      (colour p189 blue)
      (surface-condition p189 smooth)
      (treatment p189 glazed)
      (available p190)
      (colour p190 blue)
      (surface-condition p190 smooth)
      (available p191)
      (colour p191 white)
      (wood p191 mahogany)
      (available p192)
      (colour p192 black)
      (wood p192 mahogany)
      (surface-condition p192 verysmooth)
      (treatment p192 varnished)
      (available p193)
      (colour p193 mauve)
      (surface-condition p193 smooth)
      (treatment p193 glazed)
      (available p194)
      (colour p194 black)
      (treatment p194 glazed)
      (available p195)
      (wood p195 walnut)
      (treatment p195 glazed)
      (available p196)
      (colour p196 red)
      (wood p196 mahogany)
      (surface-condition p196 verysmooth)
      (treatment p196 glazed)
      (available p197)
      (wood p197 pine)
      (surface-condition p197 smooth)
      (available p198)
      (colour p198 red)
      (wood p198 cherry)
      (surface-condition p198 verysmooth)
      (available p199)
      (colour p199 red)
      (wood p199 cherry)
      (surface-condition p199 smooth)
      (available p200)
      (wood p200 pine)
      (surface-condition p200 verysmooth)
      (treatment p200 glazed)
      (available p201)
      (wood p201 teak)
      (surface-condition p201 smooth)
      (available p202)
      (colour p202 black)
      (wood p202 beech)
      (available p203)
      (colour p203 black)
      (treatment p203 varnished)
      (available p204)
      (wood p204 pine)
      (surface-condition p204 verysmooth)
      (available p205)
      (colour p205 blue)
      (wood p205 cherry)
      (surface-condition p205 verysmooth)
      (treatment p205 varnished)
      (available p206)
      (colour p206 blue)
      (treatment p206 varnished)
      (available p207)
      (colour p207 white)
      (wood p207 oak)
      (surface-condition p207 smooth)
      (treatment p207 glazed)
      (available p208)
      (wood p208 mahogany)
      (treatment p208 glazed)
      (available p209)
      (colour p209 blue)
      (treatment p209 glazed)
      (available p210)
      (colour p210 natural)
      (wood p210 mahogany)
      (available p211)
      (wood p211 mahogany)
      (treatment p211 glazed)
    )
  )
  
)
