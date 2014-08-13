; woodworking task with 113 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 8447

(define (problem wood-prob-sat-142)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white blue green black red mauve - acolour
    walnut oak teak mahogany cherry pine beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
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
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 white)
    (wood p7 pine)
    (surface-condition p7 smooth)
    (treatment p7 colourfragments)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (available p9)
    (colour p9 mauve)
    (wood p9 oak)
    (surface-condition p9 smooth)
    (treatment p9 colourfragments)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (available p13)
    (colour p13 blue)
    (wood p13 oak)
    (surface-condition p13 verysmooth)
    (treatment p13 glazed)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (available p26)
    (colour p26 blue)
    (wood p26 mahogany)
    (surface-condition p26 rough)
    (treatment p26 colourfragments)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (available p39)
    (colour p39 black)
    (wood p39 beech)
    (surface-condition p39 smooth)
    (treatment p39 colourfragments)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (available p46)
    (colour p46 white)
    (wood p46 walnut)
    (surface-condition p46 smooth)
    (treatment p46 varnished)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (available p53)
    (colour p53 black)
    (wood p53 cherry)
    (surface-condition p53 rough)
    (treatment p53 colourfragments)
    (goalsize p53 large)
    
    
    
    
    (available p54)
    (colour p54 white)
    (wood p54 teak)
    (surface-condition p54 rough)
    (treatment p54 glazed)
    (goalsize p54 large)
    
    
    
    
    (available p55)
    (colour p55 green)
    (wood p55 teak)
    (surface-condition p55 verysmooth)
    (treatment p55 varnished)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (available p57)
    (colour p57 mauve)
    (wood p57 beech)
    (surface-condition p57 smooth)
    (treatment p57 varnished)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (available p62)
    (colour p62 black)
    (wood p62 mahogany)
    (surface-condition p62 rough)
    (treatment p62 colourfragments)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (available p74)
    (colour p74 white)
    (wood p74 beech)
    (surface-condition p74 verysmooth)
    (treatment p74 varnished)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (available p78)
    (colour p78 white)
    (wood p78 walnut)
    (surface-condition p78 verysmooth)
    (treatment p78 glazed)
    (goalsize p78 large)
    
    
    
    
    (available p79)
    (colour p79 green)
    (wood p79 cherry)
    (surface-condition p79 rough)
    (treatment p79 glazed)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (available p81)
    (colour p81 black)
    (wood p81 cherry)
    (surface-condition p81 rough)
    (treatment p81 colourfragments)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (available p85)
    (colour p85 green)
    (wood p85 teak)
    (surface-condition p85 rough)
    (treatment p85 varnished)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (available p87)
    (colour p87 green)
    (wood p87 beech)
    (surface-condition p87 rough)
    (treatment p87 colourfragments)
    (goalsize p87 large)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (available p97)
    (colour p97 blue)
    (wood p97 pine)
    (surface-condition p97 verysmooth)
    (treatment p97 colourfragments)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 medium)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (available p103)
    (colour p103 green)
    (wood p103 pine)
    (surface-condition p103 rough)
    (treatment p103 glazed)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (unused p107)
    (goalsize p107 large)
    
    
    
    
    (unused p108)
    (goalsize p108 large)
    
    
    
    
    (available p109)
    (colour p109 mauve)
    (wood p109 mahogany)
    (surface-condition p109 verysmooth)
    (treatment p109 colourfragments)
    (goalsize p109 medium)
    
    
    
    
    (unused p110)
    (goalsize p110 small)
    
    
    
    
    (available p111)
    (colour p111 blue)
    (wood p111 beech)
    (surface-condition p111 verysmooth)
    (treatment p111 glazed)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s4)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s3)
    (wood b6 cherry)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 mahogany)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s7)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s7)
    (wood b11 mahogany)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s6)
    (wood b12 oak)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s12)
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
    (boardsize b16 s10)
    (wood b16 oak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s2)
    (wood b17 oak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s4)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 pine)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 pine)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s6)
    (wood b21 pine)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 walnut)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s7)
    (wood b23 walnut)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 walnut)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s6)
    (wood b25 walnut)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s1)
    (wood b26 walnut)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 teak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s7)
    (wood b28 teak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s8)
    (wood b29 teak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s3)
    (wood b30 teak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s7)
    (wood b31 beech)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s6)
    (wood b32 beech)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s9)
    (wood b33 beech)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s10)
    (wood b34 beech)
    (surface-condition b34 rough)
    (available b34)
    (boardsize b35 s2)
    (wood b35 beech)
    (surface-condition b35 rough)
    (available b35)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 blue)
      (wood p1 mahogany)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 natural)
      (wood p2 cherry)
      (available p3)
      (wood p3 pine)
      (surface-condition p3 smooth)
      (available p4)
      (wood p4 oak)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 blue)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 natural)
      (treatment p6 glazed)
      (available p7)
      (colour p7 mauve)
      (wood p7 pine)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (wood p8 oak)
      (treatment p8 varnished)
      (available p9)
      (wood p9 oak)
      (treatment p9 varnished)
      (available p10)
      (colour p10 red)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 white)
      (wood p11 mahogany)
      (available p12)
      (colour p12 blue)
      (wood p12 mahogany)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 white)
      (surface-condition p13 smooth)
      (available p14)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 beech)
      (treatment p15 varnished)
      (available p16)
      (colour p16 green)
      (treatment p16 varnished)
      (available p17)
      (colour p17 red)
      (wood p17 teak)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 blue)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 white)
      (wood p19 oak)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (surface-condition p20 smooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 black)
      (wood p21 oak)
      (available p22)
      (colour p22 white)
      (wood p22 oak)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 blue)
      (wood p23 walnut)
      (available p24)
      (colour p24 blue)
      (wood p24 walnut)
      (surface-condition p24 verysmooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 blue)
      (wood p25 cherry)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 white)
      (treatment p26 glazed)
      (available p27)
      (colour p27 blue)
      (wood p27 pine)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 green)
      (wood p28 pine)
      (surface-condition p28 smooth)
      (available p29)
      (colour p29 natural)
      (wood p29 mahogany)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (wood p30 beech)
      (treatment p30 varnished)
      (available p31)
      (wood p31 beech)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 blue)
      (wood p32 mahogany)
      (available p33)
      (colour p33 black)
      (wood p33 beech)
      (available p34)
      (wood p34 teak)
      (treatment p34 glazed)
      (available p35)
      (colour p35 blue)
      (surface-condition p35 smooth)
      (available p36)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 green)
      (wood p37 oak)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 green)
      (wood p38 cherry)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 natural)
      (wood p39 beech)
      (surface-condition p39 verysmooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 green)
      (surface-condition p40 smooth)
      (available p41)
      (wood p41 cherry)
      (treatment p41 varnished)
      (available p42)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (wood p43 teak)
      (surface-condition p43 smooth)
      (available p44)
      (wood p44 teak)
      (treatment p44 varnished)
      (available p45)
      (colour p45 blue)
      (wood p45 pine)
      (surface-condition p45 smooth)
      (available p46)
      (colour p46 green)
      (wood p46 walnut)
      (available p47)
      (colour p47 blue)
      (wood p47 teak)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (colour p48 white)
      (wood p48 beech)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 green)
      (treatment p49 glazed)
      (available p50)
      (colour p50 white)
      (wood p50 beech)
      (treatment p50 varnished)
      (available p51)
      (colour p51 black)
      (surface-condition p51 smooth)
      (available p52)
      (surface-condition p52 smooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 red)
      (treatment p53 glazed)
      (available p54)
      (colour p54 green)
      (wood p54 teak)
      (available p55)
      (colour p55 white)
      (surface-condition p55 verysmooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 green)
      (treatment p56 varnished)
      (available p57)
      (colour p57 natural)
      (surface-condition p57 verysmooth)
      (available p58)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 red)
      (wood p59 walnut)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 blue)
      (wood p60 beech)
      (surface-condition p60 smooth)
      (treatment p60 glazed)
      (available p61)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 blue)
      (surface-condition p62 smooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 natural)
      (wood p63 walnut)
      (available p64)
      (colour p64 red)
      (wood p64 oak)
      (treatment p64 varnished)
      (available p65)
      (colour p65 white)
      (treatment p65 varnished)
      (available p66)
      (colour p66 mauve)
      (wood p66 walnut)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 mauve)
      (treatment p67 glazed)
      (available p68)
      (wood p68 cherry)
      (treatment p68 glazed)
      (available p69)
      (colour p69 green)
      (wood p69 walnut)
      (surface-condition p69 smooth)
      (available p70)
      (colour p70 mauve)
      (treatment p70 varnished)
      (available p71)
      (colour p71 red)
      (wood p71 pine)
      (available p72)
      (wood p72 cherry)
      (surface-condition p72 verysmooth)
      (treatment p72 glazed)
      (available p73)
      (colour p73 green)
      (surface-condition p73 smooth)
      (available p74)
      (colour p74 natural)
      (wood p74 beech)
      (available p75)
      (colour p75 natural)
      (surface-condition p75 smooth)
      (available p76)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (wood p77 walnut)
      (surface-condition p77 smooth)
      (available p78)
      (colour p78 green)
      (wood p78 walnut)
      (treatment p78 varnished)
      (available p79)
      (colour p79 white)
      (wood p79 cherry)
      (treatment p79 varnished)
      (available p80)
      (colour p80 black)
      (surface-condition p80 smooth)
      (treatment p80 glazed)
      (available p81)
      (colour p81 natural)
      (wood p81 cherry)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (colour p82 mauve)
      (wood p82 walnut)
      (available p83)
      (wood p83 cherry)
      (surface-condition p83 verysmooth)
      (available p84)
      (colour p84 red)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 red)
      (treatment p85 varnished)
      (available p86)
      (colour p86 natural)
      (wood p86 cherry)
      (surface-condition p86 verysmooth)
      (available p87)
      (colour p87 black)
      (surface-condition p87 verysmooth)
      (treatment p87 glazed)
      (available p88)
      (colour p88 natural)
      (treatment p88 glazed)
      (available p89)
      (colour p89 blue)
      (wood p89 oak)
      (surface-condition p89 verysmooth)
      (treatment p89 varnished)
      (available p90)
      (colour p90 green)
      (surface-condition p90 verysmooth)
      (available p91)
      (colour p91 mauve)
      (treatment p91 glazed)
      (available p92)
      (colour p92 green)
      (wood p92 cherry)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (wood p93 walnut)
      (treatment p93 varnished)
      (available p94)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 natural)
      (surface-condition p95 verysmooth)
      (available p96)
      (colour p96 white)
      (wood p96 mahogany)
      (surface-condition p96 smooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 natural)
      (surface-condition p97 verysmooth)
      (available p98)
      (colour p98 mauve)
      (treatment p98 varnished)
      (available p99)
      (wood p99 teak)
      (treatment p99 varnished)
      (available p100)
      (colour p100 blue)
      (surface-condition p100 smooth)
      (treatment p100 varnished)
      (available p101)
      (colour p101 red)
      (wood p101 mahogany)
      (surface-condition p101 verysmooth)
      (available p102)
      (wood p102 walnut)
      (treatment p102 varnished)
      (available p103)
      (colour p103 red)
      (wood p103 pine)
      (surface-condition p103 smooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 mauve)
      (wood p104 oak)
      (surface-condition p104 smooth)
      (treatment p104 glazed)
      (available p105)
      (wood p105 beech)
      (treatment p105 glazed)
      (available p106)
      (colour p106 black)
      (wood p106 oak)
      (available p107)
      (colour p107 white)
      (wood p107 teak)
      (surface-condition p107 smooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 blue)
      (wood p108 cherry)
      (available p109)
      (wood p109 mahogany)
      (treatment p109 varnished)
      (available p110)
      (wood p110 pine)
      (surface-condition p110 verysmooth)
      (available p111)
      (colour p111 natural)
      (wood p111 beech)
      (surface-condition p111 verysmooth)
      (treatment p111 varnished)
      (available p112)
      (colour p112 blue)
      (wood p112 walnut)
    )
  )
  
)
