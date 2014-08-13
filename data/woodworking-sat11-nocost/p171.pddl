; woodworking task with 200 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 215202

(define (problem wood-prob-sat-171)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue white mauve green black red - acolour
    teak walnut mahogany oak pine cherry beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (available p0)
    (colour p0 blue)
    (wood p0 beech)
    (surface-condition p0 rough)
    (treatment p0 colourfragments)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 red)
    (wood p4 beech)
    (surface-condition p4 smooth)
    (treatment p4 varnished)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 black)
    (wood p9 cherry)
    (surface-condition p9 rough)
    (treatment p9 glazed)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (available p17)
    (colour p17 natural)
    (wood p17 oak)
    (surface-condition p17 rough)
    (treatment p17 glazed)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 natural)
    (wood p22 beech)
    (surface-condition p22 rough)
    (treatment p22 colourfragments)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (available p26)
    (colour p26 natural)
    (wood p26 pine)
    (surface-condition p26 smooth)
    (treatment p26 glazed)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (available p38)
    (colour p38 green)
    (wood p38 mahogany)
    (surface-condition p38 verysmooth)
    (treatment p38 glazed)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (available p42)
    (colour p42 white)
    (wood p42 teak)
    (surface-condition p42 rough)
    (treatment p42 glazed)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (available p46)
    (colour p46 mauve)
    (wood p46 beech)
    (surface-condition p46 rough)
    (treatment p46 varnished)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (available p53)
    (colour p53 blue)
    (wood p53 beech)
    (surface-condition p53 rough)
    (treatment p53 varnished)
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
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (available p62)
    (colour p62 white)
    (wood p62 walnut)
    (surface-condition p62 verysmooth)
    (treatment p62 glazed)
    (goalsize p62 medium)
    
    
    
    
    (available p63)
    (colour p63 red)
    (wood p63 mahogany)
    (surface-condition p63 rough)
    (treatment p63 glazed)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (available p67)
    (colour p67 blue)
    (wood p67 pine)
    (surface-condition p67 verysmooth)
    (treatment p67 varnished)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (available p69)
    (colour p69 white)
    (wood p69 teak)
    (surface-condition p69 verysmooth)
    (treatment p69 varnished)
    (goalsize p69 small)
    
    
    
    
    (available p70)
    (colour p70 mauve)
    (wood p70 walnut)
    (surface-condition p70 smooth)
    (treatment p70 colourfragments)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (available p73)
    (colour p73 white)
    (wood p73 cherry)
    (surface-condition p73 verysmooth)
    (treatment p73 varnished)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (available p80)
    (colour p80 black)
    (wood p80 mahogany)
    (surface-condition p80 rough)
    (treatment p80 colourfragments)
    (goalsize p80 small)
    
    
    
    
    (available p81)
    (colour p81 green)
    (wood p81 mahogany)
    (surface-condition p81 verysmooth)
    (treatment p81 colourfragments)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (available p84)
    (colour p84 natural)
    (wood p84 beech)
    (surface-condition p84 rough)
    (treatment p84 colourfragments)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (available p86)
    (colour p86 red)
    (wood p86 beech)
    (surface-condition p86 smooth)
    (treatment p86 varnished)
    (goalsize p86 large)
    
    
    
    
    (available p87)
    (colour p87 red)
    (wood p87 pine)
    (surface-condition p87 rough)
    (treatment p87 varnished)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (available p92)
    (colour p92 white)
    (wood p92 pine)
    (surface-condition p92 verysmooth)
    (treatment p92 glazed)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (available p95)
    (colour p95 green)
    (wood p95 beech)
    (surface-condition p95 verysmooth)
    (treatment p95 varnished)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (available p99)
    (colour p99 black)
    (wood p99 teak)
    (surface-condition p99 verysmooth)
    (treatment p99 glazed)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (available p104)
    (colour p104 green)
    (wood p104 mahogany)
    (surface-condition p104 rough)
    (treatment p104 glazed)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (available p108)
    (colour p108 red)
    (wood p108 mahogany)
    (surface-condition p108 verysmooth)
    (treatment p108 varnished)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (available p118)
    (colour p118 black)
    (wood p118 cherry)
    (surface-condition p118 smooth)
    (treatment p118 varnished)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (available p120)
    (colour p120 red)
    (wood p120 mahogany)
    (surface-condition p120 rough)
    (treatment p120 varnished)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (available p123)
    (colour p123 white)
    (wood p123 teak)
    (surface-condition p123 verysmooth)
    (treatment p123 glazed)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (available p131)
    (colour p131 black)
    (wood p131 cherry)
    (surface-condition p131 verysmooth)
    (treatment p131 colourfragments)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (available p133)
    (colour p133 black)
    (wood p133 oak)
    (surface-condition p133 smooth)
    (treatment p133 glazed)
    (goalsize p133 large)
    
    
    
    
    (available p134)
    (colour p134 natural)
    (wood p134 pine)
    (surface-condition p134 verysmooth)
    (treatment p134 varnished)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (available p138)
    (colour p138 mauve)
    (wood p138 walnut)
    (surface-condition p138 rough)
    (treatment p138 glazed)
    (goalsize p138 small)
    
    
    
    
    (available p139)
    (colour p139 green)
    (wood p139 cherry)
    (surface-condition p139 smooth)
    (treatment p139 colourfragments)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (available p142)
    (colour p142 mauve)
    (wood p142 teak)
    (surface-condition p142 smooth)
    (treatment p142 glazed)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (available p148)
    (colour p148 natural)
    (wood p148 teak)
    (surface-condition p148 rough)
    (treatment p148 varnished)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (available p150)
    (colour p150 red)
    (wood p150 pine)
    (surface-condition p150 smooth)
    (treatment p150 glazed)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (available p153)
    (colour p153 natural)
    (wood p153 pine)
    (surface-condition p153 verysmooth)
    (treatment p153 colourfragments)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (available p156)
    (colour p156 white)
    (wood p156 pine)
    (surface-condition p156 rough)
    (treatment p156 colourfragments)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (available p159)
    (colour p159 blue)
    (wood p159 beech)
    (surface-condition p159 rough)
    (treatment p159 glazed)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (available p161)
    (colour p161 mauve)
    (wood p161 walnut)
    (surface-condition p161 rough)
    (treatment p161 glazed)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (available p166)
    (colour p166 blue)
    (wood p166 teak)
    (surface-condition p166 smooth)
    (treatment p166 colourfragments)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (available p168)
    (colour p168 white)
    (wood p168 oak)
    (surface-condition p168 verysmooth)
    (treatment p168 colourfragments)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (available p171)
    (colour p171 black)
    (wood p171 cherry)
    (surface-condition p171 smooth)
    (treatment p171 glazed)
    (goalsize p171 small)
    
    
    
    
    (unused p172)
    (goalsize p172 medium)
    
    
    
    
    (available p173)
    (colour p173 green)
    (wood p173 beech)
    (surface-condition p173 smooth)
    (treatment p173 colourfragments)
    (goalsize p173 large)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (unused p178)
    (goalsize p178 medium)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 large)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (available p182)
    (colour p182 green)
    (wood p182 walnut)
    (surface-condition p182 rough)
    (treatment p182 varnished)
    (goalsize p182 large)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (unused p185)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 small)
    
    
    
    
    (available p191)
    (colour p191 white)
    (wood p191 walnut)
    (surface-condition p191 verysmooth)
    (treatment p191 glazed)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 medium)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 large)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 small)
    
    
    
    
    (unused p197)
    (goalsize p197 small)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (unused p199)
    (goalsize p199 small)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s5)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s11)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 cherry)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s8)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s11)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 mahogany)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s6)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s9)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s1)
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
    (boardsize b19 s8)
    (wood b19 oak)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s8)
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
    (boardsize b23 s9)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s3)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s9)
    (wood b25 pine)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s9)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 pine)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s8)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 pine)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s5)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s6)
    (wood b32 walnut)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s7)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s10)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s7)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s11)
    (wood b36 walnut)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s5)
    (wood b37 walnut)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s8)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s7)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s7)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s8)
    (wood b41 teak)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s7)
    (wood b42 teak)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s9)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s9)
    (wood b44 teak)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s7)
    (wood b45 teak)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s8)
    (wood b46 teak)
    (surface-condition b46 smooth)
    (available b46)
    (boardsize b47 s3)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s12)
    (wood b48 beech)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s6)
    (wood b49 beech)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s6)
    (wood b50 beech)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s8)
    (wood b51 beech)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s8)
    (wood b52 beech)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s9)
    (wood b53 beech)
    (surface-condition b53 smooth)
    (available b53)
    (boardsize b54 s10)
    (wood b54 beech)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s10)
    (wood b55 beech)
    (surface-condition b55 smooth)
    (available b55)
    (boardsize b56 s8)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s7)
    (wood b57 beech)
    (surface-condition b57 rough)
    (available b57)
  )
  (:goal
    (and
      (available p0)
      (colour p0 red)
      (wood p0 beech)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 white)
      (wood p1 beech)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (wood p2 oak)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 black)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 white)
      (wood p4 beech)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 natural)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 blue)
      (wood p6 walnut)
      (available p7)
      (wood p7 mahogany)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 green)
      (wood p9 cherry)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 mauve)
      (wood p10 walnut)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (wood p11 walnut)
      (treatment p11 varnished)
      (available p12)
      (colour p12 mauve)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 mauve)
      (wood p13 walnut)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 mauve)
      (treatment p14 varnished)
      (available p15)
      (colour p15 black)
      (wood p15 oak)
      (available p16)
      (colour p16 mauve)
      (wood p16 teak)
      (available p17)
      (colour p17 red)
      (surface-condition p17 smooth)
      (available p18)
      (wood p18 pine)
      (treatment p18 glazed)
      (available p19)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 natural)
      (wood p20 cherry)
      (surface-condition p20 smooth)
      (available p21)
      (colour p21 green)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 black)
      (wood p22 beech)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 mauve)
      (treatment p24 varnished)
      (available p25)
      (colour p25 red)
      (wood p25 pine)
      (available p26)
      (colour p26 black)
      (wood p26 pine)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 mauve)
      (wood p27 walnut)
      (surface-condition p27 verysmooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 natural)
      (wood p28 beech)
      (available p29)
      (colour p29 green)
      (wood p29 beech)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 white)
      (wood p31 cherry)
      (available p32)
      (wood p32 pine)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 mauve)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 black)
      (treatment p34 glazed)
      (available p35)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 green)
      (wood p36 beech)
      (available p37)
      (colour p37 red)
      (wood p37 oak)
      (available p38)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (surface-condition p39 smooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 green)
      (wood p40 pine)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 red)
      (wood p41 mahogany)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 red)
      (surface-condition p42 smooth)
      (available p43)
      (wood p43 oak)
      (treatment p43 varnished)
      (available p44)
      (surface-condition p44 verysmooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 black)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 natural)
      (surface-condition p46 smooth)
      (available p47)
      (colour p47 green)
      (wood p47 teak)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (wood p48 beech)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 white)
      (treatment p49 varnished)
      (available p50)
      (wood p50 walnut)
      (surface-condition p50 smooth)
      (available p51)
      (colour p51 blue)
      (wood p51 pine)
      (available p52)
      (colour p52 blue)
      (wood p52 teak)
      (surface-condition p52 smooth)
      (available p53)
      (colour p53 green)
      (wood p53 beech)
      (available p54)
      (colour p54 natural)
      (treatment p54 varnished)
      (available p55)
      (wood p55 walnut)
      (treatment p55 glazed)
      (available p56)
      (colour p56 red)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 natural)
      (wood p57 beech)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 natural)
      (surface-condition p59 smooth)
      (available p60)
      (colour p60 red)
      (wood p60 oak)
      (available p61)
      (wood p61 cherry)
      (surface-condition p61 smooth)
      (treatment p61 glazed)
      (available p62)
      (colour p62 natural)
      (wood p62 walnut)
      (available p63)
      (colour p63 mauve)
      (surface-condition p63 verysmooth)
      (available p64)
      (wood p64 cherry)
      (surface-condition p64 verysmooth)
      (available p65)
      (colour p65 white)
      (wood p65 oak)
      (surface-condition p65 smooth)
      (available p66)
      (wood p66 cherry)
      (surface-condition p66 verysmooth)
      (available p67)
      (colour p67 mauve)
      (surface-condition p67 smooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 natural)
      (wood p68 beech)
      (available p69)
      (wood p69 teak)
      (treatment p69 glazed)
      (available p70)
      (surface-condition p70 smooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 red)
      (wood p71 mahogany)
      (surface-condition p71 verysmooth)
      (treatment p71 varnished)
      (available p72)
      (colour p72 green)
      (treatment p72 glazed)
      (available p73)
      (colour p73 black)
      (wood p73 cherry)
      (surface-condition p73 verysmooth)
      (treatment p73 glazed)
      (available p74)
      (colour p74 white)
      (treatment p74 glazed)
      (available p75)
      (colour p75 blue)
      (treatment p75 varnished)
      (available p76)
      (colour p76 white)
      (wood p76 teak)
      (surface-condition p76 verysmooth)
      (treatment p76 glazed)
      (available p77)
      (colour p77 mauve)
      (wood p77 mahogany)
      (surface-condition p77 verysmooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 green)
      (wood p78 walnut)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (wood p79 cherry)
      (surface-condition p79 smooth)
      (available p80)
      (colour p80 mauve)
      (treatment p80 glazed)
      (available p81)
      (colour p81 natural)
      (wood p81 mahogany)
      (surface-condition p81 smooth)
      (available p82)
      (wood p82 cherry)
      (surface-condition p82 smooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 green)
      (wood p83 walnut)
      (available p84)
      (colour p84 green)
      (surface-condition p84 smooth)
      (available p85)
      (colour p85 green)
      (surface-condition p85 verysmooth)
      (available p86)
      (colour p86 white)
      (wood p86 beech)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (wood p87 pine)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 mauve)
      (treatment p88 varnished)
      (available p89)
      (colour p89 blue)
      (wood p89 cherry)
      (available p90)
      (colour p90 natural)
      (surface-condition p90 verysmooth)
      (available p91)
      (colour p91 natural)
      (wood p91 oak)
      (available p92)
      (colour p92 natural)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (colour p93 white)
      (wood p93 cherry)
      (surface-condition p93 smooth)
      (available p94)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 natural)
      (wood p95 beech)
      (surface-condition p95 verysmooth)
      (treatment p95 glazed)
      (available p96)
      (colour p96 black)
      (surface-condition p96 smooth)
      (treatment p96 glazed)
      (available p97)
      (colour p97 natural)
      (wood p97 pine)
      (treatment p97 glazed)
      (available p98)
      (wood p98 oak)
      (treatment p98 varnished)
      (available p99)
      (colour p99 blue)
      (wood p99 teak)
      (available p100)
      (colour p100 green)
      (wood p100 oak)
      (surface-condition p100 verysmooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 black)
      (wood p101 mahogany)
      (surface-condition p101 smooth)
      (treatment p101 varnished)
      (available p102)
      (colour p102 black)
      (wood p102 mahogany)
      (surface-condition p102 verysmooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 mauve)
      (surface-condition p103 smooth)
      (available p104)
      (colour p104 black)
      (surface-condition p104 verysmooth)
      (available p105)
      (wood p105 beech)
      (surface-condition p105 verysmooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 green)
      (wood p106 beech)
      (surface-condition p106 verysmooth)
      (treatment p106 varnished)
      (available p107)
      (colour p107 mauve)
      (wood p107 teak)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (surface-condition p108 verysmooth)
      (treatment p108 glazed)
      (available p109)
      (wood p109 mahogany)
      (surface-condition p109 smooth)
      (available p110)
      (surface-condition p110 smooth)
      (treatment p110 varnished)
      (available p111)
      (colour p111 blue)
      (wood p111 teak)
      (available p112)
      (colour p112 red)
      (wood p112 cherry)
      (available p113)
      (colour p113 black)
      (wood p113 mahogany)
      (available p114)
      (wood p114 beech)
      (treatment p114 varnished)
      (available p115)
      (colour p115 red)
      (wood p115 walnut)
      (surface-condition p115 smooth)
      (treatment p115 glazed)
      (available p116)
      (surface-condition p116 smooth)
      (treatment p116 varnished)
      (available p117)
      (wood p117 teak)
      (treatment p117 varnished)
      (available p118)
      (colour p118 red)
      (surface-condition p118 smooth)
      (available p119)
      (wood p119 teak)
      (surface-condition p119 verysmooth)
      (available p120)
      (colour p120 white)
      (treatment p120 varnished)
      (available p121)
      (wood p121 cherry)
      (treatment p121 varnished)
      (available p122)
      (wood p122 pine)
      (surface-condition p122 verysmooth)
      (available p123)
      (colour p123 black)
      (treatment p123 glazed)
      (available p124)
      (wood p124 mahogany)
      (surface-condition p124 smooth)
      (available p125)
      (colour p125 natural)
      (wood p125 walnut)
      (treatment p125 glazed)
      (available p126)
      (wood p126 oak)
      (treatment p126 varnished)
      (available p127)
      (surface-condition p127 verysmooth)
      (treatment p127 varnished)
      (available p128)
      (colour p128 mauve)
      (surface-condition p128 smooth)
      (available p129)
      (wood p129 teak)
      (treatment p129 glazed)
      (available p130)
      (wood p130 teak)
      (surface-condition p130 verysmooth)
      (available p131)
      (colour p131 green)
      (wood p131 cherry)
      (surface-condition p131 smooth)
      (treatment p131 varnished)
      (available p132)
      (colour p132 black)
      (wood p132 beech)
      (treatment p132 varnished)
      (available p133)
      (wood p133 oak)
      (surface-condition p133 verysmooth)
      (treatment p133 varnished)
      (available p134)
      (colour p134 white)
      (wood p134 pine)
      (available p135)
      (colour p135 blue)
      (wood p135 mahogany)
      (surface-condition p135 smooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 white)
      (treatment p136 varnished)
      (available p137)
      (colour p137 mauve)
      (wood p137 teak)
      (surface-condition p137 verysmooth)
      (treatment p137 varnished)
      (available p138)
      (colour p138 blue)
      (surface-condition p138 smooth)
      (treatment p138 varnished)
      (available p139)
      (colour p139 blue)
      (treatment p139 glazed)
      (available p140)
      (colour p140 blue)
      (wood p140 cherry)
      (available p141)
      (colour p141 red)
      (surface-condition p141 smooth)
      (available p142)
      (surface-condition p142 verysmooth)
      (treatment p142 glazed)
      (available p143)
      (surface-condition p143 verysmooth)
      (treatment p143 varnished)
      (available p144)
      (wood p144 cherry)
      (treatment p144 varnished)
      (available p145)
      (colour p145 natural)
      (treatment p145 varnished)
      (available p146)
      (colour p146 green)
      (surface-condition p146 verysmooth)
      (available p147)
      (wood p147 oak)
      (treatment p147 glazed)
      (available p148)
      (wood p148 teak)
      (treatment p148 glazed)
      (available p149)
      (colour p149 red)
      (wood p149 teak)
      (surface-condition p149 verysmooth)
      (available p150)
      (colour p150 green)
      (wood p150 pine)
      (available p151)
      (colour p151 red)
      (wood p151 pine)
      (surface-condition p151 verysmooth)
      (treatment p151 varnished)
      (available p152)
      (wood p152 teak)
      (surface-condition p152 verysmooth)
      (treatment p152 glazed)
      (available p153)
      (surface-condition p153 verysmooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 red)
      (wood p154 beech)
      (surface-condition p154 smooth)
      (treatment p154 glazed)
      (available p155)
      (colour p155 natural)
      (wood p155 pine)
      (available p156)
      (colour p156 green)
      (wood p156 pine)
      (surface-condition p156 verysmooth)
      (treatment p156 glazed)
      (available p157)
      (wood p157 cherry)
      (surface-condition p157 verysmooth)
      (treatment p157 glazed)
      (available p158)
      (colour p158 black)
      (wood p158 walnut)
      (surface-condition p158 smooth)
      (treatment p158 glazed)
      (available p159)
      (colour p159 green)
      (treatment p159 varnished)
      (available p160)
      (surface-condition p160 verysmooth)
      (treatment p160 glazed)
      (available p161)
      (wood p161 walnut)
      (surface-condition p161 verysmooth)
      (treatment p161 glazed)
      (available p162)
      (colour p162 blue)
      (surface-condition p162 smooth)
      (available p163)
      (colour p163 blue)
      (treatment p163 varnished)
      (available p164)
      (colour p164 mauve)
      (wood p164 pine)
      (surface-condition p164 verysmooth)
      (treatment p164 glazed)
      (available p165)
      (wood p165 pine)
      (treatment p165 varnished)
      (available p166)
      (colour p166 mauve)
      (wood p166 teak)
      (surface-condition p166 smooth)
      (treatment p166 glazed)
      (available p167)
      (wood p167 pine)
      (treatment p167 varnished)
      (available p168)
      (colour p168 natural)
      (wood p168 oak)
      (surface-condition p168 verysmooth)
      (treatment p168 glazed)
      (available p169)
      (wood p169 walnut)
      (treatment p169 glazed)
      (available p170)
      (wood p170 oak)
      (surface-condition p170 verysmooth)
      (available p171)
      (colour p171 red)
      (surface-condition p171 smooth)
      (available p172)
      (colour p172 natural)
      (wood p172 walnut)
      (treatment p172 varnished)
      (available p173)
      (colour p173 red)
      (treatment p173 glazed)
      (available p174)
      (wood p174 walnut)
      (surface-condition p174 verysmooth)
      (treatment p174 varnished)
      (available p175)
      (colour p175 white)
      (wood p175 cherry)
      (surface-condition p175 smooth)
      (treatment p175 glazed)
      (available p176)
      (colour p176 mauve)
      (wood p176 oak)
      (surface-condition p176 smooth)
      (treatment p176 glazed)
      (available p177)
      (wood p177 beech)
      (surface-condition p177 smooth)
      (available p178)
      (wood p178 teak)
      (surface-condition p178 smooth)
      (treatment p178 glazed)
      (available p179)
      (colour p179 green)
      (wood p179 oak)
      (surface-condition p179 smooth)
      (treatment p179 glazed)
      (available p180)
      (colour p180 natural)
      (surface-condition p180 smooth)
      (available p181)
      (surface-condition p181 verysmooth)
      (treatment p181 varnished)
      (available p182)
      (colour p182 red)
      (wood p182 walnut)
      (available p183)
      (colour p183 blue)
      (surface-condition p183 verysmooth)
      (treatment p183 glazed)
      (available p184)
      (colour p184 black)
      (wood p184 beech)
      (available p185)
      (colour p185 black)
      (wood p185 pine)
      (treatment p185 glazed)
      (available p186)
      (colour p186 natural)
      (wood p186 beech)
      (available p187)
      (wood p187 oak)
      (treatment p187 varnished)
      (available p188)
      (wood p188 beech)
      (treatment p188 varnished)
      (available p189)
      (colour p189 natural)
      (surface-condition p189 smooth)
      (available p190)
      (colour p190 white)
      (surface-condition p190 verysmooth)
      (treatment p190 varnished)
      (available p191)
      (colour p191 mauve)
      (surface-condition p191 verysmooth)
      (available p192)
      (wood p192 oak)
      (surface-condition p192 smooth)
      (available p193)
      (colour p193 mauve)
      (treatment p193 glazed)
      (available p194)
      (wood p194 pine)
      (surface-condition p194 smooth)
      (treatment p194 glazed)
      (available p195)
      (wood p195 walnut)
      (surface-condition p195 verysmooth)
      (available p196)
      (wood p196 oak)
      (surface-condition p196 smooth)
      (available p197)
      (wood p197 mahogany)
      (treatment p197 glazed)
      (available p198)
      (colour p198 blue)
      (wood p198 cherry)
      (available p199)
      (colour p199 mauve)
      (wood p199 walnut)
      (treatment p199 varnished)
    )
  )
  
)
