; woodworking task with 185 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 946652

(define (problem wood-prob-sat-166)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red mauve green black blue white - acolour
    beech cherry oak teak mahogany pine walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 black)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
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
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (available p1)
    (colour p1 natural)
    (wood p1 oak)
    (surface-condition p1 rough)
    (treatment p1 colourfragments)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (available p3)
    (colour p3 black)
    (wood p3 oak)
    (surface-condition p3 verysmooth)
    (treatment p3 varnished)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (available p9)
    (colour p9 blue)
    (wood p9 teak)
    (surface-condition p9 verysmooth)
    (treatment p9 varnished)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 green)
    (wood p10 beech)
    (surface-condition p10 verysmooth)
    (treatment p10 colourfragments)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 green)
    (wood p11 teak)
    (surface-condition p11 rough)
    (treatment p11 colourfragments)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 mauve)
    (wood p12 beech)
    (surface-condition p12 verysmooth)
    (treatment p12 glazed)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 black)
    (wood p21 oak)
    (surface-condition p21 verysmooth)
    (treatment p21 glazed)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 natural)
    (wood p22 beech)
    (surface-condition p22 verysmooth)
    (treatment p22 glazed)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 green)
    (wood p24 pine)
    (surface-condition p24 verysmooth)
    (treatment p24 varnished)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (available p32)
    (colour p32 natural)
    (wood p32 teak)
    (surface-condition p32 rough)
    (treatment p32 colourfragments)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (available p45)
    (colour p45 blue)
    (wood p45 cherry)
    (surface-condition p45 rough)
    (treatment p45 colourfragments)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (available p53)
    (colour p53 green)
    (wood p53 beech)
    (surface-condition p53 smooth)
    (treatment p53 varnished)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (available p60)
    (colour p60 black)
    (wood p60 teak)
    (surface-condition p60 rough)
    (treatment p60 varnished)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 blue)
    (wood p66 oak)
    (surface-condition p66 smooth)
    (treatment p66 glazed)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (available p70)
    (colour p70 white)
    (wood p70 beech)
    (surface-condition p70 rough)
    (treatment p70 glazed)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (available p74)
    (colour p74 blue)
    (wood p74 pine)
    (surface-condition p74 rough)
    (treatment p74 colourfragments)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (available p76)
    (colour p76 blue)
    (wood p76 teak)
    (surface-condition p76 rough)
    (treatment p76 varnished)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (available p91)
    (colour p91 green)
    (wood p91 cherry)
    (surface-condition p91 rough)
    (treatment p91 colourfragments)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (available p94)
    (colour p94 mauve)
    (wood p94 mahogany)
    (surface-condition p94 verysmooth)
    (treatment p94 colourfragments)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (available p97)
    (colour p97 mauve)
    (wood p97 walnut)
    (surface-condition p97 rough)
    (treatment p97 glazed)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (available p112)
    (colour p112 mauve)
    (wood p112 oak)
    (surface-condition p112 verysmooth)
    (treatment p112 colourfragments)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
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
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (available p132)
    (colour p132 natural)
    (wood p132 mahogany)
    (surface-condition p132 verysmooth)
    (treatment p132 varnished)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (available p134)
    (colour p134 mauve)
    (wood p134 pine)
    (surface-condition p134 verysmooth)
    (treatment p134 colourfragments)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (available p142)
    (colour p142 natural)
    (wood p142 teak)
    (surface-condition p142 verysmooth)
    (treatment p142 colourfragments)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (available p148)
    (colour p148 natural)
    (wood p148 pine)
    (surface-condition p148 verysmooth)
    (treatment p148 varnished)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (available p150)
    (colour p150 blue)
    (wood p150 teak)
    (surface-condition p150 rough)
    (treatment p150 varnished)
    (goalsize p150 medium)
    
    
    
    
    (available p151)
    (colour p151 red)
    (wood p151 teak)
    (surface-condition p151 rough)
    (treatment p151 colourfragments)
    (goalsize p151 small)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (available p153)
    (colour p153 green)
    (wood p153 teak)
    (surface-condition p153 verysmooth)
    (treatment p153 varnished)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (available p155)
    (colour p155 natural)
    (wood p155 walnut)
    (surface-condition p155 smooth)
    (treatment p155 glazed)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 large)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 small)
    
    
    
    
    (unused p172)
    (goalsize p172 medium)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (available p175)
    (colour p175 mauve)
    (wood p175 walnut)
    (surface-condition p175 verysmooth)
    (treatment p175 varnished)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 small)
    
    
    
    
    (available p177)
    (colour p177 natural)
    (wood p177 pine)
    (surface-condition p177 rough)
    (treatment p177 varnished)
    (goalsize p177 large)
    
    
    
    
    (available p178)
    (colour p178 red)
    (wood p178 teak)
    (surface-condition p178 verysmooth)
    (treatment p178 glazed)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (available p180)
    (colour p180 green)
    (wood p180 pine)
    (surface-condition p180 rough)
    (treatment p180 varnished)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 large)
    
    
    
    
    (available p182)
    (colour p182 green)
    (wood p182 walnut)
    (surface-condition p182 rough)
    (treatment p182 colourfragments)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 small)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s5)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s11)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 cherry)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s5)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s11)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s6)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s9)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s4)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s4)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s6)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s7)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s7)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s9)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s6)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s9)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s11)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s8)
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
    (boardsize b31 s8)
    (wood b31 pine)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s6)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s5)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s10)
    (wood b34 walnut)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s10)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s12)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s9)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s6)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s11)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s11)
    (wood b41 walnut)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s3)
    (wood b42 walnut)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s10)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s7)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s6)
    (wood b45 teak)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s7)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s10)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s9)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s10)
    (wood b49 beech)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s6)
    (wood b50 beech)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s11)
    (wood b51 beech)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 beech)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s9)
    (wood b53 beech)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s8)
    (wood b54 beech)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s9)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (wood p0 walnut)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 green)
      (surface-condition p1 verysmooth)
      (available p2)
      (wood p2 cherry)
      (treatment p2 varnished)
      (available p3)
      (colour p3 white)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 red)
      (wood p4 oak)
      (available p5)
      (colour p5 blue)
      (treatment p5 varnished)
      (available p6)
      (colour p6 mauve)
      (wood p6 teak)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 green)
      (wood p7 walnut)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 blue)
      (treatment p8 varnished)
      (available p9)
      (colour p9 red)
      (wood p9 teak)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 mauve)
      (wood p10 beech)
      (available p11)
      (wood p11 teak)
      (surface-condition p11 smooth)
      (available p12)
      (colour p12 blue)
      (wood p12 beech)
      (surface-condition p12 smooth)
      (treatment p12 glazed)
      (available p13)
      (wood p13 walnut)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 white)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 green)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (wood p16 oak)
      (surface-condition p16 verysmooth)
      (available p17)
      (wood p17 beech)
      (treatment p17 varnished)
      (available p18)
      (colour p18 white)
      (treatment p18 varnished)
      (available p19)
      (colour p19 green)
      (wood p19 mahogany)
      (treatment p19 glazed)
      (available p20)
      (colour p20 black)
      (treatment p20 varnished)
      (available p21)
      (colour p21 blue)
      (wood p21 oak)
      (available p22)
      (colour p22 green)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 blue)
      (wood p23 walnut)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 blue)
      (wood p24 pine)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 mauve)
      (wood p25 cherry)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 black)
      (wood p26 walnut)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 green)
      (wood p27 cherry)
      (treatment p27 glazed)
      (available p28)
      (colour p28 blue)
      (surface-condition p28 smooth)
      (available p29)
      (colour p29 natural)
      (wood p29 cherry)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 black)
      (wood p30 teak)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 white)
      (wood p31 cherry)
      (treatment p31 varnished)
      (available p32)
      (colour p32 red)
      (surface-condition p32 smooth)
      (available p33)
      (wood p33 mahogany)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 blue)
      (surface-condition p34 smooth)
      (available p35)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 black)
      (treatment p36 glazed)
      (available p37)
      (colour p37 mauve)
      (treatment p37 varnished)
      (available p38)
      (surface-condition p38 verysmooth)
      (treatment p38 varnished)
      (available p39)
      (wood p39 mahogany)
      (surface-condition p39 smooth)
      (available p40)
      (wood p40 cherry)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (wood p41 teak)
      (treatment p41 varnished)
      (available p42)
      (wood p42 mahogany)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 mauve)
      (surface-condition p43 verysmooth)
      (available p44)
      (wood p44 oak)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (wood p45 cherry)
      (treatment p45 glazed)
      (available p46)
      (colour p46 black)
      (wood p46 walnut)
      (surface-condition p46 verysmooth)
      (treatment p46 glazed)
      (available p47)
      (wood p47 cherry)
      (surface-condition p47 verysmooth)
      (available p48)
      (colour p48 mauve)
      (surface-condition p48 verysmooth)
      (available p49)
      (wood p49 pine)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 blue)
      (wood p50 mahogany)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 mauve)
      (surface-condition p51 smooth)
      (available p52)
      (wood p52 pine)
      (surface-condition p52 smooth)
      (available p53)
      (wood p53 beech)
      (surface-condition p53 verysmooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 white)
      (wood p54 oak)
      (surface-condition p54 smooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 black)
      (wood p55 beech)
      (surface-condition p55 smooth)
      (available p56)
      (colour p56 natural)
      (treatment p56 varnished)
      (available p57)
      (colour p57 green)
      (wood p57 teak)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (surface-condition p58 verysmooth)
      (treatment p58 varnished)
      (available p59)
      (surface-condition p59 smooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 blue)
      (surface-condition p60 smooth)
      (available p61)
      (colour p61 black)
      (treatment p61 glazed)
      (available p62)
      (colour p62 blue)
      (surface-condition p62 smooth)
      (available p63)
      (wood p63 pine)
      (treatment p63 varnished)
      (available p64)
      (colour p64 mauve)
      (wood p64 walnut)
      (available p65)
      (colour p65 green)
      (wood p65 walnut)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 green)
      (wood p66 oak)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (surface-condition p68 verysmooth)
      (treatment p68 varnished)
      (available p69)
      (wood p69 walnut)
      (surface-condition p69 smooth)
      (available p70)
      (colour p70 blue)
      (surface-condition p70 smooth)
      (available p71)
      (colour p71 black)
      (surface-condition p71 verysmooth)
      (treatment p71 glazed)
      (available p72)
      (colour p72 black)
      (wood p72 pine)
      (available p73)
      (colour p73 blue)
      (wood p73 cherry)
      (treatment p73 glazed)
      (available p74)
      (wood p74 pine)
      (surface-condition p74 verysmooth)
      (available p75)
      (wood p75 mahogany)
      (surface-condition p75 verysmooth)
      (available p76)
      (colour p76 natural)
      (wood p76 teak)
      (available p77)
      (colour p77 red)
      (surface-condition p77 smooth)
      (available p78)
      (colour p78 black)
      (surface-condition p78 smooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 white)
      (wood p79 cherry)
      (surface-condition p79 verysmooth)
      (treatment p79 varnished)
      (available p80)
      (colour p80 black)
      (wood p80 cherry)
      (surface-condition p80 verysmooth)
      (available p81)
      (colour p81 white)
      (wood p81 beech)
      (surface-condition p81 smooth)
      (treatment p81 varnished)
      (available p82)
      (colour p82 natural)
      (wood p82 mahogany)
      (surface-condition p82 smooth)
      (available p83)
      (colour p83 green)
      (surface-condition p83 smooth)
      (available p84)
      (wood p84 walnut)
      (treatment p84 glazed)
      (available p85)
      (wood p85 oak)
      (surface-condition p85 verysmooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 black)
      (wood p86 oak)
      (surface-condition p86 verysmooth)
      (available p87)
      (colour p87 green)
      (treatment p87 varnished)
      (available p88)
      (colour p88 red)
      (wood p88 mahogany)
      (surface-condition p88 smooth)
      (available p89)
      (wood p89 walnut)
      (treatment p89 varnished)
      (available p90)
      (colour p90 green)
      (surface-condition p90 verysmooth)
      (available p91)
      (wood p91 cherry)
      (surface-condition p91 verysmooth)
      (available p92)
      (colour p92 natural)
      (treatment p92 varnished)
      (available p93)
      (wood p93 teak)
      (surface-condition p93 verysmooth)
      (available p94)
      (wood p94 mahogany)
      (surface-condition p94 smooth)
      (available p95)
      (colour p95 natural)
      (surface-condition p95 smooth)
      (treatment p95 varnished)
      (available p96)
      (wood p96 walnut)
      (surface-condition p96 verysmooth)
      (available p97)
      (colour p97 red)
      (treatment p97 varnished)
      (available p98)
      (wood p98 teak)
      (surface-condition p98 smooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 mauve)
      (surface-condition p99 verysmooth)
      (available p100)
      (colour p100 white)
      (wood p100 walnut)
      (available p101)
      (surface-condition p101 verysmooth)
      (treatment p101 varnished)
      (available p102)
      (colour p102 white)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 white)
      (surface-condition p103 verysmooth)
      (available p104)
      (colour p104 red)
      (treatment p104 varnished)
      (available p105)
      (colour p105 white)
      (wood p105 beech)
      (available p106)
      (colour p106 mauve)
      (wood p106 mahogany)
      (available p107)
      (colour p107 natural)
      (surface-condition p107 smooth)
      (available p108)
      (colour p108 black)
      (surface-condition p108 verysmooth)
      (available p109)
      (colour p109 mauve)
      (surface-condition p109 verysmooth)
      (treatment p109 glazed)
      (available p110)
      (colour p110 black)
      (wood p110 walnut)
      (treatment p110 glazed)
      (available p111)
      (colour p111 mauve)
      (wood p111 mahogany)
      (available p112)
      (colour p112 green)
      (surface-condition p112 verysmooth)
      (treatment p112 varnished)
      (available p113)
      (colour p113 white)
      (surface-condition p113 smooth)
      (available p114)
      (colour p114 green)
      (treatment p114 glazed)
      (available p115)
      (colour p115 blue)
      (wood p115 walnut)
      (available p116)
      (colour p116 white)
      (wood p116 beech)
      (surface-condition p116 verysmooth)
      (treatment p116 glazed)
      (available p117)
      (colour p117 green)
      (surface-condition p117 verysmooth)
      (treatment p117 glazed)
      (available p118)
      (wood p118 mahogany)
      (surface-condition p118 smooth)
      (available p119)
      (colour p119 white)
      (wood p119 mahogany)
      (surface-condition p119 smooth)
      (treatment p119 glazed)
      (available p120)
      (colour p120 natural)
      (wood p120 pine)
      (surface-condition p120 smooth)
      (treatment p120 varnished)
      (available p121)
      (colour p121 white)
      (wood p121 beech)
      (surface-condition p121 smooth)
      (available p122)
      (colour p122 red)
      (wood p122 cherry)
      (available p123)
      (colour p123 blue)
      (wood p123 walnut)
      (surface-condition p123 verysmooth)
      (treatment p123 varnished)
      (available p124)
      (surface-condition p124 verysmooth)
      (treatment p124 varnished)
      (available p125)
      (colour p125 red)
      (wood p125 teak)
      (available p126)
      (colour p126 black)
      (treatment p126 glazed)
      (available p127)
      (surface-condition p127 smooth)
      (treatment p127 varnished)
      (available p128)
      (colour p128 blue)
      (wood p128 cherry)
      (surface-condition p128 verysmooth)
      (treatment p128 varnished)
      (available p129)
      (wood p129 pine)
      (surface-condition p129 verysmooth)
      (available p130)
      (surface-condition p130 verysmooth)
      (treatment p130 varnished)
      (available p131)
      (wood p131 walnut)
      (surface-condition p131 verysmooth)
      (treatment p131 varnished)
      (available p132)
      (wood p132 mahogany)
      (surface-condition p132 verysmooth)
      (treatment p132 glazed)
      (available p133)
      (colour p133 black)
      (wood p133 pine)
      (available p134)
      (wood p134 pine)
      (treatment p134 glazed)
      (available p135)
      (colour p135 white)
      (surface-condition p135 verysmooth)
      (treatment p135 glazed)
      (available p136)
      (colour p136 white)
      (wood p136 beech)
      (surface-condition p136 smooth)
      (treatment p136 varnished)
      (available p137)
      (colour p137 black)
      (wood p137 teak)
      (treatment p137 glazed)
      (available p138)
      (wood p138 mahogany)
      (surface-condition p138 smooth)
      (available p139)
      (wood p139 teak)
      (treatment p139 varnished)
      (available p140)
      (wood p140 beech)
      (treatment p140 varnished)
      (available p141)
      (colour p141 white)
      (wood p141 oak)
      (treatment p141 varnished)
      (available p142)
      (surface-condition p142 verysmooth)
      (treatment p142 varnished)
      (available p143)
      (colour p143 black)
      (wood p143 pine)
      (surface-condition p143 smooth)
      (available p144)
      (colour p144 red)
      (treatment p144 varnished)
      (available p145)
      (colour p145 green)
      (treatment p145 varnished)
      (available p146)
      (colour p146 white)
      (wood p146 oak)
      (surface-condition p146 verysmooth)
      (treatment p146 varnished)
      (available p147)
      (colour p147 white)
      (treatment p147 glazed)
      (available p148)
      (colour p148 green)
      (surface-condition p148 smooth)
      (available p149)
      (colour p149 blue)
      (wood p149 beech)
      (available p150)
      (colour p150 natural)
      (wood p150 teak)
      (treatment p150 glazed)
      (available p151)
      (wood p151 teak)
      (surface-condition p151 smooth)
      (treatment p151 glazed)
      (available p152)
      (wood p152 pine)
      (surface-condition p152 smooth)
      (available p153)
      (colour p153 blue)
      (wood p153 teak)
      (surface-condition p153 verysmooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 mauve)
      (surface-condition p154 verysmooth)
      (available p155)
      (colour p155 red)
      (treatment p155 varnished)
      (available p156)
      (wood p156 oak)
      (surface-condition p156 smooth)
      (available p157)
      (surface-condition p157 verysmooth)
      (treatment p157 glazed)
      (available p158)
      (wood p158 mahogany)
      (surface-condition p158 verysmooth)
      (available p159)
      (colour p159 red)
      (wood p159 cherry)
      (available p160)
      (colour p160 natural)
      (treatment p160 varnished)
      (available p161)
      (colour p161 white)
      (wood p161 walnut)
      (surface-condition p161 verysmooth)
      (treatment p161 glazed)
      (available p162)
      (wood p162 teak)
      (treatment p162 glazed)
      (available p163)
      (wood p163 mahogany)
      (surface-condition p163 smooth)
      (treatment p163 glazed)
      (available p164)
      (colour p164 natural)
      (treatment p164 glazed)
      (available p165)
      (colour p165 natural)
      (wood p165 beech)
      (surface-condition p165 smooth)
      (treatment p165 glazed)
      (available p166)
      (colour p166 green)
      (wood p166 beech)
      (surface-condition p166 verysmooth)
      (treatment p166 glazed)
      (available p167)
      (colour p167 blue)
      (treatment p167 glazed)
      (available p168)
      (colour p168 green)
      (surface-condition p168 verysmooth)
      (available p169)
      (colour p169 red)
      (treatment p169 glazed)
      (available p170)
      (wood p170 teak)
      (treatment p170 glazed)
      (available p171)
      (colour p171 green)
      (wood p171 oak)
      (available p172)
      (wood p172 cherry)
      (treatment p172 varnished)
      (available p173)
      (colour p173 white)
      (wood p173 beech)
      (surface-condition p173 verysmooth)
      (treatment p173 varnished)
      (available p174)
      (colour p174 green)
      (surface-condition p174 smooth)
      (available p175)
      (colour p175 black)
      (surface-condition p175 smooth)
      (available p176)
      (colour p176 natural)
      (surface-condition p176 verysmooth)
      (available p177)
      (colour p177 black)
      (wood p177 pine)
      (surface-condition p177 verysmooth)
      (available p178)
      (surface-condition p178 verysmooth)
      (treatment p178 varnished)
      (available p179)
      (colour p179 mauve)
      (wood p179 beech)
      (treatment p179 glazed)
      (available p180)
      (colour p180 red)
      (wood p180 pine)
      (surface-condition p180 verysmooth)
      (treatment p180 glazed)
      (available p181)
      (colour p181 mauve)
      (wood p181 beech)
      (available p182)
      (colour p182 red)
      (surface-condition p182 verysmooth)
      (available p183)
      (colour p183 mauve)
      (wood p183 mahogany)
      (surface-condition p183 verysmooth)
      (treatment p183 glazed)
      (available p184)
      (wood p184 oak)
      (surface-condition p184 verysmooth)
    )
  )
  
)
