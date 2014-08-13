; woodworking task with 128 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 583253

(define (problem wood-prob-sat-147)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve red white black blue green - acolour
    oak mahogany teak beech pine cherry walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 natural)
    (has-colour glazer1 blue)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 green)
    (wood p0 pine)
    (surface-condition p0 rough)
    (treatment p0 varnished)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 mauve)
    (wood p1 pine)
    (surface-condition p1 smooth)
    (treatment p1 varnished)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 white)
    (wood p6 walnut)
    (surface-condition p6 verysmooth)
    (treatment p6 varnished)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (available p8)
    (colour p8 natural)
    (wood p8 pine)
    (surface-condition p8 rough)
    (treatment p8 varnished)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 mauve)
    (wood p12 beech)
    (surface-condition p12 rough)
    (treatment p12 varnished)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (available p19)
    (colour p19 red)
    (wood p19 teak)
    (surface-condition p19 smooth)
    (treatment p19 glazed)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 mauve)
    (wood p21 pine)
    (surface-condition p21 smooth)
    (treatment p21 varnished)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (available p29)
    (colour p29 natural)
    (wood p29 teak)
    (surface-condition p29 smooth)
    (treatment p29 glazed)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (available p33)
    (colour p33 green)
    (wood p33 pine)
    (surface-condition p33 smooth)
    (treatment p33 colourfragments)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 natural)
    (wood p38 beech)
    (surface-condition p38 rough)
    (treatment p38 varnished)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (available p43)
    (colour p43 mauve)
    (wood p43 walnut)
    (surface-condition p43 smooth)
    (treatment p43 colourfragments)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (available p48)
    (colour p48 green)
    (wood p48 beech)
    (surface-condition p48 verysmooth)
    (treatment p48 colourfragments)
    (goalsize p48 medium)
    
    
    
    
    (available p49)
    (colour p49 green)
    (wood p49 walnut)
    (surface-condition p49 smooth)
    (treatment p49 glazed)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (available p57)
    (colour p57 white)
    (wood p57 cherry)
    (surface-condition p57 verysmooth)
    (treatment p57 glazed)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (available p59)
    (colour p59 natural)
    (wood p59 cherry)
    (surface-condition p59 verysmooth)
    (treatment p59 colourfragments)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (available p61)
    (colour p61 blue)
    (wood p61 oak)
    (surface-condition p61 verysmooth)
    (treatment p61 glazed)
    (goalsize p61 small)
    
    
    
    
    (available p62)
    (colour p62 black)
    (wood p62 oak)
    (surface-condition p62 smooth)
    (treatment p62 varnished)
    (goalsize p62 small)
    
    
    
    
    (available p63)
    (colour p63 natural)
    (wood p63 beech)
    (surface-condition p63 verysmooth)
    (treatment p63 glazed)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (available p69)
    (colour p69 red)
    (wood p69 mahogany)
    (surface-condition p69 smooth)
    (treatment p69 varnished)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (available p75)
    (colour p75 natural)
    (wood p75 mahogany)
    (surface-condition p75 rough)
    (treatment p75 glazed)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (available p77)
    (colour p77 red)
    (wood p77 teak)
    (surface-condition p77 rough)
    (treatment p77 varnished)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (available p91)
    (colour p91 red)
    (wood p91 walnut)
    (surface-condition p91 verysmooth)
    (treatment p91 varnished)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (available p94)
    (colour p94 black)
    (wood p94 teak)
    (surface-condition p94 smooth)
    (treatment p94 varnished)
    (goalsize p94 small)
    
    
    
    
    (available p95)
    (colour p95 natural)
    (wood p95 beech)
    (surface-condition p95 rough)
    (treatment p95 varnished)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (available p97)
    (colour p97 red)
    (wood p97 cherry)
    (surface-condition p97 smooth)
    (treatment p97 varnished)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (available p99)
    (colour p99 blue)
    (wood p99 beech)
    (surface-condition p99 smooth)
    (treatment p99 glazed)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (unused p113)
    (goalsize p113 small)
    
    
    
    
    (unused p114)
    (goalsize p114 medium)
    
    
    
    
    (unused p115)
    (goalsize p115 large)
    
    
    
    
    (unused p116)
    (goalsize p116 medium)
    
    
    
    
    (unused p117)
    (goalsize p117 medium)
    
    
    
    
    (unused p118)
    (goalsize p118 medium)
    
    
    
    
    (available p119)
    (colour p119 white)
    (wood p119 teak)
    (surface-condition p119 smooth)
    (treatment p119 colourfragments)
    (goalsize p119 medium)
    
    
    
    
    (available p120)
    (colour p120 black)
    (wood p120 mahogany)
    (surface-condition p120 rough)
    (treatment p120 colourfragments)
    (goalsize p120 large)
    
    
    
    
    (unused p121)
    (goalsize p121 small)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (unused p123)
    (goalsize p123 large)
    
    
    
    
    (unused p124)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 medium)
    
    
    
    
    (unused p126)
    (goalsize p126 small)
    
    
    
    
    (unused p127)
    (goalsize p127 small)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s11)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s6)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s3)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s5)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s10)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s11)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s3)
    (wood b13 oak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 pine)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s10)
    (wood b16 pine)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s7)
    (wood b17 pine)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 pine)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s5)
    (wood b20 pine)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s7)
    (wood b21 walnut)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s8)
    (wood b22 walnut)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s7)
    (wood b23 walnut)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s10)
    (wood b24 walnut)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s7)
    (wood b25 walnut)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s8)
    (wood b26 walnut)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s2)
    (wood b27 walnut)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s6)
    (wood b28 teak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 teak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s8)
    (wood b30 teak)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s8)
    (wood b31 teak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s3)
    (wood b32 teak)
    (surface-condition b32 smooth)
    (available b32)
    (boardsize b33 s5)
    (wood b33 beech)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s7)
    (wood b34 beech)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s8)
    (wood b35 beech)
    (surface-condition b35 rough)
    (available b35)
    (boardsize b36 s7)
    (wood b36 beech)
    (surface-condition b36 rough)
    (available b36)
    (boardsize b37 s8)
    (wood b37 beech)
    (surface-condition b37 rough)
    (available b37)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (wood p0 pine)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (wood p1 pine)
      (treatment p1 glazed)
      (available p2)
      (colour p2 blue)
      (surface-condition p2 verysmooth)
      (available p3)
      (wood p3 cherry)
      (treatment p3 glazed)
      (available p4)
      (wood p4 oak)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 natural)
      (wood p5 pine)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 mauve)
      (wood p6 walnut)
      (available p7)
      (wood p7 beech)
      (treatment p7 glazed)
      (available p8)
      (colour p8 black)
      (surface-condition p8 smooth)
      (available p9)
      (wood p9 cherry)
      (treatment p9 glazed)
      (available p10)
      (colour p10 mauve)
      (surface-condition p10 verysmooth)
      (available p11)
      (colour p11 white)
      (surface-condition p11 smooth)
      (available p12)
      (colour p12 blue)
      (treatment p12 glazed)
      (available p13)
      (surface-condition p13 verysmooth)
      (treatment p13 glazed)
      (available p14)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 green)
      (wood p15 mahogany)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 mauve)
      (treatment p16 glazed)
      (available p17)
      (wood p17 pine)
      (surface-condition p17 verysmooth)
      (available p18)
      (colour p18 green)
      (wood p18 walnut)
      (treatment p18 varnished)
      (available p19)
      (colour p19 blue)
      (wood p19 teak)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 green)
      (wood p20 beech)
      (available p21)
      (colour p21 natural)
      (wood p21 pine)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 red)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 white)
      (wood p23 mahogany)
      (available p24)
      (colour p24 white)
      (treatment p24 varnished)
      (available p25)
      (colour p25 red)
      (wood p25 walnut)
      (surface-condition p25 verysmooth)
      (available p26)
      (colour p26 black)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 white)
      (wood p27 cherry)
      (available p28)
      (colour p28 white)
      (surface-condition p28 verysmooth)
      (available p29)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 natural)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 blue)
      (treatment p31 glazed)
      (available p32)
      (colour p32 black)
      (wood p32 beech)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 natural)
      (wood p33 pine)
      (available p34)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (wood p35 pine)
      (treatment p35 varnished)
      (available p36)
      (colour p36 mauve)
      (wood p36 cherry)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 white)
      (wood p37 walnut)
      (treatment p37 glazed)
      (available p38)
      (wood p38 beech)
      (surface-condition p38 smooth)
      (available p39)
      (colour p39 green)
      (treatment p39 varnished)
      (available p40)
      (colour p40 green)
      (wood p40 walnut)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (wood p42 pine)
      (surface-condition p42 smooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 red)
      (surface-condition p43 verysmooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 black)
      (wood p44 cherry)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 blue)
      (treatment p45 glazed)
      (available p46)
      (wood p46 mahogany)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 natural)
      (wood p48 beech)
      (treatment p48 glazed)
      (available p49)
      (colour p49 natural)
      (wood p49 walnut)
      (surface-condition p49 verysmooth)
      (available p50)
      (wood p50 oak)
      (treatment p50 varnished)
      (available p51)
      (colour p51 blue)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 red)
      (wood p52 beech)
      (surface-condition p52 verysmooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 red)
      (wood p53 teak)
      (surface-condition p53 verysmooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 white)
      (surface-condition p54 smooth)
      (available p55)
      (colour p55 blue)
      (treatment p55 glazed)
      (available p56)
      (wood p56 mahogany)
      (treatment p56 glazed)
      (available p57)
      (colour p57 black)
      (wood p57 cherry)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 natural)
      (wood p58 teak)
      (surface-condition p58 smooth)
      (treatment p58 glazed)
      (available p59)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 white)
      (wood p60 walnut)
      (available p61)
      (colour p61 green)
      (treatment p61 varnished)
      (available p62)
      (wood p62 oak)
      (surface-condition p62 verysmooth)
      (available p63)
      (colour p63 blue)
      (surface-condition p63 verysmooth)
      (available p64)
      (colour p64 green)
      (wood p64 cherry)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 red)
      (wood p65 pine)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 mauve)
      (wood p66 mahogany)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 black)
      (wood p67 beech)
      (available p68)
      (wood p68 oak)
      (surface-condition p68 smooth)
      (available p69)
      (colour p69 white)
      (wood p69 mahogany)
      (surface-condition p69 verysmooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 mauve)
      (wood p70 cherry)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 white)
      (surface-condition p71 smooth)
      (available p72)
      (wood p72 walnut)
      (surface-condition p72 verysmooth)
      (treatment p72 glazed)
      (available p73)
      (wood p73 oak)
      (surface-condition p73 verysmooth)
      (available p74)
      (wood p74 walnut)
      (surface-condition p74 verysmooth)
      (available p75)
      (colour p75 mauve)
      (wood p75 mahogany)
      (available p76)
      (wood p76 mahogany)
      (surface-condition p76 smooth)
      (available p77)
      (colour p77 white)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 white)
      (wood p78 pine)
      (available p79)
      (wood p79 cherry)
      (treatment p79 glazed)
      (available p80)
      (wood p80 cherry)
      (treatment p80 glazed)
      (available p81)
      (colour p81 white)
      (surface-condition p81 smooth)
      (available p82)
      (colour p82 green)
      (wood p82 walnut)
      (surface-condition p82 smooth)
      (available p83)
      (colour p83 natural)
      (wood p83 cherry)
      (available p84)
      (colour p84 green)
      (wood p84 pine)
      (surface-condition p84 verysmooth)
      (treatment p84 varnished)
      (available p85)
      (surface-condition p85 verysmooth)
      (treatment p85 varnished)
      (available p86)
      (colour p86 natural)
      (wood p86 mahogany)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 blue)
      (wood p87 oak)
      (treatment p87 varnished)
      (available p88)
      (surface-condition p88 smooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 blue)
      (wood p89 walnut)
      (surface-condition p89 smooth)
      (treatment p89 glazed)
      (available p90)
      (wood p90 pine)
      (surface-condition p90 verysmooth)
      (available p91)
      (colour p91 natural)
      (wood p91 walnut)
      (surface-condition p91 verysmooth)
      (available p92)
      (colour p92 white)
      (treatment p92 varnished)
      (available p93)
      (wood p93 walnut)
      (surface-condition p93 verysmooth)
      (available p94)
      (wood p94 teak)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 black)
      (surface-condition p95 verysmooth)
      (available p96)
      (colour p96 blue)
      (wood p96 cherry)
      (available p97)
      (wood p97 cherry)
      (surface-condition p97 verysmooth)
      (available p98)
      (wood p98 pine)
      (surface-condition p98 verysmooth)
      (available p99)
      (wood p99 beech)
      (treatment p99 varnished)
      (available p100)
      (colour p100 red)
      (wood p100 oak)
      (surface-condition p100 verysmooth)
      (available p101)
      (colour p101 green)
      (treatment p101 glazed)
      (available p102)
      (colour p102 blue)
      (surface-condition p102 verysmooth)
      (available p103)
      (colour p103 black)
      (wood p103 beech)
      (surface-condition p103 verysmooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 green)
      (wood p104 cherry)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 black)
      (wood p105 teak)
      (surface-condition p105 smooth)
      (treatment p105 glazed)
      (available p106)
      (wood p106 walnut)
      (surface-condition p106 verysmooth)
      (available p107)
      (colour p107 green)
      (surface-condition p107 verysmooth)
      (available p108)
      (colour p108 natural)
      (wood p108 mahogany)
      (surface-condition p108 verysmooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 blue)
      (surface-condition p109 smooth)
      (available p110)
      (wood p110 pine)
      (surface-condition p110 verysmooth)
      (available p111)
      (wood p111 beech)
      (treatment p111 varnished)
      (available p112)
      (colour p112 mauve)
      (surface-condition p112 smooth)
      (available p113)
      (wood p113 teak)
      (treatment p113 glazed)
      (available p114)
      (wood p114 teak)
      (treatment p114 varnished)
      (available p115)
      (colour p115 white)
      (wood p115 mahogany)
      (surface-condition p115 verysmooth)
      (treatment p115 varnished)
      (available p116)
      (colour p116 natural)
      (wood p116 teak)
      (surface-condition p116 verysmooth)
      (available p117)
      (colour p117 green)
      (wood p117 pine)
      (surface-condition p117 smooth)
      (available p118)
      (colour p118 white)
      (treatment p118 glazed)
      (available p119)
      (wood p119 teak)
      (treatment p119 glazed)
      (available p120)
      (colour p120 mauve)
      (wood p120 mahogany)
      (surface-condition p120 smooth)
      (available p121)
      (colour p121 mauve)
      (wood p121 mahogany)
      (surface-condition p121 smooth)
      (treatment p121 glazed)
      (available p122)
      (colour p122 black)
      (wood p122 teak)
      (available p123)
      (colour p123 white)
      (surface-condition p123 smooth)
      (treatment p123 glazed)
      (available p124)
      (colour p124 green)
      (wood p124 mahogany)
      (available p125)
      (colour p125 green)
      (wood p125 beech)
      (treatment p125 varnished)
      (available p126)
      (wood p126 cherry)
      (surface-condition p126 verysmooth)
      (available p127)
      (colour p127 natural)
      (treatment p127 varnished)
    )
  )
  
)
