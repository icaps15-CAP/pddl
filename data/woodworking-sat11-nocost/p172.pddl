; woodworking task with 203 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 961497

(define (problem wood-prob-sat-172)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue mauve red white black green - acolour
    oak mahogany pine beech cherry walnut teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
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
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (available p2)
    (colour p2 red)
    (wood p2 teak)
    (surface-condition p2 smooth)
    (treatment p2 colourfragments)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 green)
    (wood p7 mahogany)
    (surface-condition p7 rough)
    (treatment p7 colourfragments)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (available p9)
    (colour p9 natural)
    (wood p9 cherry)
    (surface-condition p9 smooth)
    (treatment p9 varnished)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (available p15)
    (colour p15 black)
    (wood p15 pine)
    (surface-condition p15 verysmooth)
    (treatment p15 varnished)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (available p18)
    (colour p18 red)
    (wood p18 teak)
    (surface-condition p18 smooth)
    (treatment p18 glazed)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 white)
    (wood p20 pine)
    (surface-condition p20 rough)
    (treatment p20 glazed)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (available p26)
    (colour p26 green)
    (wood p26 cherry)
    (surface-condition p26 smooth)
    (treatment p26 varnished)
    (goalsize p26 large)
    
    
    
    
    (available p27)
    (colour p27 natural)
    (wood p27 teak)
    (surface-condition p27 rough)
    (treatment p27 varnished)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 black)
    (wood p29 pine)
    (surface-condition p29 verysmooth)
    (treatment p29 varnished)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (available p42)
    (colour p42 white)
    (wood p42 beech)
    (surface-condition p42 smooth)
    (treatment p42 glazed)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (available p44)
    (colour p44 natural)
    (wood p44 teak)
    (surface-condition p44 verysmooth)
    (treatment p44 colourfragments)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (available p48)
    (colour p48 black)
    (wood p48 beech)
    (surface-condition p48 smooth)
    (treatment p48 glazed)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (available p56)
    (colour p56 red)
    (wood p56 teak)
    (surface-condition p56 verysmooth)
    (treatment p56 glazed)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (available p63)
    (colour p63 red)
    (wood p63 mahogany)
    (surface-condition p63 smooth)
    (treatment p63 varnished)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (available p74)
    (colour p74 blue)
    (wood p74 walnut)
    (surface-condition p74 verysmooth)
    (treatment p74 glazed)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (available p82)
    (colour p82 red)
    (wood p82 oak)
    (surface-condition p82 rough)
    (treatment p82 varnished)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (available p86)
    (colour p86 mauve)
    (wood p86 beech)
    (surface-condition p86 verysmooth)
    (treatment p86 colourfragments)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (available p89)
    (colour p89 mauve)
    (wood p89 cherry)
    (surface-condition p89 smooth)
    (treatment p89 glazed)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (available p91)
    (colour p91 mauve)
    (wood p91 oak)
    (surface-condition p91 smooth)
    (treatment p91 glazed)
    (goalsize p91 large)
    
    
    
    
    (available p92)
    (colour p92 natural)
    (wood p92 teak)
    (surface-condition p92 smooth)
    (treatment p92 glazed)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (available p104)
    (colour p104 mauve)
    (wood p104 pine)
    (surface-condition p104 rough)
    (treatment p104 glazed)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (available p110)
    (colour p110 green)
    (wood p110 teak)
    (surface-condition p110 rough)
    (treatment p110 glazed)
    (goalsize p110 medium)
    
    
    
    
    (available p111)
    (colour p111 green)
    (wood p111 oak)
    (surface-condition p111 verysmooth)
    (treatment p111 varnished)
    (goalsize p111 medium)
    
    
    
    
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
    
    
    
    
    (available p118)
    (colour p118 red)
    (wood p118 pine)
    (surface-condition p118 rough)
    (treatment p118 colourfragments)
    (goalsize p118 small)
    
    
    
    
    (available p119)
    (colour p119 white)
    (wood p119 pine)
    (surface-condition p119 verysmooth)
    (treatment p119 colourfragments)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (available p123)
    (colour p123 white)
    (wood p123 oak)
    (surface-condition p123 smooth)
    (treatment p123 colourfragments)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (available p127)
    (colour p127 green)
    (wood p127 oak)
    (surface-condition p127 smooth)
    (treatment p127 varnished)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (available p135)
    (colour p135 green)
    (wood p135 teak)
    (surface-condition p135 smooth)
    (treatment p135 glazed)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (available p143)
    (colour p143 blue)
    (wood p143 cherry)
    (surface-condition p143 rough)
    (treatment p143 glazed)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (available p148)
    (colour p148 white)
    (wood p148 cherry)
    (surface-condition p148 rough)
    (treatment p148 varnished)
    (goalsize p148 small)
    
    
    
    
    (available p149)
    (colour p149 natural)
    (wood p149 mahogany)
    (surface-condition p149 smooth)
    (treatment p149 varnished)
    (goalsize p149 large)
    
    
    
    
    (available p150)
    (colour p150 black)
    (wood p150 mahogany)
    (surface-condition p150 rough)
    (treatment p150 varnished)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (available p153)
    (colour p153 white)
    (wood p153 mahogany)
    (surface-condition p153 verysmooth)
    (treatment p153 varnished)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 small)
    
    
    
    
    (available p155)
    (colour p155 natural)
    (wood p155 pine)
    (surface-condition p155 smooth)
    (treatment p155 colourfragments)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (available p160)
    (colour p160 mauve)
    (wood p160 beech)
    (surface-condition p160 smooth)
    (treatment p160 glazed)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (available p167)
    (colour p167 mauve)
    (wood p167 walnut)
    (surface-condition p167 verysmooth)
    (treatment p167 colourfragments)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 small)
    
    
    
    
    (available p172)
    (colour p172 black)
    (wood p172 beech)
    (surface-condition p172 rough)
    (treatment p172 varnished)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 medium)
    
    
    
    
    (available p178)
    (colour p178 white)
    (wood p178 teak)
    (surface-condition p178 smooth)
    (treatment p178 glazed)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 large)
    
    
    
    
    (available p181)
    (colour p181 green)
    (wood p181 beech)
    (surface-condition p181 verysmooth)
    (treatment p181 varnished)
    (goalsize p181 large)
    
    
    
    
    (available p182)
    (colour p182 natural)
    (wood p182 pine)
    (surface-condition p182 rough)
    (treatment p182 colourfragments)
    (goalsize p182 medium)
    
    
    
    
    (available p183)
    (colour p183 green)
    (wood p183 teak)
    (surface-condition p183 verysmooth)
    (treatment p183 glazed)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 small)
    
    
    
    
    (unused p185)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (available p187)
    (colour p187 mauve)
    (wood p187 walnut)
    (surface-condition p187 smooth)
    (treatment p187 colourfragments)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 large)
    
    
    
    
    (unused p190)
    (goalsize p190 large)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 small)
    
    
    
    
    (unused p193)
    (goalsize p193 large)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 small)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 medium)
    
    
    
    
    (unused p202)
    (goalsize p202 small)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s9)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s2)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s7)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
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
    (boardsize b14 s6)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s9)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s3)
    (wood b16 mahogany)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s10)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s10)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s5)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s10)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s7)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s9)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 oak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s2)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 pine)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s9)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s10)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s6)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s10)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s5)
    (wood b33 pine)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s5)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s6)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s9)
    (wood b38 walnut)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s9)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 walnut)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s8)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s5)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s7)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s8)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s7)
    (wood b45 teak)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s5)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s8)
    (wood b47 teak)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s10)
    (wood b48 teak)
    (surface-condition b48 smooth)
    (available b48)
    (boardsize b49 s9)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s6)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s8)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s7)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s7)
    (wood b53 beech)
    (surface-condition b53 smooth)
    (available b53)
    (boardsize b54 s9)
    (wood b54 beech)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s11)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s9)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s5)
    (wood b57 beech)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s5)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s8)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s2)
    (wood b60 beech)
    (surface-condition b60 rough)
    (available b60)
  )
  (:goal
    (and
      (available p0)
      (wood p0 walnut)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 black)
      (treatment p1 varnished)
      (available p2)
      (wood p2 teak)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 mauve)
      (wood p3 cherry)
      (treatment p3 glazed)
      (available p4)
      (colour p4 green)
      (wood p4 oak)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 blue)
      (wood p5 beech)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 blue)
      (wood p6 beech)
      (surface-condition p6 verysmooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 white)
      (wood p7 mahogany)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (wood p8 mahogany)
      (treatment p8 varnished)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 black)
      (wood p10 cherry)
      (available p11)
      (wood p11 beech)
      (surface-condition p11 smooth)
      (available p12)
      (colour p12 white)
      (wood p12 oak)
      (available p13)
      (wood p13 pine)
      (treatment p13 varnished)
      (available p14)
      (wood p14 walnut)
      (treatment p14 glazed)
      (available p15)
      (wood p15 pine)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 black)
      (wood p16 cherry)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 mauve)
      (wood p17 beech)
      (surface-condition p17 smooth)
      (available p18)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 blue)
      (wood p19 teak)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 red)
      (wood p20 pine)
      (treatment p20 varnished)
      (available p21)
      (wood p21 walnut)
      (treatment p21 glazed)
      (available p22)
      (colour p22 black)
      (wood p22 teak)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 blue)
      (surface-condition p23 smooth)
      (available p24)
      (colour p24 blue)
      (wood p24 mahogany)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 blue)
      (wood p25 oak)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 red)
      (treatment p26 varnished)
      (available p27)
      (wood p27 teak)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 black)
      (wood p28 walnut)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
      (available p29)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (wood p30 walnut)
      (surface-condition p30 verysmooth)
      (available p31)
      (colour p31 red)
      (wood p31 teak)
      (treatment p31 varnished)
      (available p32)
      (colour p32 mauve)
      (wood p32 pine)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 black)
      (wood p33 pine)
      (treatment p33 varnished)
      (available p34)
      (surface-condition p34 verysmooth)
      (treatment p34 glazed)
      (available p35)
      (wood p35 mahogany)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 black)
      (wood p36 mahogany)
      (available p37)
      (wood p37 teak)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (wood p38 beech)
      (surface-condition p38 smooth)
      (available p39)
      (colour p39 red)
      (wood p39 walnut)
      (surface-condition p39 verysmooth)
      (available p40)
      (wood p40 walnut)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 green)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 red)
      (surface-condition p42 verysmooth)
      (available p43)
      (wood p43 pine)
      (treatment p43 varnished)
      (available p44)
      (wood p44 teak)
      (surface-condition p44 smooth)
      (available p45)
      (wood p45 cherry)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 white)
      (wood p46 oak)
      (surface-condition p46 verysmooth)
      (available p47)
      (colour p47 black)
      (wood p47 teak)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 red)
      (wood p48 beech)
      (surface-condition p48 verysmooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 natural)
      (wood p49 beech)
      (treatment p49 glazed)
      (available p50)
      (colour p50 white)
      (wood p50 teak)
      (available p51)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (wood p52 oak)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 blue)
      (wood p53 beech)
      (available p54)
      (surface-condition p54 smooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 green)
      (wood p55 oak)
      (available p56)
      (colour p56 green)
      (wood p56 teak)
      (surface-condition p56 smooth)
      (treatment p56 varnished)
      (available p57)
      (wood p57 oak)
      (treatment p57 varnished)
      (available p58)
      (colour p58 black)
      (wood p58 walnut)
      (available p59)
      (colour p59 black)
      (wood p59 cherry)
      (available p60)
      (colour p60 green)
      (wood p60 cherry)
      (surface-condition p60 smooth)
      (available p61)
      (colour p61 mauve)
      (wood p61 mahogany)
      (surface-condition p61 smooth)
      (treatment p61 glazed)
      (available p62)
      (wood p62 beech)
      (treatment p62 glazed)
      (available p63)
      (colour p63 mauve)
      (wood p63 mahogany)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 black)
      (wood p64 teak)
      (surface-condition p64 verysmooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 white)
      (wood p65 teak)
      (surface-condition p65 smooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 white)
      (wood p66 walnut)
      (surface-condition p66 verysmooth)
      (treatment p66 glazed)
      (available p67)
      (wood p67 cherry)
      (treatment p67 varnished)
      (available p68)
      (wood p68 pine)
      (treatment p68 glazed)
      (available p69)
      (wood p69 walnut)
      (surface-condition p69 verysmooth)
      (available p70)
      (colour p70 blue)
      (wood p70 cherry)
      (surface-condition p70 smooth)
      (treatment p70 glazed)
      (available p71)
      (surface-condition p71 verysmooth)
      (treatment p71 varnished)
      (available p72)
      (colour p72 blue)
      (treatment p72 glazed)
      (available p73)
      (wood p73 mahogany)
      (treatment p73 varnished)
      (available p74)
      (colour p74 natural)
      (wood p74 walnut)
      (treatment p74 varnished)
      (available p75)
      (colour p75 natural)
      (surface-condition p75 smooth)
      (available p76)
      (colour p76 white)
      (wood p76 oak)
      (surface-condition p76 verysmooth)
      (treatment p76 varnished)
      (available p77)
      (colour p77 black)
      (wood p77 pine)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 blue)
      (wood p78 oak)
      (surface-condition p78 verysmooth)
      (treatment p78 varnished)
      (available p79)
      (colour p79 natural)
      (wood p79 oak)
      (available p80)
      (colour p80 black)
      (surface-condition p80 smooth)
      (available p81)
      (colour p81 natural)
      (wood p81 teak)
      (surface-condition p81 smooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 blue)
      (surface-condition p82 verysmooth)
      (available p83)
      (colour p83 green)
      (surface-condition p83 verysmooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 red)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 natural)
      (wood p85 teak)
      (treatment p85 glazed)
      (available p86)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 natural)
      (wood p87 pine)
      (treatment p87 glazed)
      (available p88)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 black)
      (wood p89 cherry)
      (surface-condition p89 verysmooth)
      (treatment p89 varnished)
      (available p90)
      (colour p90 green)
      (wood p90 beech)
      (surface-condition p90 smooth)
      (available p91)
      (wood p91 oak)
      (surface-condition p91 verysmooth)
      (available p92)
      (wood p92 teak)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (wood p93 cherry)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 blue)
      (wood p95 mahogany)
      (available p96)
      (surface-condition p96 smooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 black)
      (treatment p97 varnished)
      (available p98)
      (colour p98 green)
      (treatment p98 varnished)
      (available p99)
      (colour p99 natural)
      (wood p99 oak)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 green)
      (treatment p100 glazed)
      (available p101)
      (colour p101 blue)
      (treatment p101 varnished)
      (available p102)
      (wood p102 cherry)
      (surface-condition p102 smooth)
      (available p103)
      (colour p103 blue)
      (wood p103 mahogany)
      (available p104)
      (colour p104 natural)
      (wood p104 pine)
      (available p105)
      (colour p105 black)
      (wood p105 mahogany)
      (surface-condition p105 smooth)
      (treatment p105 varnished)
      (available p106)
      (colour p106 green)
      (wood p106 pine)
      (available p107)
      (wood p107 mahogany)
      (surface-condition p107 smooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 black)
      (surface-condition p108 verysmooth)
      (treatment p108 varnished)
      (available p109)
      (wood p109 cherry)
      (surface-condition p109 verysmooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 blue)
      (wood p110 teak)
      (treatment p110 glazed)
      (available p111)
      (colour p111 mauve)
      (surface-condition p111 smooth)
      (available p112)
      (colour p112 black)
      (treatment p112 glazed)
      (available p113)
      (colour p113 mauve)
      (surface-condition p113 smooth)
      (available p114)
      (colour p114 red)
      (wood p114 teak)
      (surface-condition p114 smooth)
      (treatment p114 varnished)
      (available p115)
      (colour p115 blue)
      (treatment p115 glazed)
      (available p116)
      (colour p116 natural)
      (wood p116 teak)
      (surface-condition p116 verysmooth)
      (treatment p116 glazed)
      (available p117)
      (colour p117 mauve)
      (wood p117 mahogany)
      (available p118)
      (colour p118 natural)
      (wood p118 pine)
      (available p119)
      (colour p119 red)
      (surface-condition p119 smooth)
      (available p120)
      (colour p120 green)
      (wood p120 cherry)
      (available p121)
      (colour p121 white)
      (wood p121 beech)
      (available p122)
      (colour p122 green)
      (wood p122 cherry)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (colour p123 black)
      (surface-condition p123 verysmooth)
      (available p124)
      (colour p124 natural)
      (surface-condition p124 smooth)
      (treatment p124 varnished)
      (available p125)
      (wood p125 beech)
      (surface-condition p125 smooth)
      (treatment p125 glazed)
      (available p126)
      (wood p126 cherry)
      (treatment p126 varnished)
      (available p127)
      (colour p127 white)
      (wood p127 oak)
      (available p128)
      (colour p128 black)
      (wood p128 teak)
      (surface-condition p128 verysmooth)
      (treatment p128 varnished)
      (available p129)
      (colour p129 natural)
      (wood p129 cherry)
      (surface-condition p129 smooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 red)
      (treatment p130 varnished)
      (available p131)
      (colour p131 white)
      (surface-condition p131 smooth)
      (available p132)
      (colour p132 mauve)
      (treatment p132 varnished)
      (available p133)
      (wood p133 beech)
      (surface-condition p133 smooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 mauve)
      (surface-condition p134 smooth)
      (available p135)
      (colour p135 natural)
      (wood p135 teak)
      (available p136)
      (wood p136 beech)
      (treatment p136 glazed)
      (available p137)
      (colour p137 black)
      (wood p137 teak)
      (treatment p137 varnished)
      (available p138)
      (colour p138 black)
      (wood p138 pine)
      (available p139)
      (colour p139 red)
      (wood p139 teak)
      (surface-condition p139 smooth)
      (available p140)
      (wood p140 pine)
      (treatment p140 varnished)
      (available p141)
      (wood p141 mahogany)
      (surface-condition p141 verysmooth)
      (available p142)
      (wood p142 oak)
      (treatment p142 glazed)
      (available p143)
      (colour p143 natural)
      (surface-condition p143 verysmooth)
      (treatment p143 varnished)
      (available p144)
      (colour p144 natural)
      (wood p144 oak)
      (available p145)
      (wood p145 mahogany)
      (surface-condition p145 smooth)
      (available p146)
      (colour p146 mauve)
      (wood p146 teak)
      (surface-condition p146 smooth)
      (available p147)
      (colour p147 natural)
      (treatment p147 varnished)
      (available p148)
      (surface-condition p148 verysmooth)
      (treatment p148 glazed)
      (available p149)
      (colour p149 black)
      (surface-condition p149 verysmooth)
      (available p150)
      (colour p150 mauve)
      (wood p150 mahogany)
      (surface-condition p150 verysmooth)
      (treatment p150 glazed)
      (available p151)
      (wood p151 pine)
      (treatment p151 varnished)
      (available p152)
      (surface-condition p152 smooth)
      (treatment p152 glazed)
      (available p153)
      (colour p153 blue)
      (wood p153 mahogany)
      (surface-condition p153 smooth)
      (available p154)
      (colour p154 blue)
      (wood p154 cherry)
      (available p155)
      (colour p155 blue)
      (treatment p155 varnished)
      (available p156)
      (colour p156 black)
      (wood p156 walnut)
      (surface-condition p156 verysmooth)
      (treatment p156 varnished)
      (available p157)
      (wood p157 pine)
      (treatment p157 glazed)
      (available p158)
      (colour p158 mauve)
      (wood p158 oak)
      (surface-condition p158 verysmooth)
      (treatment p158 varnished)
      (available p159)
      (colour p159 white)
      (surface-condition p159 smooth)
      (available p160)
      (surface-condition p160 verysmooth)
      (treatment p160 glazed)
      (available p161)
      (wood p161 teak)
      (treatment p161 glazed)
      (available p162)
      (colour p162 natural)
      (surface-condition p162 smooth)
      (available p163)
      (colour p163 natural)
      (wood p163 mahogany)
      (surface-condition p163 smooth)
      (treatment p163 varnished)
      (available p164)
      (colour p164 black)
      (wood p164 mahogany)
      (surface-condition p164 smooth)
      (treatment p164 glazed)
      (available p165)
      (surface-condition p165 smooth)
      (treatment p165 varnished)
      (available p166)
      (wood p166 oak)
      (surface-condition p166 smooth)
      (treatment p166 varnished)
      (available p167)
      (colour p167 natural)
      (wood p167 walnut)
      (surface-condition p167 verysmooth)
      (treatment p167 varnished)
      (available p168)
      (wood p168 oak)
      (surface-condition p168 verysmooth)
      (available p169)
      (colour p169 blue)
      (surface-condition p169 smooth)
      (available p170)
      (colour p170 blue)
      (wood p170 walnut)
      (treatment p170 glazed)
      (available p171)
      (wood p171 mahogany)
      (surface-condition p171 verysmooth)
      (treatment p171 glazed)
      (available p172)
      (colour p172 mauve)
      (treatment p172 glazed)
      (available p173)
      (colour p173 black)
      (wood p173 walnut)
      (surface-condition p173 smooth)
      (available p174)
      (colour p174 black)
      (surface-condition p174 smooth)
      (treatment p174 varnished)
      (available p175)
      (colour p175 black)
      (wood p175 walnut)
      (available p176)
      (surface-condition p176 verysmooth)
      (treatment p176 varnished)
      (available p177)
      (colour p177 green)
      (wood p177 oak)
      (surface-condition p177 smooth)
      (available p178)
      (surface-condition p178 verysmooth)
      (treatment p178 glazed)
      (available p179)
      (colour p179 mauve)
      (surface-condition p179 verysmooth)
      (treatment p179 varnished)
      (available p180)
      (wood p180 pine)
      (treatment p180 varnished)
      (available p181)
      (wood p181 beech)
      (treatment p181 glazed)
      (available p182)
      (wood p182 pine)
      (treatment p182 varnished)
      (available p183)
      (colour p183 natural)
      (wood p183 teak)
      (available p184)
      (colour p184 natural)
      (wood p184 teak)
      (surface-condition p184 verysmooth)
      (treatment p184 varnished)
      (available p185)
      (wood p185 pine)
      (treatment p185 glazed)
      (available p186)
      (surface-condition p186 verysmooth)
      (treatment p186 glazed)
      (available p187)
      (colour p187 natural)
      (surface-condition p187 smooth)
      (available p188)
      (wood p188 beech)
      (surface-condition p188 smooth)
      (treatment p188 varnished)
      (available p189)
      (colour p189 red)
      (treatment p189 glazed)
      (available p190)
      (colour p190 blue)
      (wood p190 beech)
      (surface-condition p190 verysmooth)
      (treatment p190 glazed)
      (available p191)
      (wood p191 oak)
      (surface-condition p191 verysmooth)
      (available p192)
      (colour p192 white)
      (wood p192 walnut)
      (surface-condition p192 verysmooth)
      (treatment p192 glazed)
      (available p193)
      (colour p193 blue)
      (wood p193 cherry)
      (surface-condition p193 smooth)
      (treatment p193 varnished)
      (available p194)
      (colour p194 white)
      (wood p194 beech)
      (surface-condition p194 smooth)
      (treatment p194 glazed)
      (available p195)
      (colour p195 white)
      (surface-condition p195 smooth)
      (available p196)
      (colour p196 black)
      (wood p196 mahogany)
      (treatment p196 glazed)
      (available p197)
      (wood p197 walnut)
      (treatment p197 glazed)
      (available p198)
      (colour p198 natural)
      (wood p198 pine)
      (surface-condition p198 smooth)
      (available p199)
      (wood p199 mahogany)
      (treatment p199 varnished)
      (available p200)
      (surface-condition p200 verysmooth)
      (treatment p200 varnished)
      (available p201)
      (colour p201 mauve)
      (wood p201 oak)
      (treatment p201 varnished)
      (available p202)
      (wood p202 pine)
      (surface-condition p202 verysmooth)
    )
  )
  
)
