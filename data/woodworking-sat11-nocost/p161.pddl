; woodworking task with 170 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 303041

(define (problem wood-prob-sat-161)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green red white black mauve blue - acolour
    walnut mahogany oak cherry beech pine teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 - part
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
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
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
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 red)
    (wood p6 teak)
    (surface-condition p6 smooth)
    (treatment p6 colourfragments)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (available p8)
    (colour p8 natural)
    (wood p8 walnut)
    (surface-condition p8 verysmooth)
    (treatment p8 varnished)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 white)
    (wood p10 mahogany)
    (surface-condition p10 verysmooth)
    (treatment p10 glazed)
    (goalsize p10 medium)
    
    
    
    
    (available p11)
    (colour p11 white)
    (wood p11 pine)
    (surface-condition p11 rough)
    (treatment p11 glazed)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 white)
    (wood p13 pine)
    (surface-condition p13 verysmooth)
    (treatment p13 colourfragments)
    (goalsize p13 large)
    
    
    
    
    (available p14)
    (colour p14 mauve)
    (wood p14 mahogany)
    (surface-condition p14 verysmooth)
    (treatment p14 glazed)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (available p30)
    (colour p30 white)
    (wood p30 walnut)
    (surface-condition p30 smooth)
    (treatment p30 glazed)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (available p48)
    (colour p48 mauve)
    (wood p48 cherry)
    (surface-condition p48 verysmooth)
    (treatment p48 colourfragments)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (available p51)
    (colour p51 green)
    (wood p51 walnut)
    (surface-condition p51 verysmooth)
    (treatment p51 varnished)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (available p58)
    (colour p58 mauve)
    (wood p58 walnut)
    (surface-condition p58 verysmooth)
    (treatment p58 varnished)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
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
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (available p68)
    (colour p68 black)
    (wood p68 walnut)
    (surface-condition p68 smooth)
    (treatment p68 glazed)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (available p81)
    (colour p81 mauve)
    (wood p81 teak)
    (surface-condition p81 verysmooth)
    (treatment p81 glazed)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
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
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (available p102)
    (colour p102 white)
    (wood p102 mahogany)
    (surface-condition p102 rough)
    (treatment p102 colourfragments)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (available p104)
    (colour p104 red)
    (wood p104 pine)
    (surface-condition p104 verysmooth)
    (treatment p104 colourfragments)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (available p108)
    (colour p108 white)
    (wood p108 walnut)
    (surface-condition p108 rough)
    (treatment p108 varnished)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (available p130)
    (colour p130 mauve)
    (wood p130 pine)
    (surface-condition p130 smooth)
    (treatment p130 varnished)
    (goalsize p130 small)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (unused p133)
    (goalsize p133 medium)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (available p135)
    (colour p135 white)
    (wood p135 pine)
    (surface-condition p135 smooth)
    (treatment p135 varnished)
    (goalsize p135 large)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (available p139)
    (colour p139 natural)
    (wood p139 mahogany)
    (surface-condition p139 smooth)
    (treatment p139 glazed)
    (goalsize p139 small)
    
    
    
    
    (available p140)
    (colour p140 green)
    (wood p140 pine)
    (surface-condition p140 verysmooth)
    (treatment p140 glazed)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (unused p143)
    (goalsize p143 small)
    
    
    
    
    (unused p144)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 small)
    
    
    
    
    (unused p147)
    (goalsize p147 small)
    
    
    
    
    (available p148)
    (colour p148 white)
    (wood p148 mahogany)
    (surface-condition p148 smooth)
    (treatment p148 glazed)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (available p150)
    (colour p150 natural)
    (wood p150 pine)
    (surface-condition p150 smooth)
    (treatment p150 varnished)
    (goalsize p150 large)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 large)
    
    
    
    
    (available p153)
    (colour p153 red)
    (wood p153 beech)
    (surface-condition p153 verysmooth)
    (treatment p153 glazed)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (available p155)
    (colour p155 black)
    (wood p155 teak)
    (surface-condition p155 rough)
    (treatment p155 glazed)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 large)
    
    
    
    
    (available p157)
    (colour p157 natural)
    (wood p157 mahogany)
    (surface-condition p157 smooth)
    (treatment p157 glazed)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 small)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (available p161)
    (colour p161 natural)
    (wood p161 walnut)
    (surface-condition p161 verysmooth)
    (treatment p161 varnished)
    (goalsize p161 small)
    
    
    
    
    (unused p162)
    (goalsize p162 large)
    
    
    
    
    (unused p163)
    (goalsize p163 medium)
    
    
    
    
    (unused p164)
    (goalsize p164 small)
    
    
    
    
    (unused p165)
    (goalsize p165 large)
    
    
    
    
    (unused p166)
    (goalsize p166 small)
    
    
    
    
    (unused p167)
    (goalsize p167 large)
    
    
    
    
    (unused p168)
    (goalsize p168 small)
    
    
    
    
    (unused p169)
    (goalsize p169 large)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s8)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s5)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 cherry)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 cherry)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 cherry)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 cherry)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s11)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 mahogany)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s8)
    (wood b14 mahogany)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s12)
    (wood b15 mahogany)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 mahogany)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 oak)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s9)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s5)
    (wood b19 oak)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s4)
    (wood b20 oak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 pine)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 pine)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s9)
    (wood b23 pine)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s10)
    (wood b24 pine)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s9)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s8)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s4)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s4)
    (wood b28 pine)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s10)
    (wood b29 walnut)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 walnut)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 walnut)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s6)
    (wood b32 walnut)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 walnut)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 teak)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 teak)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s10)
    (wood b37 teak)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s5)
    (wood b38 teak)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s5)
    (wood b39 teak)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s8)
    (wood b40 teak)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s4)
    (wood b41 teak)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s11)
    (wood b42 teak)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s7)
    (wood b43 teak)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s5)
    (wood b44 teak)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s6)
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
    (boardsize b49 s11)
    (wood b49 beech)
    (surface-condition b49 smooth)
    (available b49)
    (boardsize b50 s11)
    (wood b50 beech)
    (surface-condition b50 rough)
    (available b50)
    (boardsize b51 s8)
    (wood b51 beech)
    (surface-condition b51 rough)
    (available b51)
    (boardsize b52 s3)
    (wood b52 beech)
    (surface-condition b52 rough)
    (available b52)
  )
  (:goal
    (and
      (available p0)
      (wood p0 teak)
      (surface-condition p0 verysmooth)
      (available p1)
      (colour p1 mauve)
      (treatment p1 varnished)
      (available p2)
      (colour p2 blue)
      (wood p2 mahogany)
      (available p3)
      (colour p3 natural)
      (surface-condition p3 smooth)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 blue)
      (wood p5 cherry)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 black)
      (wood p6 teak)
      (surface-condition p6 smooth)
      (treatment p6 varnished)
      (available p7)
      (wood p7 teak)
      (treatment p7 varnished)
      (available p8)
      (colour p8 black)
      (wood p8 walnut)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 green)
      (wood p9 pine)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 mauve)
      (surface-condition p10 smooth)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 natural)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 green)
      (wood p13 pine)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 red)
      (wood p14 mahogany)
      (surface-condition p14 smooth)
      (available p15)
      (wood p15 cherry)
      (treatment p15 varnished)
      (available p16)
      (wood p16 walnut)
      (surface-condition p16 smooth)
      (available p17)
      (colour p17 red)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 beech)
      (treatment p18 glazed)
      (available p19)
      (colour p19 natural)
      (treatment p19 glazed)
      (available p20)
      (colour p20 mauve)
      (wood p20 cherry)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 black)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 black)
      (wood p22 oak)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 blue)
      (surface-condition p23 smooth)
      (available p24)
      (colour p24 mauve)
      (wood p24 beech)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 red)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 black)
      (wood p26 pine)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 mauve)
      (wood p27 walnut)
      (available p28)
      (wood p28 cherry)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 black)
      (wood p29 beech)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 natural)
      (wood p30 walnut)
      (treatment p30 glazed)
      (available p31)
      (colour p31 red)
      (surface-condition p31 smooth)
      (available p32)
      (colour p32 white)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 mauve)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 green)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (wood p35 walnut)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 black)
      (wood p37 teak)
      (available p38)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (wood p39 pine)
      (surface-condition p39 smooth)
      (available p40)
      (colour p40 white)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 blue)
      (wood p41 beech)
      (treatment p41 varnished)
      (available p42)
      (wood p42 teak)
      (treatment p42 varnished)
      (available p43)
      (colour p43 black)
      (wood p43 teak)
      (available p44)
      (colour p44 red)
      (treatment p44 glazed)
      (available p45)
      (colour p45 black)
      (treatment p45 glazed)
      (available p46)
      (colour p46 white)
      (wood p46 beech)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 mauve)
      (treatment p47 glazed)
      (available p48)
      (colour p48 green)
      (wood p48 cherry)
      (treatment p48 varnished)
      (available p49)
      (colour p49 blue)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 natural)
      (wood p50 walnut)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 red)
      (wood p51 walnut)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 blue)
      (treatment p52 varnished)
      (available p53)
      (colour p53 black)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 red)
      (wood p54 pine)
      (available p55)
      (colour p55 black)
      (wood p55 pine)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 natural)
      (wood p56 teak)
      (surface-condition p56 verysmooth)
      (treatment p56 varnished)
      (available p57)
      (wood p57 walnut)
      (surface-condition p57 verysmooth)
      (available p58)
      (colour p58 white)
      (treatment p58 glazed)
      (available p59)
      (colour p59 red)
      (wood p59 teak)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 white)
      (wood p60 mahogany)
      (available p61)
      (wood p61 pine)
      (surface-condition p61 smooth)
      (treatment p61 glazed)
      (available p62)
      (colour p62 natural)
      (wood p62 cherry)
      (surface-condition p62 verysmooth)
      (available p63)
      (colour p63 red)
      (wood p63 oak)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (wood p64 walnut)
      (treatment p64 varnished)
      (available p65)
      (colour p65 blue)
      (wood p65 oak)
      (available p66)
      (colour p66 blue)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 natural)
      (wood p67 cherry)
      (treatment p67 glazed)
      (available p68)
      (colour p68 green)
      (surface-condition p68 smooth)
      (available p69)
      (colour p69 mauve)
      (surface-condition p69 smooth)
      (available p70)
      (colour p70 mauve)
      (surface-condition p70 smooth)
      (available p71)
      (colour p71 blue)
      (wood p71 pine)
      (surface-condition p71 smooth)
      (treatment p71 glazed)
      (available p72)
      (wood p72 walnut)
      (surface-condition p72 smooth)
      (available p73)
      (colour p73 white)
      (wood p73 mahogany)
      (surface-condition p73 smooth)
      (available p74)
      (colour p74 white)
      (treatment p74 glazed)
      (available p75)
      (wood p75 pine)
      (surface-condition p75 smooth)
      (treatment p75 varnished)
      (available p76)
      (wood p76 cherry)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 blue)
      (wood p77 cherry)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (wood p78 oak)
      (surface-condition p78 verysmooth)
      (available p79)
      (colour p79 mauve)
      (wood p79 cherry)
      (available p80)
      (colour p80 black)
      (treatment p80 glazed)
      (available p81)
      (colour p81 white)
      (surface-condition p81 verysmooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 blue)
      (wood p82 teak)
      (surface-condition p82 smooth)
      (available p83)
      (surface-condition p83 verysmooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 natural)
      (surface-condition p84 verysmooth)
      (available p85)
      (colour p85 white)
      (wood p85 pine)
      (available p86)
      (wood p86 cherry)
      (treatment p86 varnished)
      (available p87)
      (colour p87 mauve)
      (surface-condition p87 verysmooth)
      (available p88)
      (colour p88 black)
      (wood p88 pine)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (surface-condition p89 smooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 red)
      (surface-condition p90 smooth)
      (available p91)
      (colour p91 red)
      (wood p91 teak)
      (surface-condition p91 verysmooth)
      (treatment p91 glazed)
      (available p92)
      (wood p92 teak)
      (surface-condition p92 smooth)
      (treatment p92 varnished)
      (available p93)
      (wood p93 walnut)
      (surface-condition p93 smooth)
      (available p94)
      (colour p94 mauve)
      (wood p94 mahogany)
      (surface-condition p94 smooth)
      (available p95)
      (colour p95 natural)
      (surface-condition p95 verysmooth)
      (available p96)
      (colour p96 mauve)
      (wood p96 pine)
      (treatment p96 varnished)
      (available p97)
      (colour p97 black)
      (surface-condition p97 verysmooth)
      (available p98)
      (colour p98 natural)
      (surface-condition p98 smooth)
      (available p99)
      (colour p99 red)
      (wood p99 cherry)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 mauve)
      (surface-condition p100 smooth)
      (available p101)
      (colour p101 white)
      (surface-condition p101 verysmooth)
      (available p102)
      (colour p102 black)
      (surface-condition p102 smooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 mauve)
      (wood p103 walnut)
      (available p104)
      (colour p104 natural)
      (surface-condition p104 verysmooth)
      (treatment p104 varnished)
      (available p105)
      (surface-condition p105 verysmooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 green)
      (wood p106 mahogany)
      (available p107)
      (colour p107 mauve)
      (wood p107 mahogany)
      (available p108)
      (colour p108 green)
      (treatment p108 glazed)
      (available p109)
      (wood p109 walnut)
      (treatment p109 glazed)
      (available p110)
      (colour p110 natural)
      (surface-condition p110 verysmooth)
      (treatment p110 glazed)
      (available p111)
      (surface-condition p111 smooth)
      (treatment p111 varnished)
      (available p112)
      (surface-condition p112 verysmooth)
      (treatment p112 glazed)
      (available p113)
      (wood p113 teak)
      (surface-condition p113 smooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 green)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (colour p115 blue)
      (wood p115 teak)
      (available p116)
      (surface-condition p116 verysmooth)
      (treatment p116 glazed)
      (available p117)
      (colour p117 red)
      (wood p117 pine)
      (surface-condition p117 verysmooth)
      (treatment p117 glazed)
      (available p118)
      (colour p118 green)
      (treatment p118 glazed)
      (available p119)
      (wood p119 beech)
      (surface-condition p119 smooth)
      (treatment p119 glazed)
      (available p120)
      (wood p120 teak)
      (treatment p120 glazed)
      (available p121)
      (surface-condition p121 verysmooth)
      (treatment p121 varnished)
      (available p122)
      (colour p122 black)
      (wood p122 walnut)
      (surface-condition p122 verysmooth)
      (available p123)
      (colour p123 blue)
      (wood p123 cherry)
      (surface-condition p123 smooth)
      (available p124)
      (wood p124 beech)
      (surface-condition p124 smooth)
      (treatment p124 varnished)
      (available p125)
      (wood p125 teak)
      (surface-condition p125 smooth)
      (available p126)
      (colour p126 mauve)
      (wood p126 cherry)
      (surface-condition p126 smooth)
      (treatment p126 varnished)
      (available p127)
      (wood p127 cherry)
      (surface-condition p127 verysmooth)
      (available p128)
      (wood p128 mahogany)
      (treatment p128 glazed)
      (available p129)
      (colour p129 red)
      (wood p129 teak)
      (surface-condition p129 smooth)
      (treatment p129 varnished)
      (available p130)
      (wood p130 pine)
      (surface-condition p130 verysmooth)
      (available p131)
      (wood p131 walnut)
      (surface-condition p131 smooth)
      (available p132)
      (wood p132 pine)
      (surface-condition p132 smooth)
      (available p133)
      (colour p133 blue)
      (wood p133 beech)
      (available p134)
      (colour p134 mauve)
      (treatment p134 glazed)
      (available p135)
      (colour p135 blue)
      (wood p135 pine)
      (available p136)
      (colour p136 black)
      (wood p136 beech)
      (surface-condition p136 smooth)
      (available p137)
      (wood p137 beech)
      (surface-condition p137 smooth)
      (available p138)
      (colour p138 green)
      (surface-condition p138 smooth)
      (treatment p138 glazed)
      (available p139)
      (colour p139 blue)
      (wood p139 mahogany)
      (surface-condition p139 verysmooth)
      (treatment p139 glazed)
      (available p140)
      (colour p140 blue)
      (wood p140 pine)
      (surface-condition p140 smooth)
      (treatment p140 varnished)
      (available p141)
      (colour p141 red)
      (wood p141 oak)
      (surface-condition p141 verysmooth)
      (treatment p141 varnished)
      (available p142)
      (wood p142 teak)
      (treatment p142 glazed)
      (available p143)
      (wood p143 cherry)
      (surface-condition p143 verysmooth)
      (treatment p143 glazed)
      (available p144)
      (colour p144 blue)
      (wood p144 teak)
      (treatment p144 varnished)
      (available p145)
      (colour p145 natural)
      (surface-condition p145 verysmooth)
      (available p146)
      (colour p146 natural)
      (wood p146 teak)
      (available p147)
      (colour p147 red)
      (wood p147 oak)
      (available p148)
      (colour p148 blue)
      (wood p148 mahogany)
      (surface-condition p148 verysmooth)
      (treatment p148 varnished)
      (available p149)
      (surface-condition p149 verysmooth)
      (treatment p149 glazed)
      (available p150)
      (colour p150 mauve)
      (wood p150 pine)
      (treatment p150 varnished)
      (available p151)
      (colour p151 natural)
      (wood p151 mahogany)
      (available p152)
      (colour p152 red)
      (wood p152 cherry)
      (treatment p152 glazed)
      (available p153)
      (colour p153 natural)
      (wood p153 beech)
      (surface-condition p153 verysmooth)
      (treatment p153 varnished)
      (available p154)
      (wood p154 teak)
      (surface-condition p154 verysmooth)
      (available p155)
      (colour p155 green)
      (wood p155 teak)
      (surface-condition p155 verysmooth)
      (treatment p155 glazed)
      (available p156)
      (colour p156 natural)
      (wood p156 teak)
      (surface-condition p156 smooth)
      (treatment p156 varnished)
      (available p157)
      (colour p157 blue)
      (treatment p157 glazed)
      (available p158)
      (colour p158 blue)
      (wood p158 cherry)
      (surface-condition p158 smooth)
      (treatment p158 varnished)
      (available p159)
      (colour p159 white)
      (surface-condition p159 verysmooth)
      (available p160)
      (colour p160 natural)
      (wood p160 cherry)
      (available p161)
      (wood p161 walnut)
      (surface-condition p161 smooth)
      (available p162)
      (surface-condition p162 verysmooth)
      (treatment p162 varnished)
      (available p163)
      (colour p163 blue)
      (wood p163 pine)
      (available p164)
      (wood p164 teak)
      (surface-condition p164 smooth)
      (available p165)
      (colour p165 green)
      (wood p165 cherry)
      (available p166)
      (surface-condition p166 smooth)
      (treatment p166 varnished)
      (available p167)
      (colour p167 white)
      (surface-condition p167 verysmooth)
      (available p168)
      (colour p168 blue)
      (wood p168 pine)
      (treatment p168 varnished)
      (available p169)
      (colour p169 white)
      (wood p169 beech)
      (surface-condition p169 smooth)
      (treatment p169 varnished)
    )
  )
  
)
