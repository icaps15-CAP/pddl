; woodworking task with 206 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 590141

(define (problem wood-prob-sat-173)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue mauve white black green red - acolour
    teak cherry oak beech walnut pine mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (available p3)
    (colour p3 natural)
    (wood p3 oak)
    (surface-condition p3 verysmooth)
    (treatment p3 colourfragments)
    (goalsize p3 medium)
    
    
    
    
    (available p4)
    (colour p4 green)
    (wood p4 oak)
    (surface-condition p4 rough)
    (treatment p4 varnished)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 black)
    (wood p6 teak)
    (surface-condition p6 verysmooth)
    (treatment p6 glazed)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 natural)
    (wood p7 teak)
    (surface-condition p7 verysmooth)
    (treatment p7 glazed)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 blue)
    (wood p15 beech)
    (surface-condition p15 verysmooth)
    (treatment p15 varnished)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (available p19)
    (colour p19 mauve)
    (wood p19 pine)
    (surface-condition p19 smooth)
    (treatment p19 colourfragments)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (available p26)
    (colour p26 blue)
    (wood p26 pine)
    (surface-condition p26 rough)
    (treatment p26 varnished)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 red)
    (wood p28 oak)
    (surface-condition p28 verysmooth)
    (treatment p28 varnished)
    (goalsize p28 medium)
    
    
    
    
    (available p29)
    (colour p29 natural)
    (wood p29 beech)
    (surface-condition p29 smooth)
    (treatment p29 colourfragments)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 natural)
    (wood p33 teak)
    (surface-condition p33 smooth)
    (treatment p33 varnished)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 green)
    (wood p38 mahogany)
    (surface-condition p38 rough)
    (treatment p38 glazed)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (available p47)
    (colour p47 red)
    (wood p47 teak)
    (surface-condition p47 rough)
    (treatment p47 colourfragments)
    (goalsize p47 small)
    
    
    
    
    (available p48)
    (colour p48 blue)
    (wood p48 cherry)
    (surface-condition p48 rough)
    (treatment p48 colourfragments)
    (goalsize p48 medium)
    
    
    
    
    (available p49)
    (colour p49 green)
    (wood p49 cherry)
    (surface-condition p49 rough)
    (treatment p49 varnished)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (available p53)
    (colour p53 mauve)
    (wood p53 cherry)
    (surface-condition p53 verysmooth)
    (treatment p53 colourfragments)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (available p61)
    (colour p61 white)
    (wood p61 mahogany)
    (surface-condition p61 rough)
    (treatment p61 glazed)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (available p64)
    (colour p64 black)
    (wood p64 teak)
    (surface-condition p64 rough)
    (treatment p64 glazed)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (available p67)
    (colour p67 green)
    (wood p67 walnut)
    (surface-condition p67 verysmooth)
    (treatment p67 colourfragments)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (available p76)
    (colour p76 black)
    (wood p76 beech)
    (surface-condition p76 verysmooth)
    (treatment p76 glazed)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (available p94)
    (colour p94 white)
    (wood p94 cherry)
    (surface-condition p94 verysmooth)
    (treatment p94 glazed)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (available p96)
    (colour p96 blue)
    (wood p96 beech)
    (surface-condition p96 verysmooth)
    (treatment p96 glazed)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (available p107)
    (colour p107 mauve)
    (wood p107 pine)
    (surface-condition p107 smooth)
    (treatment p107 varnished)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (available p117)
    (colour p117 black)
    (wood p117 walnut)
    (surface-condition p117 verysmooth)
    (treatment p117 varnished)
    (goalsize p117 small)
    
    
    
    
    (available p118)
    (colour p118 black)
    (wood p118 oak)
    (surface-condition p118 verysmooth)
    (treatment p118 varnished)
    (goalsize p118 medium)
    
    
    
    
    (available p119)
    (colour p119 blue)
    (wood p119 oak)
    (surface-condition p119 rough)
    (treatment p119 colourfragments)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (available p125)
    (colour p125 natural)
    (wood p125 cherry)
    (surface-condition p125 rough)
    (treatment p125 varnished)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (available p136)
    (colour p136 white)
    (wood p136 beech)
    (surface-condition p136 verysmooth)
    (treatment p136 glazed)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (available p147)
    (colour p147 white)
    (wood p147 beech)
    (surface-condition p147 rough)
    (treatment p147 colourfragments)
    (goalsize p147 small)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (available p149)
    (colour p149 natural)
    (wood p149 oak)
    (surface-condition p149 verysmooth)
    (treatment p149 varnished)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 small)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 large)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (available p166)
    (colour p166 black)
    (wood p166 cherry)
    (surface-condition p166 verysmooth)
    (treatment p166 glazed)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (available p168)
    (colour p168 natural)
    (wood p168 teak)
    (surface-condition p168 smooth)
    (treatment p168 varnished)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (available p172)
    (colour p172 white)
    (wood p172 beech)
    (surface-condition p172 rough)
    (treatment p172 glazed)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 small)
    
    
    
    
    (available p175)
    (colour p175 red)
    (wood p175 teak)
    (surface-condition p175 rough)
    (treatment p175 varnished)
    (goalsize p175 large)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (available p177)
    (colour p177 white)
    (wood p177 teak)
    (surface-condition p177 rough)
    (treatment p177 varnished)
    (goalsize p177 medium)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 small)
    
    
    
    
    (unused p180)
    (goalsize p180 large)
    
    
    
    
    (unused p181)
    (goalsize p181 small)
    
    
    
    
    (unused p182)
    (goalsize p182 large)
    
    
    
    
    (available p183)
    (colour p183 red)
    (wood p183 cherry)
    (surface-condition p183 verysmooth)
    (treatment p183 glazed)
    (goalsize p183 small)
    
    
    
    
    (unused p184)
    (goalsize p184 small)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 large)
    
    
    
    
    (available p191)
    (colour p191 natural)
    (wood p191 pine)
    (surface-condition p191 smooth)
    (treatment p191 varnished)
    (goalsize p191 small)
    
    
    
    
    (unused p192)
    (goalsize p192 medium)
    
    
    
    
    (unused p193)
    (goalsize p193 small)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (available p195)
    (colour p195 black)
    (wood p195 beech)
    (surface-condition p195 smooth)
    (treatment p195 glazed)
    (goalsize p195 small)
    
    
    
    
    (unused p196)
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 medium)
    
    
    
    
    (unused p198)
    (goalsize p198 small)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (available p200)
    (colour p200 blue)
    (wood p200 beech)
    (surface-condition p200 rough)
    (treatment p200 colourfragments)
    (goalsize p200 small)
    
    
    
    
    (unused p201)
    (goalsize p201 large)
    
    
    
    
    (available p202)
    (colour p202 white)
    (wood p202 beech)
    (surface-condition p202 smooth)
    (treatment p202 colourfragments)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 medium)
    
    
    
    
    (available p204)
    (colour p204 black)
    (wood p204 beech)
    (surface-condition p204 verysmooth)
    (treatment p204 varnished)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
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
    (boardsize b6 s3)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 mahogany)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s9)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s9)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s10)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 mahogany)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s8)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s11)
    (wood b15 mahogany)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s7)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 oak)
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
    (boardsize b20 s9)
    (wood b20 oak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s7)
    (wood b21 oak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s9)
    (wood b22 oak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s4)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 pine)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s6)
    (wood b25 pine)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s9)
    (wood b26 pine)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s10)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s7)
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
    (wood b31 walnut)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s9)
    (wood b32 walnut)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s11)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s11)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s5)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s9)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s5)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s6)
    (wood b39 walnut)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 teak)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s10)
    (wood b41 teak)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s6)
    (wood b42 teak)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s6)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s8)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s9)
    (wood b45 teak)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s6)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s10)
    (wood b47 teak)
    (surface-condition b47 smooth)
    (available b47)
    (boardsize b48 s5)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s6)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s1)
    (wood b50 teak)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s9)
    (wood b51 beech)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s8)
    (wood b52 beech)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s8)
    (wood b53 beech)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s8)
    (wood b54 beech)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s9)
    (wood b55 beech)
    (surface-condition b55 smooth)
    (available b55)
    (boardsize b56 s10)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s7)
    (wood b57 beech)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s9)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
    (boardsize b59 s4)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (surface-condition p0 smooth)
      (available p1)
      (colour p1 green)
      (wood p1 mahogany)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 black)
      (wood p2 walnut)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 black)
      (wood p3 oak)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 white)
      (treatment p5 varnished)
      (available p6)
      (wood p6 teak)
      (surface-condition p6 verysmooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 white)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 blue)
      (wood p8 beech)
      (available p9)
      (wood p9 cherry)
      (treatment p9 glazed)
      (available p10)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 mauve)
      (wood p11 beech)
      (surface-condition p11 verysmooth)
      (available p12)
      (wood p12 teak)
      (surface-condition p12 verysmooth)
      (available p13)
      (wood p13 mahogany)
      (treatment p13 varnished)
      (available p14)
      (colour p14 white)
      (wood p14 mahogany)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 natural)
      (wood p15 beech)
      (available p16)
      (colour p16 blue)
      (wood p16 walnut)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (wood p17 oak)
      (treatment p17 glazed)
      (available p18)
      (colour p18 red)
      (treatment p18 glazed)
      (available p19)
      (colour p19 white)
      (treatment p19 varnished)
      (available p20)
      (colour p20 green)
      (wood p20 walnut)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 natural)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 black)
      (treatment p22 glazed)
      (available p23)
      (colour p23 black)
      (wood p23 oak)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 red)
      (wood p24 mahogany)
      (available p25)
      (wood p25 beech)
      (surface-condition p25 smooth)
      (available p26)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (wood p27 cherry)
      (treatment p27 varnished)
      (available p28)
      (colour p28 black)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 blue)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 blue)
      (wood p30 walnut)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 green)
      (surface-condition p31 verysmooth)
      (available p32)
      (wood p32 mahogany)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (surface-condition p33 verysmooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 green)
      (wood p34 walnut)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 white)
      (wood p35 mahogany)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 white)
      (surface-condition p36 smooth)
      (available p37)
      (wood p37 beech)
      (surface-condition p37 smooth)
      (available p38)
      (wood p38 mahogany)
      (treatment p38 varnished)
      (available p39)
      (colour p39 green)
      (wood p39 teak)
      (available p40)
      (colour p40 red)
      (wood p40 walnut)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 green)
      (wood p41 oak)
      (surface-condition p41 smooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 green)
      (wood p42 walnut)
      (surface-condition p42 smooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 white)
      (surface-condition p43 verysmooth)
      (available p44)
      (colour p44 black)
      (wood p44 walnut)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 blue)
      (wood p45 pine)
      (surface-condition p45 smooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 mauve)
      (wood p46 walnut)
      (surface-condition p46 smooth)
      (available p47)
      (colour p47 mauve)
      (wood p47 teak)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (colour p48 natural)
      (wood p48 cherry)
      (treatment p48 varnished)
      (available p49)
      (colour p49 mauve)
      (wood p49 cherry)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (wood p50 mahogany)
      (surface-condition p50 verysmooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 red)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 natural)
      (wood p52 beech)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 green)
      (wood p53 cherry)
      (surface-condition p53 smooth)
      (treatment p53 varnished)
      (available p54)
      (wood p54 teak)
      (treatment p54 varnished)
      (available p55)
      (colour p55 blue)
      (wood p55 oak)
      (available p56)
      (colour p56 black)
      (wood p56 teak)
      (treatment p56 varnished)
      (available p57)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (wood p58 walnut)
      (treatment p58 glazed)
      (available p59)
      (colour p59 blue)
      (surface-condition p59 verysmooth)
      (available p60)
      (colour p60 black)
      (wood p60 mahogany)
      (available p61)
      (wood p61 mahogany)
      (surface-condition p61 smooth)
      (treatment p61 varnished)
      (available p62)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 black)
      (wood p63 teak)
      (surface-condition p63 smooth)
      (treatment p63 glazed)
      (available p64)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 natural)
      (wood p65 teak)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 red)
      (wood p66 mahogany)
      (available p67)
      (colour p67 white)
      (wood p67 walnut)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 green)
      (treatment p68 varnished)
      (available p69)
      (colour p69 natural)
      (wood p69 pine)
      (surface-condition p69 verysmooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 natural)
      (wood p70 walnut)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 mauve)
      (wood p71 oak)
      (surface-condition p71 verysmooth)
      (treatment p71 glazed)
      (available p72)
      (wood p72 cherry)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 blue)
      (wood p73 teak)
      (surface-condition p73 verysmooth)
      (available p74)
      (colour p74 mauve)
      (wood p74 walnut)
      (available p75)
      (wood p75 mahogany)
      (surface-condition p75 smooth)
      (available p76)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (wood p78 beech)
      (surface-condition p78 verysmooth)
      (available p79)
      (colour p79 white)
      (wood p79 teak)
      (treatment p79 glazed)
      (available p80)
      (colour p80 black)
      (wood p80 cherry)
      (surface-condition p80 verysmooth)
      (available p81)
      (colour p81 black)
      (wood p81 walnut)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 black)
      (wood p82 pine)
      (surface-condition p82 smooth)
      (available p83)
      (colour p83 natural)
      (wood p83 mahogany)
      (surface-condition p83 verysmooth)
      (treatment p83 glazed)
      (available p84)
      (colour p84 blue)
      (wood p84 beech)
      (available p85)
      (colour p85 blue)
      (treatment p85 varnished)
      (available p86)
      (wood p86 beech)
      (surface-condition p86 smooth)
      (treatment p86 glazed)
      (available p87)
      (wood p87 teak)
      (surface-condition p87 verysmooth)
      (available p88)
      (wood p88 beech)
      (surface-condition p88 smooth)
      (treatment p88 glazed)
      (available p89)
      (surface-condition p89 smooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 black)
      (treatment p90 glazed)
      (available p91)
      (colour p91 red)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 red)
      (wood p92 pine)
      (surface-condition p92 verysmooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 green)
      (wood p93 teak)
      (surface-condition p93 smooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 natural)
      (wood p94 cherry)
      (surface-condition p94 verysmooth)
      (treatment p94 varnished)
      (available p95)
      (wood p95 walnut)
      (treatment p95 varnished)
      (available p96)
      (wood p96 beech)
      (surface-condition p96 smooth)
      (available p97)
      (colour p97 white)
      (wood p97 beech)
      (treatment p97 varnished)
      (available p98)
      (colour p98 red)
      (wood p98 cherry)
      (surface-condition p98 verysmooth)
      (treatment p98 glazed)
      (available p99)
      (colour p99 natural)
      (wood p99 pine)
      (surface-condition p99 verysmooth)
      (treatment p99 glazed)
      (available p100)
      (colour p100 mauve)
      (treatment p100 varnished)
      (available p101)
      (colour p101 mauve)
      (wood p101 oak)
      (surface-condition p101 smooth)
      (available p102)
      (wood p102 walnut)
      (surface-condition p102 smooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 green)
      (wood p103 pine)
      (available p104)
      (colour p104 natural)
      (wood p104 oak)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 blue)
      (wood p105 cherry)
      (surface-condition p105 smooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 blue)
      (wood p106 pine)
      (treatment p106 glazed)
      (available p107)
      (colour p107 white)
      (surface-condition p107 smooth)
      (available p108)
      (colour p108 natural)
      (wood p108 beech)
      (available p109)
      (colour p109 white)
      (treatment p109 varnished)
      (available p110)
      (colour p110 white)
      (surface-condition p110 verysmooth)
      (treatment p110 varnished)
      (available p111)
      (wood p111 oak)
      (surface-condition p111 smooth)
      (available p112)
      (colour p112 blue)
      (wood p112 teak)
      (treatment p112 glazed)
      (available p113)
      (colour p113 white)
      (wood p113 pine)
      (surface-condition p113 smooth)
      (treatment p113 glazed)
      (available p114)
      (colour p114 natural)
      (surface-condition p114 smooth)
      (available p115)
      (colour p115 blue)
      (wood p115 teak)
      (surface-condition p115 verysmooth)
      (available p116)
      (colour p116 natural)
      (surface-condition p116 verysmooth)
      (available p117)
      (colour p117 green)
      (treatment p117 glazed)
      (available p118)
      (wood p118 oak)
      (surface-condition p118 smooth)
      (available p119)
      (surface-condition p119 verysmooth)
      (treatment p119 glazed)
      (available p120)
      (colour p120 green)
      (wood p120 mahogany)
      (treatment p120 glazed)
      (available p121)
      (colour p121 mauve)
      (wood p121 cherry)
      (surface-condition p121 verysmooth)
      (treatment p121 glazed)
      (available p122)
      (colour p122 black)
      (wood p122 pine)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (wood p123 mahogany)
      (surface-condition p123 smooth)
      (treatment p123 glazed)
      (available p124)
      (colour p124 mauve)
      (surface-condition p124 smooth)
      (available p125)
      (wood p125 cherry)
      (surface-condition p125 verysmooth)
      (available p126)
      (surface-condition p126 verysmooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 black)
      (treatment p127 varnished)
      (available p128)
      (surface-condition p128 smooth)
      (treatment p128 varnished)
      (available p129)
      (surface-condition p129 smooth)
      (treatment p129 glazed)
      (available p130)
      (colour p130 red)
      (wood p130 pine)
      (surface-condition p130 verysmooth)
      (treatment p130 glazed)
      (available p131)
      (colour p131 mauve)
      (wood p131 oak)
      (available p132)
      (colour p132 mauve)
      (wood p132 walnut)
      (surface-condition p132 verysmooth)
      (treatment p132 varnished)
      (available p133)
      (colour p133 blue)
      (wood p133 mahogany)
      (surface-condition p133 verysmooth)
      (treatment p133 glazed)
      (available p134)
      (wood p134 walnut)
      (treatment p134 varnished)
      (available p135)
      (wood p135 pine)
      (surface-condition p135 smooth)
      (treatment p135 varnished)
      (available p136)
      (colour p136 natural)
      (wood p136 beech)
      (surface-condition p136 smooth)
      (treatment p136 varnished)
      (available p137)
      (wood p137 cherry)
      (surface-condition p137 smooth)
      (available p138)
      (colour p138 natural)
      (wood p138 cherry)
      (surface-condition p138 smooth)
      (treatment p138 glazed)
      (available p139)
      (wood p139 oak)
      (treatment p139 varnished)
      (available p140)
      (colour p140 red)
      (surface-condition p140 smooth)
      (available p141)
      (surface-condition p141 smooth)
      (treatment p141 glazed)
      (available p142)
      (wood p142 mahogany)
      (treatment p142 varnished)
      (available p143)
      (surface-condition p143 smooth)
      (treatment p143 glazed)
      (available p144)
      (colour p144 black)
      (wood p144 teak)
      (surface-condition p144 verysmooth)
      (treatment p144 varnished)
      (available p145)
      (surface-condition p145 verysmooth)
      (treatment p145 varnished)
      (available p146)
      (wood p146 pine)
      (surface-condition p146 smooth)
      (available p147)
      (colour p147 natural)
      (wood p147 beech)
      (surface-condition p147 smooth)
      (treatment p147 varnished)
      (available p148)
      (colour p148 white)
      (wood p148 walnut)
      (surface-condition p148 smooth)
      (treatment p148 varnished)
      (available p149)
      (colour p149 green)
      (wood p149 oak)
      (surface-condition p149 smooth)
      (treatment p149 glazed)
      (available p150)
      (wood p150 walnut)
      (surface-condition p150 smooth)
      (available p151)
      (colour p151 green)
      (surface-condition p151 verysmooth)
      (available p152)
      (colour p152 mauve)
      (wood p152 mahogany)
      (surface-condition p152 verysmooth)
      (treatment p152 glazed)
      (available p153)
      (colour p153 natural)
      (wood p153 teak)
      (surface-condition p153 smooth)
      (available p154)
      (colour p154 natural)
      (wood p154 teak)
      (available p155)
      (colour p155 red)
      (wood p155 beech)
      (available p156)
      (colour p156 white)
      (wood p156 cherry)
      (available p157)
      (colour p157 black)
      (wood p157 teak)
      (surface-condition p157 verysmooth)
      (treatment p157 glazed)
      (available p158)
      (colour p158 black)
      (wood p158 beech)
      (surface-condition p158 verysmooth)
      (available p159)
      (wood p159 oak)
      (surface-condition p159 smooth)
      (available p160)
      (surface-condition p160 verysmooth)
      (treatment p160 varnished)
      (available p161)
      (colour p161 mauve)
      (wood p161 mahogany)
      (surface-condition p161 smooth)
      (available p162)
      (colour p162 blue)
      (wood p162 oak)
      (surface-condition p162 smooth)
      (treatment p162 varnished)
      (available p163)
      (colour p163 red)
      (wood p163 oak)
      (surface-condition p163 smooth)
      (treatment p163 varnished)
      (available p164)
      (surface-condition p164 verysmooth)
      (treatment p164 glazed)
      (available p165)
      (colour p165 blue)
      (wood p165 walnut)
      (surface-condition p165 verysmooth)
      (treatment p165 glazed)
      (available p166)
      (colour p166 blue)
      (wood p166 cherry)
      (surface-condition p166 verysmooth)
      (available p167)
      (colour p167 blue)
      (wood p167 cherry)
      (available p168)
      (colour p168 green)
      (surface-condition p168 smooth)
      (available p169)
      (colour p169 white)
      (wood p169 mahogany)
      (available p170)
      (colour p170 green)
      (wood p170 cherry)
      (surface-condition p170 smooth)
      (treatment p170 varnished)
      (available p171)
      (colour p171 blue)
      (wood p171 oak)
      (surface-condition p171 smooth)
      (available p172)
      (colour p172 red)
      (wood p172 beech)
      (treatment p172 glazed)
      (available p173)
      (colour p173 blue)
      (wood p173 beech)
      (surface-condition p173 smooth)
      (treatment p173 varnished)
      (available p174)
      (colour p174 black)
      (wood p174 teak)
      (surface-condition p174 smooth)
      (treatment p174 glazed)
      (available p175)
      (colour p175 blue)
      (wood p175 teak)
      (treatment p175 glazed)
      (available p176)
      (colour p176 mauve)
      (treatment p176 glazed)
      (available p177)
      (colour p177 red)
      (wood p177 teak)
      (available p178)
      (wood p178 teak)
      (treatment p178 glazed)
      (available p179)
      (colour p179 black)
      (surface-condition p179 smooth)
      (treatment p179 varnished)
      (available p180)
      (colour p180 green)
      (wood p180 pine)
      (available p181)
      (colour p181 black)
      (treatment p181 glazed)
      (available p182)
      (colour p182 blue)
      (wood p182 oak)
      (surface-condition p182 verysmooth)
      (treatment p182 glazed)
      (available p183)
      (colour p183 green)
      (wood p183 cherry)
      (surface-condition p183 smooth)
      (treatment p183 varnished)
      (available p184)
      (colour p184 white)
      (wood p184 pine)
      (surface-condition p184 verysmooth)
      (treatment p184 glazed)
      (available p185)
      (wood p185 cherry)
      (surface-condition p185 verysmooth)
      (available p186)
      (colour p186 blue)
      (wood p186 oak)
      (surface-condition p186 smooth)
      (treatment p186 varnished)
      (available p187)
      (surface-condition p187 smooth)
      (treatment p187 varnished)
      (available p188)
      (wood p188 walnut)
      (surface-condition p188 smooth)
      (available p189)
      (surface-condition p189 verysmooth)
      (treatment p189 varnished)
      (available p190)
      (surface-condition p190 smooth)
      (treatment p190 glazed)
      (available p191)
      (wood p191 pine)
      (treatment p191 glazed)
      (available p192)
      (wood p192 mahogany)
      (surface-condition p192 smooth)
      (available p193)
      (wood p193 teak)
      (surface-condition p193 smooth)
      (treatment p193 glazed)
      (available p194)
      (wood p194 teak)
      (surface-condition p194 verysmooth)
      (available p195)
      (colour p195 green)
      (wood p195 beech)
      (surface-condition p195 verysmooth)
      (treatment p195 varnished)
      (available p196)
      (colour p196 red)
      (wood p196 beech)
      (available p197)
      (wood p197 pine)
      (treatment p197 varnished)
      (available p198)
      (colour p198 green)
      (wood p198 cherry)
      (surface-condition p198 verysmooth)
      (treatment p198 glazed)
      (available p199)
      (colour p199 mauve)
      (wood p199 teak)
      (available p200)
      (colour p200 natural)
      (wood p200 beech)
      (treatment p200 glazed)
      (available p201)
      (wood p201 pine)
      (surface-condition p201 smooth)
      (available p202)
      (colour p202 mauve)
      (wood p202 beech)
      (surface-condition p202 smooth)
      (treatment p202 varnished)
      (available p203)
      (colour p203 blue)
      (surface-condition p203 verysmooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 red)
      (wood p204 beech)
      (treatment p204 glazed)
      (available p205)
      (colour p205 mauve)
      (wood p205 walnut)
      (surface-condition p205 smooth)
    )
  )
  
)
