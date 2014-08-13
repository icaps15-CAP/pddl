; woodworking task with 230 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 917091

(define (problem wood-prob-sat-87)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue green black white mauve red - acolour
    mahogany oak beech walnut cherry pine teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 - part
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 mauve)
    (wood p3 teak)
    (surface-condition p3 rough)
    (treatment p3 colourfragments)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (available p8)
    (colour p8 black)
    (wood p8 pine)
    (surface-condition p8 smooth)
    (treatment p8 varnished)
    (goalsize p8 large)
    
    
    
    
    (available p9)
    (colour p9 black)
    (wood p9 walnut)
    (surface-condition p9 rough)
    (treatment p9 glazed)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (available p13)
    (colour p13 green)
    (wood p13 oak)
    (surface-condition p13 verysmooth)
    (treatment p13 varnished)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 red)
    (wood p22 pine)
    (surface-condition p22 verysmooth)
    (treatment p22 colourfragments)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (available p25)
    (colour p25 mauve)
    (wood p25 walnut)
    (surface-condition p25 rough)
    (treatment p25 glazed)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (available p27)
    (colour p27 black)
    (wood p27 teak)
    (surface-condition p27 smooth)
    (treatment p27 varnished)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 green)
    (wood p31 teak)
    (surface-condition p31 smooth)
    (treatment p31 glazed)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
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
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (available p40)
    (colour p40 natural)
    (wood p40 oak)
    (surface-condition p40 verysmooth)
    (treatment p40 colourfragments)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (available p45)
    (colour p45 natural)
    (wood p45 oak)
    (surface-condition p45 rough)
    (treatment p45 colourfragments)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (available p47)
    (colour p47 mauve)
    (wood p47 walnut)
    (surface-condition p47 smooth)
    (treatment p47 colourfragments)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (available p49)
    (colour p49 mauve)
    (wood p49 beech)
    (surface-condition p49 smooth)
    (treatment p49 colourfragments)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (available p55)
    (colour p55 red)
    (wood p55 teak)
    (surface-condition p55 rough)
    (treatment p55 varnished)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (available p58)
    (colour p58 red)
    (wood p58 pine)
    (surface-condition p58 verysmooth)
    (treatment p58 glazed)
    (goalsize p58 large)
    
    
    
    
    (available p59)
    (colour p59 blue)
    (wood p59 teak)
    (surface-condition p59 smooth)
    (treatment p59 colourfragments)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (available p61)
    (colour p61 mauve)
    (wood p61 oak)
    (surface-condition p61 verysmooth)
    (treatment p61 colourfragments)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (available p64)
    (colour p64 black)
    (wood p64 beech)
    (surface-condition p64 verysmooth)
    (treatment p64 varnished)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 natural)
    (wood p67 pine)
    (surface-condition p67 verysmooth)
    (treatment p67 glazed)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
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
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (available p91)
    (colour p91 white)
    (wood p91 oak)
    (surface-condition p91 rough)
    (treatment p91 colourfragments)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (available p104)
    (colour p104 red)
    (wood p104 cherry)
    (surface-condition p104 rough)
    (treatment p104 glazed)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (available p109)
    (colour p109 green)
    (wood p109 oak)
    (surface-condition p109 smooth)
    (treatment p109 varnished)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (available p112)
    (colour p112 red)
    (wood p112 pine)
    (surface-condition p112 smooth)
    (treatment p112 colourfragments)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (available p122)
    (colour p122 black)
    (wood p122 walnut)
    (surface-condition p122 rough)
    (treatment p122 varnished)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (available p125)
    (colour p125 mauve)
    (wood p125 teak)
    (surface-condition p125 smooth)
    (treatment p125 glazed)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (available p128)
    (colour p128 red)
    (wood p128 pine)
    (surface-condition p128 rough)
    (treatment p128 glazed)
    (goalsize p128 large)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (available p131)
    (colour p131 white)
    (wood p131 teak)
    (surface-condition p131 verysmooth)
    (treatment p131 varnished)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (available p140)
    (colour p140 red)
    (wood p140 oak)
    (surface-condition p140 rough)
    (treatment p140 colourfragments)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (available p143)
    (colour p143 green)
    (wood p143 oak)
    (surface-condition p143 rough)
    (treatment p143 glazed)
    (goalsize p143 medium)
    
    
    
    
    (available p144)
    (colour p144 blue)
    (wood p144 teak)
    (surface-condition p144 smooth)
    (treatment p144 varnished)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 small)
    
    
    
    
    (available p157)
    (colour p157 red)
    (wood p157 pine)
    (surface-condition p157 verysmooth)
    (treatment p157 colourfragments)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (available p162)
    (colour p162 black)
    (wood p162 mahogany)
    (surface-condition p162 rough)
    (treatment p162 colourfragments)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (available p167)
    (colour p167 green)
    (wood p167 oak)
    (surface-condition p167 rough)
    (treatment p167 glazed)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 large)
    
    
    
    
    (unused p171)
    (goalsize p171 large)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 small)
    
    
    
    
    (available p176)
    (colour p176 green)
    (wood p176 mahogany)
    (surface-condition p176 smooth)
    (treatment p176 colourfragments)
    (goalsize p176 medium)
    
    
    
    
    (available p177)
    (colour p177 natural)
    (wood p177 pine)
    (surface-condition p177 verysmooth)
    (treatment p177 varnished)
    (goalsize p177 small)
    
    
    
    
    (unused p178)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (available p180)
    (colour p180 white)
    (wood p180 mahogany)
    (surface-condition p180 verysmooth)
    (treatment p180 colourfragments)
    (goalsize p180 small)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 medium)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (unused p184)
    (goalsize p184 medium)
    
    
    
    
    (available p185)
    (colour p185 mauve)
    (wood p185 oak)
    (surface-condition p185 smooth)
    (treatment p185 colourfragments)
    (goalsize p185 medium)
    
    
    
    
    (unused p186)
    (goalsize p186 large)
    
    
    
    
    (unused p187)
    (goalsize p187 small)
    
    
    
    
    (unused p188)
    (goalsize p188 small)
    
    
    
    
    (unused p189)
    (goalsize p189 small)
    
    
    
    
    (unused p190)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 large)
    
    
    
    
    (available p192)
    (colour p192 black)
    (wood p192 beech)
    (surface-condition p192 smooth)
    (treatment p192 colourfragments)
    (goalsize p192 medium)
    
    
    
    
    (unused p193)
    (goalsize p193 large)
    
    
    
    
    (unused p194)
    (goalsize p194 medium)
    
    
    
    
    (unused p195)
    (goalsize p195 large)
    
    
    
    
    (unused p196)
    (goalsize p196 large)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 large)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 small)
    
    
    
    
    (unused p202)
    (goalsize p202 medium)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (available p204)
    (colour p204 natural)
    (wood p204 oak)
    (surface-condition p204 smooth)
    (treatment p204 colourfragments)
    (goalsize p204 small)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 large)
    
    
    
    
    (unused p207)
    (goalsize p207 small)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (available p209)
    (colour p209 red)
    (wood p209 beech)
    (surface-condition p209 rough)
    (treatment p209 varnished)
    (goalsize p209 small)
    
    
    
    
    (unused p210)
    (goalsize p210 small)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (unused p212)
    (goalsize p212 medium)
    
    
    
    
    (unused p213)
    (goalsize p213 large)
    
    
    
    
    (unused p214)
    (goalsize p214 small)
    
    
    
    
    (unused p215)
    (goalsize p215 large)
    
    
    
    
    (unused p216)
    (goalsize p216 small)
    
    
    
    
    (unused p217)
    (goalsize p217 medium)
    
    
    
    
    (unused p218)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 small)
    
    
    
    
    (unused p220)
    (goalsize p220 large)
    
    
    
    
    (unused p221)
    (goalsize p221 large)
    
    
    
    
    (unused p222)
    (goalsize p222 small)
    
    
    
    
    (unused p223)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 small)
    
    
    
    
    (unused p225)
    (goalsize p225 medium)
    
    
    
    
    (available p226)
    (colour p226 white)
    (wood p226 mahogany)
    (surface-condition p226 rough)
    (treatment p226 colourfragments)
    (goalsize p226 large)
    
    
    
    
    (available p227)
    (colour p227 blue)
    (wood p227 pine)
    (surface-condition p227 verysmooth)
    (treatment p227 colourfragments)
    (goalsize p227 large)
    
    
    
    
    (available p228)
    (colour p228 blue)
    (wood p228 mahogany)
    (surface-condition p228 verysmooth)
    (treatment p228 colourfragments)
    (goalsize p228 small)
    
    
    
    
    (unused p229)
    (goalsize p229 large)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s12)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s7)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s4)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 mahogany)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s3)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s12)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s8)
    (wood b26 oak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 oak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s9)
    (wood b28 oak)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s9)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 pine)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s11)
    (wood b31 pine)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s10)
    (wood b32 pine)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s7)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s10)
    (wood b34 pine)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s8)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s8)
    (wood b36 walnut)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s9)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s12)
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
    (boardsize b41 s7)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s11)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s8)
    (wood b43 walnut)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s5)
    (wood b44 walnut)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s7)
    (wood b45 teak)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s9)
    (wood b46 teak)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s8)
    (wood b47 teak)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s9)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s8)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s6)
    (wood b50 teak)
    (surface-condition b50 smooth)
    (available b50)
    (boardsize b51 s8)
    (wood b51 teak)
    (surface-condition b51 smooth)
    (available b51)
    (boardsize b52 s6)
    (wood b52 teak)
    (surface-condition b52 rough)
    (available b52)
    (boardsize b53 s12)
    (wood b53 teak)
    (surface-condition b53 rough)
    (available b53)
    (boardsize b54 s4)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s8)
    (wood b55 beech)
    (surface-condition b55 smooth)
    (available b55)
    (boardsize b56 s9)
    (wood b56 beech)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s7)
    (wood b57 beech)
    (surface-condition b57 smooth)
    (available b57)
    (boardsize b58 s2)
    (wood b58 beech)
    (surface-condition b58 rough)
    (available b58)
  )
  (:goal
    (and
      (available p0)
      (wood p0 cherry)
      (treatment p0 varnished)
      (available p1)
      (colour p1 mauve)
      (treatment p1 glazed)
      (available p2)
      (colour p2 blue)
      (wood p2 beech)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 mauve)
      (treatment p5 varnished)
      (available p6)
      (colour p6 mauve)
      (wood p6 cherry)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 red)
      (treatment p7 varnished)
      (available p8)
      (colour p8 blue)
      (wood p8 pine)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (wood p9 walnut)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 natural)
      (wood p10 oak)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 green)
      (wood p11 mahogany)
      (available p12)
      (colour p12 green)
      (wood p12 pine)
      (available p13)
      (colour p13 black)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 green)
      (wood p14 oak)
      (surface-condition p14 smooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 white)
      (treatment p15 varnished)
      (available p16)
      (colour p16 red)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 white)
      (wood p17 pine)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 teak)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 black)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 black)
      (wood p20 teak)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 natural)
      (treatment p21 glazed)
      (available p22)
      (colour p22 natural)
      (surface-condition p22 verysmooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 mauve)
      (wood p23 teak)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 natural)
      (wood p24 walnut)
      (treatment p24 glazed)
      (available p25)
      (colour p25 white)
      (wood p25 walnut)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (wood p26 pine)
      (surface-condition p26 smooth)
      (available p27)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (wood p28 walnut)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (wood p29 teak)
      (surface-condition p29 smooth)
      (available p30)
      (wood p30 mahogany)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 mauve)
      (wood p31 teak)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (colour p32 red)
      (wood p32 mahogany)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 red)
      (wood p33 oak)
      (surface-condition p33 verysmooth)
      (treatment p33 glazed)
      (available p34)
      (wood p34 oak)
      (treatment p34 glazed)
      (available p35)
      (colour p35 blue)
      (treatment p35 varnished)
      (available p36)
      (colour p36 blue)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 mauve)
      (treatment p37 glazed)
      (available p38)
      (wood p38 beech)
      (treatment p38 glazed)
      (available p39)
      (colour p39 mauve)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 red)
      (wood p41 cherry)
      (available p42)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 mauve)
      (wood p43 cherry)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 white)
      (treatment p44 glazed)
      (available p45)
      (colour p45 black)
      (wood p45 oak)
      (surface-condition p45 verysmooth)
      (available p46)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (wood p47 walnut)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (wood p48 oak)
      (treatment p48 glazed)
      (available p49)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 white)
      (wood p50 oak)
      (treatment p50 varnished)
      (available p51)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (wood p52 walnut)
      (surface-condition p52 smooth)
      (available p53)
      (colour p53 black)
      (wood p53 pine)
      (available p54)
      (surface-condition p54 verysmooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 green)
      (wood p55 teak)
      (surface-condition p55 smooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 natural)
      (treatment p56 varnished)
      (available p57)
      (colour p57 blue)
      (wood p57 mahogany)
      (treatment p57 varnished)
      (available p58)
      (colour p58 blue)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 natural)
      (wood p59 teak)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 green)
      (treatment p61 glazed)
      (available p62)
      (colour p62 mauve)
      (wood p62 oak)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 natural)
      (wood p63 teak)
      (available p64)
      (wood p64 beech)
      (surface-condition p64 smooth)
      (available p65)
      (colour p65 black)
      (wood p65 teak)
      (available p66)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 white)
      (wood p67 pine)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 green)
      (wood p68 teak)
      (surface-condition p68 verysmooth)
      (available p69)
      (colour p69 white)
      (wood p69 oak)
      (available p70)
      (colour p70 mauve)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 blue)
      (wood p71 beech)
      (surface-condition p71 verysmooth)
      (treatment p71 varnished)
      (available p72)
      (colour p72 mauve)
      (wood p72 walnut)
      (surface-condition p72 verysmooth)
      (treatment p72 varnished)
      (available p73)
      (colour p73 red)
      (surface-condition p73 verysmooth)
      (available p74)
      (colour p74 mauve)
      (surface-condition p74 verysmooth)
      (available p75)
      (colour p75 blue)
      (surface-condition p75 verysmooth)
      (treatment p75 varnished)
      (available p76)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (colour p77 natural)
      (surface-condition p77 verysmooth)
      (available p78)
      (colour p78 blue)
      (surface-condition p78 smooth)
      (available p79)
      (colour p79 green)
      (wood p79 mahogany)
      (available p80)
      (colour p80 green)
      (wood p80 teak)
      (surface-condition p80 verysmooth)
      (treatment p80 glazed)
      (available p81)
      (colour p81 blue)
      (treatment p81 varnished)
      (available p82)
      (colour p82 natural)
      (wood p82 cherry)
      (available p83)
      (colour p83 black)
      (treatment p83 varnished)
      (available p84)
      (colour p84 green)
      (treatment p84 glazed)
      (available p85)
      (colour p85 black)
      (treatment p85 glazed)
      (available p86)
      (colour p86 red)
      (surface-condition p86 smooth)
      (available p87)
      (colour p87 mauve)
      (surface-condition p87 verysmooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 green)
      (wood p88 walnut)
      (treatment p88 varnished)
      (available p89)
      (colour p89 mauve)
      (wood p89 cherry)
      (surface-condition p89 smooth)
      (available p90)
      (surface-condition p90 verysmooth)
      (treatment p90 glazed)
      (available p91)
      (wood p91 oak)
      (surface-condition p91 verysmooth)
      (available p92)
      (colour p92 blue)
      (wood p92 mahogany)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 red)
      (wood p93 teak)
      (treatment p93 varnished)
      (available p94)
      (wood p94 cherry)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 white)
      (wood p95 teak)
      (surface-condition p95 smooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 natural)
      (wood p96 cherry)
      (surface-condition p96 smooth)
      (treatment p96 varnished)
      (available p97)
      (surface-condition p97 smooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 blue)
      (wood p98 beech)
      (available p99)
      (colour p99 white)
      (wood p99 teak)
      (available p100)
      (colour p100 mauve)
      (wood p100 walnut)
      (surface-condition p100 verysmooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 blue)
      (wood p101 cherry)
      (available p102)
      (wood p102 mahogany)
      (treatment p102 glazed)
      (available p103)
      (colour p103 mauve)
      (wood p103 mahogany)
      (available p104)
      (wood p104 cherry)
      (treatment p104 varnished)
      (available p105)
      (colour p105 white)
      (surface-condition p105 smooth)
      (available p106)
      (wood p106 walnut)
      (surface-condition p106 verysmooth)
      (available p107)
      (wood p107 cherry)
      (treatment p107 varnished)
      (available p108)
      (surface-condition p108 smooth)
      (treatment p108 varnished)
      (available p109)
      (wood p109 oak)
      (surface-condition p109 verysmooth)
      (treatment p109 glazed)
      (available p110)
      (colour p110 natural)
      (treatment p110 glazed)
      (available p111)
      (colour p111 mauve)
      (wood p111 mahogany)
      (treatment p111 glazed)
      (available p112)
      (colour p112 mauve)
      (wood p112 pine)
      (surface-condition p112 verysmooth)
      (treatment p112 glazed)
      (available p113)
      (surface-condition p113 verysmooth)
      (treatment p113 glazed)
      (available p114)
      (wood p114 pine)
      (treatment p114 glazed)
      (available p115)
      (colour p115 natural)
      (wood p115 mahogany)
      (surface-condition p115 smooth)
      (treatment p115 glazed)
      (available p116)
      (colour p116 blue)
      (wood p116 pine)
      (surface-condition p116 smooth)
      (treatment p116 varnished)
      (available p117)
      (wood p117 beech)
      (treatment p117 varnished)
      (available p118)
      (wood p118 mahogany)
      (surface-condition p118 smooth)
      (available p119)
      (colour p119 white)
      (wood p119 cherry)
      (available p120)
      (colour p120 white)
      (surface-condition p120 verysmooth)
      (available p121)
      (colour p121 black)
      (wood p121 teak)
      (surface-condition p121 smooth)
      (treatment p121 varnished)
      (available p122)
      (surface-condition p122 verysmooth)
      (treatment p122 varnished)
      (available p123)
      (colour p123 white)
      (surface-condition p123 smooth)
      (available p124)
      (colour p124 white)
      (wood p124 mahogany)
      (surface-condition p124 verysmooth)
      (available p125)
      (wood p125 teak)
      (surface-condition p125 verysmooth)
      (treatment p125 glazed)
      (available p126)
      (colour p126 mauve)
      (treatment p126 varnished)
      (available p127)
      (colour p127 red)
      (wood p127 oak)
      (surface-condition p127 verysmooth)
      (available p128)
      (wood p128 pine)
      (treatment p128 varnished)
      (available p129)
      (colour p129 black)
      (treatment p129 varnished)
      (available p130)
      (colour p130 mauve)
      (surface-condition p130 verysmooth)
      (treatment p130 glazed)
      (available p131)
      (colour p131 black)
      (wood p131 teak)
      (surface-condition p131 verysmooth)
      (treatment p131 varnished)
      (available p132)
      (colour p132 blue)
      (wood p132 beech)
      (surface-condition p132 smooth)
      (treatment p132 varnished)
      (available p133)
      (colour p133 red)
      (surface-condition p133 verysmooth)
      (treatment p133 varnished)
      (available p134)
      (colour p134 blue)
      (wood p134 mahogany)
      (surface-condition p134 smooth)
      (treatment p134 varnished)
      (available p135)
      (colour p135 black)
      (wood p135 teak)
      (surface-condition p135 verysmooth)
      (available p136)
      (colour p136 natural)
      (wood p136 oak)
      (treatment p136 glazed)
      (available p137)
      (colour p137 black)
      (surface-condition p137 smooth)
      (available p138)
      (surface-condition p138 smooth)
      (treatment p138 glazed)
      (available p139)
      (colour p139 black)
      (wood p139 mahogany)
      (surface-condition p139 verysmooth)
      (treatment p139 glazed)
      (available p140)
      (colour p140 mauve)
      (wood p140 oak)
      (surface-condition p140 smooth)
      (treatment p140 varnished)
      (available p141)
      (colour p141 red)
      (surface-condition p141 smooth)
      (available p142)
      (colour p142 blue)
      (surface-condition p142 verysmooth)
      (treatment p142 varnished)
      (available p143)
      (colour p143 natural)
      (wood p143 oak)
      (surface-condition p143 verysmooth)
      (treatment p143 varnished)
      (available p144)
      (colour p144 white)
      (wood p144 teak)
      (available p145)
      (colour p145 black)
      (surface-condition p145 verysmooth)
      (available p146)
      (colour p146 mauve)
      (wood p146 walnut)
      (surface-condition p146 smooth)
      (treatment p146 glazed)
      (available p147)
      (colour p147 white)
      (wood p147 cherry)
      (treatment p147 varnished)
      (available p148)
      (colour p148 mauve)
      (wood p148 cherry)
      (surface-condition p148 smooth)
      (treatment p148 varnished)
      (available p149)
      (wood p149 walnut)
      (surface-condition p149 verysmooth)
      (available p150)
      (colour p150 blue)
      (surface-condition p150 verysmooth)
      (available p151)
      (colour p151 mauve)
      (wood p151 mahogany)
      (surface-condition p151 smooth)
      (treatment p151 varnished)
      (available p152)
      (colour p152 white)
      (treatment p152 glazed)
      (available p153)
      (colour p153 blue)
      (surface-condition p153 verysmooth)
      (treatment p153 varnished)
      (available p154)
      (colour p154 red)
      (wood p154 cherry)
      (surface-condition p154 verysmooth)
      (treatment p154 varnished)
      (available p155)
      (colour p155 mauve)
      (treatment p155 varnished)
      (available p156)
      (wood p156 cherry)
      (surface-condition p156 verysmooth)
      (treatment p156 glazed)
      (available p157)
      (wood p157 pine)
      (surface-condition p157 verysmooth)
      (treatment p157 varnished)
      (available p158)
      (surface-condition p158 verysmooth)
      (treatment p158 varnished)
      (available p159)
      (colour p159 green)
      (surface-condition p159 verysmooth)
      (treatment p159 glazed)
      (available p160)
      (surface-condition p160 verysmooth)
      (treatment p160 glazed)
      (available p161)
      (colour p161 mauve)
      (surface-condition p161 smooth)
      (available p162)
      (wood p162 mahogany)
      (treatment p162 glazed)
      (available p163)
      (colour p163 blue)
      (wood p163 mahogany)
      (surface-condition p163 verysmooth)
      (treatment p163 glazed)
      (available p164)
      (colour p164 blue)
      (surface-condition p164 smooth)
      (available p165)
      (wood p165 teak)
      (surface-condition p165 smooth)
      (available p166)
      (colour p166 blue)
      (wood p166 walnut)
      (surface-condition p166 verysmooth)
      (available p167)
      (colour p167 red)
      (wood p167 oak)
      (surface-condition p167 smooth)
      (treatment p167 varnished)
      (available p168)
      (colour p168 red)
      (surface-condition p168 smooth)
      (treatment p168 glazed)
      (available p169)
      (surface-condition p169 smooth)
      (treatment p169 varnished)
      (available p170)
      (colour p170 green)
      (wood p170 walnut)
      (treatment p170 varnished)
      (available p171)
      (surface-condition p171 verysmooth)
      (treatment p171 glazed)
      (available p172)
      (colour p172 blue)
      (wood p172 cherry)
      (surface-condition p172 smooth)
      (available p173)
      (wood p173 oak)
      (treatment p173 glazed)
      (available p174)
      (colour p174 black)
      (wood p174 teak)
      (surface-condition p174 verysmooth)
      (treatment p174 varnished)
      (available p175)
      (surface-condition p175 verysmooth)
      (treatment p175 varnished)
      (available p176)
      (colour p176 mauve)
      (wood p176 mahogany)
      (surface-condition p176 verysmooth)
      (treatment p176 glazed)
      (available p177)
      (colour p177 red)
      (surface-condition p177 smooth)
      (available p178)
      (surface-condition p178 smooth)
      (treatment p178 varnished)
      (available p179)
      (colour p179 green)
      (surface-condition p179 verysmooth)
      (available p180)
      (colour p180 natural)
      (wood p180 mahogany)
      (surface-condition p180 smooth)
      (treatment p180 glazed)
      (available p181)
      (colour p181 red)
      (treatment p181 glazed)
      (available p182)
      (colour p182 black)
      (treatment p182 varnished)
      (available p183)
      (wood p183 walnut)
      (treatment p183 glazed)
      (available p184)
      (colour p184 white)
      (surface-condition p184 smooth)
      (available p185)
      (colour p185 black)
      (treatment p185 glazed)
      (available p186)
      (colour p186 green)
      (wood p186 oak)
      (surface-condition p186 smooth)
      (treatment p186 varnished)
      (available p187)
      (wood p187 oak)
      (surface-condition p187 smooth)
      (treatment p187 varnished)
      (available p188)
      (wood p188 beech)
      (surface-condition p188 smooth)
      (treatment p188 glazed)
      (available p189)
      (colour p189 green)
      (wood p189 pine)
      (available p190)
      (colour p190 mauve)
      (wood p190 walnut)
      (surface-condition p190 verysmooth)
      (available p191)
      (colour p191 white)
      (wood p191 walnut)
      (surface-condition p191 smooth)
      (treatment p191 glazed)
      (available p192)
      (colour p192 white)
      (treatment p192 varnished)
      (available p193)
      (colour p193 black)
      (wood p193 cherry)
      (surface-condition p193 smooth)
      (available p194)
      (colour p194 mauve)
      (treatment p194 varnished)
      (available p195)
      (wood p195 mahogany)
      (surface-condition p195 verysmooth)
      (available p196)
      (wood p196 beech)
      (treatment p196 glazed)
      (available p197)
      (wood p197 walnut)
      (treatment p197 varnished)
      (available p198)
      (surface-condition p198 smooth)
      (treatment p198 varnished)
      (available p199)
      (colour p199 green)
      (surface-condition p199 verysmooth)
      (available p200)
      (colour p200 white)
      (wood p200 walnut)
      (surface-condition p200 smooth)
      (treatment p200 varnished)
      (available p201)
      (wood p201 oak)
      (surface-condition p201 verysmooth)
      (treatment p201 varnished)
      (available p202)
      (colour p202 black)
      (surface-condition p202 verysmooth)
      (treatment p202 glazed)
      (available p203)
      (colour p203 blue)
      (wood p203 cherry)
      (surface-condition p203 smooth)
      (treatment p203 glazed)
      (available p204)
      (colour p204 red)
      (surface-condition p204 verysmooth)
      (available p205)
      (colour p205 green)
      (surface-condition p205 verysmooth)
      (available p206)
      (colour p206 natural)
      (wood p206 oak)
      (available p207)
      (colour p207 blue)
      (treatment p207 glazed)
      (available p208)
      (colour p208 black)
      (wood p208 teak)
      (surface-condition p208 verysmooth)
      (treatment p208 varnished)
      (available p209)
      (colour p209 natural)
      (treatment p209 varnished)
      (available p210)
      (colour p210 black)
      (treatment p210 glazed)
      (available p211)
      (wood p211 pine)
      (surface-condition p211 smooth)
      (available p212)
      (wood p212 pine)
      (surface-condition p212 smooth)
      (treatment p212 varnished)
      (available p213)
      (wood p213 cherry)
      (surface-condition p213 verysmooth)
      (treatment p213 varnished)
      (available p214)
      (colour p214 green)
      (wood p214 oak)
      (available p215)
      (colour p215 red)
      (wood p215 cherry)
      (available p216)
      (wood p216 walnut)
      (treatment p216 varnished)
      (available p217)
      (wood p217 mahogany)
      (surface-condition p217 smooth)
      (available p218)
      (wood p218 cherry)
      (surface-condition p218 verysmooth)
      (available p219)
      (surface-condition p219 smooth)
      (treatment p219 glazed)
      (available p220)
      (wood p220 teak)
      (treatment p220 varnished)
      (available p221)
      (wood p221 walnut)
      (surface-condition p221 verysmooth)
      (treatment p221 varnished)
      (available p222)
      (wood p222 walnut)
      (surface-condition p222 verysmooth)
      (available p223)
      (colour p223 black)
      (treatment p223 glazed)
      (available p224)
      (colour p224 natural)
      (wood p224 oak)
      (treatment p224 glazed)
      (available p225)
      (colour p225 red)
      (wood p225 pine)
      (surface-condition p225 smooth)
      (available p226)
      (wood p226 mahogany)
      (treatment p226 varnished)
      (available p227)
      (colour p227 natural)
      (wood p227 pine)
      (surface-condition p227 verysmooth)
      (available p228)
      (colour p228 green)
      (treatment p228 glazed)
      (available p229)
      (surface-condition p229 verysmooth)
      (treatment p229 glazed)
    )
  )
  
)
