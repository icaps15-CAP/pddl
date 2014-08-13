; woodworking task with 188 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 166930

(define (problem wood-prob-sat-167)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green black blue red mauve white - acolour
    beech mahogany oak walnut pine cherry teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 - board
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
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 mauve)
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
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 mauve)
    (wood p6 pine)
    (surface-condition p6 rough)
    (treatment p6 glazed)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (available p10)
    (colour p10 green)
    (wood p10 teak)
    (surface-condition p10 verysmooth)
    (treatment p10 varnished)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (available p14)
    (colour p14 natural)
    (wood p14 cherry)
    (surface-condition p14 smooth)
    (treatment p14 varnished)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 black)
    (wood p17 beech)
    (surface-condition p17 verysmooth)
    (treatment p17 glazed)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 red)
    (wood p21 mahogany)
    (surface-condition p21 rough)
    (treatment p21 glazed)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 black)
    (wood p27 mahogany)
    (surface-condition p27 smooth)
    (treatment p27 colourfragments)
    (goalsize p27 medium)
    
    
    
    
    (available p28)
    (colour p28 natural)
    (wood p28 oak)
    (surface-condition p28 verysmooth)
    (treatment p28 glazed)
    (goalsize p28 small)
    
    
    
    
    (available p29)
    (colour p29 black)
    (wood p29 cherry)
    (surface-condition p29 rough)
    (treatment p29 glazed)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (available p34)
    (colour p34 natural)
    (wood p34 beech)
    (surface-condition p34 verysmooth)
    (treatment p34 colourfragments)
    (goalsize p34 large)
    
    
    
    
    (available p35)
    (colour p35 green)
    (wood p35 beech)
    (surface-condition p35 verysmooth)
    (treatment p35 glazed)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (available p48)
    (colour p48 natural)
    (wood p48 mahogany)
    (surface-condition p48 rough)
    (treatment p48 varnished)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (available p50)
    (colour p50 black)
    (wood p50 cherry)
    (surface-condition p50 verysmooth)
    (treatment p50 varnished)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (available p53)
    (colour p53 mauve)
    (wood p53 mahogany)
    (surface-condition p53 smooth)
    (treatment p53 colourfragments)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (available p57)
    (colour p57 natural)
    (wood p57 oak)
    (surface-condition p57 verysmooth)
    (treatment p57 varnished)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (available p66)
    (colour p66 red)
    (wood p66 cherry)
    (surface-condition p66 rough)
    (treatment p66 varnished)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (available p70)
    (colour p70 natural)
    (wood p70 mahogany)
    (surface-condition p70 smooth)
    (treatment p70 varnished)
    (goalsize p70 large)
    
    
    
    
    (available p71)
    (colour p71 natural)
    (wood p71 teak)
    (surface-condition p71 verysmooth)
    (treatment p71 glazed)
    (goalsize p71 small)
    
    
    
    
    (available p72)
    (colour p72 black)
    (wood p72 beech)
    (surface-condition p72 rough)
    (treatment p72 glazed)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (available p76)
    (colour p76 black)
    (wood p76 beech)
    (surface-condition p76 rough)
    (treatment p76 glazed)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (available p79)
    (colour p79 red)
    (wood p79 walnut)
    (surface-condition p79 rough)
    (treatment p79 glazed)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (available p81)
    (colour p81 red)
    (wood p81 beech)
    (surface-condition p81 rough)
    (treatment p81 colourfragments)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (available p85)
    (colour p85 green)
    (wood p85 walnut)
    (surface-condition p85 rough)
    (treatment p85 colourfragments)
    (goalsize p85 medium)
    
    
    
    
    (available p86)
    (colour p86 red)
    (wood p86 oak)
    (surface-condition p86 verysmooth)
    (treatment p86 glazed)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (available p93)
    (colour p93 mauve)
    (wood p93 mahogany)
    (surface-condition p93 smooth)
    (treatment p93 colourfragments)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (available p107)
    (colour p107 white)
    (wood p107 beech)
    (surface-condition p107 rough)
    (treatment p107 varnished)
    (goalsize p107 small)
    
    
    
    
    (available p108)
    (colour p108 blue)
    (wood p108 mahogany)
    (surface-condition p108 smooth)
    (treatment p108 glazed)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (available p111)
    (colour p111 natural)
    (wood p111 pine)
    (surface-condition p111 verysmooth)
    (treatment p111 colourfragments)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (available p121)
    (colour p121 red)
    (wood p121 oak)
    (surface-condition p121 smooth)
    (treatment p121 glazed)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (available p125)
    (colour p125 natural)
    (wood p125 cherry)
    (surface-condition p125 verysmooth)
    (treatment p125 colourfragments)
    (goalsize p125 large)
    
    
    
    
    (available p126)
    (colour p126 mauve)
    (wood p126 pine)
    (surface-condition p126 smooth)
    (treatment p126 glazed)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 large)
    
    
    
    
    (available p129)
    (colour p129 red)
    (wood p129 walnut)
    (surface-condition p129 rough)
    (treatment p129 glazed)
    (goalsize p129 large)
    
    
    
    
    (available p130)
    (colour p130 white)
    (wood p130 walnut)
    (surface-condition p130 rough)
    (treatment p130 varnished)
    (goalsize p130 small)
    
    
    
    
    (available p131)
    (colour p131 blue)
    (wood p131 mahogany)
    (surface-condition p131 smooth)
    (treatment p131 varnished)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (available p134)
    (colour p134 green)
    (wood p134 mahogany)
    (surface-condition p134 smooth)
    (treatment p134 glazed)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (available p138)
    (colour p138 black)
    (wood p138 teak)
    (surface-condition p138 verysmooth)
    (treatment p138 varnished)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (available p142)
    (colour p142 white)
    (wood p142 oak)
    (surface-condition p142 rough)
    (treatment p142 colourfragments)
    (goalsize p142 large)
    
    
    
    
    (available p143)
    (colour p143 white)
    (wood p143 cherry)
    (surface-condition p143 smooth)
    (treatment p143 glazed)
    (goalsize p143 large)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (available p145)
    (colour p145 black)
    (wood p145 walnut)
    (surface-condition p145 rough)
    (treatment p145 glazed)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (unused p148)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (available p151)
    (colour p151 red)
    (wood p151 beech)
    (surface-condition p151 verysmooth)
    (treatment p151 colourfragments)
    (goalsize p151 small)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (available p154)
    (colour p154 natural)
    (wood p154 walnut)
    (surface-condition p154 smooth)
    (treatment p154 colourfragments)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (available p156)
    (colour p156 red)
    (wood p156 walnut)
    (surface-condition p156 smooth)
    (treatment p156 colourfragments)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 medium)
    
    
    
    
    (available p158)
    (colour p158 black)
    (wood p158 beech)
    (surface-condition p158 verysmooth)
    (treatment p158 colourfragments)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (unused p160)
    (goalsize p160 small)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (available p162)
    (colour p162 blue)
    (wood p162 pine)
    (surface-condition p162 verysmooth)
    (treatment p162 colourfragments)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (available p165)
    (colour p165 blue)
    (wood p165 beech)
    (surface-condition p165 rough)
    (treatment p165 colourfragments)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (available p175)
    (colour p175 natural)
    (wood p175 oak)
    (surface-condition p175 rough)
    (treatment p175 colourfragments)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 large)
    
    
    
    
    (available p182)
    (colour p182 black)
    (wood p182 cherry)
    (surface-condition p182 rough)
    (treatment p182 varnished)
    (goalsize p182 small)
    
    
    
    
    (available p183)
    (colour p183 green)
    (wood p183 walnut)
    (surface-condition p183 rough)
    (treatment p183 glazed)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (unused p185)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 medium)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s6)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s9)
    (wood b12 mahogany)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s5)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s6)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s5)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s5)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 oak)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s5)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 oak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s6)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s6)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s11)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s5)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 pine)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s10)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s5)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 walnut)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s8)
    (wood b31 walnut)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s9)
    (wood b32 walnut)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s8)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s7)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s2)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s10)
    (wood b36 teak)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 teak)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s7)
    (wood b38 teak)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s10)
    (wood b39 teak)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s10)
    (wood b40 teak)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s7)
    (wood b41 teak)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s9)
    (wood b42 teak)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s9)
    (wood b43 teak)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s9)
    (wood b44 beech)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s9)
    (wood b45 beech)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s8)
    (wood b46 beech)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s9)
    (wood b47 beech)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s7)
    (wood b48 beech)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s6)
    (wood b49 beech)
    (surface-condition b49 smooth)
    (available b49)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (wood p0 mahogany)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 white)
      (wood p1 oak)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 black)
      (treatment p2 varnished)
      (available p3)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 mauve)
      (wood p4 beech)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 mauve)
      (treatment p5 glazed)
      (available p6)
      (colour p6 blue)
      (wood p6 pine)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 natural)
      (wood p7 walnut)
      (treatment p7 varnished)
      (available p8)
      (colour p8 natural)
      (wood p8 cherry)
      (surface-condition p8 verysmooth)
      (available p9)
      (colour p9 red)
      (wood p9 oak)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 white)
      (treatment p10 glazed)
      (available p11)
      (colour p11 white)
      (wood p11 teak)
      (available p12)
      (colour p12 red)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (wood p13 cherry)
      (treatment p13 glazed)
      (available p14)
      (colour p14 white)
      (wood p14 cherry)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 green)
      (wood p15 teak)
      (available p16)
      (colour p16 red)
      (treatment p16 varnished)
      (available p17)
      (colour p17 white)
      (treatment p17 varnished)
      (available p18)
      (colour p18 green)
      (treatment p18 varnished)
      (available p19)
      (colour p19 red)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 green)
      (treatment p20 glazed)
      (available p21)
      (colour p21 green)
      (wood p21 mahogany)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 white)
      (wood p23 beech)
      (available p24)
      (colour p24 black)
      (wood p24 oak)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 black)
      (wood p25 beech)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 natural)
      (wood p26 beech)
      (treatment p26 varnished)
      (available p27)
      (colour p27 red)
      (wood p27 mahogany)
      (treatment p27 glazed)
      (available p28)
      (colour p28 green)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 white)
      (wood p29 cherry)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 black)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 natural)
      (wood p31 teak)
      (available p32)
      (colour p32 black)
      (wood p32 cherry)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 green)
      (wood p33 oak)
      (surface-condition p33 smooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 red)
      (wood p34 beech)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 blue)
      (wood p35 beech)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 blue)
      (wood p36 teak)
      (treatment p36 glazed)
      (available p37)
      (colour p37 white)
      (wood p37 teak)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 blue)
      (treatment p38 glazed)
      (available p39)
      (wood p39 mahogany)
      (surface-condition p39 smooth)
      (available p40)
      (colour p40 blue)
      (treatment p40 glazed)
      (available p41)
      (wood p41 pine)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 mauve)
      (wood p42 oak)
      (surface-condition p42 smooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 natural)
      (wood p43 cherry)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (wood p44 oak)
      (treatment p44 glazed)
      (available p45)
      (colour p45 black)
      (treatment p45 glazed)
      (available p46)
      (colour p46 blue)
      (wood p46 pine)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 black)
      (wood p47 teak)
      (treatment p47 varnished)
      (available p48)
      (colour p48 blue)
      (wood p48 mahogany)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 mauve)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 green)
      (wood p50 cherry)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 blue)
      (treatment p51 varnished)
      (available p52)
      (colour p52 mauve)
      (surface-condition p52 verysmooth)
      (available p53)
      (wood p53 mahogany)
      (treatment p53 glazed)
      (available p54)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 natural)
      (wood p55 teak)
      (surface-condition p55 verysmooth)
      (treatment p55 glazed)
      (available p56)
      (wood p56 walnut)
      (treatment p56 glazed)
      (available p57)
      (colour p57 mauve)
      (wood p57 oak)
      (available p58)
      (wood p58 oak)
      (surface-condition p58 verysmooth)
      (available p59)
      (colour p59 natural)
      (wood p59 pine)
      (surface-condition p59 smooth)
      (available p60)
      (wood p60 teak)
      (surface-condition p60 smooth)
      (treatment p60 glazed)
      (available p61)
      (colour p61 mauve)
      (surface-condition p61 smooth)
      (treatment p61 glazed)
      (available p62)
      (colour p62 red)
      (wood p62 cherry)
      (available p63)
      (colour p63 blue)
      (surface-condition p63 smooth)
      (available p64)
      (colour p64 green)
      (wood p64 oak)
      (treatment p64 varnished)
      (available p65)
      (colour p65 black)
      (surface-condition p65 verysmooth)
      (available p66)
      (colour p66 blue)
      (surface-condition p66 verysmooth)
      (available p67)
      (colour p67 red)
      (surface-condition p67 verysmooth)
      (available p68)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 black)
      (wood p69 cherry)
      (treatment p69 varnished)
      (available p70)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 white)
      (treatment p71 glazed)
      (available p72)
      (colour p72 white)
      (surface-condition p72 smooth)
      (available p73)
      (colour p73 blue)
      (wood p73 mahogany)
      (available p74)
      (colour p74 mauve)
      (treatment p74 glazed)
      (available p75)
      (colour p75 white)
      (surface-condition p75 verysmooth)
      (treatment p75 varnished)
      (available p76)
      (colour p76 white)
      (wood p76 beech)
      (surface-condition p76 verysmooth)
      (treatment p76 varnished)
      (available p77)
      (wood p77 mahogany)
      (treatment p77 varnished)
      (available p78)
      (colour p78 green)
      (wood p78 mahogany)
      (available p79)
      (surface-condition p79 verysmooth)
      (treatment p79 glazed)
      (available p80)
      (surface-condition p80 verysmooth)
      (treatment p80 glazed)
      (available p81)
      (wood p81 beech)
      (treatment p81 varnished)
      (available p82)
      (colour p82 natural)
      (wood p82 pine)
      (treatment p82 glazed)
      (available p83)
      (wood p83 mahogany)
      (treatment p83 varnished)
      (available p84)
      (colour p84 blue)
      (wood p84 pine)
      (surface-condition p84 verysmooth)
      (treatment p84 varnished)
      (available p85)
      (wood p85 walnut)
      (treatment p85 glazed)
      (available p86)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (wood p87 pine)
      (treatment p87 glazed)
      (available p88)
      (wood p88 pine)
      (treatment p88 glazed)
      (available p89)
      (colour p89 green)
      (surface-condition p89 verysmooth)
      (available p90)
      (surface-condition p90 smooth)
      (treatment p90 glazed)
      (available p91)
      (colour p91 blue)
      (wood p91 pine)
      (available p92)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (wood p93 mahogany)
      (surface-condition p93 verysmooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 blue)
      (wood p94 mahogany)
      (surface-condition p94 verysmooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 natural)
      (wood p95 teak)
      (surface-condition p95 verysmooth)
      (available p96)
      (surface-condition p96 smooth)
      (treatment p96 varnished)
      (available p97)
      (wood p97 teak)
      (surface-condition p97 verysmooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 black)
      (treatment p98 varnished)
      (available p99)
      (colour p99 mauve)
      (wood p99 walnut)
      (surface-condition p99 verysmooth)
      (available p100)
      (colour p100 blue)
      (wood p100 teak)
      (surface-condition p100 smooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 natural)
      (wood p101 teak)
      (surface-condition p101 smooth)
      (treatment p101 glazed)
      (available p102)
      (wood p102 teak)
      (surface-condition p102 verysmooth)
      (available p103)
      (colour p103 red)
      (wood p103 pine)
      (surface-condition p103 verysmooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 green)
      (surface-condition p104 smooth)
      (available p105)
      (colour p105 blue)
      (wood p105 oak)
      (surface-condition p105 smooth)
      (treatment p105 glazed)
      (available p106)
      (wood p106 cherry)
      (treatment p106 varnished)
      (available p107)
      (colour p107 red)
      (wood p107 beech)
      (surface-condition p107 smooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 natural)
      (wood p108 mahogany)
      (surface-condition p108 verysmooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 green)
      (wood p109 oak)
      (treatment p109 varnished)
      (available p110)
      (colour p110 blue)
      (surface-condition p110 smooth)
      (treatment p110 glazed)
      (available p111)
      (wood p111 pine)
      (treatment p111 glazed)
      (available p112)
      (colour p112 white)
      (surface-condition p112 smooth)
      (available p113)
      (colour p113 natural)
      (wood p113 teak)
      (available p114)
      (wood p114 oak)
      (treatment p114 glazed)
      (available p115)
      (colour p115 natural)
      (surface-condition p115 verysmooth)
      (available p116)
      (colour p116 natural)
      (wood p116 cherry)
      (surface-condition p116 verysmooth)
      (treatment p116 varnished)
      (available p117)
      (colour p117 white)
      (wood p117 oak)
      (surface-condition p117 verysmooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 red)
      (wood p118 beech)
      (surface-condition p118 verysmooth)
      (treatment p118 varnished)
      (available p119)
      (wood p119 walnut)
      (treatment p119 varnished)
      (available p120)
      (colour p120 red)
      (treatment p120 glazed)
      (available p121)
      (colour p121 green)
      (wood p121 oak)
      (surface-condition p121 verysmooth)
      (treatment p121 glazed)
      (available p122)
      (wood p122 walnut)
      (treatment p122 glazed)
      (available p123)
      (colour p123 mauve)
      (surface-condition p123 smooth)
      (treatment p123 glazed)
      (available p124)
      (colour p124 mauve)
      (surface-condition p124 smooth)
      (available p125)
      (surface-condition p125 verysmooth)
      (treatment p125 glazed)
      (available p126)
      (colour p126 red)
      (surface-condition p126 smooth)
      (available p127)
      (wood p127 mahogany)
      (treatment p127 glazed)
      (available p128)
      (colour p128 mauve)
      (surface-condition p128 verysmooth)
      (treatment p128 glazed)
      (available p129)
      (colour p129 black)
      (wood p129 walnut)
      (surface-condition p129 verysmooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 green)
      (surface-condition p130 verysmooth)
      (available p131)
      (surface-condition p131 smooth)
      (treatment p131 glazed)
      (available p132)
      (colour p132 red)
      (surface-condition p132 verysmooth)
      (treatment p132 glazed)
      (available p133)
      (colour p133 red)
      (wood p133 teak)
      (surface-condition p133 verysmooth)
      (treatment p133 varnished)
      (available p134)
      (wood p134 mahogany)
      (surface-condition p134 verysmooth)
      (available p135)
      (colour p135 green)
      (wood p135 cherry)
      (surface-condition p135 smooth)
      (treatment p135 glazed)
      (available p136)
      (colour p136 mauve)
      (wood p136 oak)
      (surface-condition p136 smooth)
      (available p137)
      (wood p137 cherry)
      (surface-condition p137 smooth)
      (treatment p137 glazed)
      (available p138)
      (colour p138 red)
      (treatment p138 varnished)
      (available p139)
      (colour p139 mauve)
      (treatment p139 glazed)
      (available p140)
      (colour p140 black)
      (treatment p140 glazed)
      (available p141)
      (colour p141 green)
      (wood p141 pine)
      (surface-condition p141 verysmooth)
      (available p142)
      (colour p142 mauve)
      (wood p142 oak)
      (treatment p142 varnished)
      (available p143)
      (colour p143 red)
      (surface-condition p143 verysmooth)
      (treatment p143 varnished)
      (available p144)
      (surface-condition p144 smooth)
      (treatment p144 varnished)
      (available p145)
      (colour p145 blue)
      (wood p145 walnut)
      (treatment p145 varnished)
      (available p146)
      (wood p146 mahogany)
      (surface-condition p146 smooth)
      (treatment p146 varnished)
      (available p147)
      (wood p147 walnut)
      (treatment p147 glazed)
      (available p148)
      (colour p148 red)
      (treatment p148 glazed)
      (available p149)
      (colour p149 white)
      (wood p149 beech)
      (surface-condition p149 verysmooth)
      (treatment p149 varnished)
      (available p150)
      (wood p150 oak)
      (surface-condition p150 verysmooth)
      (available p151)
      (colour p151 white)
      (wood p151 beech)
      (available p152)
      (colour p152 green)
      (surface-condition p152 verysmooth)
      (treatment p152 glazed)
      (available p153)
      (wood p153 cherry)
      (surface-condition p153 verysmooth)
      (available p154)
      (colour p154 mauve)
      (wood p154 walnut)
      (surface-condition p154 smooth)
      (available p155)
      (colour p155 red)
      (wood p155 teak)
      (surface-condition p155 smooth)
      (treatment p155 varnished)
      (available p156)
      (wood p156 walnut)
      (surface-condition p156 verysmooth)
      (available p157)
      (wood p157 beech)
      (surface-condition p157 verysmooth)
      (available p158)
      (colour p158 natural)
      (wood p158 beech)
      (surface-condition p158 verysmooth)
      (treatment p158 varnished)
      (available p159)
      (wood p159 oak)
      (treatment p159 glazed)
      (available p160)
      (wood p160 beech)
      (surface-condition p160 smooth)
      (available p161)
      (wood p161 walnut)
      (treatment p161 varnished)
      (available p162)
      (wood p162 pine)
      (treatment p162 glazed)
      (available p163)
      (colour p163 natural)
      (wood p163 cherry)
      (surface-condition p163 smooth)
      (available p164)
      (colour p164 natural)
      (surface-condition p164 smooth)
      (treatment p164 varnished)
      (available p165)
      (wood p165 beech)
      (treatment p165 glazed)
      (available p166)
      (colour p166 blue)
      (wood p166 walnut)
      (surface-condition p166 verysmooth)
      (treatment p166 varnished)
      (available p167)
      (colour p167 green)
      (wood p167 pine)
      (available p168)
      (wood p168 pine)
      (treatment p168 varnished)
      (available p169)
      (colour p169 blue)
      (wood p169 mahogany)
      (available p170)
      (wood p170 mahogany)
      (surface-condition p170 verysmooth)
      (available p171)
      (wood p171 teak)
      (surface-condition p171 smooth)
      (available p172)
      (colour p172 mauve)
      (treatment p172 varnished)
      (available p173)
      (colour p173 natural)
      (surface-condition p173 smooth)
      (available p174)
      (colour p174 green)
      (treatment p174 glazed)
      (available p175)
      (wood p175 oak)
      (treatment p175 varnished)
      (available p176)
      (colour p176 natural)
      (wood p176 oak)
      (surface-condition p176 smooth)
      (available p177)
      (colour p177 white)
      (surface-condition p177 smooth)
      (treatment p177 varnished)
      (available p178)
      (colour p178 green)
      (wood p178 teak)
      (available p179)
      (wood p179 cherry)
      (treatment p179 glazed)
      (available p180)
      (wood p180 mahogany)
      (surface-condition p180 smooth)
      (available p181)
      (surface-condition p181 verysmooth)
      (treatment p181 glazed)
      (available p182)
      (wood p182 cherry)
      (surface-condition p182 smooth)
      (available p183)
      (colour p183 mauve)
      (surface-condition p183 smooth)
      (treatment p183 varnished)
      (available p184)
      (colour p184 white)
      (wood p184 beech)
      (surface-condition p184 smooth)
      (available p185)
      (colour p185 black)
      (treatment p185 varnished)
      (available p186)
      (colour p186 blue)
      (treatment p186 glazed)
      (available p187)
      (wood p187 walnut)
      (treatment p187 varnished)
    )
  )
  
)
