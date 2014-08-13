; woodworking task with 245 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 742184

(define (problem wood-prob-sat-186)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve white red blue black green - acolour
    walnut oak cherry mahogany pine teak beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 p176 p177 p178 p179 p180 p181 p182 p183 p184 p185 p186 p187 p188 p189 p190 p191 p192 p193 p194 p195 p196 p197 p198 p199 p200 p201 p202 p203 p204 p205 p206 p207 p208 p209 p210 p211 p212 p213 p214 p215 p216 p217 p218 p219 p220 p221 p222 p223 p224 p225 p226 p227 p228 p229 p230 p231 p232 p233 p234 p235 p236 p237 p238 p239 p240 p241 p242 p243 p244 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 black)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 black)
    (wood p0 beech)
    (surface-condition p0 smooth)
    (treatment p0 colourfragments)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (available p9)
    (colour p9 green)
    (wood p9 cherry)
    (surface-condition p9 rough)
    (treatment p9 glazed)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (available p11)
    (colour p11 natural)
    (wood p11 mahogany)
    (surface-condition p11 smooth)
    (treatment p11 varnished)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (available p15)
    (colour p15 white)
    (wood p15 mahogany)
    (surface-condition p15 rough)
    (treatment p15 varnished)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 black)
    (wood p22 beech)
    (surface-condition p22 rough)
    (treatment p22 colourfragments)
    (goalsize p22 large)
    
    
    
    
    (available p23)
    (colour p23 green)
    (wood p23 cherry)
    (surface-condition p23 verysmooth)
    (treatment p23 glazed)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 blue)
    (wood p29 walnut)
    (surface-condition p29 verysmooth)
    (treatment p29 colourfragments)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 mauve)
    (wood p33 oak)
    (surface-condition p33 verysmooth)
    (treatment p33 colourfragments)
    (goalsize p33 large)
    
    
    
    
    (available p34)
    (colour p34 green)
    (wood p34 pine)
    (surface-condition p34 rough)
    (treatment p34 glazed)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (available p36)
    (colour p36 black)
    (wood p36 teak)
    (surface-condition p36 rough)
    (treatment p36 colourfragments)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (available p38)
    (colour p38 mauve)
    (wood p38 cherry)
    (surface-condition p38 smooth)
    (treatment p38 glazed)
    (goalsize p38 medium)
    
    
    
    
    (available p39)
    (colour p39 red)
    (wood p39 cherry)
    (surface-condition p39 smooth)
    (treatment p39 colourfragments)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (available p43)
    (colour p43 green)
    (wood p43 beech)
    (surface-condition p43 rough)
    (treatment p43 glazed)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (available p48)
    (colour p48 natural)
    (wood p48 pine)
    (surface-condition p48 verysmooth)
    (treatment p48 varnished)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (available p50)
    (colour p50 red)
    (wood p50 mahogany)
    (surface-condition p50 smooth)
    (treatment p50 colourfragments)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (available p53)
    (colour p53 green)
    (wood p53 cherry)
    (surface-condition p53 rough)
    (treatment p53 glazed)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (available p57)
    (colour p57 natural)
    (wood p57 mahogany)
    (surface-condition p57 verysmooth)
    (treatment p57 varnished)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (available p60)
    (colour p60 black)
    (wood p60 walnut)
    (surface-condition p60 verysmooth)
    (treatment p60 varnished)
    (goalsize p60 small)
    
    
    
    
    (available p61)
    (colour p61 natural)
    (wood p61 pine)
    (surface-condition p61 smooth)
    (treatment p61 varnished)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (available p72)
    (colour p72 white)
    (wood p72 cherry)
    (surface-condition p72 rough)
    (treatment p72 glazed)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (available p75)
    (colour p75 green)
    (wood p75 pine)
    (surface-condition p75 smooth)
    (treatment p75 glazed)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (available p77)
    (colour p77 natural)
    (wood p77 oak)
    (surface-condition p77 rough)
    (treatment p77 varnished)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (available p80)
    (colour p80 black)
    (wood p80 pine)
    (surface-condition p80 rough)
    (treatment p80 glazed)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (available p82)
    (colour p82 blue)
    (wood p82 walnut)
    (surface-condition p82 rough)
    (treatment p82 varnished)
    (goalsize p82 small)
    
    
    
    
    (available p83)
    (colour p83 black)
    (wood p83 cherry)
    (surface-condition p83 smooth)
    (treatment p83 varnished)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (available p85)
    (colour p85 white)
    (wood p85 oak)
    (surface-condition p85 verysmooth)
    (treatment p85 glazed)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (available p87)
    (colour p87 red)
    (wood p87 walnut)
    (surface-condition p87 rough)
    (treatment p87 glazed)
    (goalsize p87 large)
    
    
    
    
    (available p88)
    (colour p88 red)
    (wood p88 teak)
    (surface-condition p88 rough)
    (treatment p88 colourfragments)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (available p91)
    (colour p91 black)
    (wood p91 beech)
    (surface-condition p91 rough)
    (treatment p91 varnished)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (available p93)
    (colour p93 white)
    (wood p93 pine)
    (surface-condition p93 rough)
    (treatment p93 glazed)
    (goalsize p93 large)
    
    
    
    
    (available p94)
    (colour p94 red)
    (wood p94 teak)
    (surface-condition p94 smooth)
    (treatment p94 glazed)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (available p96)
    (colour p96 red)
    (wood p96 mahogany)
    (surface-condition p96 rough)
    (treatment p96 colourfragments)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (available p101)
    (colour p101 natural)
    (wood p101 teak)
    (surface-condition p101 rough)
    (treatment p101 colourfragments)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (available p109)
    (colour p109 blue)
    (wood p109 teak)
    (surface-condition p109 verysmooth)
    (treatment p109 glazed)
    (goalsize p109 large)
    
    
    
    
    (available p110)
    (colour p110 red)
    (wood p110 pine)
    (surface-condition p110 rough)
    (treatment p110 varnished)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 large)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (available p127)
    (colour p127 black)
    (wood p127 walnut)
    (surface-condition p127 verysmooth)
    (treatment p127 colourfragments)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 large)
    
    
    
    
    (available p130)
    (colour p130 white)
    (wood p130 walnut)
    (surface-condition p130 smooth)
    (treatment p130 glazed)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 large)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (available p136)
    (colour p136 blue)
    (wood p136 walnut)
    (surface-condition p136 verysmooth)
    (treatment p136 colourfragments)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (available p138)
    (colour p138 red)
    (wood p138 walnut)
    (surface-condition p138 verysmooth)
    (treatment p138 varnished)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 small)
    
    
    
    
    (available p141)
    (colour p141 red)
    (wood p141 mahogany)
    (surface-condition p141 verysmooth)
    (treatment p141 varnished)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (available p145)
    (colour p145 black)
    (wood p145 oak)
    (surface-condition p145 verysmooth)
    (treatment p145 glazed)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (available p149)
    (colour p149 black)
    (wood p149 pine)
    (surface-condition p149 rough)
    (treatment p149 glazed)
    (goalsize p149 small)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (available p152)
    (colour p152 black)
    (wood p152 beech)
    (surface-condition p152 smooth)
    (treatment p152 colourfragments)
    (goalsize p152 large)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 small)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 small)
    
    
    
    
    (unused p171)
    (goalsize p171 small)
    
    
    
    
    (unused p172)
    (goalsize p172 small)
    
    
    
    
    (unused p173)
    (goalsize p173 medium)
    
    
    
    
    (unused p174)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 large)
    
    
    
    
    (unused p176)
    (goalsize p176 small)
    
    
    
    
    (unused p177)
    (goalsize p177 medium)
    
    
    
    
    (available p178)
    (colour p178 mauve)
    (wood p178 pine)
    (surface-condition p178 verysmooth)
    (treatment p178 glazed)
    (goalsize p178 large)
    
    
    
    
    (unused p179)
    (goalsize p179 large)
    
    
    
    
    (unused p180)
    (goalsize p180 small)
    
    
    
    
    (unused p181)
    (goalsize p181 medium)
    
    
    
    
    (unused p182)
    (goalsize p182 large)
    
    
    
    
    (unused p183)
    (goalsize p183 large)
    
    
    
    
    (unused p184)
    (goalsize p184 small)
    
    
    
    
    (unused p185)
    (goalsize p185 large)
    
    
    
    
    (unused p186)
    (goalsize p186 medium)
    
    
    
    
    (unused p187)
    (goalsize p187 large)
    
    
    
    
    (unused p188)
    (goalsize p188 medium)
    
    
    
    
    (unused p189)
    (goalsize p189 medium)
    
    
    
    
    (available p190)
    (colour p190 blue)
    (wood p190 teak)
    (surface-condition p190 rough)
    (treatment p190 colourfragments)
    (goalsize p190 medium)
    
    
    
    
    (unused p191)
    (goalsize p191 medium)
    
    
    
    
    (available p192)
    (colour p192 natural)
    (wood p192 mahogany)
    (surface-condition p192 rough)
    (treatment p192 glazed)
    (goalsize p192 medium)
    
    
    
    
    (available p193)
    (colour p193 natural)
    (wood p193 mahogany)
    (surface-condition p193 smooth)
    (treatment p193 varnished)
    (goalsize p193 large)
    
    
    
    
    (unused p194)
    (goalsize p194 small)
    
    
    
    
    (available p195)
    (colour p195 green)
    (wood p195 beech)
    (surface-condition p195 smooth)
    (treatment p195 glazed)
    (goalsize p195 large)
    
    
    
    
    (available p196)
    (colour p196 white)
    (wood p196 walnut)
    (surface-condition p196 verysmooth)
    (treatment p196 colourfragments)
    (goalsize p196 medium)
    
    
    
    
    (unused p197)
    (goalsize p197 large)
    
    
    
    
    (unused p198)
    (goalsize p198 large)
    
    
    
    
    (unused p199)
    (goalsize p199 medium)
    
    
    
    
    (unused p200)
    (goalsize p200 medium)
    
    
    
    
    (unused p201)
    (goalsize p201 small)
    
    
    
    
    (unused p202)
    (goalsize p202 small)
    
    
    
    
    (unused p203)
    (goalsize p203 small)
    
    
    
    
    (unused p204)
    (goalsize p204 medium)
    
    
    
    
    (unused p205)
    (goalsize p205 small)
    
    
    
    
    (unused p206)
    (goalsize p206 small)
    
    
    
    
    (unused p207)
    (goalsize p207 medium)
    
    
    
    
    (unused p208)
    (goalsize p208 large)
    
    
    
    
    (unused p209)
    (goalsize p209 large)
    
    
    
    
    (unused p210)
    (goalsize p210 medium)
    
    
    
    
    (unused p211)
    (goalsize p211 large)
    
    
    
    
    (available p212)
    (colour p212 white)
    (wood p212 pine)
    (surface-condition p212 verysmooth)
    (treatment p212 glazed)
    (goalsize p212 small)
    
    
    
    
    (unused p213)
    (goalsize p213 medium)
    
    
    
    
    (unused p214)
    (goalsize p214 medium)
    
    
    
    
    (unused p215)
    (goalsize p215 medium)
    
    
    
    
    (available p216)
    (colour p216 mauve)
    (wood p216 oak)
    (surface-condition p216 rough)
    (treatment p216 colourfragments)
    (goalsize p216 medium)
    
    
    
    
    (unused p217)
    (goalsize p217 medium)
    
    
    
    
    (unused p218)
    (goalsize p218 large)
    
    
    
    
    (unused p219)
    (goalsize p219 medium)
    
    
    
    
    (available p220)
    (colour p220 black)
    (wood p220 cherry)
    (surface-condition p220 smooth)
    (treatment p220 glazed)
    (goalsize p220 large)
    
    
    
    
    (unused p221)
    (goalsize p221 medium)
    
    
    
    
    (unused p222)
    (goalsize p222 large)
    
    
    
    
    (unused p223)
    (goalsize p223 medium)
    
    
    
    
    (unused p224)
    (goalsize p224 large)
    
    
    
    
    (unused p225)
    (goalsize p225 small)
    
    
    
    
    (unused p226)
    (goalsize p226 large)
    
    
    
    
    (available p227)
    (colour p227 red)
    (wood p227 teak)
    (surface-condition p227 rough)
    (treatment p227 varnished)
    (goalsize p227 medium)
    
    
    
    
    (unused p228)
    (goalsize p228 large)
    
    
    
    
    (unused p229)
    (goalsize p229 large)
    
    
    
    
    (unused p230)
    (goalsize p230 medium)
    
    
    
    
    (available p231)
    (colour p231 natural)
    (wood p231 mahogany)
    (surface-condition p231 smooth)
    (treatment p231 colourfragments)
    (goalsize p231 small)
    
    
    
    
    (unused p232)
    (goalsize p232 medium)
    
    
    
    
    (unused p233)
    (goalsize p233 medium)
    
    
    
    
    (unused p234)
    (goalsize p234 medium)
    
    
    
    
    (unused p235)
    (goalsize p235 large)
    
    
    
    
    (unused p236)
    (goalsize p236 small)
    
    
    
    
    (available p237)
    (colour p237 mauve)
    (wood p237 cherry)
    (surface-condition p237 rough)
    (treatment p237 glazed)
    (goalsize p237 small)
    
    
    
    
    (unused p238)
    (goalsize p238 medium)
    
    
    
    
    (unused p239)
    (goalsize p239 large)
    
    
    
    
    (unused p240)
    (goalsize p240 medium)
    
    
    
    
    (unused p241)
    (goalsize p241 small)
    
    
    
    
    (unused p242)
    (goalsize p242 medium)
    
    
    
    
    (unused p243)
    (goalsize p243 medium)
    
    
    
    
    (unused p244)
    (goalsize p244 large)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s10)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 cherry)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s8)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 cherry)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s7)
    (wood b11 cherry)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s4)
    (wood b12 cherry)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s10)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s8)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 mahogany)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s9)
    (wood b18 mahogany)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 mahogany)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 mahogany)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 mahogany)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 oak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s6)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s9)
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
    (boardsize b28 s8)
    (wood b28 oak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 oak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 oak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s4)
    (wood b31 oak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s9)
    (wood b32 pine)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s8)
    (wood b33 pine)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s7)
    (wood b34 pine)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s9)
    (wood b35 pine)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 pine)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s9)
    (wood b37 pine)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s9)
    (wood b38 pine)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s9)
    (wood b39 pine)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s3)
    (wood b40 pine)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s5)
    (wood b41 walnut)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s9)
    (wood b42 walnut)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s7)
    (wood b43 walnut)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s10)
    (wood b44 walnut)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s8)
    (wood b45 walnut)
    (surface-condition b45 smooth)
    (available b45)
    (boardsize b46 s4)
    (wood b46 walnut)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s4)
    (wood b47 walnut)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s10)
    (wood b48 teak)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s9)
    (wood b49 teak)
    (surface-condition b49 rough)
    (available b49)
    (boardsize b50 s8)
    (wood b50 teak)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s8)
    (wood b51 teak)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s10)
    (wood b52 teak)
    (surface-condition b52 smooth)
    (available b52)
    (boardsize b53 s7)
    (wood b53 teak)
    (surface-condition b53 smooth)
    (available b53)
    (boardsize b54 s10)
    (wood b54 teak)
    (surface-condition b54 rough)
    (available b54)
    (boardsize b55 s8)
    (wood b55 teak)
    (surface-condition b55 rough)
    (available b55)
    (boardsize b56 s9)
    (wood b56 teak)
    (surface-condition b56 rough)
    (available b56)
    (boardsize b57 s9)
    (wood b57 teak)
    (surface-condition b57 rough)
    (available b57)
    (boardsize b58 s8)
    (wood b58 teak)
    (surface-condition b58 smooth)
    (available b58)
    (boardsize b59 s8)
    (wood b59 beech)
    (surface-condition b59 rough)
    (available b59)
    (boardsize b60 s9)
    (wood b60 beech)
    (surface-condition b60 smooth)
    (available b60)
    (boardsize b61 s8)
    (wood b61 beech)
    (surface-condition b61 rough)
    (available b61)
    (boardsize b62 s9)
    (wood b62 beech)
    (surface-condition b62 rough)
    (available b62)
    (boardsize b63 s11)
    (wood b63 beech)
    (surface-condition b63 smooth)
    (available b63)
    (boardsize b64 s6)
    (wood b64 beech)
    (surface-condition b64 smooth)
    (available b64)
    (boardsize b65 s8)
    (wood b65 beech)
    (surface-condition b65 rough)
    (available b65)
    (boardsize b66 s10)
    (wood b66 beech)
    (surface-condition b66 rough)
    (available b66)
    (boardsize b67 s7)
    (wood b67 beech)
    (surface-condition b67 rough)
    (available b67)
  )
  (:goal
    (and
      (available p0)
      (wood p0 beech)
      (treatment p0 varnished)
      (available p1)
      (colour p1 green)
      (treatment p1 varnished)
      (available p2)
      (wood p2 teak)
      (treatment p2 varnished)
      (available p3)
      (colour p3 blue)
      (wood p3 oak)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 natural)
      (treatment p4 glazed)
      (available p5)
      (wood p5 oak)
      (surface-condition p5 smooth)
      (available p6)
      (wood p6 teak)
      (treatment p6 varnished)
      (available p7)
      (wood p7 cherry)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 green)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 blue)
      (wood p9 cherry)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 red)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (wood p11 mahogany)
      (treatment p11 glazed)
      (available p12)
      (wood p12 cherry)
      (treatment p12 varnished)
      (available p13)
      (colour p13 white)
      (wood p13 walnut)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (wood p14 oak)
      (surface-condition p14 verysmooth)
      (available p15)
      (colour p15 blue)
      (treatment p15 varnished)
      (available p16)
      (colour p16 green)
      (wood p16 beech)
      (treatment p16 varnished)
      (available p17)
      (colour p17 blue)
      (wood p17 walnut)
      (treatment p17 glazed)
      (available p18)
      (colour p18 white)
      (wood p18 cherry)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 red)
      (wood p19 cherry)
      (surface-condition p19 verysmooth)
      (available p20)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 red)
      (surface-condition p21 smooth)
      (available p22)
      (wood p22 beech)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (wood p23 cherry)
      (surface-condition p23 smooth)
      (available p24)
      (colour p24 mauve)
      (treatment p24 glazed)
      (available p25)
      (colour p25 red)
      (wood p25 mahogany)
      (available p26)
      (colour p26 mauve)
      (wood p26 oak)
      (available p27)
      (colour p27 mauve)
      (wood p27 walnut)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 mauve)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 white)
      (treatment p29 glazed)
      (available p30)
      (colour p30 white)
      (surface-condition p30 verysmooth)
      (available p31)
      (colour p31 black)
      (treatment p31 glazed)
      (available p32)
      (colour p32 natural)
      (wood p32 teak)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 white)
      (surface-condition p33 verysmooth)
      (treatment p33 glazed)
      (available p34)
      (wood p34 pine)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (wood p35 beech)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 red)
      (wood p36 teak)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (wood p37 cherry)
      (surface-condition p37 smooth)
      (available p38)
      (colour p38 red)
      (treatment p38 varnished)
      (available p39)
      (colour p39 green)
      (wood p39 cherry)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 red)
      (wood p40 walnut)
      (surface-condition p40 smooth)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 natural)
      (treatment p42 glazed)
      (available p43)
      (colour p43 mauve)
      (wood p43 beech)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 red)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (wood p46 mahogany)
      (treatment p46 varnished)
      (available p47)
      (surface-condition p47 verysmooth)
      (treatment p47 glazed)
      (available p48)
      (colour p48 red)
      (wood p48 pine)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 black)
      (treatment p49 varnished)
      (available p50)
      (colour p50 mauve)
      (wood p50 mahogany)
      (surface-condition p50 verysmooth)
      (treatment p50 glazed)
      (available p51)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 mauve)
      (wood p52 mahogany)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 blue)
      (wood p53 cherry)
      (surface-condition p53 smooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 red)
      (wood p54 beech)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (wood p55 cherry)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (wood p56 pine)
      (treatment p56 glazed)
      (available p57)
      (colour p57 black)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 blue)
      (wood p58 pine)
      (treatment p58 varnished)
      (available p59)
      (wood p59 pine)
      (treatment p59 varnished)
      (available p60)
      (colour p60 red)
      (wood p60 walnut)
      (surface-condition p60 smooth)
      (treatment p60 glazed)
      (available p61)
      (colour p61 black)
      (wood p61 pine)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (wood p62 oak)
      (surface-condition p62 verysmooth)
      (available p63)
      (wood p63 mahogany)
      (surface-condition p63 smooth)
      (available p64)
      (colour p64 blue)
      (wood p64 beech)
      (available p65)
      (colour p65 mauve)
      (wood p65 pine)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 green)
      (wood p66 walnut)
      (available p67)
      (surface-condition p67 verysmooth)
      (treatment p67 varnished)
      (available p68)
      (wood p68 mahogany)
      (treatment p68 glazed)
      (available p69)
      (colour p69 white)
      (wood p69 cherry)
      (available p70)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 black)
      (wood p71 oak)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 green)
      (wood p72 cherry)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 black)
      (treatment p73 glazed)
      (available p74)
      (colour p74 green)
      (wood p74 mahogany)
      (available p75)
      (colour p75 natural)
      (wood p75 pine)
      (surface-condition p75 verysmooth)
      (treatment p75 varnished)
      (available p76)
      (colour p76 green)
      (treatment p76 glazed)
      (available p77)
      (wood p77 oak)
      (treatment p77 glazed)
      (available p78)
      (colour p78 red)
      (wood p78 walnut)
      (surface-condition p78 smooth)
      (treatment p78 varnished)
      (available p79)
      (colour p79 black)
      (wood p79 oak)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 green)
      (wood p80 pine)
      (treatment p80 varnished)
      (available p81)
      (wood p81 beech)
      (surface-condition p81 smooth)
      (available p82)
      (colour p82 mauve)
      (wood p82 walnut)
      (surface-condition p82 smooth)
      (available p83)
      (surface-condition p83 verysmooth)
      (treatment p83 glazed)
      (available p84)
      (colour p84 blue)
      (wood p84 cherry)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 black)
      (treatment p85 glazed)
      (available p86)
      (colour p86 natural)
      (wood p86 pine)
      (available p87)
      (colour p87 black)
      (wood p87 walnut)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 black)
      (surface-condition p88 smooth)
      (available p89)
      (colour p89 green)
      (wood p89 mahogany)
      (available p90)
      (colour p90 red)
      (wood p90 pine)
      (available p91)
      (colour p91 red)
      (wood p91 beech)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 mauve)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (colour p93 red)
      (treatment p93 varnished)
      (available p94)
      (colour p94 black)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 mauve)
      (wood p95 mahogany)
      (surface-condition p95 verysmooth)
      (available p96)
      (colour p96 blue)
      (treatment p96 glazed)
      (available p97)
      (colour p97 black)
      (wood p97 teak)
      (available p98)
      (colour p98 mauve)
      (wood p98 oak)
      (available p99)
      (colour p99 blue)
      (surface-condition p99 smooth)
      (treatment p99 glazed)
      (available p100)
      (colour p100 natural)
      (surface-condition p100 smooth)
      (treatment p100 glazed)
      (available p101)
      (wood p101 teak)
      (surface-condition p101 verysmooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 white)
      (wood p102 mahogany)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (wood p103 cherry)
      (treatment p103 varnished)
      (available p104)
      (wood p104 teak)
      (treatment p104 glazed)
      (available p105)
      (colour p105 black)
      (surface-condition p105 smooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 blue)
      (treatment p106 glazed)
      (available p107)
      (colour p107 red)
      (wood p107 teak)
      (surface-condition p107 verysmooth)
      (available p108)
      (surface-condition p108 smooth)
      (treatment p108 glazed)
      (available p109)
      (colour p109 green)
      (surface-condition p109 verysmooth)
      (available p110)
      (surface-condition p110 smooth)
      (treatment p110 glazed)
      (available p111)
      (wood p111 beech)
      (surface-condition p111 verysmooth)
      (available p112)
      (wood p112 pine)
      (surface-condition p112 smooth)
      (available p113)
      (colour p113 black)
      (wood p113 beech)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 green)
      (treatment p114 glazed)
      (available p115)
      (colour p115 natural)
      (wood p115 mahogany)
      (surface-condition p115 verysmooth)
      (treatment p115 glazed)
      (available p116)
      (colour p116 blue)
      (surface-condition p116 verysmooth)
      (available p117)
      (surface-condition p117 verysmooth)
      (treatment p117 glazed)
      (available p118)
      (colour p118 white)
      (treatment p118 glazed)
      (available p119)
      (wood p119 oak)
      (surface-condition p119 verysmooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 black)
      (surface-condition p120 verysmooth)
      (treatment p120 glazed)
      (available p121)
      (colour p121 natural)
      (wood p121 teak)
      (surface-condition p121 smooth)
      (treatment p121 varnished)
      (available p122)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (surface-condition p123 verysmooth)
      (treatment p123 glazed)
      (available p124)
      (colour p124 mauve)
      (wood p124 oak)
      (surface-condition p124 verysmooth)
      (treatment p124 glazed)
      (available p125)
      (wood p125 beech)
      (surface-condition p125 smooth)
      (available p126)
      (wood p126 mahogany)
      (surface-condition p126 verysmooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 blue)
      (wood p127 walnut)
      (surface-condition p127 verysmooth)
      (treatment p127 glazed)
      (available p128)
      (colour p128 green)
      (surface-condition p128 smooth)
      (available p129)
      (colour p129 white)
      (wood p129 mahogany)
      (surface-condition p129 smooth)
      (treatment p129 varnished)
      (available p130)
      (wood p130 walnut)
      (surface-condition p130 verysmooth)
      (available p131)
      (colour p131 green)
      (wood p131 pine)
      (available p132)
      (colour p132 white)
      (treatment p132 glazed)
      (available p133)
      (wood p133 oak)
      (surface-condition p133 smooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 mauve)
      (wood p134 teak)
      (surface-condition p134 smooth)
      (treatment p134 varnished)
      (available p135)
      (colour p135 white)
      (wood p135 pine)
      (treatment p135 glazed)
      (available p136)
      (wood p136 walnut)
      (surface-condition p136 verysmooth)
      (treatment p136 varnished)
      (available p137)
      (colour p137 blue)
      (wood p137 beech)
      (available p138)
      (colour p138 black)
      (treatment p138 varnished)
      (available p139)
      (surface-condition p139 smooth)
      (treatment p139 varnished)
      (available p140)
      (wood p140 oak)
      (surface-condition p140 verysmooth)
      (available p141)
      (colour p141 green)
      (wood p141 mahogany)
      (available p142)
      (colour p142 black)
      (wood p142 cherry)
      (surface-condition p142 verysmooth)
      (available p143)
      (colour p143 mauve)
      (wood p143 cherry)
      (surface-condition p143 smooth)
      (treatment p143 varnished)
      (available p144)
      (wood p144 walnut)
      (surface-condition p144 verysmooth)
      (available p145)
      (wood p145 oak)
      (treatment p145 varnished)
      (available p146)
      (colour p146 white)
      (wood p146 beech)
      (surface-condition p146 verysmooth)
      (treatment p146 varnished)
      (available p147)
      (wood p147 walnut)
      (surface-condition p147 verysmooth)
      (treatment p147 glazed)
      (available p148)
      (colour p148 mauve)
      (treatment p148 varnished)
      (available p149)
      (colour p149 green)
      (wood p149 pine)
      (surface-condition p149 smooth)
      (treatment p149 varnished)
      (available p150)
      (wood p150 beech)
      (treatment p150 varnished)
      (available p151)
      (wood p151 cherry)
      (treatment p151 glazed)
      (available p152)
      (colour p152 white)
      (wood p152 beech)
      (surface-condition p152 smooth)
      (treatment p152 glazed)
      (available p153)
      (wood p153 cherry)
      (surface-condition p153 smooth)
      (available p154)
      (surface-condition p154 verysmooth)
      (treatment p154 glazed)
      (available p155)
      (colour p155 blue)
      (wood p155 beech)
      (surface-condition p155 smooth)
      (treatment p155 glazed)
      (available p156)
      (colour p156 mauve)
      (wood p156 pine)
      (surface-condition p156 verysmooth)
      (treatment p156 varnished)
      (available p157)
      (colour p157 green)
      (surface-condition p157 smooth)
      (available p158)
      (colour p158 blue)
      (surface-condition p158 smooth)
      (available p159)
      (colour p159 green)
      (wood p159 cherry)
      (surface-condition p159 smooth)
      (treatment p159 glazed)
      (available p160)
      (surface-condition p160 verysmooth)
      (treatment p160 glazed)
      (available p161)
      (wood p161 teak)
      (surface-condition p161 smooth)
      (available p162)
      (wood p162 pine)
      (treatment p162 varnished)
      (available p163)
      (wood p163 cherry)
      (treatment p163 glazed)
      (available p164)
      (colour p164 blue)
      (wood p164 oak)
      (treatment p164 varnished)
      (available p165)
      (wood p165 beech)
      (treatment p165 varnished)
      (available p166)
      (colour p166 green)
      (surface-condition p166 smooth)
      (treatment p166 varnished)
      (available p167)
      (surface-condition p167 verysmooth)
      (treatment p167 varnished)
      (available p168)
      (colour p168 green)
      (wood p168 mahogany)
      (available p169)
      (colour p169 natural)
      (treatment p169 glazed)
      (available p170)
      (wood p170 cherry)
      (surface-condition p170 verysmooth)
      (available p171)
      (wood p171 teak)
      (surface-condition p171 verysmooth)
      (available p172)
      (colour p172 natural)
      (treatment p172 glazed)
      (available p173)
      (surface-condition p173 verysmooth)
      (treatment p173 varnished)
      (available p174)
      (wood p174 cherry)
      (surface-condition p174 verysmooth)
      (available p175)
      (wood p175 oak)
      (surface-condition p175 smooth)
      (treatment p175 varnished)
      (available p176)
      (wood p176 oak)
      (surface-condition p176 smooth)
      (treatment p176 varnished)
      (available p177)
      (colour p177 mauve)
      (surface-condition p177 verysmooth)
      (available p178)
      (colour p178 natural)
      (wood p178 pine)
      (surface-condition p178 verysmooth)
      (treatment p178 varnished)
      (available p179)
      (colour p179 mauve)
      (wood p179 beech)
      (surface-condition p179 smooth)
      (treatment p179 glazed)
      (available p180)
      (colour p180 white)
      (wood p180 walnut)
      (surface-condition p180 smooth)
      (treatment p180 varnished)
      (available p181)
      (colour p181 natural)
      (surface-condition p181 smooth)
      (available p182)
      (colour p182 white)
      (treatment p182 varnished)
      (available p183)
      (colour p183 white)
      (wood p183 mahogany)
      (surface-condition p183 verysmooth)
      (available p184)
      (colour p184 blue)
      (surface-condition p184 smooth)
      (available p185)
      (surface-condition p185 verysmooth)
      (treatment p185 varnished)
      (available p186)
      (colour p186 black)
      (surface-condition p186 verysmooth)
      (available p187)
      (colour p187 red)
      (wood p187 cherry)
      (surface-condition p187 smooth)
      (available p188)
      (wood p188 walnut)
      (surface-condition p188 verysmooth)
      (treatment p188 glazed)
      (available p189)
      (surface-condition p189 verysmooth)
      (treatment p189 glazed)
      (available p190)
      (colour p190 red)
      (wood p190 teak)
      (surface-condition p190 verysmooth)
      (available p191)
      (surface-condition p191 verysmooth)
      (treatment p191 varnished)
      (available p192)
      (colour p192 blue)
      (wood p192 mahogany)
      (available p193)
      (colour p193 black)
      (treatment p193 varnished)
      (available p194)
      (colour p194 green)
      (wood p194 teak)
      (surface-condition p194 smooth)
      (treatment p194 glazed)
      (available p195)
      (colour p195 natural)
      (wood p195 beech)
      (surface-condition p195 verysmooth)
      (treatment p195 glazed)
      (available p196)
      (colour p196 natural)
      (wood p196 walnut)
      (treatment p196 varnished)
      (available p197)
      (colour p197 mauve)
      (wood p197 teak)
      (treatment p197 glazed)
      (available p198)
      (surface-condition p198 verysmooth)
      (treatment p198 glazed)
      (available p199)
      (colour p199 natural)
      (surface-condition p199 verysmooth)
      (available p200)
      (colour p200 red)
      (treatment p200 glazed)
      (available p201)
      (colour p201 black)
      (wood p201 oak)
      (surface-condition p201 verysmooth)
      (treatment p201 glazed)
      (available p202)
      (colour p202 white)
      (surface-condition p202 smooth)
      (treatment p202 glazed)
      (available p203)
      (surface-condition p203 smooth)
      (treatment p203 varnished)
      (available p204)
      (colour p204 blue)
      (treatment p204 varnished)
      (available p205)
      (surface-condition p205 smooth)
      (treatment p205 glazed)
      (available p206)
      (surface-condition p206 smooth)
      (treatment p206 varnished)
      (available p207)
      (wood p207 teak)
      (surface-condition p207 verysmooth)
      (treatment p207 glazed)
      (available p208)
      (colour p208 white)
      (wood p208 cherry)
      (surface-condition p208 verysmooth)
      (available p209)
      (surface-condition p209 smooth)
      (treatment p209 varnished)
      (available p210)
      (wood p210 teak)
      (surface-condition p210 smooth)
      (available p211)
      (surface-condition p211 smooth)
      (treatment p211 varnished)
      (available p212)
      (colour p212 mauve)
      (surface-condition p212 verysmooth)
      (available p213)
      (colour p213 black)
      (wood p213 beech)
      (surface-condition p213 verysmooth)
      (available p214)
      (colour p214 mauve)
      (wood p214 beech)
      (surface-condition p214 verysmooth)
      (treatment p214 varnished)
      (available p215)
      (colour p215 red)
      (surface-condition p215 verysmooth)
      (available p216)
      (wood p216 oak)
      (surface-condition p216 verysmooth)
      (available p217)
      (colour p217 black)
      (wood p217 beech)
      (available p218)
      (colour p218 natural)
      (wood p218 walnut)
      (available p219)
      (colour p219 blue)
      (wood p219 pine)
      (available p220)
      (colour p220 red)
      (wood p220 cherry)
      (surface-condition p220 smooth)
      (available p221)
      (surface-condition p221 smooth)
      (treatment p221 varnished)
      (available p222)
      (colour p222 red)
      (treatment p222 glazed)
      (available p223)
      (colour p223 natural)
      (wood p223 mahogany)
      (surface-condition p223 smooth)
      (available p224)
      (colour p224 mauve)
      (wood p224 teak)
      (surface-condition p224 smooth)
      (treatment p224 varnished)
      (available p225)
      (colour p225 black)
      (surface-condition p225 verysmooth)
      (treatment p225 glazed)
      (available p226)
      (colour p226 blue)
      (wood p226 cherry)
      (surface-condition p226 verysmooth)
      (treatment p226 varnished)
      (available p227)
      (colour p227 blue)
      (wood p227 teak)
      (available p228)
      (wood p228 pine)
      (surface-condition p228 verysmooth)
      (available p229)
      (colour p229 white)
      (wood p229 teak)
      (surface-condition p229 smooth)
      (treatment p229 varnished)
      (available p230)
      (colour p230 blue)
      (wood p230 cherry)
      (available p231)
      (colour p231 green)
      (wood p231 mahogany)
      (surface-condition p231 smooth)
      (available p232)
      (colour p232 white)
      (wood p232 cherry)
      (available p233)
      (colour p233 white)
      (wood p233 cherry)
      (surface-condition p233 verysmooth)
      (treatment p233 glazed)
      (available p234)
      (surface-condition p234 smooth)
      (treatment p234 glazed)
      (available p235)
      (colour p235 green)
      (wood p235 oak)
      (available p236)
      (colour p236 white)
      (wood p236 cherry)
      (surface-condition p236 smooth)
      (treatment p236 glazed)
      (available p237)
      (colour p237 green)
      (wood p237 cherry)
      (available p238)
      (colour p238 green)
      (wood p238 pine)
      (surface-condition p238 verysmooth)
      (treatment p238 varnished)
      (available p239)
      (wood p239 beech)
      (treatment p239 varnished)
      (available p240)
      (colour p240 blue)
      (wood p240 oak)
      (surface-condition p240 smooth)
      (treatment p240 varnished)
      (available p241)
      (colour p241 blue)
      (surface-condition p241 verysmooth)
      (treatment p241 glazed)
      (available p242)
      (surface-condition p242 verysmooth)
      (treatment p242 glazed)
      (available p243)
      (colour p243 blue)
      (wood p243 walnut)
      (available p244)
      (colour p244 green)
      (wood p244 pine)
    )
  )
  
)
