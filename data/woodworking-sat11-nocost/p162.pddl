; woodworking task with 173 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 619873

(define (problem wood-prob-sat-162)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve white blue red green black - acolour
    pine beech teak cherry oak walnut mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 p167 p168 p169 p170 p171 p172 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 black)
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
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (available p3)
    (colour p3 green)
    (wood p3 mahogany)
    (surface-condition p3 smooth)
    (treatment p3 glazed)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 green)
    (wood p5 oak)
    (surface-condition p5 rough)
    (treatment p5 varnished)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 red)
    (wood p9 cherry)
    (surface-condition p9 smooth)
    (treatment p9 varnished)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 black)
    (wood p10 mahogany)
    (surface-condition p10 rough)
    (treatment p10 varnished)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 blue)
    (wood p17 pine)
    (surface-condition p17 rough)
    (treatment p17 varnished)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 black)
    (wood p21 cherry)
    (surface-condition p21 verysmooth)
    (treatment p21 glazed)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (available p26)
    (colour p26 natural)
    (wood p26 cherry)
    (surface-condition p26 smooth)
    (treatment p26 colourfragments)
    (goalsize p26 large)
    
    
    
    
    (available p27)
    (colour p27 natural)
    (wood p27 pine)
    (surface-condition p27 rough)
    (treatment p27 varnished)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 green)
    (wood p31 walnut)
    (surface-condition p31 rough)
    (treatment p31 glazed)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
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
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (available p43)
    (colour p43 black)
    (wood p43 beech)
    (surface-condition p43 rough)
    (treatment p43 glazed)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (available p46)
    (colour p46 green)
    (wood p46 mahogany)
    (surface-condition p46 verysmooth)
    (treatment p46 varnished)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (available p50)
    (colour p50 black)
    (wood p50 teak)
    (surface-condition p50 verysmooth)
    (treatment p50 varnished)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (available p52)
    (colour p52 black)
    (wood p52 walnut)
    (surface-condition p52 rough)
    (treatment p52 glazed)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (available p57)
    (colour p57 red)
    (wood p57 beech)
    (surface-condition p57 verysmooth)
    (treatment p57 colourfragments)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (available p63)
    (colour p63 red)
    (wood p63 oak)
    (surface-condition p63 smooth)
    (treatment p63 colourfragments)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (available p68)
    (colour p68 natural)
    (wood p68 pine)
    (surface-condition p68 verysmooth)
    (treatment p68 varnished)
    (goalsize p68 small)
    
    
    
    
    (available p69)
    (colour p69 green)
    (wood p69 beech)
    (surface-condition p69 verysmooth)
    (treatment p69 colourfragments)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (available p73)
    (colour p73 blue)
    (wood p73 mahogany)
    (surface-condition p73 rough)
    (treatment p73 glazed)
    (goalsize p73 small)
    
    
    
    
    (available p74)
    (colour p74 mauve)
    (wood p74 beech)
    (surface-condition p74 smooth)
    (treatment p74 colourfragments)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (available p78)
    (colour p78 natural)
    (wood p78 oak)
    (surface-condition p78 smooth)
    (treatment p78 colourfragments)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (available p90)
    (colour p90 blue)
    (wood p90 mahogany)
    (surface-condition p90 verysmooth)
    (treatment p90 glazed)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (available p96)
    (colour p96 white)
    (wood p96 mahogany)
    (surface-condition p96 rough)
    (treatment p96 varnished)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (available p101)
    (colour p101 white)
    (wood p101 teak)
    (surface-condition p101 smooth)
    (treatment p101 varnished)
    (goalsize p101 large)
    
    
    
    
    (available p102)
    (colour p102 white)
    (wood p102 mahogany)
    (surface-condition p102 smooth)
    (treatment p102 colourfragments)
    (goalsize p102 large)
    
    
    
    
    (available p103)
    (colour p103 natural)
    (wood p103 cherry)
    (surface-condition p103 smooth)
    (treatment p103 glazed)
    (goalsize p103 small)
    
    
    
    
    (available p104)
    (colour p104 natural)
    (wood p104 cherry)
    (surface-condition p104 verysmooth)
    (treatment p104 varnished)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (available p111)
    (colour p111 white)
    (wood p111 mahogany)
    (surface-condition p111 verysmooth)
    (treatment p111 glazed)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (available p113)
    (colour p113 white)
    (wood p113 oak)
    (surface-condition p113 rough)
    (treatment p113 colourfragments)
    (goalsize p113 medium)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (available p115)
    (colour p115 red)
    (wood p115 cherry)
    (surface-condition p115 smooth)
    (treatment p115 glazed)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 small)
    
    
    
    
    (unused p123)
    (goalsize p123 small)
    
    
    
    
    (available p124)
    (colour p124 mauve)
    (wood p124 teak)
    (surface-condition p124 rough)
    (treatment p124 colourfragments)
    (goalsize p124 large)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (available p128)
    (colour p128 black)
    (wood p128 oak)
    (surface-condition p128 smooth)
    (treatment p128 colourfragments)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 small)
    
    
    
    
    (unused p130)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 small)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (available p134)
    (colour p134 blue)
    (wood p134 beech)
    (surface-condition p134 rough)
    (treatment p134 colourfragments)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (available p138)
    (colour p138 blue)
    (wood p138 mahogany)
    (surface-condition p138 smooth)
    (treatment p138 colourfragments)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (available p140)
    (colour p140 white)
    (wood p140 beech)
    (surface-condition p140 rough)
    (treatment p140 glazed)
    (goalsize p140 small)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 small)
    
    
    
    
    (unused p143)
    (goalsize p143 medium)
    
    
    
    
    (available p144)
    (colour p144 mauve)
    (wood p144 mahogany)
    (surface-condition p144 verysmooth)
    (treatment p144 colourfragments)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (available p146)
    (colour p146 blue)
    (wood p146 walnut)
    (surface-condition p146 smooth)
    (treatment p146 colourfragments)
    (goalsize p146 medium)
    
    
    
    
    (available p147)
    (colour p147 green)
    (wood p147 teak)
    (surface-condition p147 smooth)
    (treatment p147 varnished)
    (goalsize p147 large)
    
    
    
    
    (available p148)
    (colour p148 black)
    (wood p148 cherry)
    (surface-condition p148 rough)
    (treatment p148 glazed)
    (goalsize p148 small)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (available p150)
    (colour p150 red)
    (wood p150 beech)
    (surface-condition p150 rough)
    (treatment p150 varnished)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 medium)
    
    
    
    
    (available p152)
    (colour p152 natural)
    (wood p152 walnut)
    (surface-condition p152 rough)
    (treatment p152 varnished)
    (goalsize p152 small)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 large)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (available p157)
    (colour p157 green)
    (wood p157 mahogany)
    (surface-condition p157 verysmooth)
    (treatment p157 colourfragments)
    (goalsize p157 medium)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (available p161)
    (colour p161 green)
    (wood p161 beech)
    (surface-condition p161 rough)
    (treatment p161 glazed)
    (goalsize p161 medium)
    
    
    
    
    (available p162)
    (colour p162 white)
    (wood p162 cherry)
    (surface-condition p162 verysmooth)
    (treatment p162 varnished)
    (goalsize p162 small)
    
    
    
    
    (available p163)
    (colour p163 blue)
    (wood p163 teak)
    (surface-condition p163 smooth)
    (treatment p163 glazed)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 medium)
    
    
    
    
    (unused p166)
    (goalsize p166 medium)
    
    
    
    
    (unused p167)
    (goalsize p167 medium)
    
    
    
    
    (available p168)
    (colour p168 blue)
    (wood p168 pine)
    (surface-condition p168 smooth)
    (treatment p168 varnished)
    (goalsize p168 medium)
    
    
    
    
    (available p169)
    (colour p169 mauve)
    (wood p169 walnut)
    (surface-condition p169 rough)
    (treatment p169 varnished)
    (goalsize p169 large)
    
    
    
    
    (unused p170)
    (goalsize p170 medium)
    
    
    
    
    (available p171)
    (colour p171 mauve)
    (wood p171 beech)
    (surface-condition p171 rough)
    (treatment p171 glazed)
    (goalsize p171 small)
    
    
    
    
    (unused p172)
    (goalsize p172 large)
    
    
    
    
    (boardsize b0 s11)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
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
    (boardsize b4 s4)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 mahogany)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s7)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s6)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s7)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s6)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s9)
    (wood b13 oak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 oak)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s9)
    (wood b15 oak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s6)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 oak)
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
    (boardsize b20 s4)
    (wood b20 oak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s8)
    (wood b21 pine)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 pine)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s7)
    (wood b23 pine)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 pine)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s8)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s10)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s8)
    (wood b28 walnut)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s6)
    (wood b29 walnut)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s7)
    (wood b30 walnut)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 walnut)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s9)
    (wood b32 walnut)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s8)
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
    (boardsize b36 s10)
    (wood b36 teak)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s6)
    (wood b37 teak)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s7)
    (wood b38 teak)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s6)
    (wood b39 beech)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s8)
    (wood b40 beech)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s7)
    (wood b41 beech)
    (surface-condition b41 smooth)
    (available b41)
    (boardsize b42 s7)
    (wood b42 beech)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s8)
    (wood b43 beech)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s7)
    (wood b44 beech)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s2)
    (wood b45 beech)
    (surface-condition b45 rough)
    (available b45)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 green)
      (surface-condition p1 verysmooth)
      (available p2)
      (wood p2 cherry)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 red)
      (wood p3 mahogany)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 white)
      (wood p6 teak)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 red)
      (wood p7 beech)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 green)
      (wood p8 beech)
      (available p9)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 white)
      (wood p10 mahogany)
      (treatment p10 varnished)
      (available p11)
      (colour p11 green)
      (wood p11 teak)
      (available p12)
      (colour p12 black)
      (wood p12 cherry)
      (available p13)
      (colour p13 blue)
      (wood p13 cherry)
      (surface-condition p13 verysmooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 white)
      (wood p14 pine)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 blue)
      (treatment p15 varnished)
      (available p16)
      (colour p16 white)
      (wood p16 cherry)
      (available p17)
      (colour p17 mauve)
      (wood p17 pine)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 white)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 green)
      (wood p19 cherry)
      (available p20)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 red)
      (wood p21 cherry)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (wood p22 beech)
      (treatment p22 varnished)
      (available p23)
      (colour p23 red)
      (wood p23 mahogany)
      (treatment p23 glazed)
      (available p24)
      (wood p24 mahogany)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 white)
      (wood p25 walnut)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 blue)
      (wood p26 cherry)
      (treatment p26 varnished)
      (available p27)
      (wood p27 pine)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 green)
      (wood p28 pine)
      (available p29)
      (colour p29 green)
      (treatment p29 varnished)
      (available p30)
      (colour p30 red)
      (wood p30 cherry)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 natural)
      (wood p31 walnut)
      (available p32)
      (colour p32 white)
      (wood p32 pine)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (wood p33 beech)
      (treatment p33 glazed)
      (available p34)
      (colour p34 black)
      (wood p34 walnut)
      (surface-condition p34 smooth)
      (available p35)
      (colour p35 blue)
      (wood p35 beech)
      (treatment p35 glazed)
      (available p36)
      (colour p36 green)
      (treatment p36 glazed)
      (available p37)
      (colour p37 mauve)
      (wood p37 oak)
      (available p38)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 green)
      (treatment p39 glazed)
      (available p40)
      (colour p40 black)
      (treatment p40 varnished)
      (available p41)
      (wood p41 beech)
      (treatment p41 varnished)
      (available p42)
      (colour p42 green)
      (wood p42 beech)
      (treatment p42 glazed)
      (available p43)
      (wood p43 beech)
      (surface-condition p43 smooth)
      (available p44)
      (wood p44 pine)
      (surface-condition p44 verysmooth)
      (available p45)
      (wood p45 walnut)
      (surface-condition p45 smooth)
      (available p46)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 blue)
      (treatment p47 glazed)
      (available p48)
      (colour p48 red)
      (wood p48 mahogany)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (wood p49 walnut)
      (surface-condition p49 smooth)
      (available p50)
      (colour p50 blue)
      (wood p50 teak)
      (treatment p50 varnished)
      (available p51)
      (wood p51 walnut)
      (treatment p51 varnished)
      (available p52)
      (colour p52 white)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (wood p53 walnut)
      (surface-condition p53 smooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 black)
      (wood p54 mahogany)
      (surface-condition p54 smooth)
      (available p55)
      (colour p55 white)
      (wood p55 walnut)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 black)
      (wood p56 oak)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 mauve)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 blue)
      (wood p58 mahogany)
      (surface-condition p58 verysmooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 black)
      (wood p59 oak)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 green)
      (wood p60 walnut)
      (surface-condition p60 verysmooth)
      (treatment p60 glazed)
      (available p61)
      (wood p61 pine)
      (treatment p61 glazed)
      (available p62)
      (colour p62 blue)
      (treatment p62 varnished)
      (available p63)
      (colour p63 white)
      (surface-condition p63 verysmooth)
      (available p64)
      (colour p64 white)
      (wood p64 oak)
      (available p65)
      (wood p65 walnut)
      (surface-condition p65 verysmooth)
      (available p66)
      (colour p66 blue)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 red)
      (surface-condition p67 smooth)
      (available p68)
      (colour p68 mauve)
      (wood p68 pine)
      (surface-condition p68 verysmooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 blue)
      (surface-condition p69 verysmooth)
      (available p70)
      (colour p70 green)
      (wood p70 pine)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 blue)
      (treatment p71 glazed)
      (available p72)
      (colour p72 green)
      (wood p72 mahogany)
      (surface-condition p72 smooth)
      (treatment p72 varnished)
      (available p73)
      (surface-condition p73 smooth)
      (treatment p73 glazed)
      (available p74)
      (colour p74 green)
      (surface-condition p74 verysmooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 natural)
      (treatment p75 glazed)
      (available p76)
      (colour p76 natural)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (colour p77 natural)
      (treatment p77 glazed)
      (available p78)
      (colour p78 mauve)
      (treatment p78 glazed)
      (available p79)
      (colour p79 natural)
      (wood p79 mahogany)
      (treatment p79 glazed)
      (available p80)
      (colour p80 black)
      (surface-condition p80 verysmooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 green)
      (treatment p81 varnished)
      (available p82)
      (colour p82 blue)
      (wood p82 beech)
      (surface-condition p82 smooth)
      (treatment p82 glazed)
      (available p83)
      (colour p83 red)
      (wood p83 pine)
      (available p84)
      (colour p84 mauve)
      (surface-condition p84 verysmooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 red)
      (wood p85 pine)
      (treatment p85 glazed)
      (available p86)
      (colour p86 black)
      (wood p86 pine)
      (surface-condition p86 verysmooth)
      (treatment p86 glazed)
      (available p87)
      (colour p87 green)
      (wood p87 pine)
      (surface-condition p87 smooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 red)
      (surface-condition p88 smooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 white)
      (wood p89 walnut)
      (available p90)
      (wood p90 mahogany)
      (treatment p90 varnished)
      (available p91)
      (wood p91 beech)
      (surface-condition p91 verysmooth)
      (available p92)
      (colour p92 white)
      (wood p92 beech)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 mauve)
      (treatment p93 glazed)
      (available p94)
      (wood p94 mahogany)
      (surface-condition p94 verysmooth)
      (treatment p94 varnished)
      (available p95)
      (wood p95 beech)
      (treatment p95 glazed)
      (available p96)
      (colour p96 green)
      (wood p96 mahogany)
      (surface-condition p96 smooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 natural)
      (wood p97 pine)
      (surface-condition p97 smooth)
      (treatment p97 glazed)
      (available p98)
      (surface-condition p98 verysmooth)
      (treatment p98 glazed)
      (available p99)
      (colour p99 natural)
      (wood p99 oak)
      (surface-condition p99 verysmooth)
      (treatment p99 glazed)
      (available p100)
      (surface-condition p100 smooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 black)
      (wood p101 teak)
      (surface-condition p101 verysmooth)
      (treatment p101 glazed)
      (available p102)
      (wood p102 mahogany)
      (surface-condition p102 smooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 red)
      (surface-condition p103 verysmooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 black)
      (wood p104 cherry)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (surface-condition p105 verysmooth)
      (treatment p105 glazed)
      (available p106)
      (colour p106 natural)
      (wood p106 teak)
      (surface-condition p106 smooth)
      (treatment p106 glazed)
      (available p107)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (colour p108 mauve)
      (wood p108 oak)
      (surface-condition p108 smooth)
      (treatment p108 varnished)
      (available p109)
      (wood p109 mahogany)
      (surface-condition p109 smooth)
      (available p110)
      (colour p110 blue)
      (treatment p110 glazed)
      (available p111)
      (colour p111 blue)
      (surface-condition p111 smooth)
      (treatment p111 glazed)
      (available p112)
      (colour p112 blue)
      (wood p112 teak)
      (surface-condition p112 smooth)
      (treatment p112 varnished)
      (available p113)
      (wood p113 oak)
      (treatment p113 varnished)
      (available p114)
      (surface-condition p114 verysmooth)
      (treatment p114 glazed)
      (available p115)
      (wood p115 cherry)
      (surface-condition p115 verysmooth)
      (available p116)
      (colour p116 natural)
      (treatment p116 varnished)
      (available p117)
      (colour p117 natural)
      (wood p117 mahogany)
      (surface-condition p117 verysmooth)
      (treatment p117 glazed)
      (available p118)
      (wood p118 oak)
      (treatment p118 varnished)
      (available p119)
      (wood p119 cherry)
      (surface-condition p119 verysmooth)
      (available p120)
      (wood p120 walnut)
      (surface-condition p120 verysmooth)
      (available p121)
      (surface-condition p121 verysmooth)
      (treatment p121 varnished)
      (available p122)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (colour p123 natural)
      (treatment p123 glazed)
      (available p124)
      (colour p124 blue)
      (surface-condition p124 smooth)
      (available p125)
      (colour p125 mauve)
      (wood p125 mahogany)
      (surface-condition p125 verysmooth)
      (treatment p125 varnished)
      (available p126)
      (colour p126 white)
      (wood p126 pine)
      (surface-condition p126 verysmooth)
      (treatment p126 varnished)
      (available p127)
      (surface-condition p127 smooth)
      (treatment p127 glazed)
      (available p128)
      (colour p128 red)
      (wood p128 oak)
      (surface-condition p128 smooth)
      (treatment p128 glazed)
      (available p129)
      (surface-condition p129 smooth)
      (treatment p129 varnished)
      (available p130)
      (wood p130 beech)
      (treatment p130 glazed)
      (available p131)
      (colour p131 green)
      (treatment p131 varnished)
      (available p132)
      (colour p132 blue)
      (wood p132 pine)
      (surface-condition p132 verysmooth)
      (treatment p132 varnished)
      (available p133)
      (colour p133 black)
      (surface-condition p133 smooth)
      (available p134)
      (colour p134 mauve)
      (wood p134 beech)
      (surface-condition p134 smooth)
      (treatment p134 glazed)
      (available p135)
      (wood p135 pine)
      (treatment p135 glazed)
      (available p136)
      (wood p136 oak)
      (surface-condition p136 smooth)
      (available p137)
      (colour p137 red)
      (treatment p137 glazed)
      (available p138)
      (colour p138 white)
      (surface-condition p138 verysmooth)
      (treatment p138 glazed)
      (available p139)
      (colour p139 white)
      (wood p139 mahogany)
      (surface-condition p139 verysmooth)
      (available p140)
      (colour p140 blue)
      (wood p140 beech)
      (surface-condition p140 smooth)
      (treatment p140 glazed)
      (available p141)
      (colour p141 white)
      (wood p141 oak)
      (treatment p141 glazed)
      (available p142)
      (colour p142 mauve)
      (wood p142 mahogany)
      (available p143)
      (colour p143 black)
      (surface-condition p143 smooth)
      (treatment p143 glazed)
      (available p144)
      (colour p144 natural)
      (wood p144 mahogany)
      (available p145)
      (wood p145 walnut)
      (surface-condition p145 smooth)
      (available p146)
      (wood p146 walnut)
      (treatment p146 varnished)
      (available p147)
      (colour p147 natural)
      (wood p147 teak)
      (surface-condition p147 smooth)
      (available p148)
      (colour p148 red)
      (surface-condition p148 verysmooth)
      (treatment p148 glazed)
      (available p149)
      (wood p149 oak)
      (surface-condition p149 verysmooth)
      (available p150)
      (colour p150 mauve)
      (wood p150 beech)
      (surface-condition p150 verysmooth)
      (treatment p150 varnished)
      (available p151)
      (wood p151 mahogany)
      (surface-condition p151 smooth)
      (available p152)
      (colour p152 blue)
      (surface-condition p152 smooth)
      (available p153)
      (wood p153 walnut)
      (surface-condition p153 verysmooth)
      (available p154)
      (colour p154 white)
      (treatment p154 glazed)
      (available p155)
      (colour p155 white)
      (surface-condition p155 smooth)
      (available p156)
      (colour p156 blue)
      (wood p156 walnut)
      (surface-condition p156 verysmooth)
      (treatment p156 varnished)
      (available p157)
      (colour p157 white)
      (wood p157 mahogany)
      (surface-condition p157 verysmooth)
      (treatment p157 glazed)
      (available p158)
      (wood p158 pine)
      (treatment p158 glazed)
      (available p159)
      (colour p159 red)
      (wood p159 oak)
      (surface-condition p159 smooth)
      (treatment p159 varnished)
      (available p160)
      (colour p160 black)
      (wood p160 mahogany)
      (surface-condition p160 smooth)
      (treatment p160 varnished)
      (available p161)
      (colour p161 natural)
      (wood p161 beech)
      (surface-condition p161 smooth)
      (treatment p161 varnished)
      (available p162)
      (colour p162 black)
      (wood p162 cherry)
      (surface-condition p162 verysmooth)
      (treatment p162 glazed)
      (available p163)
      (wood p163 teak)
      (surface-condition p163 smooth)
      (treatment p163 varnished)
      (available p164)
      (surface-condition p164 verysmooth)
      (treatment p164 varnished)
      (available p165)
      (wood p165 beech)
      (treatment p165 glazed)
      (available p166)
      (colour p166 red)
      (wood p166 mahogany)
      (surface-condition p166 smooth)
      (treatment p166 varnished)
      (available p167)
      (wood p167 pine)
      (treatment p167 varnished)
      (available p168)
      (colour p168 green)
      (wood p168 pine)
      (surface-condition p168 smooth)
      (treatment p168 varnished)
      (available p169)
      (colour p169 natural)
      (wood p169 walnut)
      (surface-condition p169 verysmooth)
      (treatment p169 glazed)
      (available p170)
      (wood p170 mahogany)
      (treatment p170 glazed)
      (available p171)
      (wood p171 beech)
      (treatment p171 varnished)
      (available p172)
      (wood p172 walnut)
      (treatment p172 glazed)
    )
  )
  
)
