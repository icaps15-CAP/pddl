; woodworking task with 224 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 260057

(define (problem wood-prob-sat-85)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white green blue red black mauve - acolour
    beech teak oak cherry mahogany walnut pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 natural)
    (wood p0 mahogany)
    (surface-condition p0 rough)
    (treatment p0 colourfragments)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (available p2)
    (colour p2 white)
    (wood p2 teak)
    (surface-condition p2 smooth)
    (treatment p2 glazed)
    (goalsize p2 medium)
    
    
    
    
    (available p3)
    (colour p3 mauve)
    (wood p3 teak)
    (surface-condition p3 verysmooth)
    (treatment p3 colourfragments)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 white)
    (wood p12 pine)
    (surface-condition p12 verysmooth)
    (treatment p12 glazed)
    (goalsize p12 small)
    
    
    
    
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
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 green)
    (wood p19 walnut)
    (surface-condition p19 verysmooth)
    (treatment p19 glazed)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (available p25)
    (colour p25 red)
    (wood p25 beech)
    (surface-condition p25 verysmooth)
    (treatment p25 glazed)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (available p28)
    (colour p28 green)
    (wood p28 teak)
    (surface-condition p28 verysmooth)
    (treatment p28 glazed)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (available p49)
    (colour p49 natural)
    (wood p49 teak)
    (surface-condition p49 verysmooth)
    (treatment p49 glazed)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (available p56)
    (colour p56 green)
    (wood p56 mahogany)
    (surface-condition p56 smooth)
    (treatment p56 colourfragments)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (available p59)
    (colour p59 mauve)
    (wood p59 cherry)
    (surface-condition p59 verysmooth)
    (treatment p59 varnished)
    (goalsize p59 large)
    
    
    
    
    (available p60)
    (colour p60 mauve)
    (wood p60 walnut)
    (surface-condition p60 verysmooth)
    (treatment p60 varnished)
    (goalsize p60 medium)
    
    
    
    
    (available p61)
    (colour p61 mauve)
    (wood p61 walnut)
    (surface-condition p61 smooth)
    (treatment p61 colourfragments)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 white)
    (wood p65 walnut)
    (surface-condition p65 verysmooth)
    (treatment p65 glazed)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 blue)
    (wood p66 oak)
    (surface-condition p66 rough)
    (treatment p66 colourfragments)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 red)
    (wood p67 mahogany)
    (surface-condition p67 rough)
    (treatment p67 varnished)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (available p84)
    (colour p84 blue)
    (wood p84 walnut)
    (surface-condition p84 smooth)
    (treatment p84 colourfragments)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (available p98)
    (colour p98 green)
    (wood p98 pine)
    (surface-condition p98 verysmooth)
    (treatment p98 colourfragments)
    (goalsize p98 small)
    
    
    
    
    (available p99)
    (colour p99 red)
    (wood p99 walnut)
    (surface-condition p99 smooth)
    (treatment p99 varnished)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (available p101)
    (colour p101 natural)
    (wood p101 mahogany)
    (surface-condition p101 verysmooth)
    (treatment p101 varnished)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
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
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (available p121)
    (colour p121 red)
    (wood p121 pine)
    (surface-condition p121 verysmooth)
    (treatment p121 varnished)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (available p128)
    (colour p128 red)
    (wood p128 teak)
    (surface-condition p128 rough)
    (treatment p128 colourfragments)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (available p133)
    (colour p133 white)
    (wood p133 walnut)
    (surface-condition p133 smooth)
    (treatment p133 colourfragments)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (available p142)
    (colour p142 green)
    (wood p142 oak)
    (surface-condition p142 rough)
    (treatment p142 glazed)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (available p144)
    (colour p144 natural)
    (wood p144 cherry)
    (surface-condition p144 smooth)
    (treatment p144 glazed)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (available p159)
    (colour p159 red)
    (wood p159 oak)
    (surface-condition p159 smooth)
    (treatment p159 colourfragments)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (available p166)
    (colour p166 white)
    (wood p166 walnut)
    (surface-condition p166 verysmooth)
    (treatment p166 glazed)
    (goalsize p166 large)
    
    
    
    
    (available p167)
    (colour p167 blue)
    (wood p167 teak)
    (surface-condition p167 smooth)
    (treatment p167 glazed)
    (goalsize p167 medium)
    
    
    
    
    (available p168)
    (colour p168 green)
    (wood p168 oak)
    (surface-condition p168 verysmooth)
    (treatment p168 glazed)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 medium)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (available p172)
    (colour p172 red)
    (wood p172 teak)
    (surface-condition p172 smooth)
    (treatment p172 glazed)
    (goalsize p172 large)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 medium)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (unused p176)
    (goalsize p176 large)
    
    
    
    
    (unused p177)
    (goalsize p177 large)
    
    
    
    
    (available p178)
    (colour p178 blue)
    (wood p178 pine)
    (surface-condition p178 smooth)
    (treatment p178 colourfragments)
    (goalsize p178 small)
    
    
    
    
    (available p179)
    (colour p179 white)
    (wood p179 walnut)
    (surface-condition p179 smooth)
    (treatment p179 varnished)
    (goalsize p179 medium)
    
    
    
    
    (unused p180)
    (goalsize p180 large)
    
    
    
    
    (available p181)
    (colour p181 black)
    (wood p181 walnut)
    (surface-condition p181 verysmooth)
    (treatment p181 colourfragments)
    (goalsize p181 small)
    
    
    
    
    (available p182)
    (colour p182 black)
    (wood p182 cherry)
    (surface-condition p182 rough)
    (treatment p182 colourfragments)
    (goalsize p182 small)
    
    
    
    
    (unused p183)
    (goalsize p183 medium)
    
    
    
    
    (unused p184)
    (goalsize p184 large)
    
    
    
    
    (unused p185)
    (goalsize p185 medium)
    
    
    
    
    (available p186)
    (colour p186 white)
    (wood p186 mahogany)
    (surface-condition p186 rough)
    (treatment p186 varnished)
    (goalsize p186 small)
    
    
    
    
    (available p187)
    (colour p187 blue)
    (wood p187 cherry)
    (surface-condition p187 smooth)
    (treatment p187 glazed)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 large)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (available p191)
    (colour p191 mauve)
    (wood p191 cherry)
    (surface-condition p191 smooth)
    (treatment p191 glazed)
    (goalsize p191 medium)
    
    
    
    
    (unused p192)
    (goalsize p192 medium)
    
    
    
    
    (unused p193)
    (goalsize p193 large)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 medium)
    
    
    
    
    (available p199)
    (colour p199 green)
    (wood p199 walnut)
    (surface-condition p199 rough)
    (treatment p199 colourfragments)
    (goalsize p199 medium)
    
    
    
    
    (unused p200)
    (goalsize p200 small)
    
    
    
    
    (unused p201)
    (goalsize p201 small)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 medium)
    
    
    
    
    (unused p204)
    (goalsize p204 small)
    
    
    
    
    (available p205)
    (colour p205 blue)
    (wood p205 pine)
    (surface-condition p205 rough)
    (treatment p205 glazed)
    (goalsize p205 large)
    
    
    
    
    (unused p206)
    (goalsize p206 medium)
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (available p208)
    (colour p208 blue)
    (wood p208 teak)
    (surface-condition p208 rough)
    (treatment p208 glazed)
    (goalsize p208 small)
    
    
    
    
    (unused p209)
    (goalsize p209 medium)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (available p211)
    (colour p211 natural)
    (wood p211 mahogany)
    (surface-condition p211 verysmooth)
    (treatment p211 glazed)
    (goalsize p211 medium)
    
    
    
    
    (unused p212)
    (goalsize p212 small)
    
    
    
    
    (available p213)
    (colour p213 mauve)
    (wood p213 pine)
    (surface-condition p213 smooth)
    (treatment p213 varnished)
    (goalsize p213 medium)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (unused p215)
    (goalsize p215 medium)
    
    
    
    
    (unused p216)
    (goalsize p216 small)
    
    
    
    
    (unused p217)
    (goalsize p217 large)
    
    
    
    
    (unused p218)
    (goalsize p218 medium)
    
    
    
    
    (unused p219)
    (goalsize p219 large)
    
    
    
    
    (unused p220)
    (goalsize p220 medium)
    
    
    
    
    (available p221)
    (colour p221 blue)
    (wood p221 pine)
    (surface-condition p221 verysmooth)
    (treatment p221 glazed)
    (goalsize p221 small)
    
    
    
    
    (available p222)
    (colour p222 mauve)
    (wood p222 walnut)
    (surface-condition p222 rough)
    (treatment p222 varnished)
    (goalsize p222 large)
    
    
    
    
    (unused p223)
    (goalsize p223 medium)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s10)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s4)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s5)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s6)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s5)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s11)
    (wood b14 oak)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s8)
    (wood b15 oak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s10)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s6)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s6)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s6)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s6)
    (wood b22 pine)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s6)
    (wood b23 pine)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s11)
    (wood b24 pine)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s9)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s9)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s6)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s10)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 walnut)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 walnut)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s10)
    (wood b31 walnut)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s11)
    (wood b32 walnut)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s8)
    (wood b33 walnut)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s8)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s8)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s9)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s2)
    (wood b38 walnut)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s10)
    (wood b39 teak)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 teak)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s7)
    (wood b41 teak)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s6)
    (wood b42 teak)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s6)
    (wood b43 teak)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s6)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s8)
    (wood b45 teak)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s8)
    (wood b46 beech)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s8)
    (wood b47 beech)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s10)
    (wood b48 beech)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s8)
    (wood b49 beech)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s10)
    (wood b50 beech)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s7)
    (wood b51 beech)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s9)
    (wood b52 beech)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s6)
    (wood b53 beech)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s9)
    (wood b54 beech)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s9)
    (wood b55 beech)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s9)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 pine)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 red)
      (treatment p2 glazed)
      (available p3)
      (wood p3 teak)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 red)
      (wood p4 cherry)
      (surface-condition p4 smooth)
      (available p5)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 black)
      (treatment p6 varnished)
      (available p7)
      (colour p7 blue)
      (wood p7 walnut)
      (treatment p7 varnished)
      (available p8)
      (colour p8 blue)
      (wood p8 teak)
      (surface-condition p8 verysmooth)
      (available p9)
      (colour p9 red)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (wood p10 mahogany)
      (surface-condition p10 verysmooth)
      (available p11)
      (colour p11 mauve)
      (treatment p11 varnished)
      (available p12)
      (wood p12 pine)
      (surface-condition p12 smooth)
      (available p13)
      (colour p13 natural)
      (wood p13 beech)
      (available p14)
      (wood p14 pine)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 blue)
      (wood p15 walnut)
      (surface-condition p15 verysmooth)
      (available p16)
      (wood p16 pine)
      (surface-condition p16 smooth)
      (available p17)
      (wood p17 oak)
      (treatment p17 varnished)
      (available p18)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 red)
      (wood p19 walnut)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (wood p21 beech)
      (surface-condition p21 verysmooth)
      (available p22)
      (surface-condition p22 verysmooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 green)
      (treatment p23 glazed)
      (available p24)
      (surface-condition p24 smooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 natural)
      (wood p25 beech)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 white)
      (wood p26 walnut)
      (surface-condition p26 smooth)
      (available p27)
      (wood p27 teak)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (wood p29 oak)
      (treatment p29 glazed)
      (available p30)
      (colour p30 green)
      (treatment p30 varnished)
      (available p31)
      (wood p31 walnut)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (colour p32 black)
      (wood p32 pine)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (wood p34 cherry)
      (surface-condition p34 smooth)
      (available p35)
      (colour p35 white)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (wood p37 teak)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (wood p38 beech)
      (surface-condition p38 verysmooth)
      (available p39)
      (colour p39 green)
      (treatment p39 glazed)
      (available p40)
      (colour p40 mauve)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (wood p41 walnut)
      (surface-condition p41 smooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 mauve)
      (wood p42 cherry)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (wood p43 cherry)
      (surface-condition p43 smooth)
      (available p44)
      (wood p44 beech)
      (treatment p44 varnished)
      (available p45)
      (wood p45 beech)
      (surface-condition p45 smooth)
      (treatment p45 varnished)
      (available p46)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
      (available p47)
      (wood p47 teak)
      (surface-condition p47 verysmooth)
      (available p48)
      (colour p48 green)
      (wood p48 walnut)
      (surface-condition p48 smooth)
      (available p49)
      (wood p49 teak)
      (surface-condition p49 smooth)
      (available p50)
      (colour p50 mauve)
      (treatment p50 varnished)
      (available p51)
      (colour p51 blue)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 green)
      (wood p52 mahogany)
      (surface-condition p52 verysmooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 white)
      (wood p53 oak)
      (surface-condition p53 verysmooth)
      (treatment p53 varnished)
      (available p54)
      (wood p54 oak)
      (treatment p54 varnished)
      (available p55)
      (colour p55 white)
      (wood p55 mahogany)
      (surface-condition p55 verysmooth)
      (treatment p55 glazed)
      (available p56)
      (wood p56 mahogany)
      (surface-condition p56 smooth)
      (treatment p56 varnished)
      (available p57)
      (wood p57 teak)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 green)
      (wood p58 beech)
      (surface-condition p58 smooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 green)
      (wood p59 cherry)
      (surface-condition p59 smooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 green)
      (wood p60 walnut)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 green)
      (wood p61 walnut)
      (available p62)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 natural)
      (treatment p63 glazed)
      (available p64)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 natural)
      (surface-condition p65 smooth)
      (available p66)
      (colour p66 white)
      (wood p66 oak)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 black)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 white)
      (wood p68 walnut)
      (available p69)
      (colour p69 green)
      (wood p69 oak)
      (surface-condition p69 verysmooth)
      (available p70)
      (colour p70 natural)
      (treatment p70 varnished)
      (available p71)
      (colour p71 red)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (colour p72 black)
      (wood p72 cherry)
      (available p73)
      (colour p73 green)
      (surface-condition p73 smooth)
      (available p74)
      (colour p74 mauve)
      (wood p74 walnut)
      (surface-condition p74 smooth)
      (treatment p74 varnished)
      (available p75)
      (wood p75 walnut)
      (treatment p75 glazed)
      (available p76)
      (colour p76 green)
      (surface-condition p76 smooth)
      (available p77)
      (colour p77 natural)
      (treatment p77 varnished)
      (available p78)
      (colour p78 green)
      (wood p78 mahogany)
      (available p79)
      (colour p79 white)
      (treatment p79 varnished)
      (available p80)
      (wood p80 oak)
      (surface-condition p80 verysmooth)
      (treatment p80 varnished)
      (available p81)
      (wood p81 mahogany)
      (treatment p81 varnished)
      (available p82)
      (colour p82 black)
      (surface-condition p82 smooth)
      (available p83)
      (colour p83 white)
      (surface-condition p83 verysmooth)
      (available p84)
      (colour p84 green)
      (wood p84 walnut)
      (treatment p84 varnished)
      (available p85)
      (colour p85 mauve)
      (wood p85 cherry)
      (surface-condition p85 verysmooth)
      (available p86)
      (colour p86 mauve)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (wood p87 teak)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 green)
      (treatment p88 glazed)
      (available p89)
      (surface-condition p89 smooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 white)
      (surface-condition p90 verysmooth)
      (available p91)
      (colour p91 green)
      (wood p91 beech)
      (surface-condition p91 smooth)
      (treatment p91 glazed)
      (available p92)
      (wood p92 cherry)
      (surface-condition p92 verysmooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 black)
      (surface-condition p93 verysmooth)
      (available p94)
      (colour p94 black)
      (wood p94 pine)
      (surface-condition p94 verysmooth)
      (available p95)
      (colour p95 white)
      (treatment p95 glazed)
      (available p96)
      (wood p96 pine)
      (treatment p96 varnished)
      (available p97)
      (colour p97 black)
      (wood p97 walnut)
      (treatment p97 varnished)
      (available p98)
      (wood p98 pine)
      (surface-condition p98 smooth)
      (treatment p98 glazed)
      (available p99)
      (colour p99 green)
      (surface-condition p99 verysmooth)
      (available p100)
      (colour p100 white)
      (wood p100 pine)
      (surface-condition p100 smooth)
      (available p101)
      (wood p101 mahogany)
      (surface-condition p101 verysmooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 white)
      (wood p102 cherry)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 green)
      (surface-condition p103 verysmooth)
      (available p104)
      (colour p104 black)
      (wood p104 teak)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 blue)
      (wood p105 oak)
      (surface-condition p105 smooth)
      (treatment p105 varnished)
      (available p106)
      (surface-condition p106 smooth)
      (treatment p106 varnished)
      (available p107)
      (wood p107 beech)
      (treatment p107 glazed)
      (available p108)
      (colour p108 green)
      (wood p108 cherry)
      (surface-condition p108 smooth)
      (available p109)
      (colour p109 red)
      (surface-condition p109 smooth)
      (available p110)
      (colour p110 red)
      (treatment p110 glazed)
      (available p111)
      (colour p111 natural)
      (surface-condition p111 verysmooth)
      (available p112)
      (wood p112 teak)
      (treatment p112 glazed)
      (available p113)
      (colour p113 red)
      (surface-condition p113 smooth)
      (available p114)
      (colour p114 mauve)
      (surface-condition p114 verysmooth)
      (available p115)
      (wood p115 oak)
      (surface-condition p115 verysmooth)
      (available p116)
      (wood p116 oak)
      (surface-condition p116 smooth)
      (available p117)
      (wood p117 cherry)
      (surface-condition p117 smooth)
      (treatment p117 varnished)
      (available p118)
      (wood p118 teak)
      (surface-condition p118 verysmooth)
      (available p119)
      (colour p119 natural)
      (wood p119 cherry)
      (surface-condition p119 verysmooth)
      (treatment p119 glazed)
      (available p120)
      (wood p120 pine)
      (treatment p120 varnished)
      (available p121)
      (surface-condition p121 smooth)
      (treatment p121 varnished)
      (available p122)
      (colour p122 green)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (colour p123 black)
      (treatment p123 glazed)
      (available p124)
      (colour p124 natural)
      (treatment p124 glazed)
      (available p125)
      (colour p125 black)
      (wood p125 cherry)
      (available p126)
      (wood p126 beech)
      (surface-condition p126 verysmooth)
      (available p127)
      (wood p127 beech)
      (surface-condition p127 verysmooth)
      (available p128)
      (colour p128 white)
      (treatment p128 varnished)
      (available p129)
      (colour p129 black)
      (wood p129 oak)
      (available p130)
      (wood p130 mahogany)
      (surface-condition p130 verysmooth)
      (available p131)
      (colour p131 red)
      (wood p131 beech)
      (surface-condition p131 smooth)
      (treatment p131 glazed)
      (available p132)
      (wood p132 mahogany)
      (treatment p132 glazed)
      (available p133)
      (wood p133 walnut)
      (treatment p133 glazed)
      (available p134)
      (wood p134 mahogany)
      (treatment p134 varnished)
      (available p135)
      (colour p135 green)
      (wood p135 cherry)
      (surface-condition p135 verysmooth)
      (treatment p135 varnished)
      (available p136)
      (surface-condition p136 smooth)
      (treatment p136 glazed)
      (available p137)
      (colour p137 blue)
      (treatment p137 varnished)
      (available p138)
      (wood p138 oak)
      (treatment p138 varnished)
      (available p139)
      (colour p139 mauve)
      (wood p139 walnut)
      (surface-condition p139 verysmooth)
      (treatment p139 varnished)
      (available p140)
      (wood p140 oak)
      (surface-condition p140 smooth)
      (available p141)
      (colour p141 black)
      (surface-condition p141 verysmooth)
      (available p142)
      (wood p142 oak)
      (surface-condition p142 smooth)
      (available p143)
      (colour p143 blue)
      (treatment p143 varnished)
      (available p144)
      (colour p144 white)
      (wood p144 cherry)
      (surface-condition p144 verysmooth)
      (available p145)
      (colour p145 green)
      (wood p145 teak)
      (treatment p145 glazed)
      (available p146)
      (wood p146 cherry)
      (surface-condition p146 smooth)
      (available p147)
      (colour p147 black)
      (wood p147 pine)
      (surface-condition p147 smooth)
      (treatment p147 varnished)
      (available p148)
      (wood p148 beech)
      (treatment p148 glazed)
      (available p149)
      (colour p149 green)
      (treatment p149 glazed)
      (available p150)
      (colour p150 blue)
      (wood p150 walnut)
      (surface-condition p150 smooth)
      (treatment p150 glazed)
      (available p151)
      (colour p151 white)
      (wood p151 pine)
      (available p152)
      (colour p152 mauve)
      (treatment p152 varnished)
      (available p153)
      (surface-condition p153 smooth)
      (treatment p153 glazed)
      (available p154)
      (colour p154 black)
      (treatment p154 varnished)
      (available p155)
      (colour p155 green)
      (wood p155 oak)
      (surface-condition p155 smooth)
      (treatment p155 varnished)
      (available p156)
      (colour p156 mauve)
      (treatment p156 glazed)
      (available p157)
      (surface-condition p157 smooth)
      (treatment p157 varnished)
      (available p158)
      (colour p158 green)
      (wood p158 oak)
      (surface-condition p158 verysmooth)
      (treatment p158 glazed)
      (available p159)
      (colour p159 black)
      (treatment p159 varnished)
      (available p160)
      (colour p160 red)
      (surface-condition p160 smooth)
      (available p161)
      (surface-condition p161 verysmooth)
      (treatment p161 varnished)
      (available p162)
      (colour p162 blue)
      (wood p162 beech)
      (available p163)
      (colour p163 blue)
      (surface-condition p163 smooth)
      (treatment p163 glazed)
      (available p164)
      (colour p164 black)
      (wood p164 walnut)
      (surface-condition p164 verysmooth)
      (available p165)
      (colour p165 red)
      (wood p165 pine)
      (surface-condition p165 smooth)
      (treatment p165 glazed)
      (available p166)
      (colour p166 green)
      (treatment p166 varnished)
      (available p167)
      (colour p167 red)
      (wood p167 teak)
      (surface-condition p167 smooth)
      (available p168)
      (colour p168 red)
      (wood p168 oak)
      (available p169)
      (wood p169 mahogany)
      (surface-condition p169 verysmooth)
      (available p170)
      (colour p170 blue)
      (wood p170 pine)
      (surface-condition p170 verysmooth)
      (available p171)
      (colour p171 blue)
      (surface-condition p171 smooth)
      (treatment p171 glazed)
      (available p172)
      (colour p172 white)
      (treatment p172 glazed)
      (available p173)
      (colour p173 mauve)
      (treatment p173 glazed)
      (available p174)
      (colour p174 red)
      (wood p174 walnut)
      (surface-condition p174 smooth)
      (treatment p174 glazed)
      (available p175)
      (colour p175 white)
      (surface-condition p175 verysmooth)
      (treatment p175 varnished)
      (available p176)
      (wood p176 beech)
      (treatment p176 glazed)
      (available p177)
      (colour p177 green)
      (wood p177 cherry)
      (surface-condition p177 verysmooth)
      (treatment p177 varnished)
      (available p178)
      (wood p178 pine)
      (treatment p178 varnished)
      (available p179)
      (colour p179 black)
      (wood p179 walnut)
      (treatment p179 glazed)
      (available p180)
      (colour p180 blue)
      (wood p180 cherry)
      (treatment p180 glazed)
      (available p181)
      (colour p181 mauve)
      (wood p181 walnut)
      (available p182)
      (colour p182 natural)
      (wood p182 cherry)
      (treatment p182 varnished)
      (available p183)
      (wood p183 cherry)
      (treatment p183 varnished)
      (available p184)
      (colour p184 red)
      (wood p184 beech)
      (treatment p184 varnished)
      (available p185)
      (wood p185 pine)
      (surface-condition p185 verysmooth)
      (available p186)
      (surface-condition p186 smooth)
      (treatment p186 glazed)
      (available p187)
      (colour p187 black)
      (surface-condition p187 smooth)
      (available p188)
      (colour p188 mauve)
      (wood p188 pine)
      (surface-condition p188 smooth)
      (available p189)
      (colour p189 red)
      (treatment p189 varnished)
      (available p190)
      (wood p190 walnut)
      (surface-condition p190 verysmooth)
      (available p191)
      (surface-condition p191 smooth)
      (treatment p191 varnished)
      (available p192)
      (colour p192 natural)
      (treatment p192 glazed)
      (available p193)
      (wood p193 oak)
      (treatment p193 glazed)
      (available p194)
      (wood p194 pine)
      (surface-condition p194 smooth)
      (available p195)
      (surface-condition p195 verysmooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 natural)
      (wood p196 mahogany)
      (available p197)
      (wood p197 walnut)
      (surface-condition p197 verysmooth)
      (treatment p197 glazed)
      (available p198)
      (wood p198 oak)
      (surface-condition p198 verysmooth)
      (treatment p198 varnished)
      (available p199)
      (colour p199 blue)
      (wood p199 walnut)
      (surface-condition p199 smooth)
      (treatment p199 glazed)
      (available p200)
      (surface-condition p200 smooth)
      (treatment p200 glazed)
      (available p201)
      (wood p201 beech)
      (surface-condition p201 verysmooth)
      (available p202)
      (colour p202 blue)
      (wood p202 walnut)
      (available p203)
      (surface-condition p203 smooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 black)
      (wood p204 oak)
      (treatment p204 varnished)
      (available p205)
      (wood p205 pine)
      (surface-condition p205 verysmooth)
      (available p206)
      (wood p206 walnut)
      (surface-condition p206 verysmooth)
      (treatment p206 varnished)
      (available p207)
      (colour p207 white)
      (surface-condition p207 verysmooth)
      (available p208)
      (colour p208 green)
      (wood p208 teak)
      (treatment p208 varnished)
      (available p209)
      (colour p209 black)
      (wood p209 teak)
      (surface-condition p209 smooth)
      (treatment p209 varnished)
      (available p210)
      (colour p210 black)
      (treatment p210 glazed)
      (available p211)
      (colour p211 white)
      (wood p211 mahogany)
      (available p212)
      (colour p212 natural)
      (wood p212 beech)
      (surface-condition p212 smooth)
      (treatment p212 varnished)
      (available p213)
      (wood p213 pine)
      (treatment p213 glazed)
      (available p214)
      (surface-condition p214 verysmooth)
      (treatment p214 glazed)
      (available p215)
      (colour p215 green)
      (surface-condition p215 smooth)
      (available p216)
      (wood p216 teak)
      (surface-condition p216 verysmooth)
      (available p217)
      (surface-condition p217 verysmooth)
      (treatment p217 glazed)
      (available p218)
      (colour p218 white)
      (wood p218 pine)
      (available p219)
      (colour p219 blue)
      (wood p219 beech)
      (available p220)
      (wood p220 pine)
      (treatment p220 glazed)
      (available p221)
      (colour p221 white)
      (wood p221 pine)
      (treatment p221 varnished)
      (available p222)
      (surface-condition p222 verysmooth)
      (treatment p222 glazed)
      (available p223)
      (wood p223 beech)
      (surface-condition p223 smooth)
      (treatment p223 glazed)
    )
  )
  
)
