; woodworking task with 131 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 937930

(define (problem wood-prob-sat-148)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white green red blue black mauve - acolour
    teak cherry mahogany oak beech walnut pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 p113 p114 p115 p116 p117 p118 p119 p120 p121 p122 p123 p124 p125 p126 p127 p128 p129 p130 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 - board
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
    (has-colour glazer0 red)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
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
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (available p1)
    (colour p1 mauve)
    (wood p1 beech)
    (surface-condition p1 smooth)
    (treatment p1 varnished)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 green)
    (wood p5 walnut)
    (surface-condition p5 verysmooth)
    (treatment p5 varnished)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 natural)
    (wood p7 pine)
    (surface-condition p7 verysmooth)
    (treatment p7 glazed)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (available p22)
    (colour p22 white)
    (wood p22 cherry)
    (surface-condition p22 verysmooth)
    (treatment p22 glazed)
    (goalsize p22 large)
    
    
    
    
    (available p23)
    (colour p23 white)
    (wood p23 beech)
    (surface-condition p23 rough)
    (treatment p23 colourfragments)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 natural)
    (wood p25 pine)
    (surface-condition p25 verysmooth)
    (treatment p25 glazed)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (available p29)
    (colour p29 mauve)
    (wood p29 pine)
    (surface-condition p29 verysmooth)
    (treatment p29 glazed)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 green)
    (wood p33 mahogany)
    (surface-condition p33 verysmooth)
    (treatment p33 glazed)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 white)
    (wood p37 teak)
    (surface-condition p37 verysmooth)
    (treatment p37 colourfragments)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (available p42)
    (colour p42 natural)
    (wood p42 walnut)
    (surface-condition p42 verysmooth)
    (treatment p42 colourfragments)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (available p46)
    (colour p46 blue)
    (wood p46 walnut)
    (surface-condition p46 rough)
    (treatment p46 glazed)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (available p49)
    (colour p49 green)
    (wood p49 teak)
    (surface-condition p49 verysmooth)
    (treatment p49 varnished)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (available p61)
    (colour p61 red)
    (wood p61 mahogany)
    (surface-condition p61 verysmooth)
    (treatment p61 colourfragments)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (available p65)
    (colour p65 mauve)
    (wood p65 walnut)
    (surface-condition p65 rough)
    (treatment p65 varnished)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 mauve)
    (wood p66 walnut)
    (surface-condition p66 rough)
    (treatment p66 colourfragments)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (available p71)
    (colour p71 natural)
    (wood p71 mahogany)
    (surface-condition p71 smooth)
    (treatment p71 varnished)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (available p81)
    (colour p81 natural)
    (wood p81 cherry)
    (surface-condition p81 verysmooth)
    (treatment p81 glazed)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (available p84)
    (colour p84 white)
    (wood p84 mahogany)
    (surface-condition p84 verysmooth)
    (treatment p84 varnished)
    (goalsize p84 small)
    
    
    
    
    (available p85)
    (colour p85 mauve)
    (wood p85 teak)
    (surface-condition p85 smooth)
    (treatment p85 colourfragments)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 medium)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (available p96)
    (colour p96 mauve)
    (wood p96 teak)
    (surface-condition p96 smooth)
    (treatment p96 glazed)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (available p104)
    (colour p104 white)
    (wood p104 mahogany)
    (surface-condition p104 rough)
    (treatment p104 colourfragments)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 medium)
    
    
    
    
    (available p110)
    (colour p110 natural)
    (wood p110 walnut)
    (surface-condition p110 rough)
    (treatment p110 colourfragments)
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
    (goalsize p117 large)
    
    
    
    
    (unused p118)
    (goalsize p118 small)
    
    
    
    
    (unused p119)
    (goalsize p119 medium)
    
    
    
    
    (unused p120)
    (goalsize p120 small)
    
    
    
    
    (unused p121)
    (goalsize p121 medium)
    
    
    
    
    (unused p122)
    (goalsize p122 large)
    
    
    
    
    (available p123)
    (colour p123 blue)
    (wood p123 walnut)
    (surface-condition p123 rough)
    (treatment p123 glazed)
    (goalsize p123 medium)
    
    
    
    
    (available p124)
    (colour p124 blue)
    (wood p124 mahogany)
    (surface-condition p124 verysmooth)
    (treatment p124 varnished)
    (goalsize p124 small)
    
    
    
    
    (unused p125)
    (goalsize p125 small)
    
    
    
    
    (unused p126)
    (goalsize p126 medium)
    
    
    
    
    (unused p127)
    (goalsize p127 medium)
    
    
    
    
    (unused p128)
    (goalsize p128 small)
    
    
    
    
    (unused p129)
    (goalsize p129 medium)
    
    
    
    
    (unused p130)
    (goalsize p130 small)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s3)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 mahogany)
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
    (boardsize b10 s5)
    (wood b10 mahogany)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s10)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 oak)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s4)
    (wood b14 oak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s5)
    (wood b16 pine)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 pine)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s11)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 pine)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s6)
    (wood b20 pine)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 pine)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s1)
    (wood b22 pine)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s7)
    (wood b23 walnut)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s6)
    (wood b24 walnut)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s5)
    (wood b25 walnut)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s9)
    (wood b26 walnut)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s11)
    (wood b27 walnut)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s10)
    (wood b28 walnut)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 teak)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s9)
    (wood b30 teak)
    (surface-condition b30 smooth)
    (available b30)
    (boardsize b31 s8)
    (wood b31 teak)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s5)
    (wood b32 teak)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s8)
    (wood b33 teak)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s8)
    (wood b34 beech)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s6)
    (wood b35 beech)
    (surface-condition b35 smooth)
    (available b35)
    (boardsize b36 s6)
    (wood b36 beech)
    (surface-condition b36 smooth)
    (available b36)
    (boardsize b37 s8)
    (wood b37 beech)
    (surface-condition b37 rough)
    (available b37)
    (boardsize b38 s5)
    (wood b38 beech)
    (surface-condition b38 smooth)
    (available b38)
    (boardsize b39 s10)
    (wood b39 beech)
    (surface-condition b39 smooth)
    (available b39)
    (boardsize b40 s1)
    (wood b40 beech)
    (surface-condition b40 rough)
    (available b40)
  )
  (:goal
    (and
      (available p0)
      (wood p0 walnut)
      (treatment p0 varnished)
      (available p1)
      (colour p1 red)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 white)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 black)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 red)
      (wood p4 cherry)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 red)
      (wood p5 walnut)
      (available p6)
      (wood p6 pine)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 red)
      (wood p7 pine)
      (treatment p7 glazed)
      (available p8)
      (wood p8 mahogany)
      (surface-condition p8 smooth)
      (available p9)
      (wood p9 mahogany)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 natural)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 green)
      (wood p11 walnut)
      (available p12)
      (wood p12 cherry)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 black)
      (treatment p13 glazed)
      (available p14)
      (colour p14 black)
      (wood p14 pine)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 mahogany)
      (surface-condition p15 smooth)
      (available p16)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 natural)
      (wood p17 teak)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 natural)
      (wood p18 pine)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (wood p20 walnut)
      (surface-condition p20 smooth)
      (treatment p20 glazed)
      (available p21)
      (wood p21 pine)
      (treatment p21 varnished)
      (available p22)
      (colour p22 green)
      (wood p22 cherry)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 natural)
      (treatment p23 glazed)
      (available p24)
      (colour p24 blue)
      (wood p24 oak)
      (available p25)
      (colour p25 mauve)
      (wood p25 pine)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 blue)
      (wood p26 pine)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (wood p27 mahogany)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 mauve)
      (wood p28 oak)
      (available p29)
      (colour p29 green)
      (wood p29 pine)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (wood p30 cherry)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 white)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 black)
      (treatment p32 varnished)
      (available p33)
      (colour p33 mauve)
      (wood p33 mahogany)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 blue)
      (treatment p34 varnished)
      (available p35)
      (colour p35 blue)
      (wood p35 pine)
      (surface-condition p35 smooth)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 green)
      (wood p37 teak)
      (surface-condition p37 smooth)
      (treatment p37 glazed)
      (available p38)
      (wood p38 beech)
      (surface-condition p38 verysmooth)
      (available p39)
      (colour p39 blue)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 blue)
      (surface-condition p40 verysmooth)
      (available p41)
      (wood p41 pine)
      (treatment p41 varnished)
      (available p42)
      (colour p42 white)
      (surface-condition p42 smooth)
      (available p43)
      (wood p43 cherry)
      (treatment p43 varnished)
      (available p44)
      (colour p44 white)
      (treatment p44 varnished)
      (available p45)
      (colour p45 natural)
      (wood p45 pine)
      (surface-condition p45 smooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 mauve)
      (wood p46 walnut)
      (surface-condition p46 verysmooth)
      (available p47)
      (colour p47 blue)
      (wood p47 teak)
      (surface-condition p47 verysmooth)
      (treatment p47 glazed)
      (available p48)
      (wood p48 beech)
      (surface-condition p48 verysmooth)
      (available p49)
      (colour p49 blue)
      (wood p49 teak)
      (surface-condition p49 verysmooth)
      (treatment p49 varnished)
      (available p50)
      (surface-condition p50 verysmooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 black)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 black)
      (surface-condition p52 smooth)
      (available p53)
      (wood p53 beech)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 red)
      (wood p54 pine)
      (surface-condition p54 verysmooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 mauve)
      (wood p55 walnut)
      (available p56)
      (colour p56 white)
      (wood p56 walnut)
      (treatment p56 varnished)
      (available p57)
      (colour p57 natural)
      (wood p57 cherry)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 blue)
      (wood p58 teak)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 white)
      (wood p59 oak)
      (surface-condition p59 smooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 natural)
      (surface-condition p60 smooth)
      (available p61)
      (colour p61 white)
      (wood p61 mahogany)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (wood p62 beech)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (wood p63 walnut)
      (treatment p63 glazed)
      (available p64)
      (colour p64 green)
      (wood p64 beech)
      (available p65)
      (colour p65 white)
      (wood p65 walnut)
      (treatment p65 varnished)
      (available p66)
      (colour p66 natural)
      (wood p66 walnut)
      (surface-condition p66 smooth)
      (available p67)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (wood p68 oak)
      (surface-condition p68 verysmooth)
      (available p69)
      (colour p69 green)
      (wood p69 pine)
      (surface-condition p69 smooth)
      (available p70)
      (wood p70 oak)
      (surface-condition p70 verysmooth)
      (available p71)
      (colour p71 green)
      (wood p71 mahogany)
      (surface-condition p71 verysmooth)
      (treatment p71 glazed)
      (available p72)
      (colour p72 blue)
      (wood p72 mahogany)
      (surface-condition p72 smooth)
      (treatment p72 glazed)
      (available p73)
      (colour p73 green)
      (wood p73 teak)
      (surface-condition p73 smooth)
      (treatment p73 glazed)
      (available p74)
      (wood p74 beech)
      (treatment p74 varnished)
      (available p75)
      (colour p75 mauve)
      (wood p75 mahogany)
      (treatment p75 varnished)
      (available p76)
      (colour p76 black)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 natural)
      (wood p78 cherry)
      (surface-condition p78 verysmooth)
      (treatment p78 varnished)
      (available p79)
      (wood p79 beech)
      (surface-condition p79 smooth)
      (treatment p79 varnished)
      (available p80)
      (colour p80 mauve)
      (wood p80 walnut)
      (available p81)
      (colour p81 mauve)
      (treatment p81 varnished)
      (available p82)
      (colour p82 natural)
      (wood p82 teak)
      (available p83)
      (colour p83 white)
      (wood p83 walnut)
      (surface-condition p83 verysmooth)
      (treatment p83 glazed)
      (available p84)
      (colour p84 mauve)
      (wood p84 mahogany)
      (surface-condition p84 smooth)
      (available p85)
      (wood p85 teak)
      (surface-condition p85 verysmooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 green)
      (wood p86 teak)
      (surface-condition p86 verysmooth)
      (treatment p86 varnished)
      (available p87)
      (surface-condition p87 verysmooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 mauve)
      (surface-condition p88 verysmooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 black)
      (wood p89 beech)
      (surface-condition p89 verysmooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 blue)
      (wood p90 teak)
      (surface-condition p90 smooth)
      (treatment p90 glazed)
      (available p91)
      (colour p91 natural)
      (wood p91 cherry)
      (surface-condition p91 smooth)
      (treatment p91 glazed)
      (available p92)
      (wood p92 beech)
      (treatment p92 glazed)
      (available p93)
      (wood p93 oak)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (surface-condition p94 verysmooth)
      (treatment p94 glazed)
      (available p95)
      (wood p95 mahogany)
      (treatment p95 varnished)
      (available p96)
      (colour p96 black)
      (wood p96 teak)
      (surface-condition p96 verysmooth)
      (treatment p96 varnished)
      (available p97)
      (wood p97 pine)
      (treatment p97 glazed)
      (available p98)
      (surface-condition p98 verysmooth)
      (treatment p98 glazed)
      (available p99)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 red)
      (treatment p100 glazed)
      (available p101)
      (wood p101 beech)
      (surface-condition p101 verysmooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 red)
      (wood p102 pine)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 natural)
      (wood p103 mahogany)
      (available p104)
      (wood p104 mahogany)
      (surface-condition p104 smooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 black)
      (treatment p105 glazed)
      (available p106)
      (colour p106 green)
      (wood p106 oak)
      (treatment p106 glazed)
      (available p107)
      (colour p107 natural)
      (treatment p107 varnished)
      (available p108)
      (colour p108 black)
      (wood p108 beech)
      (surface-condition p108 smooth)
      (available p109)
      (wood p109 oak)
      (treatment p109 glazed)
      (available p110)
      (colour p110 black)
      (wood p110 walnut)
      (surface-condition p110 verysmooth)
      (treatment p110 glazed)
      (available p111)
      (colour p111 natural)
      (wood p111 mahogany)
      (surface-condition p111 smooth)
      (treatment p111 glazed)
      (available p112)
      (colour p112 white)
      (wood p112 teak)
      (surface-condition p112 smooth)
      (treatment p112 varnished)
      (available p113)
      (wood p113 beech)
      (treatment p113 glazed)
      (available p114)
      (colour p114 red)
      (surface-condition p114 smooth)
      (treatment p114 glazed)
      (available p115)
      (colour p115 blue)
      (wood p115 oak)
      (surface-condition p115 smooth)
      (treatment p115 varnished)
      (available p116)
      (wood p116 walnut)
      (surface-condition p116 verysmooth)
      (available p117)
      (wood p117 beech)
      (treatment p117 varnished)
      (available p118)
      (wood p118 cherry)
      (surface-condition p118 verysmooth)
      (treatment p118 glazed)
      (available p119)
      (colour p119 white)
      (wood p119 pine)
      (surface-condition p119 smooth)
      (available p120)
      (wood p120 mahogany)
      (surface-condition p120 smooth)
      (available p121)
      (colour p121 green)
      (treatment p121 varnished)
      (available p122)
      (colour p122 white)
      (wood p122 beech)
      (surface-condition p122 verysmooth)
      (treatment p122 varnished)
      (available p123)
      (colour p123 red)
      (wood p123 walnut)
      (surface-condition p123 smooth)
      (treatment p123 varnished)
      (available p124)
      (colour p124 black)
      (wood p124 mahogany)
      (surface-condition p124 verysmooth)
      (available p125)
      (wood p125 mahogany)
      (surface-condition p125 smooth)
      (treatment p125 varnished)
      (available p126)
      (colour p126 black)
      (wood p126 pine)
      (available p127)
      (colour p127 black)
      (wood p127 teak)
      (surface-condition p127 smooth)
      (available p128)
      (colour p128 green)
      (wood p128 cherry)
      (surface-condition p128 smooth)
      (treatment p128 glazed)
      (available p129)
      (colour p129 red)
      (wood p129 mahogany)
      (surface-condition p129 smooth)
      (treatment p129 varnished)
      (available p130)
      (colour p130 red)
      (surface-condition p130 smooth)
      (treatment p130 varnished)
    )
  )
  
)
