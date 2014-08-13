; woodworking task with 143 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 816944

(define (problem wood-prob-sat-152)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green black mauve red blue white - acolour
    mahogany beech walnut oak teak pine cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 natural)
    (wood p6 oak)
    (surface-condition p6 rough)
    (treatment p6 varnished)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (available p19)
    (colour p19 white)
    (wood p19 mahogany)
    (surface-condition p19 smooth)
    (treatment p19 colourfragments)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (available p26)
    (colour p26 blue)
    (wood p26 oak)
    (surface-condition p26 verysmooth)
    (treatment p26 colourfragments)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (available p39)
    (colour p39 natural)
    (wood p39 cherry)
    (surface-condition p39 verysmooth)
    (treatment p39 colourfragments)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (available p55)
    (colour p55 blue)
    (wood p55 oak)
    (surface-condition p55 rough)
    (treatment p55 colourfragments)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (available p59)
    (colour p59 blue)
    (wood p59 cherry)
    (surface-condition p59 smooth)
    (treatment p59 varnished)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (available p63)
    (colour p63 red)
    (wood p63 walnut)
    (surface-condition p63 verysmooth)
    (treatment p63 colourfragments)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 black)
    (wood p65 mahogany)
    (surface-condition p65 rough)
    (treatment p65 glazed)
    (goalsize p65 medium)
    
    
    
    
    (available p66)
    (colour p66 black)
    (wood p66 mahogany)
    (surface-condition p66 verysmooth)
    (treatment p66 colourfragments)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (available p69)
    (colour p69 natural)
    (wood p69 walnut)
    (surface-condition p69 smooth)
    (treatment p69 varnished)
    (goalsize p69 medium)
    
    
    
    
    (available p70)
    (colour p70 red)
    (wood p70 walnut)
    (surface-condition p70 verysmooth)
    (treatment p70 glazed)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (available p80)
    (colour p80 natural)
    (wood p80 walnut)
    (surface-condition p80 verysmooth)
    (treatment p80 glazed)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (available p84)
    (colour p84 green)
    (wood p84 beech)
    (surface-condition p84 verysmooth)
    (treatment p84 varnished)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (available p88)
    (colour p88 black)
    (wood p88 oak)
    (surface-condition p88 smooth)
    (treatment p88 glazed)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (available p93)
    (colour p93 red)
    (wood p93 oak)
    (surface-condition p93 verysmooth)
    (treatment p93 colourfragments)
    (goalsize p93 small)
    
    
    
    
    (available p94)
    (colour p94 mauve)
    (wood p94 oak)
    (surface-condition p94 smooth)
    (treatment p94 colourfragments)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (available p99)
    (colour p99 natural)
    (wood p99 pine)
    (surface-condition p99 verysmooth)
    (treatment p99 varnished)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (available p101)
    (colour p101 white)
    (wood p101 oak)
    (surface-condition p101 verysmooth)
    (treatment p101 varnished)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (available p106)
    (colour p106 black)
    (wood p106 oak)
    (surface-condition p106 smooth)
    (treatment p106 colourfragments)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (available p108)
    (colour p108 blue)
    (wood p108 oak)
    (surface-condition p108 smooth)
    (treatment p108 colourfragments)
    (goalsize p108 large)
    
    
    
    
    (unused p109)
    (goalsize p109 small)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (available p112)
    (colour p112 mauve)
    (wood p112 walnut)
    (surface-condition p112 smooth)
    (treatment p112 glazed)
    (goalsize p112 large)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 small)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 small)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
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
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 large)
    
    
    
    
    (unused p127)
    (goalsize p127 large)
    
    
    
    
    (available p128)
    (colour p128 white)
    (wood p128 pine)
    (surface-condition p128 verysmooth)
    (treatment p128 varnished)
    (goalsize p128 medium)
    
    
    
    
    (available p129)
    (colour p129 black)
    (wood p129 cherry)
    (surface-condition p129 smooth)
    (treatment p129 glazed)
    (goalsize p129 large)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 large)
    
    
    
    
    (unused p134)
    (goalsize p134 large)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 small)
    
    
    
    
    (unused p137)
    (goalsize p137 small)
    
    
    
    
    (unused p138)
    (goalsize p138 medium)
    
    
    
    
    (unused p139)
    (goalsize p139 large)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (unused p141)
    (goalsize p141 medium)
    
    
    
    
    (unused p142)
    (goalsize p142 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s10)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s8)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 mahogany)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 mahogany)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s3)
    (wood b13 mahogany)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 oak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s6)
    (wood b15 oak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s10)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s10)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s4)
    (wood b18 oak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 pine)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s9)
    (wood b20 pine)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s10)
    (wood b21 pine)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 pine)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s10)
    (wood b23 pine)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 pine)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s7)
    (wood b25 pine)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s9)
    (wood b26 walnut)
    (surface-condition b26 smooth)
    (available b26)
    (boardsize b27 s8)
    (wood b27 walnut)
    (surface-condition b27 smooth)
    (available b27)
    (boardsize b28 s9)
    (wood b28 walnut)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s9)
    (wood b29 walnut)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s11)
    (wood b30 walnut)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s1)
    (wood b31 walnut)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s8)
    (wood b32 teak)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s4)
    (wood b33 teak)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s9)
    (wood b34 teak)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s9)
    (wood b35 teak)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s7)
    (wood b36 teak)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s9)
    (wood b37 teak)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s9)
    (wood b38 teak)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s9)
    (wood b39 beech)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s9)
    (wood b40 beech)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s6)
    (wood b41 beech)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s6)
    (wood b42 beech)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s10)
    (wood b43 beech)
    (surface-condition b43 rough)
    (available b43)
    (boardsize b44 s5)
    (wood b44 beech)
    (surface-condition b44 rough)
    (available b44)
  )
  (:goal
    (and
      (available p0)
      (colour p0 white)
      (wood p0 mahogany)
      (treatment p0 glazed)
      (available p1)
      (colour p1 red)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 natural)
      (wood p2 walnut)
      (available p3)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 red)
      (treatment p4 glazed)
      (available p5)
      (colour p5 blue)
      (treatment p5 glazed)
      (available p6)
      (colour p6 blue)
      (treatment p6 varnished)
      (available p7)
      (wood p7 cherry)
      (treatment p7 glazed)
      (available p8)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 blue)
      (wood p9 beech)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 natural)
      (treatment p10 glazed)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 natural)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 black)
      (wood p13 cherry)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 white)
      (surface-condition p14 verysmooth)
      (available p15)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (wood p16 cherry)
      (surface-condition p16 smooth)
      (available p17)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 mauve)
      (wood p18 pine)
      (available p19)
      (colour p19 black)
      (treatment p19 varnished)
      (available p20)
      (wood p20 walnut)
      (treatment p20 glazed)
      (available p21)
      (wood p21 beech)
      (surface-condition p21 verysmooth)
      (available p22)
      (wood p22 beech)
      (treatment p22 glazed)
      (available p23)
      (colour p23 red)
      (treatment p23 varnished)
      (available p24)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 natural)
      (wood p26 oak)
      (surface-condition p26 verysmooth)
      (available p27)
      (wood p27 mahogany)
      (treatment p27 varnished)
      (available p28)
      (colour p28 green)
      (wood p28 teak)
      (treatment p28 glazed)
      (available p29)
      (colour p29 blue)
      (wood p29 walnut)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 mauve)
      (wood p31 pine)
      (surface-condition p31 verysmooth)
      (treatment p31 varnished)
      (available p32)
      (wood p32 walnut)
      (surface-condition p32 verysmooth)
      (available p33)
      (colour p33 red)
      (wood p33 cherry)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 black)
      (surface-condition p34 verysmooth)
      (available p35)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 white)
      (treatment p36 glazed)
      (available p37)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (wood p38 mahogany)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 mauve)
      (wood p39 cherry)
      (available p40)
      (wood p40 pine)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (wood p41 walnut)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 blue)
      (wood p42 teak)
      (treatment p42 glazed)
      (available p43)
      (colour p43 blue)
      (surface-condition p43 verysmooth)
      (available p44)
      (colour p44 red)
      (surface-condition p44 verysmooth)
      (available p45)
      (wood p45 pine)
      (treatment p45 varnished)
      (available p46)
      (wood p46 oak)
      (surface-condition p46 smooth)
      (available p47)
      (colour p47 black)
      (wood p47 mahogany)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (colour p48 blue)
      (wood p48 beech)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 mauve)
      (wood p49 teak)
      (treatment p49 glazed)
      (available p50)
      (colour p50 white)
      (wood p50 pine)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 black)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 red)
      (wood p52 cherry)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 white)
      (wood p53 cherry)
      (available p54)
      (wood p54 pine)
      (treatment p54 glazed)
      (available p55)
      (colour p55 red)
      (wood p55 oak)
      (surface-condition p55 smooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 black)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 red)
      (wood p57 cherry)
      (treatment p57 varnished)
      (available p58)
      (colour p58 natural)
      (wood p58 beech)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 mauve)
      (surface-condition p59 smooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 mauve)
      (surface-condition p60 smooth)
      (available p61)
      (colour p61 blue)
      (wood p61 teak)
      (treatment p61 glazed)
      (available p62)
      (colour p62 red)
      (wood p62 teak)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (surface-condition p63 smooth)
      (treatment p63 glazed)
      (available p64)
      (colour p64 red)
      (wood p64 walnut)
      (surface-condition p64 smooth)
      (treatment p64 varnished)
      (available p65)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 red)
      (wood p66 mahogany)
      (surface-condition p66 smooth)
      (treatment p66 glazed)
      (available p67)
      (colour p67 green)
      (wood p67 mahogany)
      (treatment p67 glazed)
      (available p68)
      (wood p68 beech)
      (surface-condition p68 verysmooth)
      (available p69)
      (colour p69 black)
      (surface-condition p69 verysmooth)
      (available p70)
      (colour p70 black)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 mauve)
      (wood p71 mahogany)
      (available p72)
      (colour p72 red)
      (surface-condition p72 verysmooth)
      (treatment p72 glazed)
      (available p73)
      (surface-condition p73 smooth)
      (treatment p73 glazed)
      (available p74)
      (wood p74 pine)
      (surface-condition p74 smooth)
      (available p75)
      (wood p75 oak)
      (surface-condition p75 smooth)
      (available p76)
      (colour p76 red)
      (surface-condition p76 smooth)
      (available p77)
      (wood p77 pine)
      (surface-condition p77 verysmooth)
      (available p78)
      (colour p78 blue)
      (surface-condition p78 smooth)
      (treatment p78 varnished)
      (available p79)
      (wood p79 cherry)
      (surface-condition p79 verysmooth)
      (available p80)
      (wood p80 walnut)
      (surface-condition p80 verysmooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 green)
      (wood p81 pine)
      (surface-condition p81 smooth)
      (treatment p81 glazed)
      (available p82)
      (wood p82 pine)
      (surface-condition p82 verysmooth)
      (available p83)
      (colour p83 red)
      (wood p83 mahogany)
      (surface-condition p83 verysmooth)
      (treatment p83 glazed)
      (available p84)
      (colour p84 natural)
      (wood p84 beech)
      (surface-condition p84 smooth)
      (treatment p84 glazed)
      (available p85)
      (colour p85 white)
      (wood p85 mahogany)
      (surface-condition p85 smooth)
      (treatment p85 varnished)
      (available p86)
      (wood p86 pine)
      (surface-condition p86 verysmooth)
      (available p87)
      (colour p87 mauve)
      (treatment p87 glazed)
      (available p88)
      (colour p88 red)
      (surface-condition p88 smooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 green)
      (wood p89 teak)
      (surface-condition p89 smooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 natural)
      (wood p90 mahogany)
      (available p91)
      (colour p91 white)
      (wood p91 mahogany)
      (treatment p91 varnished)
      (available p92)
      (wood p92 oak)
      (treatment p92 glazed)
      (available p93)
      (colour p93 green)
      (surface-condition p93 verysmooth)
      (available p94)
      (colour p94 green)
      (wood p94 oak)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 natural)
      (wood p95 teak)
      (surface-condition p95 smooth)
      (treatment p95 varnished)
      (available p96)
      (wood p96 teak)
      (treatment p96 varnished)
      (available p97)
      (surface-condition p97 smooth)
      (treatment p97 glazed)
      (available p98)
      (colour p98 green)
      (surface-condition p98 verysmooth)
      (available p99)
      (colour p99 blue)
      (wood p99 pine)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 green)
      (wood p100 teak)
      (available p101)
      (colour p101 blue)
      (wood p101 oak)
      (surface-condition p101 verysmooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 black)
      (treatment p102 varnished)
      (available p103)
      (colour p103 mauve)
      (wood p103 walnut)
      (treatment p103 varnished)
      (available p104)
      (colour p104 green)
      (surface-condition p104 smooth)
      (available p105)
      (colour p105 black)
      (treatment p105 varnished)
      (available p106)
      (colour p106 mauve)
      (surface-condition p106 smooth)
      (treatment p106 varnished)
      (available p107)
      (colour p107 green)
      (treatment p107 varnished)
      (available p108)
      (colour p108 green)
      (wood p108 oak)
      (treatment p108 glazed)
      (available p109)
      (colour p109 natural)
      (wood p109 oak)
      (available p110)
      (colour p110 white)
      (wood p110 pine)
      (surface-condition p110 verysmooth)
      (treatment p110 varnished)
      (available p111)
      (colour p111 mauve)
      (wood p111 cherry)
      (surface-condition p111 verysmooth)
      (available p112)
      (colour p112 natural)
      (surface-condition p112 verysmooth)
      (available p113)
      (colour p113 blue)
      (treatment p113 glazed)
      (available p114)
      (colour p114 mauve)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (colour p115 black)
      (wood p115 beech)
      (available p116)
      (colour p116 natural)
      (wood p116 oak)
      (surface-condition p116 verysmooth)
      (treatment p116 glazed)
      (available p117)
      (wood p117 walnut)
      (surface-condition p117 smooth)
      (available p118)
      (colour p118 black)
      (wood p118 oak)
      (surface-condition p118 verysmooth)
      (treatment p118 varnished)
      (available p119)
      (wood p119 mahogany)
      (surface-condition p119 smooth)
      (treatment p119 glazed)
      (available p120)
      (colour p120 black)
      (treatment p120 varnished)
      (available p121)
      (colour p121 natural)
      (surface-condition p121 verysmooth)
      (treatment p121 varnished)
      (available p122)
      (wood p122 mahogany)
      (treatment p122 glazed)
      (available p123)
      (colour p123 mauve)
      (wood p123 walnut)
      (surface-condition p123 verysmooth)
      (available p124)
      (wood p124 pine)
      (treatment p124 glazed)
      (available p125)
      (colour p125 mauve)
      (surface-condition p125 smooth)
      (available p126)
      (surface-condition p126 smooth)
      (treatment p126 glazed)
      (available p127)
      (colour p127 mauve)
      (treatment p127 varnished)
      (available p128)
      (wood p128 pine)
      (treatment p128 glazed)
      (available p129)
      (surface-condition p129 smooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 red)
      (treatment p130 glazed)
      (available p131)
      (colour p131 red)
      (treatment p131 glazed)
      (available p132)
      (surface-condition p132 verysmooth)
      (treatment p132 varnished)
      (available p133)
      (colour p133 mauve)
      (surface-condition p133 smooth)
      (available p134)
      (colour p134 natural)
      (wood p134 beech)
      (surface-condition p134 smooth)
      (treatment p134 varnished)
      (available p135)
      (wood p135 mahogany)
      (surface-condition p135 verysmooth)
      (available p136)
      (colour p136 red)
      (treatment p136 glazed)
      (available p137)
      (colour p137 black)
      (wood p137 oak)
      (surface-condition p137 verysmooth)
      (available p138)
      (colour p138 mauve)
      (wood p138 mahogany)
      (treatment p138 glazed)
      (available p139)
      (colour p139 white)
      (wood p139 walnut)
      (surface-condition p139 smooth)
      (treatment p139 varnished)
      (available p140)
      (colour p140 natural)
      (surface-condition p140 verysmooth)
      (available p141)
      (wood p141 mahogany)
      (treatment p141 varnished)
      (available p142)
      (colour p142 green)
      (surface-condition p142 smooth)
    )
  )
  
)
