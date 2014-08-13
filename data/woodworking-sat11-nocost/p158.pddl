; woodworking task with 161 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 511545

(define (problem wood-prob-sat-158)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red mauve black green white blue - acolour
    mahogany walnut oak cherry teak pine beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 p146 p147 p148 p149 p150 p151 p152 p153 p154 p155 p156 p157 p158 p159 p160 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
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
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (available p4)
    (colour p4 mauve)
    (wood p4 beech)
    (surface-condition p4 smooth)
    (treatment p4 varnished)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (available p13)
    (colour p13 natural)
    (wood p13 oak)
    (surface-condition p13 verysmooth)
    (treatment p13 colourfragments)
    (goalsize p13 large)
    
    
    
    
    (available p14)
    (colour p14 mauve)
    (wood p14 teak)
    (surface-condition p14 verysmooth)
    (treatment p14 colourfragments)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 green)
    (wood p27 pine)
    (surface-condition p27 smooth)
    (treatment p27 glazed)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (available p34)
    (colour p34 blue)
    (wood p34 walnut)
    (surface-condition p34 rough)
    (treatment p34 varnished)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (available p44)
    (colour p44 blue)
    (wood p44 beech)
    (surface-condition p44 verysmooth)
    (treatment p44 colourfragments)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (available p47)
    (colour p47 red)
    (wood p47 walnut)
    (surface-condition p47 verysmooth)
    (treatment p47 varnished)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (available p49)
    (colour p49 blue)
    (wood p49 mahogany)
    (surface-condition p49 smooth)
    (treatment p49 colourfragments)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (available p57)
    (colour p57 mauve)
    (wood p57 oak)
    (surface-condition p57 verysmooth)
    (treatment p57 glazed)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (available p59)
    (colour p59 mauve)
    (wood p59 walnut)
    (surface-condition p59 rough)
    (treatment p59 varnished)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (available p65)
    (colour p65 red)
    (wood p65 oak)
    (surface-condition p65 rough)
    (treatment p65 varnished)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (available p69)
    (colour p69 green)
    (wood p69 cherry)
    (surface-condition p69 verysmooth)
    (treatment p69 glazed)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (available p77)
    (colour p77 green)
    (wood p77 pine)
    (surface-condition p77 smooth)
    (treatment p77 varnished)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (available p79)
    (colour p79 blue)
    (wood p79 beech)
    (surface-condition p79 verysmooth)
    (treatment p79 colourfragments)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (available p86)
    (colour p86 black)
    (wood p86 teak)
    (surface-condition p86 rough)
    (treatment p86 colourfragments)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (available p89)
    (colour p89 blue)
    (wood p89 teak)
    (surface-condition p89 smooth)
    (treatment p89 colourfragments)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (available p91)
    (colour p91 green)
    (wood p91 pine)
    (surface-condition p91 smooth)
    (treatment p91 varnished)
    (goalsize p91 medium)
    
    
    
    
    (available p92)
    (colour p92 black)
    (wood p92 oak)
    (surface-condition p92 verysmooth)
    (treatment p92 glazed)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (available p98)
    (colour p98 white)
    (wood p98 pine)
    (surface-condition p98 smooth)
    (treatment p98 varnished)
    (goalsize p98 large)
    
    
    
    
    (available p99)
    (colour p99 white)
    (wood p99 pine)
    (surface-condition p99 verysmooth)
    (treatment p99 varnished)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (available p107)
    (colour p107 mauve)
    (wood p107 oak)
    (surface-condition p107 smooth)
    (treatment p107 varnished)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (available p109)
    (colour p109 natural)
    (wood p109 teak)
    (surface-condition p109 verysmooth)
    (treatment p109 glazed)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 medium)
    
    
    
    
    (available p114)
    (colour p114 blue)
    (wood p114 walnut)
    (surface-condition p114 smooth)
    (treatment p114 varnished)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 medium)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (available p117)
    (colour p117 mauve)
    (wood p117 oak)
    (surface-condition p117 verysmooth)
    (treatment p117 glazed)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 medium)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (available p122)
    (colour p122 natural)
    (wood p122 oak)
    (surface-condition p122 rough)
    (treatment p122 glazed)
    (goalsize p122 medium)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 large)
    
    
    
    
    (available p125)
    (colour p125 natural)
    (wood p125 oak)
    (surface-condition p125 rough)
    (treatment p125 varnished)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 small)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (available p131)
    (colour p131 mauve)
    (wood p131 walnut)
    (surface-condition p131 verysmooth)
    (treatment p131 colourfragments)
    (goalsize p131 large)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (available p133)
    (colour p133 green)
    (wood p133 teak)
    (surface-condition p133 verysmooth)
    (treatment p133 colourfragments)
    (goalsize p133 large)
    
    
    
    
    (available p134)
    (colour p134 mauve)
    (wood p134 beech)
    (surface-condition p134 verysmooth)
    (treatment p134 glazed)
    (goalsize p134 small)
    
    
    
    
    (unused p135)
    (goalsize p135 small)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (available p138)
    (colour p138 blue)
    (wood p138 teak)
    (surface-condition p138 verysmooth)
    (treatment p138 colourfragments)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 medium)
    
    
    
    
    (unused p140)
    (goalsize p140 large)
    
    
    
    
    (unused p141)
    (goalsize p141 large)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (available p143)
    (colour p143 red)
    (wood p143 teak)
    (surface-condition p143 smooth)
    (treatment p143 varnished)
    (goalsize p143 small)
    
    
    
    
    (available p144)
    (colour p144 red)
    (wood p144 pine)
    (surface-condition p144 rough)
    (treatment p144 colourfragments)
    (goalsize p144 large)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (unused p146)
    (goalsize p146 medium)
    
    
    
    
    (unused p147)
    (goalsize p147 large)
    
    
    
    
    (unused p148)
    (goalsize p148 medium)
    
    
    
    
    (unused p149)
    (goalsize p149 large)
    
    
    
    
    (unused p150)
    (goalsize p150 small)
    
    
    
    
    (unused p151)
    (goalsize p151 small)
    
    
    
    
    (unused p152)
    (goalsize p152 medium)
    
    
    
    
    (unused p153)
    (goalsize p153 large)
    
    
    
    
    (unused p154)
    (goalsize p154 large)
    
    
    
    
    (unused p155)
    (goalsize p155 small)
    
    
    
    
    (unused p156)
    (goalsize p156 medium)
    
    
    
    
    (unused p157)
    (goalsize p157 small)
    
    
    
    
    (unused p158)
    (goalsize p158 large)
    
    
    
    
    (unused p159)
    (goalsize p159 small)
    
    
    
    
    (available p160)
    (colour p160 red)
    (wood p160 teak)
    (surface-condition p160 smooth)
    (treatment p160 colourfragments)
    (goalsize p160 large)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s5)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s2)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s8)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s7)
    (wood b13 oak)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s5)
    (wood b14 oak)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s9)
    (wood b15 oak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
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
    (boardsize b19 s11)
    (wood b19 pine)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 pine)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 pine)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s9)
    (wood b22 pine)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s10)
    (wood b23 pine)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s5)
    (wood b24 pine)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s6)
    (wood b26 pine)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s2)
    (wood b27 pine)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s10)
    (wood b28 walnut)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s9)
    (wood b29 walnut)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 walnut)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s10)
    (wood b31 walnut)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s8)
    (wood b32 walnut)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s8)
    (wood b33 walnut)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s3)
    (wood b34 walnut)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s9)
    (wood b35 teak)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s8)
    (wood b36 teak)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s12)
    (wood b37 teak)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s10)
    (wood b38 teak)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s2)
    (wood b39 teak)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s9)
    (wood b40 beech)
    (surface-condition b40 smooth)
    (available b40)
    (boardsize b41 s9)
    (wood b41 beech)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s9)
    (wood b42 beech)
    (surface-condition b42 smooth)
    (available b42)
    (boardsize b43 s6)
    (wood b43 beech)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s10)
    (wood b44 beech)
    (surface-condition b44 smooth)
    (available b44)
    (boardsize b45 s9)
    (wood b45 beech)
    (surface-condition b45 rough)
    (available b45)
    (boardsize b46 s6)
    (wood b46 beech)
    (surface-condition b46 smooth)
    (available b46)
    (boardsize b47 s10)
    (wood b47 beech)
    (surface-condition b47 smooth)
    (available b47)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (wood p0 beech)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 natural)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 black)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 green)
      (wood p3 cherry)
      (available p4)
      (wood p4 beech)
      (treatment p4 glazed)
      (available p5)
      (wood p5 mahogany)
      (treatment p5 varnished)
      (available p6)
      (colour p6 blue)
      (treatment p6 glazed)
      (available p7)
      (colour p7 green)
      (wood p7 cherry)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 natural)
      (wood p8 teak)
      (available p9)
      (colour p9 natural)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 natural)
      (wood p10 pine)
      (available p11)
      (colour p11 mauve)
      (wood p11 oak)
      (available p12)
      (wood p12 walnut)
      (surface-condition p12 smooth)
      (available p13)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (wood p14 teak)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 white)
      (wood p15 oak)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 black)
      (wood p16 mahogany)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 blue)
      (wood p17 pine)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 blue)
      (treatment p18 glazed)
      (available p19)
      (colour p19 white)
      (treatment p19 glazed)
      (available p20)
      (colour p20 white)
      (wood p20 pine)
      (available p21)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 natural)
      (wood p22 pine)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 black)
      (wood p23 beech)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (wood p24 teak)
      (treatment p24 varnished)
      (available p25)
      (wood p25 pine)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 black)
      (wood p26 beech)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 mauve)
      (treatment p28 varnished)
      (available p29)
      (colour p29 blue)
      (treatment p29 glazed)
      (available p30)
      (colour p30 black)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 blue)
      (wood p31 oak)
      (available p32)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (wood p33 beech)
      (treatment p33 varnished)
      (available p34)
      (colour p34 mauve)
      (treatment p34 glazed)
      (available p35)
      (colour p35 black)
      (wood p35 oak)
      (treatment p35 varnished)
      (available p36)
      (colour p36 natural)
      (treatment p36 glazed)
      (available p37)
      (colour p37 blue)
      (wood p37 beech)
      (available p38)
      (colour p38 green)
      (treatment p38 glazed)
      (available p39)
      (colour p39 blue)
      (treatment p39 varnished)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 green)
      (wood p41 pine)
      (surface-condition p41 smooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 mauve)
      (wood p42 walnut)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (wood p43 cherry)
      (surface-condition p43 verysmooth)
      (available p44)
      (colour p44 red)
      (wood p44 beech)
      (available p45)
      (colour p45 white)
      (wood p45 mahogany)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (wood p47 walnut)
      (surface-condition p47 smooth)
      (available p48)
      (surface-condition p48 verysmooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 mauve)
      (wood p49 mahogany)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 natural)
      (wood p50 pine)
      (surface-condition p50 verysmooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 white)
      (wood p51 cherry)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 green)
      (treatment p52 glazed)
      (available p53)
      (colour p53 black)
      (wood p53 mahogany)
      (surface-condition p53 smooth)
      (available p54)
      (wood p54 oak)
      (surface-condition p54 verysmooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 red)
      (surface-condition p55 smooth)
      (available p56)
      (wood p56 pine)
      (surface-condition p56 smooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 blue)
      (treatment p57 varnished)
      (available p58)
      (wood p58 pine)
      (surface-condition p58 verysmooth)
      (treatment p58 varnished)
      (available p59)
      (surface-condition p59 smooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 natural)
      (wood p60 walnut)
      (available p61)
      (colour p61 blue)
      (wood p61 oak)
      (available p62)
      (wood p62 cherry)
      (surface-condition p62 smooth)
      (available p63)
      (colour p63 mauve)
      (wood p63 walnut)
      (surface-condition p63 verysmooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 white)
      (treatment p64 varnished)
      (available p65)
      (colour p65 black)
      (wood p65 oak)
      (surface-condition p65 smooth)
      (treatment p65 varnished)
      (available p66)
      (wood p66 walnut)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 natural)
      (surface-condition p67 verysmooth)
      (available p68)
      (wood p68 pine)
      (treatment p68 glazed)
      (available p69)
      (colour p69 mauve)
      (treatment p69 varnished)
      (available p70)
      (wood p70 walnut)
      (treatment p70 varnished)
      (available p71)
      (colour p71 natural)
      (wood p71 beech)
      (surface-condition p71 verysmooth)
      (treatment p71 varnished)
      (available p72)
      (colour p72 blue)
      (surface-condition p72 verysmooth)
      (available p73)
      (wood p73 cherry)
      (surface-condition p73 verysmooth)
      (available p74)
      (colour p74 red)
      (wood p74 pine)
      (available p75)
      (colour p75 blue)
      (treatment p75 varnished)
      (available p76)
      (colour p76 white)
      (wood p76 walnut)
      (available p77)
      (colour p77 white)
      (wood p77 pine)
      (available p78)
      (colour p78 red)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 mauve)
      (wood p79 beech)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 red)
      (treatment p80 glazed)
      (available p81)
      (colour p81 green)
      (surface-condition p81 smooth)
      (available p82)
      (colour p82 red)
      (wood p82 mahogany)
      (surface-condition p82 smooth)
      (treatment p82 varnished)
      (available p83)
      (wood p83 pine)
      (surface-condition p83 smooth)
      (available p84)
      (wood p84 mahogany)
      (treatment p84 varnished)
      (available p85)
      (colour p85 white)
      (wood p85 mahogany)
      (surface-condition p85 smooth)
      (available p86)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (wood p87 beech)
      (surface-condition p87 verysmooth)
      (treatment p87 glazed)
      (available p88)
      (surface-condition p88 smooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 mauve)
      (surface-condition p89 verysmooth)
      (available p90)
      (colour p90 natural)
      (treatment p90 varnished)
      (available p91)
      (surface-condition p91 verysmooth)
      (treatment p91 glazed)
      (available p92)
      (colour p92 natural)
      (wood p92 oak)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 blue)
      (wood p93 oak)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (colour p94 blue)
      (wood p94 walnut)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (wood p95 mahogany)
      (surface-condition p95 smooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 blue)
      (wood p96 teak)
      (available p97)
      (colour p97 mauve)
      (wood p97 pine)
      (surface-condition p97 smooth)
      (treatment p97 varnished)
      (available p98)
      (colour p98 natural)
      (surface-condition p98 verysmooth)
      (available p99)
      (colour p99 blue)
      (wood p99 pine)
      (surface-condition p99 smooth)
      (treatment p99 varnished)
      (available p100)
      (wood p100 mahogany)
      (treatment p100 varnished)
      (available p101)
      (colour p101 white)
      (wood p101 beech)
      (surface-condition p101 smooth)
      (available p102)
      (surface-condition p102 verysmooth)
      (treatment p102 varnished)
      (available p103)
      (colour p103 blue)
      (treatment p103 glazed)
      (available p104)
      (colour p104 blue)
      (wood p104 oak)
      (surface-condition p104 verysmooth)
      (treatment p104 glazed)
      (available p105)
      (colour p105 red)
      (treatment p105 varnished)
      (available p106)
      (colour p106 black)
      (wood p106 cherry)
      (available p107)
      (wood p107 oak)
      (surface-condition p107 smooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 green)
      (surface-condition p108 smooth)
      (available p109)
      (colour p109 black)
      (wood p109 teak)
      (surface-condition p109 smooth)
      (treatment p109 glazed)
      (available p110)
      (colour p110 black)
      (treatment p110 glazed)
      (available p111)
      (colour p111 green)
      (surface-condition p111 verysmooth)
      (available p112)
      (colour p112 green)
      (surface-condition p112 smooth)
      (treatment p112 varnished)
      (available p113)
      (colour p113 natural)
      (wood p113 walnut)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (colour p114 black)
      (surface-condition p114 verysmooth)
      (treatment p114 glazed)
      (available p115)
      (colour p115 black)
      (surface-condition p115 smooth)
      (treatment p115 glazed)
      (available p116)
      (wood p116 oak)
      (treatment p116 varnished)
      (available p117)
      (colour p117 black)
      (surface-condition p117 verysmooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 white)
      (surface-condition p118 verysmooth)
      (available p119)
      (colour p119 blue)
      (surface-condition p119 smooth)
      (treatment p119 glazed)
      (available p120)
      (colour p120 green)
      (wood p120 pine)
      (treatment p120 glazed)
      (available p121)
      (colour p121 red)
      (wood p121 teak)
      (surface-condition p121 smooth)
      (available p122)
      (colour p122 green)
      (wood p122 oak)
      (treatment p122 glazed)
      (available p123)
      (colour p123 black)
      (wood p123 walnut)
      (available p124)
      (colour p124 natural)
      (wood p124 beech)
      (surface-condition p124 smooth)
      (treatment p124 glazed)
      (available p125)
      (colour p125 blue)
      (wood p125 oak)
      (surface-condition p125 verysmooth)
      (treatment p125 glazed)
      (available p126)
      (colour p126 blue)
      (surface-condition p126 smooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 red)
      (wood p127 mahogany)
      (available p128)
      (colour p128 black)
      (treatment p128 glazed)
      (available p129)
      (colour p129 green)
      (wood p129 teak)
      (surface-condition p129 smooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 black)
      (surface-condition p130 smooth)
      (treatment p130 varnished)
      (available p131)
      (colour p131 natural)
      (surface-condition p131 verysmooth)
      (available p132)
      (colour p132 mauve)
      (surface-condition p132 verysmooth)
      (available p133)
      (colour p133 mauve)
      (wood p133 teak)
      (surface-condition p133 smooth)
      (treatment p133 glazed)
      (available p134)
      (colour p134 blue)
      (wood p134 beech)
      (surface-condition p134 verysmooth)
      (treatment p134 glazed)
      (available p135)
      (wood p135 pine)
      (surface-condition p135 smooth)
      (treatment p135 glazed)
      (available p136)
      (wood p136 beech)
      (surface-condition p136 verysmooth)
      (treatment p136 varnished)
      (available p137)
      (colour p137 mauve)
      (wood p137 mahogany)
      (available p138)
      (colour p138 black)
      (treatment p138 glazed)
      (available p139)
      (colour p139 green)
      (wood p139 oak)
      (surface-condition p139 smooth)
      (treatment p139 glazed)
      (available p140)
      (colour p140 green)
      (wood p140 walnut)
      (treatment p140 glazed)
      (available p141)
      (colour p141 white)
      (wood p141 pine)
      (surface-condition p141 smooth)
      (available p142)
      (surface-condition p142 verysmooth)
      (treatment p142 varnished)
      (available p143)
      (colour p143 mauve)
      (wood p143 teak)
      (surface-condition p143 verysmooth)
      (treatment p143 varnished)
      (available p144)
      (colour p144 blue)
      (wood p144 pine)
      (available p145)
      (colour p145 green)
      (wood p145 oak)
      (surface-condition p145 smooth)
      (treatment p145 glazed)
      (available p146)
      (colour p146 red)
      (treatment p146 glazed)
      (available p147)
      (colour p147 blue)
      (wood p147 teak)
      (surface-condition p147 verysmooth)
      (treatment p147 glazed)
      (available p148)
      (colour p148 natural)
      (wood p148 beech)
      (surface-condition p148 verysmooth)
      (treatment p148 glazed)
      (available p149)
      (wood p149 beech)
      (surface-condition p149 smooth)
      (available p150)
      (colour p150 natural)
      (wood p150 cherry)
      (surface-condition p150 smooth)
      (treatment p150 varnished)
      (available p151)
      (colour p151 mauve)
      (wood p151 oak)
      (surface-condition p151 verysmooth)
      (treatment p151 glazed)
      (available p152)
      (wood p152 beech)
      (surface-condition p152 smooth)
      (treatment p152 varnished)
      (available p153)
      (colour p153 blue)
      (wood p153 teak)
      (treatment p153 varnished)
      (available p154)
      (wood p154 oak)
      (surface-condition p154 verysmooth)
      (available p155)
      (wood p155 pine)
      (surface-condition p155 verysmooth)
      (treatment p155 varnished)
      (available p156)
      (colour p156 red)
      (wood p156 pine)
      (available p157)
      (wood p157 oak)
      (treatment p157 glazed)
      (available p158)
      (colour p158 green)
      (surface-condition p158 smooth)
      (available p159)
      (colour p159 blue)
      (wood p159 mahogany)
      (surface-condition p159 verysmooth)
      (treatment p159 glazed)
      (available p160)
      (colour p160 natural)
      (wood p160 teak)
      (surface-condition p160 smooth)
      (treatment p160 varnished)
    )
  )
  
)
