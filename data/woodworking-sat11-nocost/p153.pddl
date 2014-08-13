; woodworking task with 146 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 874502

(define (problem wood-prob-sat-153)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue red black green mauve white - acolour
    cherry mahogany pine walnut beech teak oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 p131 p132 p133 p134 p135 p136 p137 p138 p139 p140 p141 p142 p143 p144 p145 - part
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 natural)
    (wood p3 mahogany)
    (surface-condition p3 verysmooth)
    (treatment p3 glazed)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (available p6)
    (colour p6 red)
    (wood p6 beech)
    (surface-condition p6 verysmooth)
    (treatment p6 varnished)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 natural)
    (wood p7 mahogany)
    (surface-condition p7 verysmooth)
    (treatment p7 colourfragments)
    (goalsize p7 large)
    
    
    
    
    (available p8)
    (colour p8 white)
    (wood p8 cherry)
    (surface-condition p8 rough)
    (treatment p8 glazed)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (available p11)
    (colour p11 blue)
    (wood p11 mahogany)
    (surface-condition p11 rough)
    (treatment p11 glazed)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (available p13)
    (colour p13 black)
    (wood p13 teak)
    (surface-condition p13 verysmooth)
    (treatment p13 colourfragments)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (available p17)
    (colour p17 green)
    (wood p17 beech)
    (surface-condition p17 rough)
    (treatment p17 colourfragments)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 blue)
    (wood p22 mahogany)
    (surface-condition p22 smooth)
    (treatment p22 colourfragments)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (available p26)
    (colour p26 blue)
    (wood p26 cherry)
    (surface-condition p26 smooth)
    (treatment p26 colourfragments)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (available p29)
    (colour p29 blue)
    (wood p29 cherry)
    (surface-condition p29 smooth)
    (treatment p29 glazed)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (available p37)
    (colour p37 mauve)
    (wood p37 teak)
    (surface-condition p37 smooth)
    (treatment p37 colourfragments)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (available p46)
    (colour p46 natural)
    (wood p46 cherry)
    (surface-condition p46 verysmooth)
    (treatment p46 varnished)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (available p60)
    (colour p60 red)
    (wood p60 oak)
    (surface-condition p60 verysmooth)
    (treatment p60 glazed)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (available p65)
    (colour p65 red)
    (wood p65 oak)
    (surface-condition p65 verysmooth)
    (treatment p65 varnished)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (available p73)
    (colour p73 white)
    (wood p73 mahogany)
    (surface-condition p73 rough)
    (treatment p73 colourfragments)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (available p75)
    (colour p75 black)
    (wood p75 oak)
    (surface-condition p75 smooth)
    (treatment p75 colourfragments)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (available p77)
    (colour p77 blue)
    (wood p77 pine)
    (surface-condition p77 verysmooth)
    (treatment p77 varnished)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (available p87)
    (colour p87 blue)
    (wood p87 cherry)
    (surface-condition p87 verysmooth)
    (treatment p87 varnished)
    (goalsize p87 medium)
    
    
    
    
    (available p88)
    (colour p88 mauve)
    (wood p88 pine)
    (surface-condition p88 smooth)
    (treatment p88 glazed)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
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
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (available p108)
    (colour p108 natural)
    (wood p108 pine)
    (surface-condition p108 verysmooth)
    (treatment p108 colourfragments)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 large)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (available p115)
    (colour p115 black)
    (wood p115 pine)
    (surface-condition p115 rough)
    (treatment p115 glazed)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 small)
    
    
    
    
    (unused p117)
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 large)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 large)
    
    
    
    
    (unused p122)
    (goalsize p122 medium)
    
    
    
    
    (available p123)
    (colour p123 mauve)
    (wood p123 walnut)
    (surface-condition p123 smooth)
    (treatment p123 colourfragments)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 medium)
    
    
    
    
    (unused p125)
    (goalsize p125 large)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 medium)
    
    
    
    
    (unused p129)
    (goalsize p129 small)
    
    
    
    
    (unused p130)
    (goalsize p130 large)
    
    
    
    
    (unused p131)
    (goalsize p131 medium)
    
    
    
    
    (unused p132)
    (goalsize p132 small)
    
    
    
    
    (unused p133)
    (goalsize p133 small)
    
    
    
    
    (unused p134)
    (goalsize p134 medium)
    
    
    
    
    (unused p135)
    (goalsize p135 medium)
    
    
    
    
    (unused p136)
    (goalsize p136 large)
    
    
    
    
    (available p137)
    (colour p137 natural)
    (wood p137 beech)
    (surface-condition p137 rough)
    (treatment p137 glazed)
    (goalsize p137 large)
    
    
    
    
    (unused p138)
    (goalsize p138 small)
    
    
    
    
    (unused p139)
    (goalsize p139 small)
    
    
    
    
    (unused p140)
    (goalsize p140 medium)
    
    
    
    
    (available p141)
    (colour p141 black)
    (wood p141 cherry)
    (surface-condition p141 verysmooth)
    (treatment p141 varnished)
    (goalsize p141 small)
    
    
    
    
    (available p142)
    (colour p142 blue)
    (wood p142 beech)
    (surface-condition p142 rough)
    (treatment p142 varnished)
    (goalsize p142 small)
    
    
    
    
    (available p143)
    (colour p143 green)
    (wood p143 teak)
    (surface-condition p143 smooth)
    (treatment p143 glazed)
    (goalsize p143 medium)
    
    
    
    
    (unused p144)
    (goalsize p144 small)
    
    
    
    
    (unused p145)
    (goalsize p145 large)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s2)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s7)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s4)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s6)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s4)
    (wood b13 oak)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s8)
    (wood b14 oak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 oak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s9)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 pine)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s8)
    (wood b19 pine)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s11)
    (wood b20 pine)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s10)
    (wood b21 pine)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 pine)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s10)
    (wood b23 pine)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 pine)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s9)
    (wood b25 pine)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s8)
    (wood b26 walnut)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 walnut)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s5)
    (wood b28 walnut)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 walnut)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 walnut)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s8)
    (wood b31 teak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s8)
    (wood b32 teak)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s6)
    (wood b33 teak)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s10)
    (wood b34 teak)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s6)
    (wood b35 teak)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s8)
    (wood b36 teak)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s10)
    (wood b37 teak)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s2)
    (wood b38 teak)
    (surface-condition b38 rough)
    (available b38)
    (boardsize b39 s8)
    (wood b39 beech)
    (surface-condition b39 rough)
    (available b39)
    (boardsize b40 s10)
    (wood b40 beech)
    (surface-condition b40 rough)
    (available b40)
    (boardsize b41 s8)
    (wood b41 beech)
    (surface-condition b41 rough)
    (available b41)
    (boardsize b42 s7)
    (wood b42 beech)
    (surface-condition b42 rough)
    (available b42)
    (boardsize b43 s6)
    (wood b43 beech)
    (surface-condition b43 smooth)
    (available b43)
    (boardsize b44 s3)
    (wood b44 beech)
    (surface-condition b44 rough)
    (available b44)
  )
  (:goal
    (and
      (available p0)
      (wood p0 pine)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 blue)
      (wood p1 pine)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 white)
      (wood p2 beech)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 black)
      (wood p3 mahogany)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 black)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 blue)
      (wood p5 cherry)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 mauve)
      (wood p6 beech)
      (treatment p6 glazed)
      (available p7)
      (colour p7 red)
      (treatment p7 varnished)
      (available p8)
      (colour p8 green)
      (wood p8 cherry)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 red)
      (wood p10 oak)
      (available p11)
      (colour p11 mauve)
      (wood p11 mahogany)
      (available p12)
      (colour p12 red)
      (wood p12 walnut)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 natural)
      (wood p13 teak)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 black)
      (surface-condition p14 verysmooth)
      (available p15)
      (colour p15 white)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 mauve)
      (wood p16 mahogany)
      (available p17)
      (colour p17 red)
      (wood p17 beech)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 green)
      (wood p18 beech)
      (available p19)
      (colour p19 white)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 red)
      (treatment p20 glazed)
      (available p21)
      (wood p21 cherry)
      (surface-condition p21 smooth)
      (available p22)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 green)
      (wood p23 oak)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 black)
      (wood p24 pine)
      (available p25)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 black)
      (wood p26 cherry)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 blue)
      (wood p27 cherry)
      (available p28)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
      (available p29)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (wood p30 mahogany)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 blue)
      (surface-condition p31 smooth)
      (available p32)
      (wood p32 pine)
      (treatment p32 glazed)
      (available p33)
      (colour p33 red)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 white)
      (surface-condition p34 smooth)
      (available p35)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (wood p36 cherry)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 black)
      (treatment p37 glazed)
      (available p38)
      (colour p38 green)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 blue)
      (wood p39 cherry)
      (surface-condition p39 verysmooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 natural)
      (wood p40 teak)
      (available p41)
      (colour p41 natural)
      (wood p41 walnut)
      (surface-condition p41 smooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 red)
      (wood p42 beech)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 black)
      (surface-condition p43 verysmooth)
      (available p44)
      (colour p44 green)
      (wood p44 mahogany)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (wood p45 oak)
      (treatment p45 varnished)
      (available p46)
      (colour p46 white)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 blue)
      (wood p47 mahogany)
      (available p48)
      (colour p48 blue)
      (wood p48 pine)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 red)
      (wood p49 teak)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 mauve)
      (wood p50 pine)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 black)
      (wood p51 oak)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 black)
      (treatment p52 varnished)
      (available p53)
      (colour p53 white)
      (wood p53 teak)
      (surface-condition p53 verysmooth)
      (treatment p53 glazed)
      (available p54)
      (colour p54 blue)
      (wood p54 pine)
      (available p55)
      (colour p55 black)
      (wood p55 oak)
      (available p56)
      (wood p56 oak)
      (surface-condition p56 smooth)
      (available p57)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (wood p58 oak)
      (surface-condition p58 verysmooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 natural)
      (wood p59 walnut)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 natural)
      (wood p60 oak)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 blue)
      (treatment p61 varnished)
      (available p62)
      (colour p62 blue)
      (treatment p62 varnished)
      (available p63)
      (wood p63 beech)
      (surface-condition p63 verysmooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 blue)
      (wood p64 teak)
      (surface-condition p64 smooth)
      (available p65)
      (colour p65 green)
      (wood p65 oak)
      (treatment p65 glazed)
      (available p66)
      (colour p66 black)
      (wood p66 beech)
      (available p67)
      (wood p67 walnut)
      (surface-condition p67 smooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 red)
      (wood p68 oak)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (colour p69 natural)
      (surface-condition p69 verysmooth)
      (available p70)
      (wood p70 pine)
      (surface-condition p70 smooth)
      (treatment p70 glazed)
      (available p71)
      (surface-condition p71 verysmooth)
      (treatment p71 glazed)
      (available p72)
      (wood p72 oak)
      (surface-condition p72 verysmooth)
      (available p73)
      (colour p73 blue)
      (surface-condition p73 smooth)
      (available p74)
      (colour p74 natural)
      (wood p74 beech)
      (surface-condition p74 verysmooth)
      (treatment p74 glazed)
      (available p75)
      (surface-condition p75 smooth)
      (treatment p75 varnished)
      (available p76)
      (colour p76 green)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 red)
      (wood p77 pine)
      (surface-condition p77 smooth)
      (available p78)
      (colour p78 blue)
      (treatment p78 glazed)
      (available p79)
      (colour p79 black)
      (treatment p79 varnished)
      (available p80)
      (surface-condition p80 verysmooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 red)
      (surface-condition p81 smooth)
      (available p82)
      (colour p82 blue)
      (wood p82 walnut)
      (surface-condition p82 verysmooth)
      (available p83)
      (colour p83 mauve)
      (wood p83 cherry)
      (available p84)
      (colour p84 green)
      (wood p84 teak)
      (available p85)
      (colour p85 white)
      (treatment p85 varnished)
      (available p86)
      (colour p86 mauve)
      (wood p86 walnut)
      (available p87)
      (colour p87 mauve)
      (wood p87 cherry)
      (available p88)
      (wood p88 pine)
      (surface-condition p88 smooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 red)
      (wood p89 oak)
      (available p90)
      (colour p90 mauve)
      (surface-condition p90 verysmooth)
      (available p91)
      (wood p91 pine)
      (treatment p91 varnished)
      (available p92)
      (wood p92 teak)
      (treatment p92 varnished)
      (available p93)
      (colour p93 natural)
      (wood p93 pine)
      (surface-condition p93 smooth)
      (treatment p93 varnished)
      (available p94)
      (wood p94 pine)
      (surface-condition p94 smooth)
      (available p95)
      (colour p95 green)
      (surface-condition p95 smooth)
      (available p96)
      (colour p96 green)
      (wood p96 teak)
      (surface-condition p96 verysmooth)
      (treatment p96 glazed)
      (available p97)
      (colour p97 green)
      (surface-condition p97 verysmooth)
      (available p98)
      (colour p98 green)
      (wood p98 oak)
      (surface-condition p98 smooth)
      (treatment p98 varnished)
      (available p99)
      (wood p99 pine)
      (surface-condition p99 smooth)
      (available p100)
      (wood p100 mahogany)
      (treatment p100 glazed)
      (available p101)
      (surface-condition p101 smooth)
      (treatment p101 varnished)
      (available p102)
      (surface-condition p102 smooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 green)
      (wood p103 mahogany)
      (available p104)
      (wood p104 cherry)
      (surface-condition p104 verysmooth)
      (available p105)
      (colour p105 white)
      (wood p105 pine)
      (surface-condition p105 smooth)
      (treatment p105 varnished)
      (available p106)
      (colour p106 white)
      (wood p106 pine)
      (available p107)
      (colour p107 blue)
      (surface-condition p107 smooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 black)
      (wood p108 pine)
      (available p109)
      (colour p109 black)
      (wood p109 teak)
      (surface-condition p109 smooth)
      (available p110)
      (colour p110 white)
      (wood p110 mahogany)
      (available p111)
      (colour p111 white)
      (wood p111 walnut)
      (available p112)
      (colour p112 blue)
      (surface-condition p112 smooth)
      (available p113)
      (colour p113 natural)
      (wood p113 beech)
      (treatment p113 glazed)
      (available p114)
      (colour p114 black)
      (wood p114 pine)
      (available p115)
      (wood p115 pine)
      (surface-condition p115 verysmooth)
      (treatment p115 glazed)
      (available p116)
      (wood p116 mahogany)
      (surface-condition p116 verysmooth)
      (available p117)
      (colour p117 red)
      (wood p117 walnut)
      (surface-condition p117 smooth)
      (treatment p117 varnished)
      (available p118)
      (colour p118 red)
      (wood p118 beech)
      (surface-condition p118 verysmooth)
      (treatment p118 varnished)
      (available p119)
      (colour p119 white)
      (wood p119 oak)
      (surface-condition p119 verysmooth)
      (treatment p119 glazed)
      (available p120)
      (colour p120 blue)
      (wood p120 walnut)
      (surface-condition p120 verysmooth)
      (treatment p120 varnished)
      (available p121)
      (colour p121 green)
      (wood p121 beech)
      (surface-condition p121 verysmooth)
      (treatment p121 glazed)
      (available p122)
      (surface-condition p122 smooth)
      (treatment p122 glazed)
      (available p123)
      (wood p123 walnut)
      (treatment p123 glazed)
      (available p124)
      (colour p124 black)
      (wood p124 cherry)
      (treatment p124 varnished)
      (available p125)
      (surface-condition p125 smooth)
      (treatment p125 varnished)
      (available p126)
      (colour p126 red)
      (wood p126 teak)
      (surface-condition p126 verysmooth)
      (treatment p126 varnished)
      (available p127)
      (wood p127 teak)
      (surface-condition p127 verysmooth)
      (available p128)
      (colour p128 green)
      (wood p128 cherry)
      (surface-condition p128 smooth)
      (treatment p128 varnished)
      (available p129)
      (wood p129 mahogany)
      (surface-condition p129 verysmooth)
      (available p130)
      (colour p130 white)
      (wood p130 oak)
      (surface-condition p130 smooth)
      (treatment p130 varnished)
      (available p131)
      (wood p131 teak)
      (surface-condition p131 verysmooth)
      (available p132)
      (surface-condition p132 verysmooth)
      (treatment p132 varnished)
      (available p133)
      (colour p133 blue)
      (wood p133 teak)
      (surface-condition p133 smooth)
      (treatment p133 varnished)
      (available p134)
      (wood p134 oak)
      (treatment p134 varnished)
      (available p135)
      (colour p135 natural)
      (wood p135 oak)
      (available p136)
      (colour p136 mauve)
      (wood p136 teak)
      (surface-condition p136 smooth)
      (treatment p136 varnished)
      (available p137)
      (wood p137 beech)
      (surface-condition p137 smooth)
      (available p138)
      (wood p138 cherry)
      (treatment p138 varnished)
      (available p139)
      (wood p139 cherry)
      (surface-condition p139 smooth)
      (available p140)
      (wood p140 pine)
      (surface-condition p140 verysmooth)
      (available p141)
      (colour p141 red)
      (treatment p141 varnished)
      (available p142)
      (wood p142 beech)
      (treatment p142 glazed)
      (available p143)
      (colour p143 black)
      (surface-condition p143 verysmooth)
      (available p144)
      (colour p144 white)
      (surface-condition p144 smooth)
      (available p145)
      (surface-condition p145 verysmooth)
      (treatment p145 varnished)
    )
  )
  
)
