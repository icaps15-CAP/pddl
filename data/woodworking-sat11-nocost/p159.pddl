; woodworking task with 164 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 670347

(define (problem wood-prob-sat-159)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue mauve white red green black - acolour
    beech cherry pine oak teak mahogany walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
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
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 green)
    (wood p11 beech)
    (surface-condition p11 smooth)
    (treatment p11 varnished)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (available p13)
    (colour p13 red)
    (wood p13 mahogany)
    (surface-condition p13 verysmooth)
    (treatment p13 colourfragments)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 white)
    (wood p17 pine)
    (surface-condition p17 smooth)
    (treatment p17 glazed)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 red)
    (wood p22 teak)
    (surface-condition p22 verysmooth)
    (treatment p22 colourfragments)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 red)
    (wood p24 teak)
    (surface-condition p24 smooth)
    (treatment p24 glazed)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 black)
    (wood p27 teak)
    (surface-condition p27 smooth)
    (treatment p27 glazed)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (available p31)
    (colour p31 blue)
    (wood p31 teak)
    (surface-condition p31 verysmooth)
    (treatment p31 varnished)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (available p36)
    (colour p36 blue)
    (wood p36 pine)
    (surface-condition p36 smooth)
    (treatment p36 colourfragments)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (available p41)
    (colour p41 black)
    (wood p41 pine)
    (surface-condition p41 verysmooth)
    (treatment p41 colourfragments)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (available p43)
    (colour p43 black)
    (wood p43 pine)
    (surface-condition p43 verysmooth)
    (treatment p43 glazed)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (available p46)
    (colour p46 natural)
    (wood p46 oak)
    (surface-condition p46 rough)
    (treatment p46 colourfragments)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (available p48)
    (colour p48 mauve)
    (wood p48 walnut)
    (surface-condition p48 rough)
    (treatment p48 varnished)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (available p51)
    (colour p51 white)
    (wood p51 cherry)
    (surface-condition p51 verysmooth)
    (treatment p51 glazed)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (available p61)
    (colour p61 natural)
    (wood p61 walnut)
    (surface-condition p61 rough)
    (treatment p61 colourfragments)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (available p64)
    (colour p64 mauve)
    (wood p64 teak)
    (surface-condition p64 rough)
    (treatment p64 varnished)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (available p70)
    (colour p70 mauve)
    (wood p70 pine)
    (surface-condition p70 smooth)
    (treatment p70 colourfragments)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (available p72)
    (colour p72 blue)
    (wood p72 pine)
    (surface-condition p72 rough)
    (treatment p72 colourfragments)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (available p78)
    (colour p78 blue)
    (wood p78 walnut)
    (surface-condition p78 rough)
    (treatment p78 glazed)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (available p82)
    (colour p82 natural)
    (wood p82 pine)
    (surface-condition p82 rough)
    (treatment p82 glazed)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (available p84)
    (colour p84 green)
    (wood p84 beech)
    (surface-condition p84 verysmooth)
    (treatment p84 varnished)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (available p90)
    (colour p90 white)
    (wood p90 oak)
    (surface-condition p90 verysmooth)
    (treatment p90 glazed)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (available p111)
    (colour p111 red)
    (wood p111 mahogany)
    (surface-condition p111 verysmooth)
    (treatment p111 glazed)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (available p115)
    (colour p115 mauve)
    (wood p115 mahogany)
    (surface-condition p115 smooth)
    (treatment p115 colourfragments)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (available p123)
    (colour p123 mauve)
    (wood p123 beech)
    (surface-condition p123 rough)
    (treatment p123 colourfragments)
    (goalsize p123 medium)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (available p126)
    (colour p126 green)
    (wood p126 cherry)
    (surface-condition p126 rough)
    (treatment p126 varnished)
    (goalsize p126 medium)
    
    
    
    
    (available p127)
    (colour p127 red)
    (wood p127 beech)
    (surface-condition p127 smooth)
    (treatment p127 varnished)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (available p132)
    (colour p132 mauve)
    (wood p132 teak)
    (surface-condition p132 rough)
    (treatment p132 varnished)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (available p134)
    (colour p134 natural)
    (wood p134 walnut)
    (surface-condition p134 verysmooth)
    (treatment p134 varnished)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (available p140)
    (colour p140 mauve)
    (wood p140 walnut)
    (surface-condition p140 smooth)
    (treatment p140 colourfragments)
    (goalsize p140 small)
    
    
    
    
    (available p141)
    (colour p141 mauve)
    (wood p141 oak)
    (surface-condition p141 rough)
    (treatment p141 varnished)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 large)
    
    
    
    
    (unused p143)
    (goalsize p143 large)
    
    
    
    
    (available p144)
    (colour p144 red)
    (wood p144 beech)
    (surface-condition p144 smooth)
    (treatment p144 varnished)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 medium)
    
    
    
    
    (unused p148)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 small)
    
    
    
    
    (available p150)
    (colour p150 blue)
    (wood p150 beech)
    (surface-condition p150 verysmooth)
    (treatment p150 colourfragments)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 large)
    
    
    
    
    (unused p152)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 medium)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (available p156)
    (colour p156 green)
    (wood p156 oak)
    (surface-condition p156 rough)
    (treatment p156 colourfragments)
    (goalsize p156 small)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (unused p159)
    (goalsize p159 large)
    
    
    
    
    (unused p160)
    (goalsize p160 medium)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 medium)
    
    
    
    
    (available p163)
    (colour p163 green)
    (wood p163 pine)
    (surface-condition p163 rough)
    (treatment p163 colourfragments)
    (goalsize p163 large)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s11)
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
    (boardsize b5 s11)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s1)
    (wood b7 cherry)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s11)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s6)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s10)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 mahogany)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 mahogany)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s10)
    (wood b16 oak)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s8)
    (wood b17 oak)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s9)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 oak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 pine)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 pine)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 pine)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s4)
    (wood b23 pine)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s7)
    (wood b24 pine)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s7)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 walnut)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s5)
    (wood b28 walnut)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s9)
    (wood b29 walnut)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 walnut)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s6)
    (wood b31 walnut)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s9)
    (wood b32 walnut)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s3)
    (wood b33 walnut)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s11)
    (wood b34 teak)
    (surface-condition b34 smooth)
    (available b34)
    (boardsize b35 s8)
    (wood b35 teak)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 teak)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s5)
    (wood b37 teak)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s8)
    (wood b38 teak)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s7)
    (wood b39 teak)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s5)
    (wood b40 teak)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s6)
    (wood b41 beech)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s8)
    (wood b42 beech)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s5)
    (wood b43 beech)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s9)
    (wood b44 beech)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s7)
    (wood b45 beech)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s9)
    (wood b46 beech)
    (surface-condition b46 rough)
    (available b46)
    (boardsize b47 s5)
    (wood b47 beech)
    (surface-condition b47 rough)
    (available b47)
  )
  (:goal
    (and
      (available p0)
      (wood p0 mahogany)
      (surface-condition p0 verysmooth)
      (available p1)
      (colour p1 white)
      (wood p1 cherry)
      (treatment p1 varnished)
      (available p2)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 green)
      (wood p3 oak)
      (available p4)
      (wood p4 cherry)
      (treatment p4 glazed)
      (available p5)
      (wood p5 mahogany)
      (treatment p5 glazed)
      (available p6)
      (colour p6 red)
      (wood p6 cherry)
      (available p7)
      (colour p7 white)
      (wood p7 beech)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 white)
      (wood p8 teak)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (wood p9 walnut)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 red)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 red)
      (wood p11 beech)
      (available p12)
      (colour p12 green)
      (wood p12 pine)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 natural)
      (wood p13 mahogany)
      (available p14)
      (colour p14 mauve)
      (wood p14 walnut)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 blue)
      (treatment p15 glazed)
      (available p16)
      (colour p16 mauve)
      (surface-condition p16 smooth)
      (available p17)
      (colour p17 red)
      (treatment p17 varnished)
      (available p18)
      (colour p18 white)
      (wood p18 beech)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 natural)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 green)
      (wood p21 teak)
      (available p22)
      (colour p22 white)
      (wood p22 teak)
      (available p23)
      (wood p23 teak)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 natural)
      (wood p24 teak)
      (treatment p24 glazed)
      (available p25)
      (colour p25 red)
      (wood p25 cherry)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 blue)
      (wood p26 beech)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 mauve)
      (surface-condition p27 verysmooth)
      (available p28)
      (colour p28 mauve)
      (surface-condition p28 verysmooth)
      (available p29)
      (wood p29 mahogany)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 mauve)
      (wood p30 mahogany)
      (treatment p30 varnished)
      (available p31)
      (wood p31 teak)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (colour p32 mauve)
      (wood p32 cherry)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 green)
      (wood p33 pine)
      (available p34)
      (colour p34 white)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 blue)
      (wood p35 pine)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (wood p36 pine)
      (surface-condition p36 verysmooth)
      (available p37)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (surface-condition p39 smooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 natural)
      (wood p40 teak)
      (treatment p40 varnished)
      (available p41)
      (colour p41 white)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 blue)
      (wood p42 teak)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 red)
      (wood p43 pine)
      (treatment p43 glazed)
      (available p44)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 red)
      (wood p45 pine)
      (treatment p45 varnished)
      (available p46)
      (colour p46 white)
      (surface-condition p46 verysmooth)
      (available p47)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (wood p48 walnut)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 black)
      (wood p49 walnut)
      (available p50)
      (colour p50 green)
      (wood p50 oak)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 green)
      (treatment p51 varnished)
      (available p52)
      (colour p52 green)
      (wood p52 pine)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 blue)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 black)
      (wood p54 walnut)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 mauve)
      (wood p55 pine)
      (available p56)
      (colour p56 red)
      (wood p56 cherry)
      (available p57)
      (colour p57 red)
      (treatment p57 glazed)
      (available p58)
      (colour p58 black)
      (wood p58 beech)
      (surface-condition p58 smooth)
      (available p59)
      (wood p59 beech)
      (surface-condition p59 smooth)
      (available p60)
      (colour p60 natural)
      (treatment p60 glazed)
      (available p61)
      (wood p61 walnut)
      (treatment p61 varnished)
      (available p62)
      (wood p62 pine)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 blue)
      (wood p63 mahogany)
      (surface-condition p63 verysmooth)
      (available p64)
      (colour p64 white)
      (wood p64 teak)
      (surface-condition p64 verysmooth)
      (available p65)
      (colour p65 mauve)
      (wood p65 cherry)
      (surface-condition p65 smooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 natural)
      (surface-condition p66 verysmooth)
      (available p67)
      (colour p67 natural)
      (wood p67 mahogany)
      (available p68)
      (colour p68 red)
      (surface-condition p68 verysmooth)
      (treatment p68 varnished)
      (available p69)
      (surface-condition p69 smooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 black)
      (treatment p70 glazed)
      (available p71)
      (wood p71 pine)
      (surface-condition p71 verysmooth)
      (available p72)
      (wood p72 pine)
      (surface-condition p72 smooth)
      (available p73)
      (colour p73 red)
      (wood p73 pine)
      (available p74)
      (colour p74 mauve)
      (wood p74 pine)
      (surface-condition p74 smooth)
      (treatment p74 varnished)
      (available p75)
      (colour p75 natural)
      (treatment p75 glazed)
      (available p76)
      (colour p76 blue)
      (wood p76 mahogany)
      (available p77)
      (colour p77 green)
      (treatment p77 varnished)
      (available p78)
      (colour p78 white)
      (wood p78 walnut)
      (surface-condition p78 smooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 green)
      (wood p79 oak)
      (treatment p79 glazed)
      (available p80)
      (colour p80 green)
      (treatment p80 glazed)
      (available p81)
      (colour p81 green)
      (treatment p81 varnished)
      (available p82)
      (colour p82 mauve)
      (surface-condition p82 smooth)
      (treatment p82 glazed)
      (available p83)
      (colour p83 blue)
      (wood p83 pine)
      (treatment p83 glazed)
      (available p84)
      (colour p84 blue)
      (wood p84 beech)
      (available p85)
      (colour p85 blue)
      (wood p85 mahogany)
      (surface-condition p85 verysmooth)
      (available p86)
      (colour p86 blue)
      (treatment p86 varnished)
      (available p87)
      (surface-condition p87 verysmooth)
      (treatment p87 varnished)
      (available p88)
      (wood p88 mahogany)
      (surface-condition p88 verysmooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 white)
      (wood p89 walnut)
      (surface-condition p89 verysmooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 blue)
      (treatment p90 varnished)
      (available p91)
      (colour p91 green)
      (wood p91 cherry)
      (available p92)
      (colour p92 white)
      (surface-condition p92 smooth)
      (available p93)
      (colour p93 blue)
      (wood p93 walnut)
      (surface-condition p93 smooth)
      (available p94)
      (colour p94 red)
      (treatment p94 varnished)
      (available p95)
      (wood p95 cherry)
      (surface-condition p95 smooth)
      (treatment p95 glazed)
      (available p96)
      (wood p96 beech)
      (surface-condition p96 verysmooth)
      (available p97)
      (colour p97 red)
      (surface-condition p97 verysmooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 black)
      (wood p98 cherry)
      (available p99)
      (colour p99 white)
      (wood p99 walnut)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 mauve)
      (surface-condition p100 smooth)
      (available p101)
      (colour p101 red)
      (wood p101 teak)
      (treatment p101 varnished)
      (available p102)
      (colour p102 black)
      (surface-condition p102 smooth)
      (available p103)
      (colour p103 green)
      (wood p103 cherry)
      (surface-condition p103 verysmooth)
      (available p104)
      (wood p104 pine)
      (treatment p104 glazed)
      (available p105)
      (colour p105 black)
      (wood p105 teak)
      (available p106)
      (wood p106 cherry)
      (surface-condition p106 verysmooth)
      (available p107)
      (colour p107 mauve)
      (treatment p107 varnished)
      (available p108)
      (wood p108 teak)
      (surface-condition p108 smooth)
      (available p109)
      (colour p109 natural)
      (treatment p109 glazed)
      (available p110)
      (wood p110 oak)
      (surface-condition p110 verysmooth)
      (available p111)
      (colour p111 natural)
      (surface-condition p111 smooth)
      (available p112)
      (colour p112 red)
      (surface-condition p112 verysmooth)
      (available p113)
      (wood p113 oak)
      (surface-condition p113 verysmooth)
      (treatment p113 glazed)
      (available p114)
      (colour p114 mauve)
      (wood p114 pine)
      (treatment p114 glazed)
      (available p115)
      (colour p115 natural)
      (wood p115 mahogany)
      (surface-condition p115 verysmooth)
      (treatment p115 varnished)
      (available p116)
      (wood p116 oak)
      (surface-condition p116 smooth)
      (available p117)
      (colour p117 white)
      (wood p117 walnut)
      (surface-condition p117 verysmooth)
      (available p118)
      (colour p118 mauve)
      (wood p118 beech)
      (treatment p118 varnished)
      (available p119)
      (colour p119 green)
      (surface-condition p119 smooth)
      (available p120)
      (wood p120 walnut)
      (treatment p120 varnished)
      (available p121)
      (surface-condition p121 verysmooth)
      (treatment p121 glazed)
      (available p122)
      (colour p122 natural)
      (wood p122 oak)
      (available p123)
      (colour p123 red)
      (surface-condition p123 verysmooth)
      (available p124)
      (wood p124 teak)
      (treatment p124 glazed)
      (available p125)
      (wood p125 pine)
      (surface-condition p125 verysmooth)
      (available p126)
      (wood p126 cherry)
      (treatment p126 glazed)
      (available p127)
      (wood p127 beech)
      (treatment p127 glazed)
      (available p128)
      (colour p128 red)
      (surface-condition p128 smooth)
      (available p129)
      (wood p129 walnut)
      (surface-condition p129 verysmooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 mauve)
      (wood p130 cherry)
      (surface-condition p130 smooth)
      (available p131)
      (colour p131 natural)
      (treatment p131 varnished)
      (available p132)
      (colour p132 white)
      (wood p132 teak)
      (surface-condition p132 verysmooth)
      (treatment p132 varnished)
      (available p133)
      (surface-condition p133 smooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 blue)
      (wood p134 walnut)
      (surface-condition p134 verysmooth)
      (treatment p134 glazed)
      (available p135)
      (colour p135 mauve)
      (surface-condition p135 verysmooth)
      (available p136)
      (colour p136 natural)
      (wood p136 walnut)
      (available p137)
      (colour p137 mauve)
      (treatment p137 glazed)
      (available p138)
      (colour p138 black)
      (surface-condition p138 smooth)
      (available p139)
      (colour p139 black)
      (surface-condition p139 verysmooth)
      (available p140)
      (surface-condition p140 smooth)
      (treatment p140 varnished)
      (available p141)
      (wood p141 oak)
      (surface-condition p141 verysmooth)
      (treatment p141 varnished)
      (available p142)
      (colour p142 white)
      (surface-condition p142 smooth)
      (available p143)
      (surface-condition p143 smooth)
      (treatment p143 varnished)
      (available p144)
      (colour p144 green)
      (wood p144 beech)
      (available p145)
      (colour p145 blue)
      (wood p145 beech)
      (available p146)
      (colour p146 red)
      (treatment p146 varnished)
      (available p147)
      (wood p147 beech)
      (treatment p147 varnished)
      (available p148)
      (colour p148 blue)
      (wood p148 mahogany)
      (surface-condition p148 verysmooth)
      (treatment p148 varnished)
      (available p149)
      (colour p149 natural)
      (surface-condition p149 smooth)
      (treatment p149 varnished)
      (available p150)
      (colour p150 red)
      (surface-condition p150 smooth)
      (treatment p150 glazed)
      (available p151)
      (wood p151 pine)
      (surface-condition p151 verysmooth)
      (treatment p151 glazed)
      (available p152)
      (colour p152 natural)
      (wood p152 cherry)
      (surface-condition p152 verysmooth)
      (treatment p152 varnished)
      (available p153)
      (surface-condition p153 smooth)
      (treatment p153 glazed)
      (available p154)
      (surface-condition p154 verysmooth)
      (treatment p154 varnished)
      (available p155)
      (wood p155 teak)
      (surface-condition p155 smooth)
      (available p156)
      (colour p156 mauve)
      (wood p156 oak)
      (available p157)
      (colour p157 natural)
      (wood p157 beech)
      (surface-condition p157 smooth)
      (treatment p157 varnished)
      (available p158)
      (colour p158 natural)
      (wood p158 beech)
      (surface-condition p158 smooth)
      (treatment p158 glazed)
      (available p159)
      (wood p159 teak)
      (treatment p159 glazed)
      (available p160)
      (colour p160 white)
      (surface-condition p160 smooth)
      (available p161)
      (colour p161 red)
      (treatment p161 varnished)
      (available p162)
      (colour p162 mauve)
      (wood p162 teak)
      (surface-condition p162 verysmooth)
      (treatment p162 glazed)
      (available p163)
      (colour p163 mauve)
      (wood p163 pine)
      (surface-condition p163 verysmooth)
      (treatment p163 varnished)
    )
  )
  
)
