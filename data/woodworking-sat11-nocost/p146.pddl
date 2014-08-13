; woodworking task with 125 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 643667

(define (problem wood-prob-sat-146)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red green white mauve blue black - acolour
    beech teak cherry walnut oak mahogany pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
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
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 natural)
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
    
    
    
    
    (available p3)
    (colour p3 natural)
    (wood p3 teak)
    (surface-condition p3 rough)
    (treatment p3 colourfragments)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (available p11)
    (colour p11 red)
    (wood p11 teak)
    (surface-condition p11 smooth)
    (treatment p11 glazed)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (available p28)
    (colour p28 mauve)
    (wood p28 cherry)
    (surface-condition p28 verysmooth)
    (treatment p28 varnished)
    (goalsize p28 medium)
    
    
    
    
    (available p29)
    (colour p29 mauve)
    (wood p29 cherry)
    (surface-condition p29 rough)
    (treatment p29 colourfragments)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 natural)
    (wood p31 cherry)
    (surface-condition p31 smooth)
    (treatment p31 colourfragments)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (available p33)
    (colour p33 black)
    (wood p33 oak)
    (surface-condition p33 verysmooth)
    (treatment p33 colourfragments)
    (goalsize p33 small)
    
    
    
    
    (available p34)
    (colour p34 black)
    (wood p34 mahogany)
    (surface-condition p34 smooth)
    (treatment p34 glazed)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (available p38)
    (colour p38 mauve)
    (wood p38 mahogany)
    (surface-condition p38 rough)
    (treatment p38 colourfragments)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (available p40)
    (colour p40 mauve)
    (wood p40 walnut)
    (surface-condition p40 verysmooth)
    (treatment p40 glazed)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (available p44)
    (colour p44 natural)
    (wood p44 mahogany)
    (surface-condition p44 smooth)
    (treatment p44 colourfragments)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (available p49)
    (colour p49 blue)
    (wood p49 pine)
    (surface-condition p49 smooth)
    (treatment p49 colourfragments)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (available p58)
    (colour p58 white)
    (wood p58 walnut)
    (surface-condition p58 smooth)
    (treatment p58 glazed)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (available p60)
    (colour p60 blue)
    (wood p60 cherry)
    (surface-condition p60 smooth)
    (treatment p60 varnished)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (available p63)
    (colour p63 black)
    (wood p63 pine)
    (surface-condition p63 verysmooth)
    (treatment p63 colourfragments)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (available p65)
    (colour p65 green)
    (wood p65 pine)
    (surface-condition p65 rough)
    (treatment p65 colourfragments)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (available p67)
    (colour p67 red)
    (wood p67 mahogany)
    (surface-condition p67 smooth)
    (treatment p67 colourfragments)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (available p74)
    (colour p74 green)
    (wood p74 beech)
    (surface-condition p74 verysmooth)
    (treatment p74 varnished)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (available p77)
    (colour p77 red)
    (wood p77 beech)
    (surface-condition p77 verysmooth)
    (treatment p77 colourfragments)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (available p82)
    (colour p82 white)
    (wood p82 mahogany)
    (surface-condition p82 rough)
    (treatment p82 glazed)
    (goalsize p82 large)
    
    
    
    
    (available p83)
    (colour p83 natural)
    (wood p83 oak)
    (surface-condition p83 verysmooth)
    (treatment p83 colourfragments)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
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
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 large)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (available p113)
    (colour p113 green)
    (wood p113 pine)
    (surface-condition p113 verysmooth)
    (treatment p113 varnished)
    (goalsize p113 large)
    
    
    
    
    (unused p114)
    (goalsize p114 small)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 large)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 large)
    
    
    
    
    (unused p119)
    (goalsize p119 small)
    
    
    
    
    (unused p120)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 medium)
    
    
    
    
    (available p124)
    (colour p124 green)
    (wood p124 cherry)
    (surface-condition p124 verysmooth)
    (treatment p124 glazed)
    (goalsize p124 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s8)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s6)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s6)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 oak)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s7)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 oak)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s7)
    (wood b13 oak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 oak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 oak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s4)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 pine)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 pine)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s6)
    (wood b20 pine)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s9)
    (wood b21 pine)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s9)
    (wood b22 walnut)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s10)
    (wood b23 walnut)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s9)
    (wood b24 walnut)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 walnut)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s7)
    (wood b26 walnut)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s1)
    (wood b27 walnut)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s7)
    (wood b28 teak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s6)
    (wood b29 teak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 teak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 teak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s11)
    (wood b32 teak)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 teak)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 beech)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s9)
    (wood b35 beech)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 beech)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 beech)
    (surface-condition b37 smooth)
    (available b37)
    (boardsize b38 s1)
    (wood b38 beech)
    (surface-condition b38 rough)
    (available b38)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (treatment p0 glazed)
      (available p1)
      (wood p1 cherry)
      (treatment p1 varnished)
      (available p2)
      (wood p2 beech)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 white)
      (treatment p3 varnished)
      (available p4)
      (colour p4 blue)
      (treatment p4 glazed)
      (available p5)
      (wood p5 beech)
      (treatment p5 varnished)
      (available p6)
      (colour p6 blue)
      (wood p6 pine)
      (available p7)
      (colour p7 mauve)
      (wood p7 oak)
      (available p8)
      (colour p8 green)
      (surface-condition p8 smooth)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 red)
      (surface-condition p10 verysmooth)
      (available p11)
      (colour p11 mauve)
      (wood p11 teak)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 white)
      (surface-condition p12 smooth)
      (available p13)
      (colour p13 green)
      (wood p13 walnut)
      (surface-condition p13 verysmooth)
      (treatment p13 glazed)
      (available p14)
      (wood p14 mahogany)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 white)
      (surface-condition p15 verysmooth)
      (available p16)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (wood p17 oak)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 cherry)
      (treatment p18 varnished)
      (available p19)
      (colour p19 natural)
      (treatment p19 glazed)
      (available p20)
      (colour p20 blue)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 natural)
      (treatment p21 varnished)
      (available p22)
      (colour p22 red)
      (wood p22 teak)
      (available p23)
      (wood p23 mahogany)
      (treatment p23 varnished)
      (available p24)
      (colour p24 green)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 blue)
      (wood p25 beech)
      (surface-condition p25 smooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 blue)
      (wood p26 cherry)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 natural)
      (surface-condition p27 verysmooth)
      (available p28)
      (colour p28 natural)
      (wood p28 cherry)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 blue)
      (wood p29 cherry)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 red)
      (surface-condition p30 verysmooth)
      (available p31)
      (colour p31 black)
      (wood p31 cherry)
      (available p32)
      (wood p32 oak)
      (treatment p32 varnished)
      (available p33)
      (colour p33 natural)
      (wood p33 oak)
      (available p34)
      (wood p34 mahogany)
      (surface-condition p34 verysmooth)
      (available p35)
      (colour p35 white)
      (wood p35 walnut)
      (available p36)
      (colour p36 red)
      (wood p36 pine)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 white)
      (treatment p37 varnished)
      (available p38)
      (colour p38 white)
      (wood p38 mahogany)
      (surface-condition p38 verysmooth)
      (available p39)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 white)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 green)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 mauve)
      (wood p43 pine)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 red)
      (surface-condition p44 verysmooth)
      (treatment p44 glazed)
      (available p45)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 red)
      (wood p46 pine)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 green)
      (wood p47 oak)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (wood p48 teak)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 natural)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (wood p50 walnut)
      (treatment p50 glazed)
      (available p51)
      (wood p51 mahogany)
      (treatment p51 glazed)
      (available p52)
      (colour p52 black)
      (wood p52 walnut)
      (surface-condition p52 verysmooth)
      (available p53)
      (wood p53 cherry)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 green)
      (wood p54 cherry)
      (surface-condition p54 verysmooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 white)
      (wood p55 beech)
      (surface-condition p55 smooth)
      (available p56)
      (colour p56 blue)
      (surface-condition p56 verysmooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 blue)
      (wood p57 beech)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 red)
      (wood p58 walnut)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (wood p59 walnut)
      (treatment p59 glazed)
      (available p60)
      (colour p60 white)
      (wood p60 cherry)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 blue)
      (treatment p61 varnished)
      (available p62)
      (wood p62 walnut)
      (treatment p62 glazed)
      (available p63)
      (surface-condition p63 verysmooth)
      (treatment p63 glazed)
      (available p64)
      (colour p64 mauve)
      (wood p64 oak)
      (surface-condition p64 verysmooth)
      (treatment p64 varnished)
      (available p65)
      (surface-condition p65 smooth)
      (treatment p65 varnished)
      (available p66)
      (wood p66 walnut)
      (treatment p66 glazed)
      (available p67)
      (wood p67 mahogany)
      (treatment p67 glazed)
      (available p68)
      (colour p68 red)
      (wood p68 pine)
      (surface-condition p68 smooth)
      (available p69)
      (wood p69 pine)
      (surface-condition p69 verysmooth)
      (treatment p69 glazed)
      (available p70)
      (wood p70 pine)
      (treatment p70 varnished)
      (available p71)
      (colour p71 green)
      (wood p71 mahogany)
      (available p72)
      (wood p72 mahogany)
      (surface-condition p72 smooth)
      (available p73)
      (wood p73 oak)
      (treatment p73 glazed)
      (available p74)
      (colour p74 red)
      (wood p74 beech)
      (surface-condition p74 smooth)
      (treatment p74 varnished)
      (available p75)
      (colour p75 red)
      (wood p75 oak)
      (available p76)
      (colour p76 red)
      (wood p76 teak)
      (surface-condition p76 verysmooth)
      (treatment p76 glazed)
      (available p77)
      (wood p77 beech)
      (treatment p77 varnished)
      (available p78)
      (colour p78 black)
      (treatment p78 glazed)
      (available p79)
      (colour p79 mauve)
      (wood p79 cherry)
      (surface-condition p79 verysmooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 green)
      (treatment p80 varnished)
      (available p81)
      (colour p81 natural)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 red)
      (wood p82 mahogany)
      (available p83)
      (wood p83 oak)
      (treatment p83 varnished)
      (available p84)
      (colour p84 mauve)
      (treatment p84 glazed)
      (available p85)
      (colour p85 red)
      (surface-condition p85 smooth)
      (available p86)
      (colour p86 black)
      (wood p86 teak)
      (treatment p86 varnished)
      (available p87)
      (colour p87 white)
      (wood p87 cherry)
      (surface-condition p87 verysmooth)
      (treatment p87 glazed)
      (available p88)
      (wood p88 mahogany)
      (surface-condition p88 smooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 white)
      (surface-condition p89 verysmooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 red)
      (surface-condition p90 smooth)
      (available p91)
      (surface-condition p91 smooth)
      (treatment p91 varnished)
      (available p92)
      (wood p92 oak)
      (surface-condition p92 smooth)
      (available p93)
      (colour p93 green)
      (wood p93 cherry)
      (surface-condition p93 verysmooth)
      (available p94)
      (colour p94 mauve)
      (wood p94 beech)
      (available p95)
      (colour p95 black)
      (wood p95 walnut)
      (available p96)
      (colour p96 blue)
      (wood p96 teak)
      (surface-condition p96 smooth)
      (available p97)
      (colour p97 red)
      (wood p97 mahogany)
      (treatment p97 glazed)
      (available p98)
      (colour p98 blue)
      (wood p98 oak)
      (surface-condition p98 smooth)
      (treatment p98 glazed)
      (available p99)
      (colour p99 natural)
      (wood p99 pine)
      (treatment p99 glazed)
      (available p100)
      (colour p100 black)
      (wood p100 teak)
      (treatment p100 varnished)
      (available p101)
      (colour p101 natural)
      (treatment p101 varnished)
      (available p102)
      (colour p102 white)
      (treatment p102 glazed)
      (available p103)
      (colour p103 blue)
      (wood p103 pine)
      (surface-condition p103 verysmooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 mauve)
      (wood p104 oak)
      (surface-condition p104 smooth)
      (available p105)
      (colour p105 white)
      (wood p105 oak)
      (available p106)
      (colour p106 natural)
      (treatment p106 varnished)
      (available p107)
      (colour p107 black)
      (wood p107 mahogany)
      (surface-condition p107 smooth)
      (treatment p107 varnished)
      (available p108)
      (surface-condition p108 verysmooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 natural)
      (wood p109 beech)
      (available p110)
      (wood p110 cherry)
      (surface-condition p110 smooth)
      (available p111)
      (colour p111 red)
      (surface-condition p111 verysmooth)
      (available p112)
      (colour p112 green)
      (wood p112 pine)
      (treatment p112 glazed)
      (available p113)
      (colour p113 black)
      (wood p113 pine)
      (surface-condition p113 verysmooth)
      (treatment p113 varnished)
      (available p114)
      (wood p114 teak)
      (surface-condition p114 verysmooth)
      (available p115)
      (wood p115 teak)
      (treatment p115 varnished)
      (available p116)
      (wood p116 oak)
      (surface-condition p116 smooth)
      (available p117)
      (colour p117 blue)
      (surface-condition p117 verysmooth)
      (available p118)
      (colour p118 green)
      (wood p118 cherry)
      (treatment p118 glazed)
      (available p119)
      (surface-condition p119 smooth)
      (treatment p119 varnished)
      (available p120)
      (colour p120 mauve)
      (treatment p120 glazed)
      (available p121)
      (colour p121 green)
      (wood p121 cherry)
      (available p122)
      (colour p122 mauve)
      (treatment p122 varnished)
      (available p123)
      (colour p123 black)
      (wood p123 beech)
      (available p124)
      (colour p124 black)
      (surface-condition p124 smooth)
      (treatment p124 varnished)
    )
  )
  
)
