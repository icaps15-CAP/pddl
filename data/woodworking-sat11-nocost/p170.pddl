; woodworking task with 197 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 886465

(define (problem wood-prob-sat-170)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red white blue green black mauve - acolour
    oak beech walnut cherry pine mahogany teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 - board
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
    (has-colour glazer2 green)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
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
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
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
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (available p3)
    (colour p3 natural)
    (wood p3 mahogany)
    (surface-condition p3 rough)
    (treatment p3 glazed)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 mauve)
    (wood p4 teak)
    (surface-condition p4 rough)
    (treatment p4 varnished)
    (goalsize p4 large)
    
    
    
    
    (available p5)
    (colour p5 green)
    (wood p5 beech)
    (surface-condition p5 verysmooth)
    (treatment p5 colourfragments)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 natural)
    (wood p22 walnut)
    (surface-condition p22 smooth)
    (treatment p22 colourfragments)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 green)
    (wood p28 mahogany)
    (surface-condition p28 smooth)
    (treatment p28 colourfragments)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (available p32)
    (colour p32 white)
    (wood p32 beech)
    (surface-condition p32 rough)
    (treatment p32 colourfragments)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (available p38)
    (colour p38 blue)
    (wood p38 walnut)
    (surface-condition p38 smooth)
    (treatment p38 colourfragments)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (available p40)
    (colour p40 red)
    (wood p40 teak)
    (surface-condition p40 rough)
    (treatment p40 varnished)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (available p43)
    (colour p43 green)
    (wood p43 cherry)
    (surface-condition p43 smooth)
    (treatment p43 colourfragments)
    (goalsize p43 small)
    
    
    
    
    (available p44)
    (colour p44 natural)
    (wood p44 pine)
    (surface-condition p44 verysmooth)
    (treatment p44 glazed)
    (goalsize p44 small)
    
    
    
    
    (available p45)
    (colour p45 red)
    (wood p45 teak)
    (surface-condition p45 rough)
    (treatment p45 varnished)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (available p50)
    (colour p50 natural)
    (wood p50 cherry)
    (surface-condition p50 verysmooth)
    (treatment p50 glazed)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (available p69)
    (colour p69 red)
    (wood p69 walnut)
    (surface-condition p69 smooth)
    (treatment p69 colourfragments)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (available p81)
    (colour p81 white)
    (wood p81 mahogany)
    (surface-condition p81 verysmooth)
    (treatment p81 glazed)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (available p87)
    (colour p87 green)
    (wood p87 beech)
    (surface-condition p87 verysmooth)
    (treatment p87 varnished)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (available p90)
    (colour p90 green)
    (wood p90 oak)
    (surface-condition p90 verysmooth)
    (treatment p90 colourfragments)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (available p98)
    (colour p98 white)
    (wood p98 walnut)
    (surface-condition p98 verysmooth)
    (treatment p98 colourfragments)
    (goalsize p98 small)
    
    
    
    
    (available p99)
    (colour p99 black)
    (wood p99 oak)
    (surface-condition p99 verysmooth)
    (treatment p99 colourfragments)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (available p105)
    (colour p105 red)
    (wood p105 oak)
    (surface-condition p105 verysmooth)
    (treatment p105 colourfragments)
    (goalsize p105 large)
    
    
    
    
    (available p106)
    (colour p106 white)
    (wood p106 mahogany)
    (surface-condition p106 rough)
    (treatment p106 varnished)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (available p108)
    (colour p108 mauve)
    (wood p108 teak)
    (surface-condition p108 rough)
    (treatment p108 glazed)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (available p112)
    (colour p112 green)
    (wood p112 teak)
    (surface-condition p112 rough)
    (treatment p112 glazed)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (available p121)
    (colour p121 red)
    (wood p121 beech)
    (surface-condition p121 rough)
    (treatment p121 colourfragments)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (available p130)
    (colour p130 green)
    (wood p130 beech)
    (surface-condition p130 rough)
    (treatment p130 varnished)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (available p133)
    (colour p133 black)
    (wood p133 pine)
    (surface-condition p133 verysmooth)
    (treatment p133 colourfragments)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (available p143)
    (colour p143 red)
    (wood p143 pine)
    (surface-condition p143 verysmooth)
    (treatment p143 glazed)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (available p146)
    (colour p146 natural)
    (wood p146 pine)
    (surface-condition p146 verysmooth)
    (treatment p146 glazed)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (available p149)
    (colour p149 blue)
    (wood p149 oak)
    (surface-condition p149 rough)
    (treatment p149 glazed)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (available p151)
    (colour p151 natural)
    (wood p151 pine)
    (surface-condition p151 verysmooth)
    (treatment p151 colourfragments)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (available p153)
    (colour p153 mauve)
    (wood p153 pine)
    (surface-condition p153 rough)
    (treatment p153 colourfragments)
    (goalsize p153 large)
    
    
    
    
    (available p154)
    (colour p154 green)
    (wood p154 beech)
    (surface-condition p154 verysmooth)
    (treatment p154 colourfragments)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (available p159)
    (colour p159 black)
    (wood p159 walnut)
    (surface-condition p159 smooth)
    (treatment p159 colourfragments)
    (goalsize p159 small)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 medium)
    
    
    
    
    (available p162)
    (colour p162 white)
    (wood p162 oak)
    (surface-condition p162 rough)
    (treatment p162 glazed)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 medium)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (available p166)
    (colour p166 mauve)
    (wood p166 cherry)
    (surface-condition p166 verysmooth)
    (treatment p166 varnished)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (available p170)
    (colour p170 white)
    (wood p170 pine)
    (surface-condition p170 rough)
    (treatment p170 varnished)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 medium)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 medium)
    
    
    
    
    (unused p177)
    (goalsize p177 medium)
    
    
    
    
    (unused p178)
    (goalsize p178 small)
    
    
    
    
    (unused p179)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 medium)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (available p182)
    (colour p182 mauve)
    (wood p182 cherry)
    (surface-condition p182 smooth)
    (treatment p182 varnished)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (unused p185)
    (goalsize p185 small)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 large)
    
    
    
    
    (unused p190)
    (goalsize p190 large)
    
    
    
    
    (unused p191)
    (goalsize p191 large)
    
    
    
    
    (unused p192)
    (goalsize p192 medium)
    
    
    
    
    (available p193)
    (colour p193 green)
    (wood p193 beech)
    (surface-condition p193 verysmooth)
    (treatment p193 colourfragments)
    (goalsize p193 medium)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s11)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s11)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s11)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s10)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s3)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s9)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s4)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s6)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 mahogany)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s12)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s4)
    (wood b17 mahogany)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s9)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s10)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s11)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s6)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s1)
    (wood b24 oak)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s6)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s8)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s11)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s6)
    (wood b29 pine)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s10)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s8)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s4)
    (wood b32 pine)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s9)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s12)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s6)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s11)
    (wood b36 walnut)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s6)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s6)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s11)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 walnut)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s3)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s7)
    (wood b42 teak)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s10)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s5)
    (wood b44 teak)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s10)
    (wood b45 teak)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s9)
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
    (boardsize b50 s7)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s8)
    (wood b51 beech)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 beech)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s9)
    (wood b53 beech)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s8)
    (wood b54 beech)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s8)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s7)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s6)
    (wood b57 beech)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s6)
    (wood b58 beech)
    (surface-condition b58 smooth)
    (available b58)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (wood p0 beech)
      (available p1)
      (colour p1 red)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 red)
      (wood p2 walnut)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 green)
      (treatment p3 glazed)
      (available p4)
      (wood p4 teak)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (treatment p5 varnished)
      (available p6)
      (wood p6 oak)
      (surface-condition p6 verysmooth)
      (available p7)
      (colour p7 red)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 white)
      (wood p8 oak)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 blue)
      (wood p9 walnut)
      (available p10)
      (colour p10 green)
      (wood p10 pine)
      (treatment p10 glazed)
      (available p11)
      (colour p11 blue)
      (wood p11 walnut)
      (surface-condition p11 smooth)
      (available p12)
      (colour p12 green)
      (wood p12 cherry)
      (available p13)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (wood p14 oak)
      (treatment p14 glazed)
      (available p15)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 natural)
      (surface-condition p16 smooth)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 mauve)
      (wood p18 cherry)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 white)
      (wood p19 cherry)
      (surface-condition p19 smooth)
      (treatment p19 varnished)
      (available p20)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 red)
      (treatment p21 glazed)
      (available p22)
      (colour p22 red)
      (treatment p22 varnished)
      (available p23)
      (colour p23 mauve)
      (wood p23 teak)
      (treatment p23 glazed)
      (available p24)
      (colour p24 white)
      (surface-condition p24 smooth)
      (available p25)
      (wood p25 walnut)
      (treatment p25 glazed)
      (available p26)
      (wood p26 cherry)
      (treatment p26 varnished)
      (available p27)
      (colour p27 mauve)
      (wood p27 beech)
      (available p28)
      (colour p28 red)
      (wood p28 mahogany)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 black)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 blue)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 blue)
      (surface-condition p31 verysmooth)
      (treatment p31 varnished)
      (available p32)
      (wood p32 beech)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 black)
      (wood p33 walnut)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 natural)
      (surface-condition p34 verysmooth)
      (available p35)
      (colour p35 red)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 mauve)
      (wood p36 teak)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 black)
      (wood p37 mahogany)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 green)
      (wood p38 walnut)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 red)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 blue)
      (treatment p40 glazed)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 natural)
      (wood p42 mahogany)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (wood p43 cherry)
      (surface-condition p43 verysmooth)
      (available p44)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (wood p45 teak)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 white)
      (wood p46 oak)
      (available p47)
      (wood p47 beech)
      (treatment p47 varnished)
      (available p48)
      (wood p48 beech)
      (treatment p48 varnished)
      (available p49)
      (colour p49 black)
      (wood p49 cherry)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 green)
      (wood p50 cherry)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 red)
      (treatment p51 varnished)
      (available p52)
      (wood p52 pine)
      (treatment p52 varnished)
      (available p53)
      (colour p53 white)
      (surface-condition p53 verysmooth)
      (treatment p53 varnished)
      (available p54)
      (wood p54 oak)
      (treatment p54 glazed)
      (available p55)
      (colour p55 natural)
      (wood p55 mahogany)
      (treatment p55 varnished)
      (available p56)
      (wood p56 pine)
      (treatment p56 glazed)
      (available p57)
      (colour p57 natural)
      (treatment p57 varnished)
      (available p58)
      (colour p58 mauve)
      (surface-condition p58 smooth)
      (treatment p58 varnished)
      (available p59)
      (wood p59 cherry)
      (surface-condition p59 smooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 white)
      (wood p60 beech)
      (available p61)
      (colour p61 blue)
      (wood p61 cherry)
      (available p62)
      (wood p62 mahogany)
      (surface-condition p62 verysmooth)
      (available p63)
      (surface-condition p63 verysmooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 green)
      (surface-condition p64 verysmooth)
      (available p65)
      (wood p65 mahogany)
      (surface-condition p65 smooth)
      (available p66)
      (wood p66 cherry)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (wood p67 mahogany)
      (treatment p67 varnished)
      (available p68)
      (colour p68 mauve)
      (treatment p68 glazed)
      (available p69)
      (colour p69 mauve)
      (surface-condition p69 verysmooth)
      (available p70)
      (colour p70 blue)
      (wood p70 cherry)
      (treatment p70 varnished)
      (available p71)
      (colour p71 blue)
      (wood p71 pine)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 natural)
      (wood p72 mahogany)
      (surface-condition p72 verysmooth)
      (available p73)
      (surface-condition p73 verysmooth)
      (treatment p73 glazed)
      (available p74)
      (colour p74 black)
      (wood p74 mahogany)
      (surface-condition p74 smooth)
      (treatment p74 varnished)
      (available p75)
      (colour p75 red)
      (wood p75 mahogany)
      (surface-condition p75 smooth)
      (treatment p75 glazed)
      (available p76)
      (wood p76 cherry)
      (surface-condition p76 verysmooth)
      (treatment p76 varnished)
      (available p77)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (wood p78 beech)
      (surface-condition p78 smooth)
      (available p79)
      (colour p79 green)
      (wood p79 oak)
      (available p80)
      (surface-condition p80 verysmooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 red)
      (surface-condition p81 smooth)
      (available p82)
      (wood p82 beech)
      (treatment p82 glazed)
      (available p83)
      (colour p83 white)
      (wood p83 beech)
      (surface-condition p83 verysmooth)
      (available p84)
      (wood p84 pine)
      (surface-condition p84 smooth)
      (available p85)
      (colour p85 red)
      (wood p85 pine)
      (surface-condition p85 verysmooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 black)
      (surface-condition p86 verysmooth)
      (available p87)
      (colour p87 natural)
      (wood p87 beech)
      (surface-condition p87 smooth)
      (treatment p87 glazed)
      (available p88)
      (wood p88 mahogany)
      (treatment p88 glazed)
      (available p89)
      (wood p89 oak)
      (surface-condition p89 smooth)
      (available p90)
      (colour p90 black)
      (wood p90 oak)
      (surface-condition p90 smooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 natural)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 green)
      (wood p92 oak)
      (available p93)
      (wood p93 teak)
      (surface-condition p93 verysmooth)
      (available p94)
      (wood p94 walnut)
      (surface-condition p94 smooth)
      (available p95)
      (colour p95 green)
      (wood p95 mahogany)
      (surface-condition p95 verysmooth)
      (treatment p95 glazed)
      (available p96)
      (wood p96 cherry)
      (surface-condition p96 verysmooth)
      (available p97)
      (colour p97 white)
      (surface-condition p97 verysmooth)
      (available p98)
      (wood p98 walnut)
      (surface-condition p98 smooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 blue)
      (wood p99 oak)
      (surface-condition p99 smooth)
      (treatment p99 glazed)
      (available p100)
      (colour p100 green)
      (wood p100 beech)
      (surface-condition p100 smooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 black)
      (wood p101 oak)
      (available p102)
      (wood p102 cherry)
      (surface-condition p102 smooth)
      (treatment p102 glazed)
      (available p103)
      (surface-condition p103 verysmooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 black)
      (wood p104 pine)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (wood p105 oak)
      (surface-condition p105 smooth)
      (available p106)
      (colour p106 black)
      (wood p106 mahogany)
      (surface-condition p106 smooth)
      (treatment p106 varnished)
      (available p107)
      (wood p107 teak)
      (surface-condition p107 verysmooth)
      (available p108)
      (colour p108 red)
      (surface-condition p108 smooth)
      (treatment p108 glazed)
      (available p109)
      (wood p109 teak)
      (treatment p109 glazed)
      (available p110)
      (wood p110 teak)
      (surface-condition p110 verysmooth)
      (available p111)
      (wood p111 mahogany)
      (surface-condition p111 smooth)
      (available p112)
      (wood p112 teak)
      (surface-condition p112 smooth)
      (available p113)
      (colour p113 blue)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (wood p114 teak)
      (surface-condition p114 smooth)
      (available p115)
      (colour p115 green)
      (wood p115 walnut)
      (available p116)
      (colour p116 natural)
      (wood p116 oak)
      (surface-condition p116 verysmooth)
      (treatment p116 varnished)
      (available p117)
      (colour p117 natural)
      (wood p117 walnut)
      (available p118)
      (surface-condition p118 verysmooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 green)
      (treatment p119 glazed)
      (available p120)
      (colour p120 blue)
      (wood p120 teak)
      (treatment p120 varnished)
      (available p121)
      (wood p121 beech)
      (surface-condition p121 smooth)
      (available p122)
      (colour p122 natural)
      (wood p122 pine)
      (surface-condition p122 verysmooth)
      (available p123)
      (colour p123 mauve)
      (wood p123 beech)
      (surface-condition p123 verysmooth)
      (available p124)
      (colour p124 natural)
      (wood p124 beech)
      (surface-condition p124 smooth)
      (treatment p124 varnished)
      (available p125)
      (colour p125 green)
      (wood p125 cherry)
      (surface-condition p125 verysmooth)
      (available p126)
      (colour p126 white)
      (wood p126 beech)
      (surface-condition p126 smooth)
      (treatment p126 varnished)
      (available p127)
      (wood p127 pine)
      (treatment p127 glazed)
      (available p128)
      (wood p128 mahogany)
      (surface-condition p128 smooth)
      (treatment p128 glazed)
      (available p129)
      (wood p129 beech)
      (treatment p129 glazed)
      (available p130)
      (colour p130 blue)
      (wood p130 beech)
      (surface-condition p130 smooth)
      (treatment p130 glazed)
      (available p131)
      (colour p131 blue)
      (wood p131 cherry)
      (available p132)
      (colour p132 white)
      (wood p132 mahogany)
      (available p133)
      (surface-condition p133 verysmooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 green)
      (surface-condition p134 verysmooth)
      (treatment p134 varnished)
      (available p135)
      (surface-condition p135 smooth)
      (treatment p135 glazed)
      (available p136)
      (colour p136 green)
      (wood p136 pine)
      (surface-condition p136 verysmooth)
      (treatment p136 glazed)
      (available p137)
      (wood p137 beech)
      (treatment p137 varnished)
      (available p138)
      (colour p138 mauve)
      (surface-condition p138 smooth)
      (available p139)
      (colour p139 blue)
      (wood p139 pine)
      (available p140)
      (wood p140 beech)
      (treatment p140 varnished)
      (available p141)
      (colour p141 red)
      (surface-condition p141 smooth)
      (available p142)
      (colour p142 black)
      (treatment p142 glazed)
      (available p143)
      (colour p143 black)
      (wood p143 pine)
      (surface-condition p143 verysmooth)
      (treatment p143 varnished)
      (available p144)
      (colour p144 natural)
      (wood p144 beech)
      (available p145)
      (wood p145 walnut)
      (surface-condition p145 verysmooth)
      (available p146)
      (colour p146 mauve)
      (surface-condition p146 smooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 blue)
      (wood p147 mahogany)
      (available p148)
      (surface-condition p148 smooth)
      (treatment p148 varnished)
      (available p149)
      (colour p149 white)
      (surface-condition p149 verysmooth)
      (available p150)
      (colour p150 white)
      (surface-condition p150 smooth)
      (treatment p150 varnished)
      (available p151)
      (colour p151 green)
      (wood p151 pine)
      (surface-condition p151 smooth)
      (treatment p151 glazed)
      (available p152)
      (colour p152 blue)
      (wood p152 teak)
      (surface-condition p152 smooth)
      (available p153)
      (colour p153 natural)
      (wood p153 pine)
      (treatment p153 varnished)
      (available p154)
      (wood p154 beech)
      (surface-condition p154 verysmooth)
      (treatment p154 varnished)
      (available p155)
      (wood p155 pine)
      (surface-condition p155 smooth)
      (available p156)
      (colour p156 green)
      (wood p156 walnut)
      (surface-condition p156 verysmooth)
      (treatment p156 varnished)
      (available p157)
      (wood p157 pine)
      (surface-condition p157 smooth)
      (treatment p157 glazed)
      (available p158)
      (colour p158 natural)
      (wood p158 cherry)
      (surface-condition p158 smooth)
      (treatment p158 varnished)
      (available p159)
      (colour p159 natural)
      (treatment p159 glazed)
      (available p160)
      (colour p160 green)
      (wood p160 walnut)
      (surface-condition p160 verysmooth)
      (available p161)
      (wood p161 teak)
      (treatment p161 varnished)
      (available p162)
      (colour p162 green)
      (wood p162 oak)
      (surface-condition p162 verysmooth)
      (available p163)
      (wood p163 mahogany)
      (treatment p163 glazed)
      (available p164)
      (colour p164 natural)
      (wood p164 walnut)
      (surface-condition p164 verysmooth)
      (treatment p164 varnished)
      (available p165)
      (wood p165 cherry)
      (surface-condition p165 verysmooth)
      (available p166)
      (colour p166 blue)
      (treatment p166 glazed)
      (available p167)
      (colour p167 black)
      (wood p167 walnut)
      (available p168)
      (colour p168 green)
      (surface-condition p168 verysmooth)
      (available p169)
      (wood p169 oak)
      (treatment p169 glazed)
      (available p170)
      (colour p170 mauve)
      (surface-condition p170 verysmooth)
      (available p171)
      (surface-condition p171 verysmooth)
      (treatment p171 glazed)
      (available p172)
      (wood p172 teak)
      (surface-condition p172 verysmooth)
      (treatment p172 glazed)
      (available p173)
      (colour p173 mauve)
      (wood p173 teak)
      (surface-condition p173 smooth)
      (treatment p173 varnished)
      (available p174)
      (colour p174 natural)
      (wood p174 teak)
      (surface-condition p174 verysmooth)
      (treatment p174 varnished)
      (available p175)
      (colour p175 mauve)
      (wood p175 oak)
      (surface-condition p175 smooth)
      (treatment p175 varnished)
      (available p176)
      (colour p176 blue)
      (wood p176 cherry)
      (surface-condition p176 verysmooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 blue)
      (wood p177 walnut)
      (surface-condition p177 verysmooth)
      (treatment p177 varnished)
      (available p178)
      (colour p178 green)
      (wood p178 beech)
      (surface-condition p178 smooth)
      (treatment p178 glazed)
      (available p179)
      (colour p179 green)
      (wood p179 walnut)
      (surface-condition p179 smooth)
      (available p180)
      (colour p180 mauve)
      (surface-condition p180 smooth)
      (available p181)
      (wood p181 teak)
      (surface-condition p181 smooth)
      (available p182)
      (colour p182 green)
      (wood p182 cherry)
      (surface-condition p182 verysmooth)
      (treatment p182 glazed)
      (available p183)
      (colour p183 green)
      (wood p183 beech)
      (surface-condition p183 verysmooth)
      (treatment p183 varnished)
      (available p184)
      (surface-condition p184 verysmooth)
      (treatment p184 varnished)
      (available p185)
      (colour p185 green)
      (wood p185 oak)
      (surface-condition p185 verysmooth)
      (treatment p185 varnished)
      (available p186)
      (colour p186 green)
      (surface-condition p186 smooth)
      (treatment p186 glazed)
      (available p187)
      (colour p187 mauve)
      (treatment p187 varnished)
      (available p188)
      (colour p188 natural)
      (wood p188 cherry)
      (available p189)
      (colour p189 green)
      (wood p189 teak)
      (surface-condition p189 verysmooth)
      (treatment p189 varnished)
      (available p190)
      (colour p190 blue)
      (wood p190 walnut)
      (treatment p190 glazed)
      (available p191)
      (colour p191 white)
      (wood p191 walnut)
      (surface-condition p191 smooth)
      (treatment p191 varnished)
      (available p192)
      (colour p192 black)
      (wood p192 pine)
      (treatment p192 glazed)
      (available p193)
      (colour p193 black)
      (wood p193 beech)
      (available p194)
      (wood p194 teak)
      (surface-condition p194 verysmooth)
      (available p195)
      (wood p195 pine)
      (surface-condition p195 verysmooth)
      (available p196)
      (colour p196 blue)
      (wood p196 cherry)
      (surface-condition p196 smooth)
      (treatment p196 glazed)
    )
  )
  
)
