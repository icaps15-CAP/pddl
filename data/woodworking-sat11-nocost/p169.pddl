; woodworking task with 194 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 720533

(define (problem wood-prob-sat-169)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve white black blue green red - acolour
    teak walnut beech oak pine mahogany cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 blue)
    (wood p16 mahogany)
    (surface-condition p16 verysmooth)
    (treatment p16 colourfragments)
    (goalsize p16 small)
    
    
    
    
    (available p17)
    (colour p17 mauve)
    (wood p17 teak)
    (surface-condition p17 rough)
    (treatment p17 varnished)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 green)
    (wood p19 pine)
    (surface-condition p19 smooth)
    (treatment p19 varnished)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (available p21)
    (colour p21 natural)
    (wood p21 oak)
    (surface-condition p21 rough)
    (treatment p21 varnished)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (available p43)
    (colour p43 black)
    (wood p43 teak)
    (surface-condition p43 smooth)
    (treatment p43 glazed)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (available p52)
    (colour p52 mauve)
    (wood p52 mahogany)
    (surface-condition p52 rough)
    (treatment p52 glazed)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (available p65)
    (colour p65 red)
    (wood p65 beech)
    (surface-condition p65 smooth)
    (treatment p65 colourfragments)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (available p67)
    (colour p67 black)
    (wood p67 beech)
    (surface-condition p67 smooth)
    (treatment p67 colourfragments)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (available p69)
    (colour p69 natural)
    (wood p69 cherry)
    (surface-condition p69 rough)
    (treatment p69 colourfragments)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (available p78)
    (colour p78 blue)
    (wood p78 beech)
    (surface-condition p78 verysmooth)
    (treatment p78 varnished)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (available p87)
    (colour p87 mauve)
    (wood p87 beech)
    (surface-condition p87 rough)
    (treatment p87 varnished)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (available p98)
    (colour p98 natural)
    (wood p98 teak)
    (surface-condition p98 rough)
    (treatment p98 varnished)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (available p100)
    (colour p100 blue)
    (wood p100 oak)
    (surface-condition p100 smooth)
    (treatment p100 colourfragments)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (available p107)
    (colour p107 natural)
    (wood p107 teak)
    (surface-condition p107 rough)
    (treatment p107 glazed)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (available p119)
    (colour p119 black)
    (wood p119 mahogany)
    (surface-condition p119 smooth)
    (treatment p119 colourfragments)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (available p122)
    (colour p122 white)
    (wood p122 beech)
    (surface-condition p122 rough)
    (treatment p122 varnished)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
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
    (goalsize p133 medium)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (available p137)
    (colour p137 white)
    (wood p137 mahogany)
    (surface-condition p137 verysmooth)
    (treatment p137 glazed)
    (goalsize p137 medium)
    
    
    
    
    (available p138)
    (colour p138 natural)
    (wood p138 walnut)
    (surface-condition p138 rough)
    (treatment p138 varnished)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (available p147)
    (colour p147 natural)
    (wood p147 mahogany)
    (surface-condition p147 verysmooth)
    (treatment p147 colourfragments)
    (goalsize p147 small)
    
    
    
    
    (available p148)
    (colour p148 natural)
    (wood p148 oak)
    (surface-condition p148 verysmooth)
    (treatment p148 glazed)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (available p152)
    (colour p152 blue)
    (wood p152 cherry)
    (surface-condition p152 verysmooth)
    (treatment p152 glazed)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (available p157)
    (colour p157 natural)
    (wood p157 pine)
    (surface-condition p157 smooth)
    (treatment p157 glazed)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (available p169)
    (colour p169 white)
    (wood p169 beech)
    (surface-condition p169 smooth)
    (treatment p169 varnished)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 small)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (available p173)
    (colour p173 red)
    (wood p173 walnut)
    (surface-condition p173 smooth)
    (treatment p173 glazed)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 large)
    
    
    
    
    (unused p176)
    (goalsize p176 small)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
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
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (available p187)
    (colour p187 red)
    (wood p187 beech)
    (surface-condition p187 rough)
    (treatment p187 varnished)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (available p189)
    (colour p189 blue)
    (wood p189 pine)
    (surface-condition p189 smooth)
    (treatment p189 varnished)
    (goalsize p189 large)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (available p191)
    (colour p191 black)
    (wood p191 walnut)
    (surface-condition p191 smooth)
    (treatment p191 varnished)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 large)
    
    
    
    
    (unused p193)
    (goalsize p193 medium)
    
    
    
    
    (boardsize b0 s11)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
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
    (boardsize b5 s8)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s9)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s6)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s6)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s6)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 mahogany)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s3)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s11)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s10)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 oak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s9)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s10)
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
    (boardsize b25 s8)
    (wood b25 oak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s6)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s9)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s8)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s9)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s6)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s6)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s7)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 walnut)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s11)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s7)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s9)
    (wood b39 walnut)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s8)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s3)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s6)
    (wood b42 teak)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s9)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s5)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s5)
    (wood b45 teak)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s7)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s10)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s7)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s8)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s1)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s12)
    (wood b51 beech)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s10)
    (wood b52 beech)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s11)
    (wood b53 beech)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s11)
    (wood b54 beech)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s7)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s9)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s9)
    (wood b57 beech)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s7)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s8)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s8)
    (wood b60 beech)
    (surface-condition b60 smooth)
    (available b60)
    (boardsize b61 s5)
    (wood b61 beech)
    (surface-condition b61 rough)
    (available b61)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 mahogany)
      (available p1)
      (wood p1 teak)
      (treatment p1 glazed)
      (available p2)
      (colour p2 mauve)
      (wood p2 cherry)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (wood p3 cherry)
      (treatment p3 varnished)
      (available p4)
      (colour p4 blue)
      (treatment p4 varnished)
      (available p5)
      (colour p5 mauve)
      (wood p5 beech)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (wood p6 mahogany)
      (treatment p6 glazed)
      (available p7)
      (colour p7 blue)
      (wood p7 teak)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 red)
      (wood p8 mahogany)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (wood p9 oak)
      (treatment p9 glazed)
      (available p10)
      (wood p10 oak)
      (treatment p10 glazed)
      (available p11)
      (wood p11 teak)
      (treatment p11 varnished)
      (available p12)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 natural)
      (wood p13 teak)
      (surface-condition p13 verysmooth)
      (available p14)
      (wood p14 walnut)
      (treatment p14 varnished)
      (available p15)
      (wood p15 cherry)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 white)
      (wood p16 mahogany)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (wood p17 teak)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 cherry)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 natural)
      (wood p19 pine)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 natural)
      (wood p20 beech)
      (available p21)
      (wood p21 oak)
      (treatment p21 glazed)
      (available p22)
      (surface-condition p22 verysmooth)
      (treatment p22 varnished)
      (available p23)
      (surface-condition p23 smooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 green)
      (wood p24 pine)
      (available p25)
      (wood p25 teak)
      (surface-condition p25 smooth)
      (available p26)
      (wood p26 pine)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 green)
      (wood p27 oak)
      (available p28)
      (colour p28 black)
      (wood p28 oak)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
      (available p29)
      (wood p29 mahogany)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 blue)
      (treatment p30 varnished)
      (available p31)
      (colour p31 black)
      (wood p31 teak)
      (available p32)
      (wood p32 mahogany)
      (treatment p32 varnished)
      (available p33)
      (colour p33 white)
      (wood p33 teak)
      (available p34)
      (colour p34 green)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 white)
      (wood p35 mahogany)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (wood p36 oak)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 green)
      (surface-condition p37 verysmooth)
      (available p38)
      (colour p38 blue)
      (surface-condition p38 verysmooth)
      (available p39)
      (colour p39 red)
      (wood p39 pine)
      (surface-condition p39 smooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 blue)
      (wood p40 oak)
      (surface-condition p40 verysmooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 white)
      (treatment p41 varnished)
      (available p42)
      (colour p42 mauve)
      (wood p42 cherry)
      (available p43)
      (colour p43 white)
      (wood p43 teak)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 mauve)
      (wood p44 teak)
      (surface-condition p44 verysmooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 mauve)
      (treatment p45 glazed)
      (available p46)
      (colour p46 green)
      (wood p46 pine)
      (surface-condition p46 verysmooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 blue)
      (wood p47 oak)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (wood p48 beech)
      (treatment p48 glazed)
      (available p49)
      (colour p49 black)
      (wood p49 beech)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 natural)
      (treatment p50 glazed)
      (available p51)
      (colour p51 white)
      (wood p51 oak)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 white)
      (wood p52 mahogany)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (wood p53 beech)
      (surface-condition p53 verysmooth)
      (available p54)
      (surface-condition p54 verysmooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 red)
      (wood p55 cherry)
      (surface-condition p55 verysmooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 mauve)
      (wood p56 pine)
      (surface-condition p56 verysmooth)
      (treatment p56 varnished)
      (available p57)
      (wood p57 teak)
      (treatment p57 varnished)
      (available p58)
      (colour p58 green)
      (treatment p58 glazed)
      (available p59)
      (colour p59 blue)
      (wood p59 mahogany)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 blue)
      (wood p60 pine)
      (available p61)
      (colour p61 natural)
      (surface-condition p61 smooth)
      (available p62)
      (colour p62 white)
      (wood p62 mahogany)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (wood p63 beech)
      (treatment p63 varnished)
      (available p64)
      (wood p64 pine)
      (treatment p64 glazed)
      (available p65)
      (colour p65 green)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (wood p66 pine)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 mauve)
      (wood p67 beech)
      (surface-condition p67 verysmooth)
      (treatment p67 varnished)
      (available p68)
      (wood p68 cherry)
      (treatment p68 glazed)
      (available p69)
      (colour p69 red)
      (wood p69 cherry)
      (treatment p69 varnished)
      (available p70)
      (colour p70 black)
      (wood p70 walnut)
      (surface-condition p70 smooth)
      (treatment p70 varnished)
      (available p71)
      (wood p71 cherry)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 natural)
      (treatment p72 varnished)
      (available p73)
      (colour p73 mauve)
      (wood p73 mahogany)
      (surface-condition p73 smooth)
      (treatment p73 glazed)
      (available p74)
      (colour p74 white)
      (wood p74 beech)
      (surface-condition p74 verysmooth)
      (treatment p74 glazed)
      (available p75)
      (wood p75 cherry)
      (surface-condition p75 verysmooth)
      (available p76)
      (colour p76 black)
      (wood p76 mahogany)
      (surface-condition p76 smooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 red)
      (wood p77 cherry)
      (available p78)
      (colour p78 mauve)
      (wood p78 beech)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (surface-condition p79 verysmooth)
      (treatment p79 varnished)
      (available p80)
      (wood p80 pine)
      (treatment p80 varnished)
      (available p81)
      (colour p81 blue)
      (treatment p81 glazed)
      (available p82)
      (colour p82 white)
      (treatment p82 glazed)
      (available p83)
      (wood p83 mahogany)
      (treatment p83 glazed)
      (available p84)
      (wood p84 beech)
      (treatment p84 varnished)
      (available p85)
      (colour p85 mauve)
      (wood p85 oak)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (wood p86 walnut)
      (surface-condition p86 verysmooth)
      (treatment p86 glazed)
      (available p87)
      (surface-condition p87 smooth)
      (treatment p87 glazed)
      (available p88)
      (colour p88 blue)
      (wood p88 teak)
      (surface-condition p88 smooth)
      (treatment p88 glazed)
      (available p89)
      (wood p89 cherry)
      (surface-condition p89 smooth)
      (available p90)
      (colour p90 red)
      (wood p90 pine)
      (available p91)
      (colour p91 white)
      (wood p91 pine)
      (surface-condition p91 smooth)
      (treatment p91 glazed)
      (available p92)
      (wood p92 beech)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 red)
      (wood p93 teak)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (wood p94 oak)
      (treatment p94 varnished)
      (available p95)
      (colour p95 mauve)
      (wood p95 teak)
      (surface-condition p95 verysmooth)
      (available p96)
      (colour p96 white)
      (wood p96 oak)
      (surface-condition p96 smooth)
      (treatment p96 glazed)
      (available p97)
      (colour p97 green)
      (wood p97 beech)
      (surface-condition p97 verysmooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 black)
      (surface-condition p98 verysmooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 black)
      (treatment p99 glazed)
      (available p100)
      (surface-condition p100 verysmooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 green)
      (wood p101 beech)
      (available p102)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (wood p103 mahogany)
      (surface-condition p103 verysmooth)
      (available p104)
      (colour p104 red)
      (wood p104 walnut)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 blue)
      (treatment p105 glazed)
      (available p106)
      (surface-condition p106 verysmooth)
      (treatment p106 varnished)
      (available p107)
      (colour p107 green)
      (treatment p107 varnished)
      (available p108)
      (wood p108 pine)
      (treatment p108 glazed)
      (available p109)
      (colour p109 green)
      (wood p109 walnut)
      (surface-condition p109 smooth)
      (available p110)
      (colour p110 green)
      (wood p110 cherry)
      (surface-condition p110 verysmooth)
      (treatment p110 varnished)
      (available p111)
      (wood p111 teak)
      (treatment p111 varnished)
      (available p112)
      (colour p112 blue)
      (surface-condition p112 smooth)
      (treatment p112 varnished)
      (available p113)
      (wood p113 beech)
      (surface-condition p113 smooth)
      (available p114)
      (wood p114 oak)
      (surface-condition p114 smooth)
      (treatment p114 varnished)
      (available p115)
      (colour p115 natural)
      (wood p115 mahogany)
      (surface-condition p115 verysmooth)
      (treatment p115 glazed)
      (available p116)
      (colour p116 green)
      (treatment p116 glazed)
      (available p117)
      (wood p117 oak)
      (surface-condition p117 smooth)
      (treatment p117 glazed)
      (available p118)
      (wood p118 beech)
      (surface-condition p118 verysmooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 mauve)
      (wood p119 mahogany)
      (surface-condition p119 verysmooth)
      (treatment p119 glazed)
      (available p120)
      (colour p120 green)
      (surface-condition p120 smooth)
      (available p121)
      (wood p121 mahogany)
      (surface-condition p121 smooth)
      (treatment p121 varnished)
      (available p122)
      (colour p122 blue)
      (surface-condition p122 verysmooth)
      (treatment p122 varnished)
      (available p123)
      (colour p123 natural)
      (wood p123 pine)
      (surface-condition p123 verysmooth)
      (treatment p123 glazed)
      (available p124)
      (wood p124 cherry)
      (treatment p124 varnished)
      (available p125)
      (wood p125 beech)
      (surface-condition p125 smooth)
      (available p126)
      (surface-condition p126 verysmooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 white)
      (surface-condition p127 smooth)
      (treatment p127 varnished)
      (available p128)
      (wood p128 oak)
      (treatment p128 glazed)
      (available p129)
      (colour p129 green)
      (wood p129 walnut)
      (surface-condition p129 smooth)
      (treatment p129 glazed)
      (available p130)
      (wood p130 oak)
      (surface-condition p130 smooth)
      (available p131)
      (colour p131 black)
      (wood p131 walnut)
      (surface-condition p131 verysmooth)
      (treatment p131 varnished)
      (available p132)
      (colour p132 white)
      (wood p132 beech)
      (surface-condition p132 verysmooth)
      (treatment p132 varnished)
      (available p133)
      (colour p133 red)
      (wood p133 mahogany)
      (available p134)
      (colour p134 red)
      (wood p134 cherry)
      (surface-condition p134 smooth)
      (treatment p134 varnished)
      (available p135)
      (colour p135 red)
      (wood p135 pine)
      (available p136)
      (colour p136 black)
      (surface-condition p136 smooth)
      (treatment p136 glazed)
      (available p137)
      (wood p137 mahogany)
      (surface-condition p137 smooth)
      (available p138)
      (colour p138 mauve)
      (treatment p138 varnished)
      (available p139)
      (colour p139 red)
      (wood p139 beech)
      (available p140)
      (colour p140 black)
      (wood p140 beech)
      (surface-condition p140 verysmooth)
      (treatment p140 varnished)
      (available p141)
      (colour p141 green)
      (surface-condition p141 smooth)
      (available p142)
      (colour p142 green)
      (wood p142 cherry)
      (surface-condition p142 verysmooth)
      (treatment p142 varnished)
      (available p143)
      (surface-condition p143 smooth)
      (treatment p143 varnished)
      (available p144)
      (colour p144 mauve)
      (treatment p144 varnished)
      (available p145)
      (wood p145 pine)
      (surface-condition p145 smooth)
      (available p146)
      (colour p146 white)
      (wood p146 cherry)
      (surface-condition p146 verysmooth)
      (available p147)
      (wood p147 mahogany)
      (treatment p147 glazed)
      (available p148)
      (surface-condition p148 verysmooth)
      (treatment p148 varnished)
      (available p149)
      (colour p149 green)
      (wood p149 cherry)
      (surface-condition p149 smooth)
      (treatment p149 glazed)
      (available p150)
      (colour p150 natural)
      (wood p150 mahogany)
      (surface-condition p150 verysmooth)
      (treatment p150 glazed)
      (available p151)
      (wood p151 teak)
      (treatment p151 varnished)
      (available p152)
      (colour p152 red)
      (wood p152 cherry)
      (available p153)
      (wood p153 mahogany)
      (surface-condition p153 verysmooth)
      (available p154)
      (colour p154 mauve)
      (wood p154 beech)
      (treatment p154 glazed)
      (available p155)
      (colour p155 red)
      (surface-condition p155 verysmooth)
      (available p156)
      (wood p156 cherry)
      (treatment p156 varnished)
      (available p157)
      (colour p157 red)
      (wood p157 pine)
      (surface-condition p157 verysmooth)
      (treatment p157 glazed)
      (available p158)
      (colour p158 white)
      (wood p158 mahogany)
      (surface-condition p158 smooth)
      (treatment p158 varnished)
      (available p159)
      (surface-condition p159 verysmooth)
      (treatment p159 glazed)
      (available p160)
      (colour p160 white)
      (treatment p160 varnished)
      (available p161)
      (surface-condition p161 smooth)
      (treatment p161 varnished)
      (available p162)
      (colour p162 white)
      (wood p162 walnut)
      (surface-condition p162 verysmooth)
      (available p163)
      (colour p163 white)
      (wood p163 beech)
      (surface-condition p163 verysmooth)
      (treatment p163 glazed)
      (available p164)
      (colour p164 black)
      (wood p164 oak)
      (treatment p164 varnished)
      (available p165)
      (colour p165 red)
      (wood p165 cherry)
      (available p166)
      (colour p166 black)
      (wood p166 beech)
      (surface-condition p166 smooth)
      (treatment p166 varnished)
      (available p167)
      (colour p167 black)
      (treatment p167 varnished)
      (available p168)
      (surface-condition p168 verysmooth)
      (treatment p168 varnished)
      (available p169)
      (wood p169 beech)
      (surface-condition p169 verysmooth)
      (available p170)
      (colour p170 red)
      (wood p170 pine)
      (available p171)
      (colour p171 black)
      (surface-condition p171 smooth)
      (available p172)
      (wood p172 beech)
      (surface-condition p172 smooth)
      (available p173)
      (wood p173 walnut)
      (surface-condition p173 smooth)
      (treatment p173 varnished)
      (available p174)
      (colour p174 natural)
      (wood p174 pine)
      (available p175)
      (colour p175 black)
      (wood p175 mahogany)
      (available p176)
      (colour p176 blue)
      (treatment p176 varnished)
      (available p177)
      (colour p177 black)
      (wood p177 teak)
      (surface-condition p177 smooth)
      (treatment p177 varnished)
      (available p178)
      (colour p178 black)
      (wood p178 oak)
      (surface-condition p178 smooth)
      (treatment p178 glazed)
      (available p179)
      (wood p179 beech)
      (surface-condition p179 verysmooth)
      (available p180)
      (wood p180 walnut)
      (treatment p180 varnished)
      (available p181)
      (wood p181 pine)
      (treatment p181 varnished)
      (available p182)
      (colour p182 white)
      (wood p182 oak)
      (available p183)
      (colour p183 green)
      (surface-condition p183 verysmooth)
      (available p184)
      (colour p184 natural)
      (wood p184 teak)
      (surface-condition p184 verysmooth)
      (treatment p184 glazed)
      (available p185)
      (colour p185 mauve)
      (wood p185 mahogany)
      (surface-condition p185 smooth)
      (treatment p185 glazed)
      (available p186)
      (colour p186 natural)
      (wood p186 pine)
      (surface-condition p186 verysmooth)
      (treatment p186 glazed)
      (available p187)
      (colour p187 black)
      (surface-condition p187 smooth)
      (available p188)
      (wood p188 beech)
      (surface-condition p188 verysmooth)
      (treatment p188 glazed)
      (available p189)
      (colour p189 black)
      (surface-condition p189 smooth)
      (available p190)
      (colour p190 mauve)
      (wood p190 beech)
      (surface-condition p190 smooth)
      (treatment p190 glazed)
      (available p191)
      (colour p191 white)
      (wood p191 walnut)
      (surface-condition p191 verysmooth)
      (treatment p191 varnished)
      (available p192)
      (colour p192 white)
      (wood p192 oak)
      (surface-condition p192 verysmooth)
      (treatment p192 varnished)
      (available p193)
      (surface-condition p193 smooth)
      (treatment p193 varnished)
    )
  )
  
)
