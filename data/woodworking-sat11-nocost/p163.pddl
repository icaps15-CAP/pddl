; woodworking task with 176 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 926073

(define (problem wood-prob-sat-163)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black red green blue mauve white - acolour
    pine mahogany oak teak walnut beech cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 p173 p174 p175 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 - board
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
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (available p2)
    (colour p2 green)
    (wood p2 mahogany)
    (surface-condition p2 rough)
    (treatment p2 colourfragments)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 natural)
    (wood p7 oak)
    (surface-condition p7 rough)
    (treatment p7 glazed)
    (goalsize p7 large)
    
    
    
    
    (available p8)
    (colour p8 natural)
    (wood p8 pine)
    (surface-condition p8 rough)
    (treatment p8 glazed)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 red)
    (wood p13 walnut)
    (surface-condition p13 verysmooth)
    (treatment p13 colourfragments)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 natural)
    (wood p14 oak)
    (surface-condition p14 smooth)
    (treatment p14 colourfragments)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (available p19)
    (colour p19 white)
    (wood p19 walnut)
    (surface-condition p19 verysmooth)
    (treatment p19 varnished)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 black)
    (wood p22 teak)
    (surface-condition p22 verysmooth)
    (treatment p22 varnished)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 green)
    (wood p24 pine)
    (surface-condition p24 verysmooth)
    (treatment p24 colourfragments)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 blue)
    (wood p26 teak)
    (surface-condition p26 rough)
    (treatment p26 varnished)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 mauve)
    (wood p27 walnut)
    (surface-condition p27 verysmooth)
    (treatment p27 glazed)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 blue)
    (wood p28 teak)
    (surface-condition p28 rough)
    (treatment p28 colourfragments)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (available p30)
    (colour p30 green)
    (wood p30 pine)
    (surface-condition p30 rough)
    (treatment p30 varnished)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 red)
    (wood p33 oak)
    (surface-condition p33 smooth)
    (treatment p33 glazed)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 natural)
    (wood p35 beech)
    (surface-condition p35 verysmooth)
    (treatment p35 glazed)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 blue)
    (wood p37 oak)
    (surface-condition p37 rough)
    (treatment p37 glazed)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (available p43)
    (colour p43 natural)
    (wood p43 walnut)
    (surface-condition p43 verysmooth)
    (treatment p43 glazed)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (available p46)
    (colour p46 black)
    (wood p46 walnut)
    (surface-condition p46 rough)
    (treatment p46 varnished)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (available p48)
    (colour p48 black)
    (wood p48 teak)
    (surface-condition p48 verysmooth)
    (treatment p48 glazed)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (available p53)
    (colour p53 green)
    (wood p53 teak)
    (surface-condition p53 rough)
    (treatment p53 colourfragments)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (available p66)
    (colour p66 red)
    (wood p66 pine)
    (surface-condition p66 verysmooth)
    (treatment p66 glazed)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (available p71)
    (colour p71 black)
    (wood p71 teak)
    (surface-condition p71 smooth)
    (treatment p71 glazed)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (available p76)
    (colour p76 white)
    (wood p76 beech)
    (surface-condition p76 smooth)
    (treatment p76 colourfragments)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (available p87)
    (colour p87 red)
    (wood p87 pine)
    (surface-condition p87 smooth)
    (treatment p87 varnished)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (available p93)
    (colour p93 natural)
    (wood p93 teak)
    (surface-condition p93 smooth)
    (treatment p93 colourfragments)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (available p96)
    (colour p96 red)
    (wood p96 beech)
    (surface-condition p96 smooth)
    (treatment p96 varnished)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (available p101)
    (colour p101 red)
    (wood p101 oak)
    (surface-condition p101 verysmooth)
    (treatment p101 varnished)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (available p104)
    (colour p104 green)
    (wood p104 cherry)
    (surface-condition p104 verysmooth)
    (treatment p104 glazed)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (available p107)
    (colour p107 white)
    (wood p107 cherry)
    (surface-condition p107 verysmooth)
    (treatment p107 varnished)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (available p114)
    (colour p114 green)
    (wood p114 walnut)
    (surface-condition p114 smooth)
    (treatment p114 varnished)
    (goalsize p114 medium)
    
    
    
    
    (available p115)
    (colour p115 black)
    (wood p115 beech)
    (surface-condition p115 smooth)
    (treatment p115 glazed)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (available p128)
    (colour p128 red)
    (wood p128 beech)
    (surface-condition p128 rough)
    (treatment p128 colourfragments)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (available p134)
    (colour p134 green)
    (wood p134 pine)
    (surface-condition p134 rough)
    (treatment p134 varnished)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 medium)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 small)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 medium)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (available p151)
    (colour p151 natural)
    (wood p151 walnut)
    (surface-condition p151 rough)
    (treatment p151 varnished)
    (goalsize p151 medium)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (available p156)
    (colour p156 natural)
    (wood p156 cherry)
    (surface-condition p156 verysmooth)
    (treatment p156 colourfragments)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (available p164)
    (colour p164 white)
    (wood p164 oak)
    (surface-condition p164 verysmooth)
    (treatment p164 colourfragments)
    (goalsize p164 large)
    
    
    
    
    (available p165)
    (colour p165 black)
    (wood p165 cherry)
    (surface-condition p165 smooth)
    (treatment p165 varnished)
    (goalsize p165 small)
    
    
    
    
    (available p166)
    (colour p166 red)
    (wood p166 oak)
    (surface-condition p166 verysmooth)
    (treatment p166 colourfragments)
    (goalsize p166 large)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 medium)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 medium)
    
    
    
    
    (unused p171)
    (goalsize p171 small)
    
    
    
    
    (available p172)
    (colour p172 white)
    (wood p172 cherry)
    (surface-condition p172 rough)
    (treatment p172 varnished)
    (goalsize p172 medium)
    
    
    
    
    (available p173)
    (colour p173 red)
    (wood p173 pine)
    (surface-condition p173 smooth)
    (treatment p173 colourfragments)
    (goalsize p173 small)
    
    
    
    
    (unused p174)
    (goalsize p174 large)
    
    
    
    
    (unused p175)
    (goalsize p175 medium)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s10)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s8)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 mahogany)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s10)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s5)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s7)
    (wood b15 mahogany)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s2)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 oak)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s7)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s7)
    (wood b21 oak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 oak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s7)
    (wood b23 oak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s9)
    (wood b24 oak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s7)
    (wood b25 oak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s9)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s5)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s8)
    (wood b28 pine)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s5)
    (wood b29 pine)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 pine)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s8)
    (wood b31 pine)
    (surface-condition b31 smooth)
    (available b31)
    (boardsize b32 s8)
    (wood b32 pine)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s3)
    (wood b33 pine)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s8)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s7)
    (wood b35 walnut)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s11)
    (wood b36 walnut)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s9)
    (wood b37 walnut)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s2)
    (wood b38 walnut)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s8)
    (wood b39 teak)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s9)
    (wood b40 teak)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s7)
    (wood b41 teak)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s5)
    (wood b42 teak)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s8)
    (wood b43 teak)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s9)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s11)
    (wood b45 teak)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s8)
    (wood b46 teak)
    (surface-condition b46 smooth)
    (available b46)
    (boardsize b47 s9)
    (wood b47 beech)
    (surface-condition b47 rough)
    (available b47)
    (boardsize b48 s8)
    (wood b48 beech)
    (surface-condition b48 rough)
    (available b48)
    (boardsize b49 s8)
    (wood b49 beech)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s9)
    (wood b50 beech)
    (surface-condition b50 rough)
    (available b50)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (wood p0 oak)
      (treatment p0 glazed)
      (available p1)
      (wood p1 cherry)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 blue)
      (wood p2 mahogany)
      (available p3)
      (colour p3 white)
      (treatment p3 glazed)
      (available p4)
      (colour p4 green)
      (surface-condition p4 verysmooth)
      (available p5)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 green)
      (wood p6 oak)
      (available p7)
      (wood p7 oak)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 green)
      (wood p8 pine)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (wood p9 oak)
      (treatment p9 varnished)
      (available p10)
      (colour p10 blue)
      (wood p10 teak)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (wood p11 mahogany)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 green)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (wood p14 oak)
      (treatment p14 varnished)
      (available p15)
      (colour p15 white)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 mauve)
      (wood p16 mahogany)
      (treatment p16 glazed)
      (available p17)
      (colour p17 blue)
      (wood p17 walnut)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 natural)
      (wood p18 walnut)
      (available p19)
      (colour p19 red)
      (wood p19 walnut)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 red)
      (surface-condition p20 smooth)
      (available p21)
      (colour p21 green)
      (surface-condition p21 smooth)
      (available p22)
      (colour p22 blue)
      (wood p22 teak)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 black)
      (wood p23 pine)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 blue)
      (wood p24 pine)
      (surface-condition p24 verysmooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 mauve)
      (wood p25 pine)
      (available p26)
      (colour p26 red)
      (wood p26 teak)
      (treatment p26 varnished)
      (available p27)
      (colour p27 natural)
      (wood p27 walnut)
      (available p28)
      (wood p28 teak)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 mauve)
      (wood p29 teak)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 blue)
      (wood p30 pine)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (wood p31 cherry)
      (treatment p31 varnished)
      (available p32)
      (colour p32 blue)
      (surface-condition p32 verysmooth)
      (available p33)
      (colour p33 mauve)
      (wood p33 oak)
      (available p34)
      (wood p34 mahogany)
      (treatment p34 glazed)
      (available p35)
      (colour p35 red)
      (wood p35 beech)
      (treatment p35 varnished)
      (available p36)
      (colour p36 red)
      (wood p36 mahogany)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (wood p37 oak)
      (surface-condition p37 verysmooth)
      (available p38)
      (colour p38 blue)
      (surface-condition p38 smooth)
      (available p39)
      (colour p39 green)
      (surface-condition p39 verysmooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 natural)
      (treatment p40 varnished)
      (available p41)
      (colour p41 red)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 mauve)
      (treatment p42 varnished)
      (available p43)
      (colour p43 black)
      (wood p43 walnut)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 mauve)
      (surface-condition p44 smooth)
      (available p45)
      (wood p45 oak)
      (treatment p45 varnished)
      (available p46)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (wood p47 pine)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 green)
      (wood p48 teak)
      (surface-condition p48 verysmooth)
      (treatment p48 glazed)
      (available p49)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 blue)
      (treatment p50 glazed)
      (available p51)
      (wood p51 cherry)
      (treatment p51 glazed)
      (available p52)
      (colour p52 natural)
      (wood p52 mahogany)
      (surface-condition p52 verysmooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 natural)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 blue)
      (wood p54 mahogany)
      (surface-condition p54 verysmooth)
      (available p55)
      (colour p55 red)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (wood p56 cherry)
      (treatment p56 varnished)
      (available p57)
      (wood p57 oak)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 black)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 blue)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 black)
      (wood p60 pine)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 mauve)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 mauve)
      (wood p62 mahogany)
      (available p63)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (wood p64 teak)
      (surface-condition p64 smooth)
      (available p65)
      (colour p65 mauve)
      (wood p65 mahogany)
      (available p66)
      (wood p66 pine)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 white)
      (surface-condition p67 verysmooth)
      (available p68)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 green)
      (wood p69 teak)
      (surface-condition p69 verysmooth)
      (treatment p69 varnished)
      (available p70)
      (surface-condition p70 smooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 white)
      (wood p71 teak)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (wood p72 pine)
      (surface-condition p72 smooth)
      (available p73)
      (wood p73 teak)
      (surface-condition p73 smooth)
      (available p74)
      (colour p74 blue)
      (treatment p74 varnished)
      (available p75)
      (colour p75 red)
      (treatment p75 glazed)
      (available p76)
      (colour p76 green)
      (wood p76 beech)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 mauve)
      (wood p77 pine)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 natural)
      (wood p78 walnut)
      (surface-condition p78 verysmooth)
      (treatment p78 varnished)
      (available p79)
      (wood p79 teak)
      (treatment p79 glazed)
      (available p80)
      (wood p80 mahogany)
      (treatment p80 glazed)
      (available p81)
      (colour p81 blue)
      (treatment p81 varnished)
      (available p82)
      (wood p82 pine)
      (treatment p82 varnished)
      (available p83)
      (colour p83 blue)
      (surface-condition p83 smooth)
      (available p84)
      (wood p84 cherry)
      (surface-condition p84 smooth)
      (available p85)
      (colour p85 red)
      (wood p85 oak)
      (surface-condition p85 verysmooth)
      (treatment p85 varnished)
      (available p86)
      (colour p86 black)
      (wood p86 oak)
      (available p87)
      (colour p87 black)
      (treatment p87 glazed)
      (available p88)
      (wood p88 walnut)
      (surface-condition p88 smooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 red)
      (wood p89 pine)
      (available p90)
      (wood p90 teak)
      (surface-condition p90 verysmooth)
      (treatment p90 varnished)
      (available p91)
      (surface-condition p91 verysmooth)
      (treatment p91 glazed)
      (available p92)
      (colour p92 green)
      (wood p92 mahogany)
      (surface-condition p92 verysmooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 blue)
      (treatment p93 varnished)
      (available p94)
      (wood p94 teak)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 mauve)
      (surface-condition p95 smooth)
      (available p96)
      (wood p96 beech)
      (surface-condition p96 verysmooth)
      (available p97)
      (colour p97 black)
      (surface-condition p97 verysmooth)
      (available p98)
      (colour p98 natural)
      (treatment p98 varnished)
      (available p99)
      (wood p99 teak)
      (treatment p99 glazed)
      (available p100)
      (wood p100 mahogany)
      (surface-condition p100 smooth)
      (available p101)
      (colour p101 mauve)
      (wood p101 oak)
      (surface-condition p101 verysmooth)
      (treatment p101 varnished)
      (available p102)
      (wood p102 beech)
      (treatment p102 varnished)
      (available p103)
      (colour p103 blue)
      (wood p103 cherry)
      (available p104)
      (wood p104 cherry)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (wood p105 pine)
      (surface-condition p105 smooth)
      (available p106)
      (colour p106 natural)
      (wood p106 teak)
      (treatment p106 varnished)
      (available p107)
      (wood p107 cherry)
      (treatment p107 glazed)
      (available p108)
      (wood p108 oak)
      (treatment p108 glazed)
      (available p109)
      (colour p109 red)
      (wood p109 pine)
      (surface-condition p109 verysmooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 natural)
      (wood p110 mahogany)
      (surface-condition p110 smooth)
      (treatment p110 glazed)
      (available p111)
      (wood p111 cherry)
      (treatment p111 glazed)
      (available p112)
      (colour p112 white)
      (wood p112 cherry)
      (surface-condition p112 smooth)
      (treatment p112 glazed)
      (available p113)
      (colour p113 white)
      (wood p113 teak)
      (surface-condition p113 smooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 mauve)
      (wood p114 walnut)
      (available p115)
      (colour p115 mauve)
      (surface-condition p115 verysmooth)
      (available p116)
      (colour p116 mauve)
      (surface-condition p116 verysmooth)
      (available p117)
      (surface-condition p117 verysmooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 green)
      (wood p118 pine)
      (surface-condition p118 verysmooth)
      (available p119)
      (surface-condition p119 verysmooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 red)
      (wood p120 mahogany)
      (available p121)
      (colour p121 green)
      (surface-condition p121 verysmooth)
      (available p122)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (colour p123 black)
      (wood p123 mahogany)
      (treatment p123 varnished)
      (available p124)
      (colour p124 red)
      (wood p124 oak)
      (treatment p124 varnished)
      (available p125)
      (surface-condition p125 verysmooth)
      (treatment p125 glazed)
      (available p126)
      (colour p126 mauve)
      (wood p126 pine)
      (surface-condition p126 smooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 white)
      (treatment p127 glazed)
      (available p128)
      (colour p128 natural)
      (wood p128 beech)
      (surface-condition p128 verysmooth)
      (treatment p128 glazed)
      (available p129)
      (colour p129 black)
      (wood p129 walnut)
      (surface-condition p129 smooth)
      (available p130)
      (colour p130 mauve)
      (surface-condition p130 smooth)
      (available p131)
      (colour p131 black)
      (treatment p131 glazed)
      (available p132)
      (colour p132 natural)
      (wood p132 pine)
      (surface-condition p132 verysmooth)
      (treatment p132 glazed)
      (available p133)
      (colour p133 natural)
      (surface-condition p133 verysmooth)
      (available p134)
      (wood p134 pine)
      (surface-condition p134 smooth)
      (available p135)
      (colour p135 green)
      (wood p135 oak)
      (surface-condition p135 verysmooth)
      (treatment p135 glazed)
      (available p136)
      (colour p136 black)
      (treatment p136 glazed)
      (available p137)
      (surface-condition p137 verysmooth)
      (treatment p137 glazed)
      (available p138)
      (colour p138 blue)
      (wood p138 mahogany)
      (surface-condition p138 smooth)
      (treatment p138 varnished)
      (available p139)
      (colour p139 white)
      (treatment p139 glazed)
      (available p140)
      (surface-condition p140 verysmooth)
      (treatment p140 glazed)
      (available p141)
      (wood p141 oak)
      (surface-condition p141 verysmooth)
      (available p142)
      (colour p142 mauve)
      (surface-condition p142 smooth)
      (available p143)
      (wood p143 oak)
      (treatment p143 varnished)
      (available p144)
      (wood p144 pine)
      (surface-condition p144 smooth)
      (treatment p144 varnished)
      (available p145)
      (wood p145 cherry)
      (surface-condition p145 smooth)
      (available p146)
      (wood p146 oak)
      (treatment p146 varnished)
      (available p147)
      (colour p147 white)
      (wood p147 cherry)
      (surface-condition p147 smooth)
      (available p148)
      (wood p148 oak)
      (surface-condition p148 smooth)
      (treatment p148 glazed)
      (available p149)
      (surface-condition p149 verysmooth)
      (treatment p149 glazed)
      (available p150)
      (colour p150 white)
      (wood p150 mahogany)
      (surface-condition p150 smooth)
      (available p151)
      (wood p151 walnut)
      (treatment p151 glazed)
      (available p152)
      (surface-condition p152 verysmooth)
      (treatment p152 varnished)
      (available p153)
      (colour p153 natural)
      (surface-condition p153 smooth)
      (available p154)
      (colour p154 blue)
      (treatment p154 glazed)
      (available p155)
      (colour p155 green)
      (wood p155 walnut)
      (available p156)
      (colour p156 green)
      (wood p156 cherry)
      (surface-condition p156 verysmooth)
      (treatment p156 glazed)
      (available p157)
      (colour p157 red)
      (surface-condition p157 verysmooth)
      (treatment p157 glazed)
      (available p158)
      (wood p158 teak)
      (surface-condition p158 smooth)
      (treatment p158 glazed)
      (available p159)
      (colour p159 mauve)
      (surface-condition p159 smooth)
      (treatment p159 glazed)
      (available p160)
      (colour p160 white)
      (surface-condition p160 verysmooth)
      (available p161)
      (colour p161 red)
      (treatment p161 glazed)
      (available p162)
      (colour p162 mauve)
      (wood p162 cherry)
      (available p163)
      (colour p163 red)
      (wood p163 mahogany)
      (surface-condition p163 verysmooth)
      (treatment p163 varnished)
      (available p164)
      (colour p164 mauve)
      (treatment p164 glazed)
      (available p165)
      (colour p165 natural)
      (wood p165 cherry)
      (surface-condition p165 smooth)
      (treatment p165 varnished)
      (available p166)
      (colour p166 blue)
      (wood p166 oak)
      (surface-condition p166 verysmooth)
      (treatment p166 glazed)
      (available p167)
      (wood p167 beech)
      (surface-condition p167 verysmooth)
      (available p168)
      (colour p168 green)
      (wood p168 teak)
      (surface-condition p168 verysmooth)
      (treatment p168 varnished)
      (available p169)
      (colour p169 white)
      (wood p169 beech)
      (surface-condition p169 verysmooth)
      (treatment p169 glazed)
      (available p170)
      (colour p170 blue)
      (wood p170 mahogany)
      (surface-condition p170 verysmooth)
      (treatment p170 varnished)
      (available p171)
      (surface-condition p171 verysmooth)
      (treatment p171 varnished)
      (available p172)
      (wood p172 cherry)
      (surface-condition p172 smooth)
      (available p173)
      (colour p173 blue)
      (surface-condition p173 verysmooth)
      (available p174)
      (colour p174 red)
      (surface-condition p174 verysmooth)
      (available p175)
      (wood p175 pine)
      (surface-condition p175 verysmooth)
    )
  )
  
)
