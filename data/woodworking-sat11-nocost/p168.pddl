; woodworking task with 191 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 491850

(define (problem wood-prob-sat-168)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue green red black mauve white - acolour
    pine mahogany beech oak cherry teak walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 - board
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
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (available p4)
    (colour p4 white)
    (wood p4 pine)
    (surface-condition p4 smooth)
    (treatment p4 colourfragments)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (available p7)
    (colour p7 green)
    (wood p7 pine)
    (surface-condition p7 rough)
    (treatment p7 colourfragments)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 natural)
    (wood p13 teak)
    (surface-condition p13 smooth)
    (treatment p13 varnished)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (available p18)
    (colour p18 blue)
    (wood p18 mahogany)
    (surface-condition p18 verysmooth)
    (treatment p18 varnished)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 black)
    (wood p21 walnut)
    (surface-condition p21 rough)
    (treatment p21 colourfragments)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 blue)
    (wood p26 walnut)
    (surface-condition p26 smooth)
    (treatment p26 colourfragments)
    (goalsize p26 large)
    
    
    
    
    (available p27)
    (colour p27 red)
    (wood p27 mahogany)
    (surface-condition p27 rough)
    (treatment p27 colourfragments)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (available p31)
    (colour p31 natural)
    (wood p31 beech)
    (surface-condition p31 rough)
    (treatment p31 varnished)
    (goalsize p31 large)
    
    
    
    
    (available p32)
    (colour p32 green)
    (wood p32 cherry)
    (surface-condition p32 verysmooth)
    (treatment p32 glazed)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 red)
    (wood p36 oak)
    (surface-condition p36 rough)
    (treatment p36 glazed)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (available p43)
    (colour p43 blue)
    (wood p43 cherry)
    (surface-condition p43 rough)
    (treatment p43 varnished)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (available p53)
    (colour p53 mauve)
    (wood p53 teak)
    (surface-condition p53 rough)
    (treatment p53 colourfragments)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (available p55)
    (colour p55 green)
    (wood p55 beech)
    (surface-condition p55 verysmooth)
    (treatment p55 colourfragments)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (available p58)
    (colour p58 white)
    (wood p58 mahogany)
    (surface-condition p58 smooth)
    (treatment p58 varnished)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (available p62)
    (colour p62 white)
    (wood p62 oak)
    (surface-condition p62 smooth)
    (treatment p62 colourfragments)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (available p69)
    (colour p69 green)
    (wood p69 walnut)
    (surface-condition p69 verysmooth)
    (treatment p69 varnished)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (available p89)
    (colour p89 mauve)
    (wood p89 oak)
    (surface-condition p89 rough)
    (treatment p89 colourfragments)
    (goalsize p89 medium)
    
    
    
    
    (available p90)
    (colour p90 blue)
    (wood p90 beech)
    (surface-condition p90 rough)
    (treatment p90 varnished)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (available p94)
    (colour p94 black)
    (wood p94 beech)
    (surface-condition p94 rough)
    (treatment p94 colourfragments)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (available p99)
    (colour p99 red)
    (wood p99 pine)
    (surface-condition p99 smooth)
    (treatment p99 glazed)
    (goalsize p99 small)
    
    
    
    
    (available p100)
    (colour p100 blue)
    (wood p100 cherry)
    (surface-condition p100 verysmooth)
    (treatment p100 glazed)
    (goalsize p100 large)
    
    
    
    
    (available p101)
    (colour p101 mauve)
    (wood p101 mahogany)
    (surface-condition p101 smooth)
    (treatment p101 colourfragments)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (available p114)
    (colour p114 natural)
    (wood p114 pine)
    (surface-condition p114 rough)
    (treatment p114 glazed)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (available p121)
    (colour p121 natural)
    (wood p121 oak)
    (surface-condition p121 verysmooth)
    (treatment p121 colourfragments)
    (goalsize p121 large)
    
    
    
    
    (available p122)
    (colour p122 green)
    (wood p122 teak)
    (surface-condition p122 smooth)
    (treatment p122 glazed)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (available p126)
    (colour p126 mauve)
    (wood p126 cherry)
    (surface-condition p126 verysmooth)
    (treatment p126 glazed)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (available p128)
    (colour p128 natural)
    (wood p128 beech)
    (surface-condition p128 smooth)
    (treatment p128 glazed)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (available p130)
    (colour p130 black)
    (wood p130 cherry)
    (surface-condition p130 smooth)
    (treatment p130 colourfragments)
    (goalsize p130 large)
    
    
    
    
    (available p131)
    (colour p131 natural)
    (wood p131 cherry)
    (surface-condition p131 verysmooth)
    (treatment p131 colourfragments)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (available p135)
    (colour p135 white)
    (wood p135 beech)
    (surface-condition p135 smooth)
    (treatment p135 colourfragments)
    (goalsize p135 small)
    
    
    
    
    (available p136)
    (colour p136 red)
    (wood p136 mahogany)
    (surface-condition p136 rough)
    (treatment p136 varnished)
    (goalsize p136 small)
    
    
    
    
    (available p137)
    (colour p137 white)
    (wood p137 walnut)
    (surface-condition p137 smooth)
    (treatment p137 glazed)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (available p143)
    (colour p143 mauve)
    (wood p143 teak)
    (surface-condition p143 rough)
    (treatment p143 glazed)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (available p145)
    (colour p145 mauve)
    (wood p145 teak)
    (surface-condition p145 verysmooth)
    (treatment p145 colourfragments)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (available p148)
    (colour p148 blue)
    (wood p148 cherry)
    (surface-condition p148 verysmooth)
    (treatment p148 glazed)
    (goalsize p148 large)
    
    
    
    
    (available p149)
    (colour p149 mauve)
    (wood p149 beech)
    (surface-condition p149 rough)
    (treatment p149 glazed)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (available p152)
    (colour p152 black)
    (wood p152 oak)
    (surface-condition p152 smooth)
    (treatment p152 glazed)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (available p154)
    (colour p154 green)
    (wood p154 teak)
    (surface-condition p154 rough)
    (treatment p154 colourfragments)
    (goalsize p154 small)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (available p165)
    (colour p165 red)
    (wood p165 cherry)
    (surface-condition p165 smooth)
    (treatment p165 colourfragments)
    (goalsize p165 medium)
    
    
    
    
    (available p166)
    (colour p166 mauve)
    (wood p166 teak)
    (surface-condition p166 smooth)
    (treatment p166 glazed)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (available p168)
    (colour p168 green)
    (wood p168 teak)
    (surface-condition p168 verysmooth)
    (treatment p168 colourfragments)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (available p170)
    (colour p170 black)
    (wood p170 beech)
    (surface-condition p170 verysmooth)
    (treatment p170 varnished)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 medium)
    
    
    
    
    (available p172)
    (colour p172 mauve)
    (wood p172 oak)
    (surface-condition p172 rough)
    (treatment p172 colourfragments)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (available p177)
    (colour p177 natural)
    (wood p177 mahogany)
    (surface-condition p177 smooth)
    (treatment p177 glazed)
    (goalsize p177 large)
    
    
    
    
    (available p178)
    (colour p178 mauve)
    (wood p178 teak)
    (surface-condition p178 verysmooth)
    (treatment p178 glazed)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (available p180)
    (colour p180 green)
    (wood p180 pine)
    (surface-condition p180 verysmooth)
    (treatment p180 varnished)
    (goalsize p180 large)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (available p185)
    (colour p185 white)
    (wood p185 mahogany)
    (surface-condition p185 verysmooth)
    (treatment p185 colourfragments)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (available p187)
    (colour p187 green)
    (wood p187 walnut)
    (surface-condition p187 smooth)
    (treatment p187 glazed)
    (goalsize p187 medium)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (available p189)
    (colour p189 green)
    (wood p189 teak)
    (surface-condition p189 smooth)
    (treatment p189 colourfragments)
    (goalsize p189 large)
    
    
    
    
    (unused p190)
    (goalsize p190 large)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
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
    (boardsize b5 s10)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s12)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s10)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s10)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s4)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s9)
    (wood b18 oak)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s9)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 oak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s8)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s9)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s9)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s6)
    (wood b25 oak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s10)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s11)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s7)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 pine)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s9)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s4)
    (wood b32 pine)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s7)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s9)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s8)
    (wood b36 walnut)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s5)
    (wood b37 walnut)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s6)
    (wood b38 teak)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s9)
    (wood b39 teak)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s9)
    (wood b40 teak)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s2)
    (wood b41 teak)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s8)
    (wood b42 beech)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s8)
    (wood b43 beech)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s8)
    (wood b44 beech)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s10)
    (wood b45 beech)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s12)
    (wood b46 beech)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s11)
    (wood b47 beech)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s8)
    (wood b48 beech)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s8)
    (wood b49 beech)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s10)
    (wood b50 beech)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s5)
    (wood b51 beech)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s2)
    (wood b52 beech)
    (surface-condition b52 rough)
    (available b52)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (treatment p0 varnished)
      (available p1)
      (colour p1 blue)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 white)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 blue)
      (treatment p3 varnished)
      (available p4)
      (wood p4 pine)
      (surface-condition p4 verysmooth)
      (available p5)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 natural)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 white)
      (wood p7 pine)
      (treatment p7 varnished)
      (available p8)
      (colour p8 black)
      (wood p8 pine)
      (treatment p8 glazed)
      (available p9)
      (colour p9 green)
      (wood p9 pine)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 mauve)
      (wood p10 oak)
      (treatment p10 varnished)
      (available p11)
      (wood p11 teak)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 red)
      (wood p12 cherry)
      (available p13)
      (colour p13 black)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 mauve)
      (treatment p14 glazed)
      (available p15)
      (colour p15 blue)
      (wood p15 cherry)
      (available p16)
      (colour p16 blue)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 blue)
      (surface-condition p17 verysmooth)
      (available p18)
      (colour p18 red)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 natural)
      (wood p19 beech)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 white)
      (wood p20 cherry)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 green)
      (wood p21 walnut)
      (surface-condition p21 smooth)
      (available p22)
      (colour p22 blue)
      (treatment p22 glazed)
      (available p23)
      (colour p23 blue)
      (wood p23 beech)
      (surface-condition p23 smooth)
      (available p24)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 blue)
      (wood p25 oak)
      (available p26)
      (colour p26 green)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 black)
      (surface-condition p27 smooth)
      (available p28)
      (wood p28 cherry)
      (surface-condition p28 smooth)
      (available p29)
      (wood p29 mahogany)
      (surface-condition p29 smooth)
      (available p30)
      (wood p30 beech)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (wood p31 beech)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 natural)
      (wood p32 cherry)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (wood p33 mahogany)
      (surface-condition p33 verysmooth)
      (available p34)
      (wood p34 teak)
      (treatment p34 glazed)
      (available p35)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 natural)
      (surface-condition p36 smooth)
      (available p37)
      (colour p37 black)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 blue)
      (treatment p38 glazed)
      (available p39)
      (colour p39 blue)
      (wood p39 beech)
      (available p40)
      (colour p40 green)
      (wood p40 walnut)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (wood p41 beech)
      (treatment p41 varnished)
      (available p42)
      (colour p42 black)
      (wood p42 pine)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 red)
      (wood p44 walnut)
      (available p45)
      (colour p45 black)
      (wood p45 mahogany)
      (treatment p45 varnished)
      (available p46)
      (colour p46 black)
      (wood p46 oak)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 mauve)
      (wood p47 beech)
      (surface-condition p47 verysmooth)
      (treatment p47 glazed)
      (available p48)
      (wood p48 teak)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 natural)
      (surface-condition p49 smooth)
      (available p50)
      (surface-condition p50 verysmooth)
      (treatment p50 glazed)
      (available p51)
      (wood p51 mahogany)
      (treatment p51 glazed)
      (available p52)
      (colour p52 red)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 natural)
      (wood p53 teak)
      (surface-condition p53 verysmooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 mauve)
      (wood p54 pine)
      (surface-condition p54 smooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 mauve)
      (treatment p55 varnished)
      (available p56)
      (wood p56 beech)
      (treatment p56 varnished)
      (available p57)
      (colour p57 natural)
      (wood p57 oak)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (wood p58 mahogany)
      (treatment p58 glazed)
      (available p59)
      (colour p59 green)
      (wood p59 cherry)
      (treatment p59 varnished)
      (available p60)
      (colour p60 red)
      (surface-condition p60 verysmooth)
      (treatment p60 glazed)
      (available p61)
      (wood p61 oak)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 mauve)
      (wood p62 oak)
      (treatment p62 glazed)
      (available p63)
      (colour p63 blue)
      (treatment p63 glazed)
      (available p64)
      (wood p64 walnut)
      (treatment p64 glazed)
      (available p65)
      (wood p65 beech)
      (surface-condition p65 smooth)
      (available p66)
      (colour p66 green)
      (wood p66 oak)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 green)
      (surface-condition p67 smooth)
      (available p68)
      (surface-condition p68 smooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 blue)
      (surface-condition p69 smooth)
      (available p70)
      (colour p70 blue)
      (wood p70 beech)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 green)
      (wood p71 walnut)
      (surface-condition p71 smooth)
      (treatment p71 glazed)
      (available p72)
      (surface-condition p72 smooth)
      (treatment p72 varnished)
      (available p73)
      (colour p73 natural)
      (wood p73 beech)
      (available p74)
      (colour p74 natural)
      (wood p74 teak)
      (surface-condition p74 smooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 blue)
      (treatment p75 varnished)
      (available p76)
      (wood p76 pine)
      (treatment p76 glazed)
      (available p77)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 black)
      (wood p78 cherry)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 blue)
      (surface-condition p79 smooth)
      (available p80)
      (colour p80 natural)
      (treatment p80 glazed)
      (available p81)
      (colour p81 mauve)
      (wood p81 beech)
      (surface-condition p81 smooth)
      (available p82)
      (wood p82 cherry)
      (treatment p82 glazed)
      (available p83)
      (colour p83 red)
      (surface-condition p83 smooth)
      (available p84)
      (colour p84 green)
      (wood p84 oak)
      (surface-condition p84 smooth)
      (available p85)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 blue)
      (treatment p86 varnished)
      (available p87)
      (colour p87 white)
      (wood p87 teak)
      (available p88)
      (colour p88 natural)
      (wood p88 mahogany)
      (treatment p88 glazed)
      (available p89)
      (colour p89 blue)
      (surface-condition p89 verysmooth)
      (available p90)
      (colour p90 black)
      (treatment p90 varnished)
      (available p91)
      (colour p91 green)
      (wood p91 mahogany)
      (available p92)
      (surface-condition p92 verysmooth)
      (treatment p92 glazed)
      (available p93)
      (wood p93 cherry)
      (surface-condition p93 smooth)
      (available p94)
      (colour p94 green)
      (surface-condition p94 smooth)
      (available p95)
      (colour p95 white)
      (wood p95 cherry)
      (available p96)
      (wood p96 mahogany)
      (surface-condition p96 verysmooth)
      (available p97)
      (wood p97 oak)
      (surface-condition p97 smooth)
      (treatment p97 varnished)
      (available p98)
      (wood p98 oak)
      (surface-condition p98 smooth)
      (available p99)
      (colour p99 natural)
      (wood p99 pine)
      (surface-condition p99 verysmooth)
      (treatment p99 glazed)
      (available p100)
      (wood p100 cherry)
      (surface-condition p100 smooth)
      (treatment p100 glazed)
      (available p101)
      (wood p101 mahogany)
      (surface-condition p101 smooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 white)
      (surface-condition p102 smooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 green)
      (surface-condition p103 verysmooth)
      (available p104)
      (colour p104 white)
      (wood p104 cherry)
      (surface-condition p104 verysmooth)
      (treatment p104 varnished)
      (available p105)
      (surface-condition p105 verysmooth)
      (treatment p105 varnished)
      (available p106)
      (colour p106 green)
      (treatment p106 glazed)
      (available p107)
      (colour p107 black)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (wood p108 cherry)
      (treatment p108 glazed)
      (available p109)
      (colour p109 blue)
      (surface-condition p109 smooth)
      (available p110)
      (wood p110 teak)
      (treatment p110 glazed)
      (available p111)
      (colour p111 green)
      (wood p111 cherry)
      (surface-condition p111 verysmooth)
      (treatment p111 glazed)
      (available p112)
      (colour p112 natural)
      (wood p112 pine)
      (available p113)
      (colour p113 white)
      (wood p113 cherry)
      (surface-condition p113 verysmooth)
      (treatment p113 glazed)
      (available p114)
      (colour p114 green)
      (wood p114 pine)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (wood p115 oak)
      (treatment p115 glazed)
      (available p116)
      (surface-condition p116 verysmooth)
      (treatment p116 glazed)
      (available p117)
      (wood p117 beech)
      (surface-condition p117 verysmooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 mauve)
      (wood p118 mahogany)
      (treatment p118 glazed)
      (available p119)
      (colour p119 red)
      (wood p119 walnut)
      (surface-condition p119 verysmooth)
      (treatment p119 varnished)
      (available p120)
      (surface-condition p120 verysmooth)
      (treatment p120 glazed)
      (available p121)
      (colour p121 green)
      (wood p121 oak)
      (surface-condition p121 smooth)
      (treatment p121 glazed)
      (available p122)
      (surface-condition p122 smooth)
      (treatment p122 varnished)
      (available p123)
      (colour p123 black)
      (surface-condition p123 smooth)
      (available p124)
      (wood p124 teak)
      (surface-condition p124 verysmooth)
      (available p125)
      (colour p125 white)
      (wood p125 mahogany)
      (available p126)
      (colour p126 black)
      (wood p126 cherry)
      (treatment p126 varnished)
      (available p127)
      (wood p127 cherry)
      (surface-condition p127 verysmooth)
      (available p128)
      (colour p128 white)
      (wood p128 beech)
      (surface-condition p128 smooth)
      (available p129)
      (colour p129 blue)
      (treatment p129 glazed)
      (available p130)
      (colour p130 green)
      (wood p130 cherry)
      (treatment p130 varnished)
      (available p131)
      (colour p131 red)
      (wood p131 cherry)
      (available p132)
      (colour p132 blue)
      (wood p132 walnut)
      (available p133)
      (wood p133 walnut)
      (surface-condition p133 verysmooth)
      (treatment p133 varnished)
      (available p134)
      (colour p134 red)
      (surface-condition p134 verysmooth)
      (available p135)
      (wood p135 beech)
      (treatment p135 glazed)
      (available p136)
      (colour p136 white)
      (surface-condition p136 smooth)
      (available p137)
      (colour p137 green)
      (surface-condition p137 smooth)
      (treatment p137 glazed)
      (available p138)
      (wood p138 mahogany)
      (treatment p138 varnished)
      (available p139)
      (colour p139 green)
      (wood p139 mahogany)
      (surface-condition p139 smooth)
      (treatment p139 varnished)
      (available p140)
      (colour p140 black)
      (wood p140 beech)
      (surface-condition p140 verysmooth)
      (treatment p140 glazed)
      (available p141)
      (colour p141 black)
      (wood p141 beech)
      (treatment p141 varnished)
      (available p142)
      (wood p142 teak)
      (treatment p142 glazed)
      (available p143)
      (colour p143 natural)
      (wood p143 teak)
      (surface-condition p143 smooth)
      (treatment p143 varnished)
      (available p144)
      (wood p144 oak)
      (treatment p144 varnished)
      (available p145)
      (colour p145 red)
      (wood p145 teak)
      (surface-condition p145 verysmooth)
      (treatment p145 glazed)
      (available p146)
      (colour p146 natural)
      (treatment p146 glazed)
      (available p147)
      (colour p147 natural)
      (wood p147 mahogany)
      (surface-condition p147 verysmooth)
      (available p148)
      (colour p148 green)
      (treatment p148 varnished)
      (available p149)
      (colour p149 black)
      (wood p149 beech)
      (surface-condition p149 smooth)
      (treatment p149 varnished)
      (available p150)
      (colour p150 mauve)
      (wood p150 cherry)
      (surface-condition p150 verysmooth)
      (treatment p150 varnished)
      (available p151)
      (wood p151 beech)
      (treatment p151 varnished)
      (available p152)
      (surface-condition p152 verysmooth)
      (treatment p152 varnished)
      (available p153)
      (colour p153 green)
      (wood p153 mahogany)
      (available p154)
      (wood p154 teak)
      (treatment p154 varnished)
      (available p155)
      (colour p155 white)
      (treatment p155 glazed)
      (available p156)
      (colour p156 black)
      (surface-condition p156 verysmooth)
      (available p157)
      (wood p157 teak)
      (treatment p157 glazed)
      (available p158)
      (colour p158 white)
      (wood p158 mahogany)
      (surface-condition p158 verysmooth)
      (treatment p158 glazed)
      (available p159)
      (wood p159 pine)
      (treatment p159 glazed)
      (available p160)
      (wood p160 beech)
      (surface-condition p160 verysmooth)
      (available p161)
      (colour p161 red)
      (treatment p161 glazed)
      (available p162)
      (wood p162 pine)
      (treatment p162 glazed)
      (available p163)
      (colour p163 natural)
      (wood p163 oak)
      (surface-condition p163 verysmooth)
      (treatment p163 varnished)
      (available p164)
      (colour p164 natural)
      (wood p164 mahogany)
      (surface-condition p164 verysmooth)
      (available p165)
      (colour p165 blue)
      (wood p165 cherry)
      (available p166)
      (wood p166 teak)
      (surface-condition p166 verysmooth)
      (treatment p166 varnished)
      (available p167)
      (colour p167 white)
      (wood p167 mahogany)
      (available p168)
      (surface-condition p168 smooth)
      (treatment p168 glazed)
      (available p169)
      (colour p169 red)
      (wood p169 mahogany)
      (surface-condition p169 verysmooth)
      (treatment p169 glazed)
      (available p170)
      (colour p170 mauve)
      (wood p170 beech)
      (available p171)
      (colour p171 mauve)
      (treatment p171 varnished)
      (available p172)
      (colour p172 black)
      (treatment p172 glazed)
      (available p173)
      (colour p173 black)
      (wood p173 mahogany)
      (available p174)
      (colour p174 red)
      (wood p174 cherry)
      (available p175)
      (wood p175 pine)
      (surface-condition p175 verysmooth)
      (available p176)
      (wood p176 walnut)
      (surface-condition p176 verysmooth)
      (available p177)
      (surface-condition p177 verysmooth)
      (treatment p177 glazed)
      (available p178)
      (colour p178 green)
      (wood p178 teak)
      (available p179)
      (colour p179 red)
      (wood p179 walnut)
      (treatment p179 glazed)
      (available p180)
      (colour p180 black)
      (surface-condition p180 smooth)
      (treatment p180 glazed)
      (available p181)
      (colour p181 black)
      (wood p181 cherry)
      (available p182)
      (wood p182 oak)
      (surface-condition p182 verysmooth)
      (treatment p182 varnished)
      (available p183)
      (wood p183 oak)
      (treatment p183 glazed)
      (available p184)
      (colour p184 white)
      (wood p184 walnut)
      (surface-condition p184 smooth)
      (treatment p184 glazed)
      (available p185)
      (colour p185 natural)
      (wood p185 mahogany)
      (surface-condition p185 smooth)
      (treatment p185 varnished)
      (available p186)
      (colour p186 red)
      (treatment p186 varnished)
      (available p187)
      (colour p187 mauve)
      (wood p187 walnut)
      (surface-condition p187 verysmooth)
      (treatment p187 varnished)
      (available p188)
      (colour p188 white)
      (treatment p188 glazed)
      (available p189)
      (colour p189 white)
      (surface-condition p189 verysmooth)
      (treatment p189 glazed)
      (available p190)
      (colour p190 mauve)
      (surface-condition p190 verysmooth)
    )
  )
  
)
