; woodworking task with 107 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 445715

(define (problem wood-prob-sat-80)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red white black green mauve blue - acolour
    cherry oak walnut beech teak pine mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
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
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
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
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 green)
    (wood p1 cherry)
    (surface-condition p1 rough)
    (treatment p1 glazed)
    (goalsize p1 medium)
    
    
    
    
    (available p2)
    (colour p2 natural)
    (wood p2 mahogany)
    (surface-condition p2 verysmooth)
    (treatment p2 glazed)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 green)
    (wood p4 beech)
    (surface-condition p4 smooth)
    (treatment p4 colourfragments)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 natural)
    (wood p5 oak)
    (surface-condition p5 rough)
    (treatment p5 glazed)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 natural)
    (wood p7 oak)
    (surface-condition p7 rough)
    (treatment p7 glazed)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 natural)
    (wood p14 walnut)
    (surface-condition p14 rough)
    (treatment p14 glazed)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 blue)
    (wood p15 teak)
    (surface-condition p15 rough)
    (treatment p15 varnished)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (available p19)
    (colour p19 blue)
    (wood p19 walnut)
    (surface-condition p19 verysmooth)
    (treatment p19 colourfragments)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 mauve)
    (wood p24 cherry)
    (surface-condition p24 smooth)
    (treatment p24 colourfragments)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (available p26)
    (colour p26 black)
    (wood p26 mahogany)
    (surface-condition p26 verysmooth)
    (treatment p26 varnished)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 green)
    (wood p36 beech)
    (surface-condition p36 rough)
    (treatment p36 colourfragments)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (available p41)
    (colour p41 white)
    (wood p41 cherry)
    (surface-condition p41 rough)
    (treatment p41 colourfragments)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (available p47)
    (colour p47 red)
    (wood p47 mahogany)
    (surface-condition p47 smooth)
    (treatment p47 colourfragments)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (available p49)
    (colour p49 black)
    (wood p49 oak)
    (surface-condition p49 smooth)
    (treatment p49 varnished)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (available p63)
    (colour p63 green)
    (wood p63 beech)
    (surface-condition p63 smooth)
    (treatment p63 varnished)
    (goalsize p63 medium)
    
    
    
    
    (available p64)
    (colour p64 natural)
    (wood p64 mahogany)
    (surface-condition p64 rough)
    (treatment p64 glazed)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 red)
    (wood p65 mahogany)
    (surface-condition p65 rough)
    (treatment p65 varnished)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 black)
    (wood p66 cherry)
    (surface-condition p66 verysmooth)
    (treatment p66 glazed)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (available p68)
    (colour p68 mauve)
    (wood p68 teak)
    (surface-condition p68 verysmooth)
    (treatment p68 varnished)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (available p74)
    (colour p74 red)
    (wood p74 mahogany)
    (surface-condition p74 verysmooth)
    (treatment p74 varnished)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (available p76)
    (colour p76 mauve)
    (wood p76 walnut)
    (surface-condition p76 verysmooth)
    (treatment p76 varnished)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (available p78)
    (colour p78 green)
    (wood p78 teak)
    (surface-condition p78 rough)
    (treatment p78 colourfragments)
    (goalsize p78 small)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (available p82)
    (colour p82 natural)
    (wood p82 mahogany)
    (surface-condition p82 verysmooth)
    (treatment p82 varnished)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 large)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (available p90)
    (colour p90 green)
    (wood p90 cherry)
    (surface-condition p90 verysmooth)
    (treatment p90 colourfragments)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (available p92)
    (colour p92 red)
    (wood p92 walnut)
    (surface-condition p92 verysmooth)
    (treatment p92 colourfragments)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (available p94)
    (colour p94 blue)
    (wood p94 walnut)
    (surface-condition p94 verysmooth)
    (treatment p94 glazed)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 medium)
    
    
    
    
    (available p101)
    (colour p101 natural)
    (wood p101 beech)
    (surface-condition p101 rough)
    (treatment p101 glazed)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 small)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s10)
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
    (boardsize b4 s10)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s10)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s4)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s3)
    (wood b9 oak)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s8)
    (wood b10 pine)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s12)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s5)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 pine)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s10)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 walnut)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s7)
    (wood b20 walnut)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s5)
    (wood b21 walnut)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s4)
    (wood b22 walnut)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 teak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s5)
    (wood b24 teak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s1)
    (wood b25 teak)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s8)
    (wood b26 beech)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 beech)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s10)
    (wood b28 beech)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s9)
    (wood b29 beech)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s8)
    (wood b30 beech)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s5)
    (wood b31 beech)
    (surface-condition b31 smooth)
    (available b31)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (wood p0 walnut)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 black)
      (treatment p1 glazed)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 red)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 blue)
      (treatment p4 varnished)
      (available p5)
      (wood p5 oak)
      (surface-condition p5 smooth)
      (available p6)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 black)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 red)
      (wood p8 walnut)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (wood p9 oak)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 white)
      (wood p10 mahogany)
      (available p11)
      (colour p11 black)
      (treatment p11 varnished)
      (available p12)
      (colour p12 red)
      (wood p12 cherry)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 mauve)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 white)
      (wood p14 walnut)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 red)
      (treatment p16 varnished)
      (available p17)
      (colour p17 blue)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 blue)
      (wood p18 beech)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 black)
      (wood p19 walnut)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 red)
      (treatment p20 glazed)
      (available p21)
      (colour p21 natural)
      (wood p21 beech)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (wood p22 walnut)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 natural)
      (treatment p23 varnished)
      (available p24)
      (colour p24 black)
      (treatment p24 varnished)
      (available p25)
      (wood p25 beech)
      (treatment p25 glazed)
      (available p26)
      (colour p26 blue)
      (wood p26 mahogany)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 red)
      (surface-condition p27 verysmooth)
      (available p28)
      (colour p28 natural)
      (treatment p28 varnished)
      (available p29)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 red)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 mauve)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (wood p33 pine)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (wood p34 beech)
      (surface-condition p34 verysmooth)
      (available p35)
      (wood p35 cherry)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 white)
      (wood p36 beech)
      (available p37)
      (colour p37 natural)
      (wood p37 walnut)
      (treatment p37 glazed)
      (available p38)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 natural)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 white)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 natural)
      (wood p41 cherry)
      (available p42)
      (colour p42 black)
      (wood p42 walnut)
      (available p43)
      (colour p43 green)
      (wood p43 mahogany)
      (available p44)
      (wood p44 walnut)
      (surface-condition p44 smooth)
      (available p45)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 mauve)
      (treatment p46 glazed)
      (available p47)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 green)
      (treatment p48 varnished)
      (available p49)
      (colour p49 green)
      (wood p49 oak)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
      (available p50)
      (wood p50 walnut)
      (treatment p50 glazed)
      (available p51)
      (wood p51 pine)
      (treatment p51 varnished)
      (available p52)
      (colour p52 black)
      (wood p52 beech)
      (available p53)
      (wood p53 beech)
      (surface-condition p53 smooth)
      (treatment p53 varnished)
      (available p54)
      (surface-condition p54 verysmooth)
      (treatment p54 glazed)
      (available p55)
      (wood p55 teak)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (wood p56 beech)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 green)
      (wood p57 pine)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 mauve)
      (wood p58 walnut)
      (available p59)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 red)
      (wood p60 mahogany)
      (treatment p60 varnished)
      (available p61)
      (colour p61 red)
      (wood p61 pine)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 mauve)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 mauve)
      (wood p64 mahogany)
      (surface-condition p64 verysmooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 green)
      (wood p65 mahogany)
      (available p66)
      (colour p66 white)
      (wood p66 cherry)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 white)
      (wood p67 cherry)
      (available p68)
      (surface-condition p68 verysmooth)
      (treatment p68 glazed)
      (available p69)
      (surface-condition p69 verysmooth)
      (treatment p69 varnished)
      (available p70)
      (wood p70 pine)
      (surface-condition p70 smooth)
      (available p71)
      (colour p71 blue)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (colour p72 black)
      (wood p72 beech)
      (surface-condition p72 verysmooth)
      (treatment p72 glazed)
      (available p73)
      (colour p73 natural)
      (wood p73 cherry)
      (available p74)
      (colour p74 natural)
      (wood p74 mahogany)
      (surface-condition p74 verysmooth)
      (treatment p74 varnished)
      (available p75)
      (wood p75 mahogany)
      (surface-condition p75 smooth)
      (available p76)
      (colour p76 natural)
      (wood p76 walnut)
      (treatment p76 glazed)
      (available p77)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 mauve)
      (treatment p78 glazed)
      (available p79)
      (wood p79 walnut)
      (surface-condition p79 smooth)
      (available p80)
      (colour p80 black)
      (wood p80 beech)
      (surface-condition p80 verysmooth)
      (treatment p80 varnished)
      (available p81)
      (wood p81 oak)
      (treatment p81 glazed)
      (available p82)
      (colour p82 blue)
      (wood p82 mahogany)
      (available p83)
      (wood p83 oak)
      (surface-condition p83 verysmooth)
      (treatment p83 varnished)
      (available p84)
      (wood p84 teak)
      (surface-condition p84 smooth)
      (available p85)
      (colour p85 mauve)
      (wood p85 pine)
      (surface-condition p85 smooth)
      (treatment p85 varnished)
      (available p86)
      (colour p86 red)
      (surface-condition p86 verysmooth)
      (available p87)
      (colour p87 natural)
      (wood p87 walnut)
      (surface-condition p87 smooth)
      (treatment p87 glazed)
      (available p88)
      (colour p88 red)
      (wood p88 teak)
      (surface-condition p88 verysmooth)
      (treatment p88 glazed)
      (available p89)
      (colour p89 mauve)
      (surface-condition p89 smooth)
      (available p90)
      (colour p90 mauve)
      (wood p90 cherry)
      (surface-condition p90 verysmooth)
      (treatment p90 varnished)
      (available p91)
      (wood p91 walnut)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 mauve)
      (wood p92 walnut)
      (available p93)
      (colour p93 red)
      (surface-condition p93 smooth)
      (available p94)
      (colour p94 mauve)
      (wood p94 walnut)
      (surface-condition p94 verysmooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 green)
      (surface-condition p95 verysmooth)
      (available p96)
      (colour p96 red)
      (wood p96 teak)
      (surface-condition p96 smooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 mauve)
      (wood p97 beech)
      (treatment p97 glazed)
      (available p98)
      (colour p98 green)
      (wood p98 pine)
      (surface-condition p98 smooth)
      (treatment p98 glazed)
      (available p99)
      (colour p99 mauve)
      (wood p99 oak)
      (available p100)
      (wood p100 walnut)
      (treatment p100 varnished)
      (available p101)
      (wood p101 beech)
      (surface-condition p101 verysmooth)
      (available p102)
      (colour p102 mauve)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (surface-condition p103 verysmooth)
      (treatment p103 varnished)
      (available p104)
      (colour p104 blue)
      (wood p104 mahogany)
      (surface-condition p104 verysmooth)
      (treatment p104 glazed)
      (available p105)
      (colour p105 blue)
      (wood p105 walnut)
      (available p106)
      (colour p106 white)
      (surface-condition p106 verysmooth)
      (treatment p106 glazed)
    )
  )
  
)
