; woodworking task with 209 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 741416

(define (problem wood-prob-sat-174)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue green mauve white black red - acolour
    teak walnut beech oak mahogany cherry pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 - board
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
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 white)
    (wood p0 walnut)
    (surface-condition p0 verysmooth)
    (treatment p0 colourfragments)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (available p2)
    (colour p2 green)
    (wood p2 mahogany)
    (surface-condition p2 smooth)
    (treatment p2 colourfragments)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (available p5)
    (colour p5 blue)
    (wood p5 teak)
    (surface-condition p5 rough)
    (treatment p5 colourfragments)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 mauve)
    (wood p6 teak)
    (surface-condition p6 smooth)
    (treatment p6 glazed)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 red)
    (wood p17 oak)
    (surface-condition p17 rough)
    (treatment p17 colourfragments)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (available p29)
    (colour p29 red)
    (wood p29 mahogany)
    (surface-condition p29 verysmooth)
    (treatment p29 glazed)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (available p44)
    (colour p44 mauve)
    (wood p44 mahogany)
    (surface-condition p44 rough)
    (treatment p44 varnished)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (available p57)
    (colour p57 mauve)
    (wood p57 cherry)
    (surface-condition p57 verysmooth)
    (treatment p57 glazed)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (available p60)
    (colour p60 mauve)
    (wood p60 cherry)
    (surface-condition p60 smooth)
    (treatment p60 colourfragments)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (available p66)
    (colour p66 green)
    (wood p66 teak)
    (surface-condition p66 smooth)
    (treatment p66 glazed)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (available p78)
    (colour p78 green)
    (wood p78 pine)
    (surface-condition p78 rough)
    (treatment p78 varnished)
    (goalsize p78 medium)
    
    
    
    
    (available p79)
    (colour p79 green)
    (wood p79 teak)
    (surface-condition p79 verysmooth)
    (treatment p79 glazed)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (available p88)
    (colour p88 white)
    (wood p88 walnut)
    (surface-condition p88 verysmooth)
    (treatment p88 varnished)
    (goalsize p88 small)
    
    
    
    
    (available p89)
    (colour p89 blue)
    (wood p89 teak)
    (surface-condition p89 smooth)
    (treatment p89 glazed)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (available p92)
    (colour p92 black)
    (wood p92 cherry)
    (surface-condition p92 smooth)
    (treatment p92 glazed)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (available p96)
    (colour p96 mauve)
    (wood p96 walnut)
    (surface-condition p96 smooth)
    (treatment p96 colourfragments)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (available p101)
    (colour p101 blue)
    (wood p101 mahogany)
    (surface-condition p101 smooth)
    (treatment p101 colourfragments)
    (goalsize p101 large)
    
    
    
    
    (available p102)
    (colour p102 white)
    (wood p102 teak)
    (surface-condition p102 verysmooth)
    (treatment p102 colourfragments)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (available p105)
    (colour p105 natural)
    (wood p105 pine)
    (surface-condition p105 smooth)
    (treatment p105 varnished)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (available p122)
    (colour p122 mauve)
    (wood p122 walnut)
    (surface-condition p122 rough)
    (treatment p122 colourfragments)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (available p131)
    (colour p131 white)
    (wood p131 pine)
    (surface-condition p131 verysmooth)
    (treatment p131 varnished)
    (goalsize p131 large)
    
    
    
    
    (available p132)
    (colour p132 blue)
    (wood p132 pine)
    (surface-condition p132 smooth)
    (treatment p132 varnished)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (available p142)
    (colour p142 natural)
    (wood p142 walnut)
    (surface-condition p142 smooth)
    (treatment p142 colourfragments)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (available p145)
    (colour p145 white)
    (wood p145 mahogany)
    (surface-condition p145 rough)
    (treatment p145 colourfragments)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (available p150)
    (colour p150 red)
    (wood p150 teak)
    (surface-condition p150 smooth)
    (treatment p150 colourfragments)
    (goalsize p150 large)
    
    
    
    
    (available p151)
    (colour p151 black)
    (wood p151 mahogany)
    (surface-condition p151 rough)
    (treatment p151 glazed)
    (goalsize p151 small)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (available p162)
    (colour p162 mauve)
    (wood p162 beech)
    (surface-condition p162 smooth)
    (treatment p162 glazed)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (available p169)
    (colour p169 mauve)
    (wood p169 oak)
    (surface-condition p169 smooth)
    (treatment p169 glazed)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 large)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 large)
    
    
    
    
    (unused p182)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (available p188)
    (colour p188 mauve)
    (wood p188 walnut)
    (surface-condition p188 verysmooth)
    (treatment p188 glazed)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 medium)
    
    
    
    
    (available p193)
    (colour p193 natural)
    (wood p193 walnut)
    (surface-condition p193 verysmooth)
    (treatment p193 varnished)
    (goalsize p193 large)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (available p195)
    (colour p195 mauve)
    (wood p195 walnut)
    (surface-condition p195 smooth)
    (treatment p195 varnished)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (available p197)
    (colour p197 mauve)
    (wood p197 teak)
    (surface-condition p197 rough)
    (treatment p197 glazed)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 medium)
    
    
    
    
    (unused p199)
    (goalsize p199 medium)
    
    
    
    
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
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s5)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s5)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s11)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s10)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s11)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s5)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s6)
    (wood b10 cherry)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s7)
    (wood b11 cherry)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s10)
    (wood b12 cherry)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 mahogany)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s7)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s10)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s10)
    (wood b18 mahogany)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s8)
    (wood b19 mahogany)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s5)
    (wood b20 mahogany)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s7)
    (wood b21 mahogany)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s8)
    (wood b22 mahogany)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s3)
    (wood b23 mahogany)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s6)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s10)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 oak)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s8)
    (wood b28 oak)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s9)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s10)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s8)
    (wood b31 oak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s3)
    (wood b32 oak)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s10)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s10)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s5)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s11)
    (wood b36 pine)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s10)
    (wood b37 pine)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s7)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s5)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s3)
    (wood b40 pine)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s9)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s9)
    (wood b42 walnut)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s8)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s9)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s8)
    (wood b45 walnut)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s8)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s8)
    (wood b47 walnut)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s5)
    (wood b48 walnut)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s4)
    (wood b49 walnut)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s9)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s11)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s10)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s7)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s9)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s7)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s7)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s8)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s9)
    (wood b58 teak)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s9)
    (wood b59 teak)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s3)
    (wood b60 teak)
    (surface-condition b60 rough)
    (available b60)
    (boardsize b61 s8)
    (wood b61 beech)
    (surface-condition b61 smooth)
    (available b61)
    (boardsize b62 s11)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s9)
    (wood b63 beech)
    (surface-condition b63 rough)
    (available b63)
    (boardsize b64 s10)
    (wood b64 beech)
    (surface-condition b64 smooth)
    (available b64)
    (boardsize b65 s3)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (wood p0 walnut)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 natural)
      (wood p1 pine)
      (available p2)
      (colour p2 red)
      (wood p2 mahogany)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 blue)
      (surface-condition p3 verysmooth)
      (available p4)
      (colour p4 red)
      (wood p4 oak)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (wood p5 teak)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 green)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 red)
      (wood p7 walnut)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (wood p8 oak)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 green)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 black)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 blue)
      (treatment p11 glazed)
      (available p12)
      (wood p12 walnut)
      (treatment p12 glazed)
      (available p13)
      (colour p13 black)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 green)
      (treatment p14 glazed)
      (available p15)
      (colour p15 natural)
      (wood p15 mahogany)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (wood p16 teak)
      (treatment p16 glazed)
      (available p17)
      (colour p17 black)
      (treatment p17 varnished)
      (available p18)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 red)
      (surface-condition p19 smooth)
      (available p20)
      (wood p20 cherry)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (wood p21 teak)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (wood p22 beech)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 black)
      (treatment p23 varnished)
      (available p24)
      (colour p24 natural)
      (wood p24 cherry)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (wood p26 cherry)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 blue)
      (wood p27 mahogany)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 green)
      (treatment p28 glazed)
      (available p29)
      (colour p29 white)
      (surface-condition p29 verysmooth)
      (available p30)
      (wood p30 teak)
      (surface-condition p30 verysmooth)
      (available p31)
      (colour p31 green)
      (wood p31 mahogany)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 natural)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 red)
      (wood p34 cherry)
      (available p35)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 blue)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 black)
      (wood p37 beech)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 mauve)
      (wood p38 pine)
      (available p39)
      (surface-condition p39 smooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 green)
      (wood p40 cherry)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 white)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 white)
      (wood p42 cherry)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 mauve)
      (wood p43 teak)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 natural)
      (treatment p44 varnished)
      (available p45)
      (colour p45 white)
      (wood p45 beech)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 mauve)
      (wood p46 cherry)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 blue)
      (treatment p47 glazed)
      (available p48)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (wood p49 oak)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 blue)
      (wood p50 cherry)
      (available p51)
      (colour p51 green)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 mauve)
      (surface-condition p52 smooth)
      (available p53)
      (wood p53 teak)
      (treatment p53 glazed)
      (available p54)
      (colour p54 white)
      (wood p54 pine)
      (treatment p54 varnished)
      (available p55)
      (colour p55 white)
      (treatment p55 varnished)
      (available p56)
      (colour p56 mauve)
      (wood p56 pine)
      (available p57)
      (colour p57 natural)
      (wood p57 cherry)
      (treatment p57 varnished)
      (available p58)
      (colour p58 white)
      (wood p58 mahogany)
      (available p59)
      (colour p59 natural)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (wood p60 cherry)
      (treatment p60 glazed)
      (available p61)
      (colour p61 natural)
      (wood p61 walnut)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 blue)
      (wood p62 pine)
      (surface-condition p62 verysmooth)
      (available p63)
      (colour p63 natural)
      (treatment p63 varnished)
      (available p64)
      (colour p64 white)
      (treatment p64 glazed)
      (available p65)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 natural)
      (wood p66 teak)
      (available p67)
      (colour p67 blue)
      (wood p67 cherry)
      (surface-condition p67 verysmooth)
      (available p68)
      (colour p68 blue)
      (wood p68 walnut)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 black)
      (surface-condition p69 smooth)
      (available p70)
      (colour p70 natural)
      (treatment p70 glazed)
      (available p71)
      (colour p71 green)
      (wood p71 teak)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (wood p72 mahogany)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 green)
      (surface-condition p73 verysmooth)
      (available p74)
      (wood p74 cherry)
      (surface-condition p74 smooth)
      (available p75)
      (colour p75 mauve)
      (wood p75 beech)
      (treatment p75 glazed)
      (available p76)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (colour p77 white)
      (surface-condition p77 verysmooth)
      (available p78)
      (colour p78 mauve)
      (treatment p78 varnished)
      (available p79)
      (wood p79 teak)
      (surface-condition p79 smooth)
      (available p80)
      (colour p80 black)
      (treatment p80 varnished)
      (available p81)
      (colour p81 green)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 white)
      (wood p82 pine)
      (surface-condition p82 smooth)
      (treatment p82 glazed)
      (available p83)
      (colour p83 white)
      (treatment p83 glazed)
      (available p84)
      (colour p84 white)
      (wood p84 walnut)
      (treatment p84 glazed)
      (available p85)
      (colour p85 white)
      (wood p85 mahogany)
      (available p86)
      (colour p86 green)
      (wood p86 cherry)
      (surface-condition p86 smooth)
      (available p87)
      (colour p87 white)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 red)
      (treatment p88 glazed)
      (available p89)
      (wood p89 teak)
      (treatment p89 varnished)
      (available p90)
      (colour p90 black)
      (wood p90 oak)
      (surface-condition p90 smooth)
      (available p91)
      (wood p91 walnut)
      (surface-condition p91 verysmooth)
      (treatment p91 varnished)
      (available p92)
      (colour p92 natural)
      (wood p92 cherry)
      (surface-condition p92 verysmooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 white)
      (wood p93 oak)
      (treatment p93 varnished)
      (available p94)
      (colour p94 green)
      (wood p94 cherry)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (wood p95 beech)
      (surface-condition p95 smooth)
      (available p96)
      (colour p96 green)
      (wood p96 walnut)
      (available p97)
      (colour p97 green)
      (wood p97 pine)
      (surface-condition p97 smooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 green)
      (surface-condition p98 verysmooth)
      (treatment p98 glazed)
      (available p99)
      (colour p99 blue)
      (wood p99 oak)
      (treatment p99 varnished)
      (available p100)
      (colour p100 red)
      (surface-condition p100 verysmooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 green)
      (surface-condition p101 smooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 natural)
      (surface-condition p102 verysmooth)
      (available p103)
      (colour p103 blue)
      (treatment p103 glazed)
      (available p104)
      (wood p104 walnut)
      (surface-condition p104 verysmooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 green)
      (wood p105 pine)
      (surface-condition p105 verysmooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 natural)
      (wood p106 mahogany)
      (surface-condition p106 smooth)
      (treatment p106 glazed)
      (available p107)
      (colour p107 green)
      (wood p107 mahogany)
      (available p108)
      (colour p108 red)
      (wood p108 mahogany)
      (available p109)
      (colour p109 blue)
      (wood p109 cherry)
      (surface-condition p109 smooth)
      (treatment p109 glazed)
      (available p110)
      (colour p110 green)
      (wood p110 cherry)
      (treatment p110 glazed)
      (available p111)
      (colour p111 green)
      (treatment p111 glazed)
      (available p112)
      (colour p112 blue)
      (wood p112 mahogany)
      (surface-condition p112 smooth)
      (available p113)
      (wood p113 teak)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (wood p114 teak)
      (surface-condition p114 verysmooth)
      (available p115)
      (colour p115 blue)
      (wood p115 cherry)
      (surface-condition p115 verysmooth)
      (treatment p115 varnished)
      (available p116)
      (colour p116 green)
      (treatment p116 glazed)
      (available p117)
      (colour p117 blue)
      (wood p117 teak)
      (surface-condition p117 smooth)
      (available p118)
      (colour p118 blue)
      (wood p118 oak)
      (surface-condition p118 smooth)
      (available p119)
      (wood p119 teak)
      (surface-condition p119 smooth)
      (available p120)
      (surface-condition p120 verysmooth)
      (treatment p120 glazed)
      (available p121)
      (colour p121 white)
      (wood p121 pine)
      (surface-condition p121 smooth)
      (treatment p121 varnished)
      (available p122)
      (colour p122 red)
      (treatment p122 varnished)
      (available p123)
      (colour p123 mauve)
      (wood p123 teak)
      (surface-condition p123 smooth)
      (available p124)
      (wood p124 cherry)
      (treatment p124 varnished)
      (available p125)
      (colour p125 blue)
      (treatment p125 varnished)
      (available p126)
      (colour p126 green)
      (wood p126 cherry)
      (treatment p126 glazed)
      (available p127)
      (colour p127 blue)
      (wood p127 oak)
      (available p128)
      (colour p128 red)
      (wood p128 mahogany)
      (surface-condition p128 verysmooth)
      (treatment p128 glazed)
      (available p129)
      (wood p129 oak)
      (treatment p129 glazed)
      (available p130)
      (wood p130 teak)
      (surface-condition p130 verysmooth)
      (available p131)
      (wood p131 pine)
      (surface-condition p131 smooth)
      (available p132)
      (colour p132 white)
      (wood p132 pine)
      (surface-condition p132 verysmooth)
      (treatment p132 varnished)
      (available p133)
      (wood p133 teak)
      (treatment p133 glazed)
      (available p134)
      (colour p134 mauve)
      (wood p134 beech)
      (surface-condition p134 verysmooth)
      (treatment p134 glazed)
      (available p135)
      (wood p135 pine)
      (treatment p135 glazed)
      (available p136)
      (colour p136 blue)
      (surface-condition p136 smooth)
      (available p137)
      (colour p137 green)
      (surface-condition p137 verysmooth)
      (available p138)
      (wood p138 mahogany)
      (treatment p138 varnished)
      (available p139)
      (colour p139 mauve)
      (surface-condition p139 smooth)
      (available p140)
      (wood p140 cherry)
      (treatment p140 glazed)
      (available p141)
      (colour p141 red)
      (surface-condition p141 smooth)
      (available p142)
      (wood p142 walnut)
      (treatment p142 varnished)
      (available p143)
      (wood p143 mahogany)
      (treatment p143 varnished)
      (available p144)
      (wood p144 mahogany)
      (treatment p144 glazed)
      (available p145)
      (wood p145 mahogany)
      (surface-condition p145 smooth)
      (available p146)
      (wood p146 teak)
      (treatment p146 glazed)
      (available p147)
      (colour p147 natural)
      (wood p147 mahogany)
      (treatment p147 glazed)
      (available p148)
      (wood p148 pine)
      (treatment p148 varnished)
      (available p149)
      (surface-condition p149 smooth)
      (treatment p149 glazed)
      (available p150)
      (colour p150 blue)
      (surface-condition p150 verysmooth)
      (treatment p150 varnished)
      (available p151)
      (colour p151 white)
      (wood p151 mahogany)
      (surface-condition p151 verysmooth)
      (treatment p151 varnished)
      (available p152)
      (colour p152 green)
      (wood p152 walnut)
      (surface-condition p152 smooth)
      (treatment p152 glazed)
      (available p153)
      (colour p153 mauve)
      (wood p153 beech)
      (surface-condition p153 verysmooth)
      (treatment p153 varnished)
      (available p154)
      (wood p154 cherry)
      (surface-condition p154 verysmooth)
      (available p155)
      (surface-condition p155 smooth)
      (treatment p155 varnished)
      (available p156)
      (colour p156 green)
      (treatment p156 varnished)
      (available p157)
      (colour p157 green)
      (wood p157 teak)
      (available p158)
      (colour p158 black)
      (wood p158 oak)
      (surface-condition p158 verysmooth)
      (available p159)
      (colour p159 natural)
      (surface-condition p159 smooth)
      (treatment p159 glazed)
      (available p160)
      (wood p160 beech)
      (treatment p160 glazed)
      (available p161)
      (colour p161 red)
      (wood p161 cherry)
      (available p162)
      (wood p162 beech)
      (treatment p162 varnished)
      (available p163)
      (colour p163 natural)
      (wood p163 pine)
      (available p164)
      (surface-condition p164 verysmooth)
      (treatment p164 glazed)
      (available p165)
      (colour p165 mauve)
      (wood p165 pine)
      (surface-condition p165 smooth)
      (treatment p165 glazed)
      (available p166)
      (colour p166 mauve)
      (treatment p166 varnished)
      (available p167)
      (colour p167 white)
      (wood p167 cherry)
      (treatment p167 varnished)
      (available p168)
      (wood p168 walnut)
      (treatment p168 glazed)
      (available p169)
      (colour p169 green)
      (surface-condition p169 smooth)
      (available p170)
      (colour p170 mauve)
      (wood p170 oak)
      (surface-condition p170 smooth)
      (treatment p170 glazed)
      (available p171)
      (colour p171 white)
      (wood p171 oak)
      (surface-condition p171 verysmooth)
      (treatment p171 varnished)
      (available p172)
      (colour p172 natural)
      (wood p172 cherry)
      (available p173)
      (colour p173 red)
      (wood p173 pine)
      (surface-condition p173 smooth)
      (treatment p173 varnished)
      (available p174)
      (colour p174 mauve)
      (surface-condition p174 smooth)
      (treatment p174 varnished)
      (available p175)
      (colour p175 mauve)
      (wood p175 cherry)
      (available p176)
      (surface-condition p176 verysmooth)
      (treatment p176 varnished)
      (available p177)
      (wood p177 teak)
      (surface-condition p177 smooth)
      (available p178)
      (wood p178 pine)
      (surface-condition p178 verysmooth)
      (available p179)
      (colour p179 mauve)
      (wood p179 walnut)
      (surface-condition p179 smooth)
      (treatment p179 varnished)
      (available p180)
      (wood p180 oak)
      (treatment p180 glazed)
      (available p181)
      (colour p181 natural)
      (wood p181 cherry)
      (surface-condition p181 smooth)
      (available p182)
      (wood p182 cherry)
      (treatment p182 glazed)
      (available p183)
      (wood p183 pine)
      (surface-condition p183 verysmooth)
      (available p184)
      (wood p184 pine)
      (surface-condition p184 verysmooth)
      (available p185)
      (colour p185 black)
      (wood p185 oak)
      (surface-condition p185 smooth)
      (treatment p185 varnished)
      (available p186)
      (colour p186 black)
      (wood p186 mahogany)
      (surface-condition p186 verysmooth)
      (treatment p186 varnished)
      (available p187)
      (surface-condition p187 verysmooth)
      (treatment p187 glazed)
      (available p188)
      (surface-condition p188 smooth)
      (treatment p188 varnished)
      (available p189)
      (colour p189 natural)
      (surface-condition p189 verysmooth)
      (available p190)
      (colour p190 mauve)
      (treatment p190 glazed)
      (available p191)
      (wood p191 teak)
      (treatment p191 varnished)
      (available p192)
      (colour p192 red)
      (wood p192 oak)
      (surface-condition p192 smooth)
      (treatment p192 varnished)
      (available p193)
      (colour p193 mauve)
      (wood p193 walnut)
      (surface-condition p193 verysmooth)
      (treatment p193 glazed)
      (available p194)
      (colour p194 red)
      (wood p194 teak)
      (surface-condition p194 verysmooth)
      (treatment p194 glazed)
      (available p195)
      (wood p195 walnut)
      (surface-condition p195 verysmooth)
      (available p196)
      (colour p196 natural)
      (wood p196 mahogany)
      (surface-condition p196 smooth)
      (treatment p196 varnished)
      (available p197)
      (colour p197 white)
      (surface-condition p197 verysmooth)
      (available p198)
      (colour p198 red)
      (wood p198 beech)
      (treatment p198 glazed)
      (available p199)
      (colour p199 blue)
      (wood p199 pine)
      (surface-condition p199 verysmooth)
      (treatment p199 glazed)
      (available p200)
      (surface-condition p200 verysmooth)
      (treatment p200 glazed)
      (available p201)
      (colour p201 red)
      (wood p201 cherry)
      (surface-condition p201 verysmooth)
      (treatment p201 glazed)
      (available p202)
      (wood p202 cherry)
      (treatment p202 glazed)
      (available p203)
      (surface-condition p203 verysmooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 black)
      (treatment p204 varnished)
      (available p205)
      (colour p205 white)
      (wood p205 cherry)
      (available p206)
      (wood p206 walnut)
      (treatment p206 glazed)
      (available p207)
      (colour p207 green)
      (wood p207 teak)
      (surface-condition p207 smooth)
      (treatment p207 varnished)
      (available p208)
      (wood p208 mahogany)
      (treatment p208 glazed)
    )
  )
  
)
