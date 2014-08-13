; woodworking task with 167 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 477876

(define (problem wood-prob-sat-160)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green blue red black white mauve - acolour
    mahogany pine oak beech walnut cherry teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 p161 p162 p163 p164 p165 p166 - part
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (available p0)
    (colour p0 red)
    (wood p0 cherry)
    (surface-condition p0 rough)
    (treatment p0 varnished)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (available p3)
    (colour p3 black)
    (wood p3 cherry)
    (surface-condition p3 rough)
    (treatment p3 glazed)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 black)
    (wood p5 oak)
    (surface-condition p5 rough)
    (treatment p5 glazed)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 natural)
    (wood p11 walnut)
    (surface-condition p11 smooth)
    (treatment p11 varnished)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (available p13)
    (colour p13 black)
    (wood p13 beech)
    (surface-condition p13 verysmooth)
    (treatment p13 varnished)
    (goalsize p13 medium)
    
    
    
    
    (available p14)
    (colour p14 black)
    (wood p14 mahogany)
    (surface-condition p14 smooth)
    (treatment p14 colourfragments)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 blue)
    (wood p16 mahogany)
    (surface-condition p16 rough)
    (treatment p16 glazed)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 natural)
    (wood p21 teak)
    (surface-condition p21 smooth)
    (treatment p21 varnished)
    (goalsize p21 medium)
    
    
    
    
    (available p22)
    (colour p22 mauve)
    (wood p22 beech)
    (surface-condition p22 verysmooth)
    (treatment p22 varnished)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 black)
    (wood p24 beech)
    (surface-condition p24 rough)
    (treatment p24 varnished)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (available p32)
    (colour p32 mauve)
    (wood p32 beech)
    (surface-condition p32 rough)
    (treatment p32 varnished)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (available p34)
    (colour p34 green)
    (wood p34 pine)
    (surface-condition p34 verysmooth)
    (treatment p34 glazed)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (available p51)
    (colour p51 black)
    (wood p51 teak)
    (surface-condition p51 verysmooth)
    (treatment p51 colourfragments)
    (goalsize p51 medium)
    
    
    
    
    (available p52)
    (colour p52 green)
    (wood p52 walnut)
    (surface-condition p52 rough)
    (treatment p52 glazed)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (available p57)
    (colour p57 natural)
    (wood p57 mahogany)
    (surface-condition p57 smooth)
    (treatment p57 varnished)
    (goalsize p57 small)
    
    
    
    
    (available p58)
    (colour p58 red)
    (wood p58 mahogany)
    (surface-condition p58 smooth)
    (treatment p58 varnished)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (available p60)
    (colour p60 black)
    (wood p60 walnut)
    (surface-condition p60 smooth)
    (treatment p60 varnished)
    (goalsize p60 small)
    
    
    
    
    (available p61)
    (colour p61 black)
    (wood p61 pine)
    (surface-condition p61 verysmooth)
    (treatment p61 varnished)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (available p68)
    (colour p68 red)
    (wood p68 mahogany)
    (surface-condition p68 verysmooth)
    (treatment p68 colourfragments)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (available p70)
    (colour p70 black)
    (wood p70 oak)
    (surface-condition p70 verysmooth)
    (treatment p70 glazed)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (available p72)
    (colour p72 red)
    (wood p72 beech)
    (surface-condition p72 smooth)
    (treatment p72 varnished)
    (goalsize p72 medium)
    
    
    
    
    (available p73)
    (colour p73 natural)
    (wood p73 beech)
    (surface-condition p73 smooth)
    (treatment p73 colourfragments)
    (goalsize p73 small)
    
    
    
    
    (available p74)
    (colour p74 white)
    (wood p74 walnut)
    (surface-condition p74 verysmooth)
    (treatment p74 colourfragments)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (available p77)
    (colour p77 green)
    (wood p77 teak)
    (surface-condition p77 smooth)
    (treatment p77 colourfragments)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (available p81)
    (colour p81 mauve)
    (wood p81 pine)
    (surface-condition p81 smooth)
    (treatment p81 colourfragments)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (available p83)
    (colour p83 black)
    (wood p83 teak)
    (surface-condition p83 verysmooth)
    (treatment p83 glazed)
    (goalsize p83 large)
    
    
    
    
    (available p84)
    (colour p84 blue)
    (wood p84 beech)
    (surface-condition p84 rough)
    (treatment p84 varnished)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (available p86)
    (colour p86 white)
    (wood p86 oak)
    (surface-condition p86 verysmooth)
    (treatment p86 colourfragments)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (available p95)
    (colour p95 natural)
    (wood p95 teak)
    (surface-condition p95 rough)
    (treatment p95 varnished)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (available p104)
    (colour p104 mauve)
    (wood p104 walnut)
    (surface-condition p104 verysmooth)
    (treatment p104 glazed)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (available p107)
    (colour p107 natural)
    (wood p107 pine)
    (surface-condition p107 smooth)
    (treatment p107 varnished)
    (goalsize p107 large)
    
    
    
    
    (available p108)
    (colour p108 mauve)
    (wood p108 pine)
    (surface-condition p108 rough)
    (treatment p108 colourfragments)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (available p119)
    (colour p119 blue)
    (wood p119 cherry)
    (surface-condition p119 rough)
    (treatment p119 varnished)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (available p121)
    (colour p121 green)
    (wood p121 beech)
    (surface-condition p121 verysmooth)
    (treatment p121 colourfragments)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (available p123)
    (colour p123 black)
    (wood p123 beech)
    (surface-condition p123 smooth)
    (treatment p123 varnished)
    (goalsize p123 medium)
    
    
    
    
    (available p124)
    (colour p124 blue)
    (wood p124 beech)
    (surface-condition p124 rough)
    (treatment p124 glazed)
    (goalsize p124 large)
    
    
    
    
    (available p125)
    (colour p125 red)
    (wood p125 cherry)
    (surface-condition p125 verysmooth)
    (treatment p125 glazed)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (available p130)
    (colour p130 natural)
    (wood p130 teak)
    (surface-condition p130 rough)
    (treatment p130 colourfragments)
    (goalsize p130 medium)
    
    
    
    
    (unused p131)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 medium)
    
    
    
    
    (available p133)
    (colour p133 white)
    (wood p133 oak)
    (surface-condition p133 verysmooth)
    (treatment p133 colourfragments)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (available p135)
    (colour p135 mauve)
    (wood p135 cherry)
    (surface-condition p135 smooth)
    (treatment p135 glazed)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 medium)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 large)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 small)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (available p143)
    (colour p143 red)
    (wood p143 walnut)
    (surface-condition p143 rough)
    (treatment p143 varnished)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 medium)
    
    
    
    
    (unused p145)
    (goalsize p145 medium)
    
    
    
    
    (unused p146)
    (goalsize p146 large)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 large)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (available p150)
    (colour p150 green)
    (wood p150 oak)
    (surface-condition p150 rough)
    (treatment p150 colourfragments)
    (goalsize p150 medium)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (available p152)
    (colour p152 white)
    (wood p152 cherry)
    (surface-condition p152 smooth)
    (treatment p152 colourfragments)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 medium)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 medium)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 large)
    
    
    
    
    (unused p158)
    (goalsize p158 medium)
    
    
    
    
    (available p159)
    (colour p159 natural)
    (wood p159 teak)
    (surface-condition p159 smooth)
    (treatment p159 glazed)
    (goalsize p159 medium)
    
    
    
    
    (unused p160)
    (goalsize p160 large)
    
    
    
    
    (unused p161)
    (goalsize p161 large)
    
    
    
    
    (unused p162)
    (goalsize p162 small)
    
    
    
    
    (unused p163)
    (goalsize p163 small)
    
    
    
    
    (unused p164)
    (goalsize p164 large)
    
    
    
    
    (unused p165)
    (goalsize p165 small)
    
    
    
    
    (unused p166)
    (goalsize p166 large)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s10)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s3)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s8)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 oak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 oak)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s7)
    (wood b15 oak)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s6)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s6)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s5)
    (wood b19 pine)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s11)
    (wood b20 pine)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 pine)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s9)
    (wood b22 pine)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s8)
    (wood b23 pine)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 pine)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s8)
    (wood b25 walnut)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s10)
    (wood b26 walnut)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s6)
    (wood b27 walnut)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s9)
    (wood b28 walnut)
    (surface-condition b28 smooth)
    (available b28)
    (boardsize b29 s8)
    (wood b29 walnut)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s11)
    (wood b30 walnut)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s7)
    (wood b31 walnut)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s3)
    (wood b32 walnut)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s10)
    (wood b33 teak)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 teak)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s9)
    (wood b35 teak)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s8)
    (wood b36 teak)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s7)
    (wood b37 teak)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s8)
    (wood b38 teak)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s6)
    (wood b39 teak)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s6)
    (wood b40 beech)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s7)
    (wood b41 beech)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s5)
    (wood b42 beech)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s8)
    (wood b43 beech)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s7)
    (wood b44 beech)
    (surface-condition b44 rough)
    (available b44)
    (boardsize b45 s1)
    (wood b45 beech)
    (surface-condition b45 rough)
    (available b45)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (wood p0 cherry)
      (treatment p0 varnished)
      (available p1)
      (wood p1 teak)
      (surface-condition p1 smooth)
      (available p2)
      (wood p2 mahogany)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 blue)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 natural)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (wood p5 oak)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 mauve)
      (wood p6 beech)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (wood p7 mahogany)
      (surface-condition p7 smooth)
      (available p8)
      (wood p8 cherry)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 red)
      (wood p9 oak)
      (available p10)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (wood p11 walnut)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 natural)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 white)
      (wood p13 beech)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (wood p14 mahogany)
      (surface-condition p14 verysmooth)
      (available p15)
      (colour p15 mauve)
      (wood p15 mahogany)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (wood p17 oak)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 white)
      (treatment p18 varnished)
      (available p19)
      (surface-condition p19 smooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 red)
      (wood p20 beech)
      (available p21)
      (colour p21 black)
      (wood p21 teak)
      (treatment p21 varnished)
      (available p22)
      (colour p22 black)
      (treatment p22 glazed)
      (available p23)
      (wood p23 teak)
      (treatment p23 glazed)
      (available p24)
      (colour p24 natural)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 white)
      (treatment p25 glazed)
      (available p26)
      (colour p26 white)
      (wood p26 pine)
      (available p27)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (wood p28 beech)
      (surface-condition p28 verysmooth)
      (available p29)
      (wood p29 walnut)
      (surface-condition p29 smooth)
      (available p30)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (wood p31 pine)
      (treatment p31 glazed)
      (available p32)
      (wood p32 beech)
      (surface-condition p32 verysmooth)
      (available p33)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (wood p34 pine)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 red)
      (wood p35 walnut)
      (available p36)
      (colour p36 natural)
      (wood p36 oak)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 green)
      (wood p37 pine)
      (available p38)
      (colour p38 red)
      (wood p38 mahogany)
      (available p39)
      (colour p39 natural)
      (surface-condition p39 smooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 white)
      (surface-condition p40 smooth)
      (available p41)
      (wood p41 walnut)
      (treatment p41 glazed)
      (available p42)
      (colour p42 black)
      (wood p42 mahogany)
      (available p43)
      (colour p43 red)
      (treatment p43 glazed)
      (available p44)
      (colour p44 mauve)
      (wood p44 mahogany)
      (treatment p44 varnished)
      (available p45)
      (wood p45 cherry)
      (treatment p45 glazed)
      (available p46)
      (wood p46 mahogany)
      (surface-condition p46 verysmooth)
      (available p47)
      (colour p47 mauve)
      (wood p47 teak)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (wood p48 walnut)
      (treatment p48 glazed)
      (available p49)
      (colour p49 red)
      (wood p49 walnut)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (wood p50 cherry)
      (treatment p50 glazed)
      (available p51)
      (colour p51 natural)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 blue)
      (wood p52 walnut)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 natural)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 white)
      (wood p54 oak)
      (treatment p54 varnished)
      (available p55)
      (wood p55 walnut)
      (treatment p55 glazed)
      (available p56)
      (colour p56 red)
      (wood p56 teak)
      (surface-condition p56 verysmooth)
      (treatment p56 varnished)
      (available p57)
      (wood p57 mahogany)
      (surface-condition p57 verysmooth)
      (available p58)
      (colour p58 black)
      (wood p58 mahogany)
      (treatment p58 glazed)
      (available p59)
      (colour p59 mauve)
      (treatment p59 varnished)
      (available p60)
      (surface-condition p60 verysmooth)
      (treatment p60 glazed)
      (available p61)
      (colour p61 natural)
      (wood p61 pine)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (wood p62 walnut)
      (surface-condition p62 verysmooth)
      (available p63)
      (colour p63 red)
      (treatment p63 varnished)
      (available p64)
      (colour p64 natural)
      (surface-condition p64 verysmooth)
      (available p65)
      (colour p65 mauve)
      (wood p65 oak)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 blue)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 green)
      (wood p67 pine)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (wood p68 mahogany)
      (surface-condition p68 smooth)
      (available p69)
      (wood p69 cherry)
      (surface-condition p69 smooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 natural)
      (wood p70 oak)
      (surface-condition p70 smooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 white)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 blue)
      (surface-condition p72 verysmooth)
      (treatment p72 glazed)
      (available p73)
      (wood p73 beech)
      (treatment p73 glazed)
      (available p74)
      (colour p74 blue)
      (treatment p74 glazed)
      (available p75)
      (colour p75 black)
      (wood p75 walnut)
      (available p76)
      (colour p76 green)
      (wood p76 walnut)
      (surface-condition p76 verysmooth)
      (treatment p76 glazed)
      (available p77)
      (wood p77 teak)
      (treatment p77 glazed)
      (available p78)
      (colour p78 red)
      (treatment p78 glazed)
      (available p79)
      (wood p79 teak)
      (surface-condition p79 verysmooth)
      (available p80)
      (colour p80 natural)
      (wood p80 cherry)
      (surface-condition p80 verysmooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 white)
      (wood p81 pine)
      (available p82)
      (colour p82 natural)
      (treatment p82 varnished)
      (available p83)
      (colour p83 white)
      (wood p83 teak)
      (available p84)
      (wood p84 beech)
      (surface-condition p84 smooth)
      (available p85)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 mauve)
      (wood p86 oak)
      (surface-condition p86 smooth)
      (available p87)
      (colour p87 green)
      (surface-condition p87 smooth)
      (available p88)
      (wood p88 beech)
      (surface-condition p88 verysmooth)
      (available p89)
      (colour p89 red)
      (wood p89 oak)
      (surface-condition p89 verysmooth)
      (available p90)
      (colour p90 blue)
      (wood p90 oak)
      (surface-condition p90 smooth)
      (treatment p90 glazed)
      (available p91)
      (wood p91 oak)
      (treatment p91 glazed)
      (available p92)
      (wood p92 pine)
      (surface-condition p92 verysmooth)
      (available p93)
      (colour p93 red)
      (wood p93 pine)
      (surface-condition p93 verysmooth)
      (treatment p93 varnished)
      (available p94)
      (colour p94 red)
      (wood p94 beech)
      (surface-condition p94 verysmooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 black)
      (surface-condition p95 smooth)
      (available p96)
      (surface-condition p96 verysmooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 mauve)
      (surface-condition p97 verysmooth)
      (available p98)
      (colour p98 green)
      (wood p98 beech)
      (available p99)
      (wood p99 pine)
      (surface-condition p99 verysmooth)
      (available p100)
      (colour p100 black)
      (wood p100 cherry)
      (available p101)
      (surface-condition p101 verysmooth)
      (treatment p101 varnished)
      (available p102)
      (wood p102 cherry)
      (surface-condition p102 smooth)
      (available p103)
      (colour p103 natural)
      (wood p103 teak)
      (surface-condition p103 smooth)
      (treatment p103 varnished)
      (available p104)
      (colour p104 black)
      (surface-condition p104 smooth)
      (available p105)
      (colour p105 green)
      (surface-condition p105 verysmooth)
      (treatment p105 glazed)
      (available p106)
      (surface-condition p106 verysmooth)
      (treatment p106 varnished)
      (available p107)
      (colour p107 blue)
      (treatment p107 varnished)
      (available p108)
      (colour p108 red)
      (surface-condition p108 smooth)
      (available p109)
      (colour p109 red)
      (wood p109 mahogany)
      (surface-condition p109 verysmooth)
      (treatment p109 glazed)
      (available p110)
      (wood p110 teak)
      (surface-condition p110 verysmooth)
      (available p111)
      (colour p111 white)
      (surface-condition p111 verysmooth)
      (available p112)
      (wood p112 walnut)
      (surface-condition p112 smooth)
      (available p113)
      (colour p113 natural)
      (wood p113 mahogany)
      (treatment p113 varnished)
      (available p114)
      (colour p114 black)
      (wood p114 walnut)
      (surface-condition p114 smooth)
      (treatment p114 varnished)
      (available p115)
      (colour p115 green)
      (treatment p115 varnished)
      (available p116)
      (colour p116 blue)
      (wood p116 pine)
      (available p117)
      (surface-condition p117 verysmooth)
      (treatment p117 glazed)
      (available p118)
      (wood p118 cherry)
      (treatment p118 glazed)
      (available p119)
      (surface-condition p119 verysmooth)
      (treatment p119 varnished)
      (available p120)
      (wood p120 cherry)
      (treatment p120 varnished)
      (available p121)
      (colour p121 black)
      (wood p121 beech)
      (surface-condition p121 smooth)
      (available p122)
      (colour p122 green)
      (surface-condition p122 smooth)
      (available p123)
      (colour p123 white)
      (wood p123 beech)
      (available p124)
      (wood p124 beech)
      (surface-condition p124 smooth)
      (available p125)
      (colour p125 white)
      (wood p125 cherry)
      (available p126)
      (wood p126 oak)
      (surface-condition p126 smooth)
      (available p127)
      (wood p127 cherry)
      (treatment p127 glazed)
      (available p128)
      (surface-condition p128 verysmooth)
      (treatment p128 varnished)
      (available p129)
      (colour p129 mauve)
      (wood p129 mahogany)
      (surface-condition p129 verysmooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 mauve)
      (wood p130 teak)
      (available p131)
      (wood p131 pine)
      (surface-condition p131 smooth)
      (available p132)
      (colour p132 blue)
      (surface-condition p132 smooth)
      (treatment p132 glazed)
      (available p133)
      (colour p133 mauve)
      (wood p133 oak)
      (surface-condition p133 smooth)
      (treatment p133 glazed)
      (available p134)
      (wood p134 cherry)
      (surface-condition p134 smooth)
      (available p135)
      (colour p135 natural)
      (wood p135 cherry)
      (surface-condition p135 smooth)
      (treatment p135 glazed)
      (available p136)
      (colour p136 green)
      (treatment p136 varnished)
      (available p137)
      (colour p137 green)
      (wood p137 mahogany)
      (surface-condition p137 smooth)
      (treatment p137 glazed)
      (available p138)
      (colour p138 green)
      (surface-condition p138 smooth)
      (available p139)
      (colour p139 blue)
      (wood p139 mahogany)
      (available p140)
      (colour p140 red)
      (wood p140 teak)
      (available p141)
      (wood p141 beech)
      (surface-condition p141 verysmooth)
      (available p142)
      (colour p142 green)
      (treatment p142 glazed)
      (available p143)
      (colour p143 mauve)
      (wood p143 walnut)
      (surface-condition p143 smooth)
      (available p144)
      (colour p144 white)
      (wood p144 walnut)
      (surface-condition p144 verysmooth)
      (available p145)
      (colour p145 white)
      (treatment p145 glazed)
      (available p146)
      (colour p146 red)
      (wood p146 walnut)
      (treatment p146 glazed)
      (available p147)
      (surface-condition p147 verysmooth)
      (treatment p147 varnished)
      (available p148)
      (colour p148 black)
      (wood p148 teak)
      (surface-condition p148 verysmooth)
      (available p149)
      (colour p149 red)
      (surface-condition p149 verysmooth)
      (available p150)
      (colour p150 blue)
      (wood p150 oak)
      (available p151)
      (wood p151 beech)
      (surface-condition p151 verysmooth)
      (available p152)
      (wood p152 cherry)
      (treatment p152 glazed)
      (available p153)
      (colour p153 blue)
      (surface-condition p153 verysmooth)
      (available p154)
      (surface-condition p154 verysmooth)
      (treatment p154 glazed)
      (available p155)
      (surface-condition p155 smooth)
      (treatment p155 varnished)
      (available p156)
      (colour p156 green)
      (wood p156 beech)
      (surface-condition p156 smooth)
      (available p157)
      (wood p157 teak)
      (surface-condition p157 verysmooth)
      (available p158)
      (colour p158 mauve)
      (wood p158 walnut)
      (treatment p158 varnished)
      (available p159)
      (surface-condition p159 verysmooth)
      (treatment p159 glazed)
      (available p160)
      (colour p160 green)
      (treatment p160 glazed)
      (available p161)
      (wood p161 teak)
      (treatment p161 varnished)
      (available p162)
      (surface-condition p162 smooth)
      (treatment p162 glazed)
      (available p163)
      (colour p163 white)
      (wood p163 teak)
      (surface-condition p163 smooth)
      (treatment p163 varnished)
      (available p164)
      (colour p164 natural)
      (wood p164 pine)
      (treatment p164 glazed)
      (available p165)
      (colour p165 red)
      (wood p165 mahogany)
      (treatment p165 glazed)
      (available p166)
      (surface-condition p166 verysmooth)
      (treatment p166 glazed)
    )
  )
  
)
