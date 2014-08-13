; woodworking task with 80 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 813106

(define (problem wood-prob-sat-37)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve black white red green blue - acolour
    walnut teak beech oak mahogany pine cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 - board
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
    (has-colour glazer0 green)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (available p4)
    (colour p4 mauve)
    (wood p4 mahogany)
    (surface-condition p4 verysmooth)
    (treatment p4 glazed)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 red)
    (wood p6 walnut)
    (surface-condition p6 verysmooth)
    (treatment p6 colourfragments)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (available p12)
    (colour p12 black)
    (wood p12 walnut)
    (surface-condition p12 rough)
    (treatment p12 varnished)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (available p20)
    (colour p20 blue)
    (wood p20 teak)
    (surface-condition p20 rough)
    (treatment p20 varnished)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 natural)
    (wood p21 pine)
    (surface-condition p21 rough)
    (treatment p21 glazed)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (available p23)
    (colour p23 mauve)
    (wood p23 teak)
    (surface-condition p23 verysmooth)
    (treatment p23 varnished)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (available p26)
    (colour p26 natural)
    (wood p26 pine)
    (surface-condition p26 verysmooth)
    (treatment p26 varnished)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (available p35)
    (colour p35 red)
    (wood p35 beech)
    (surface-condition p35 rough)
    (treatment p35 colourfragments)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (available p37)
    (colour p37 white)
    (wood p37 walnut)
    (surface-condition p37 rough)
    (treatment p37 colourfragments)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (available p39)
    (colour p39 blue)
    (wood p39 beech)
    (surface-condition p39 smooth)
    (treatment p39 colourfragments)
    (goalsize p39 large)
    
    
    
    
    (available p40)
    (colour p40 mauve)
    (wood p40 mahogany)
    (surface-condition p40 verysmooth)
    (treatment p40 varnished)
    (goalsize p40 large)
    
    
    
    
    (available p41)
    (colour p41 red)
    (wood p41 walnut)
    (surface-condition p41 verysmooth)
    (treatment p41 glazed)
    (goalsize p41 medium)
    
    
    
    
    (available p42)
    (colour p42 natural)
    (wood p42 beech)
    (surface-condition p42 rough)
    (treatment p42 varnished)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (available p47)
    (colour p47 mauve)
    (wood p47 teak)
    (surface-condition p47 rough)
    (treatment p47 varnished)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (available p49)
    (colour p49 mauve)
    (wood p49 mahogany)
    (surface-condition p49 smooth)
    (treatment p49 glazed)
    (goalsize p49 large)
    
    
    
    
    (available p50)
    (colour p50 mauve)
    (wood p50 oak)
    (surface-condition p50 verysmooth)
    (treatment p50 varnished)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (available p52)
    (colour p52 mauve)
    (wood p52 pine)
    (surface-condition p52 verysmooth)
    (treatment p52 varnished)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (available p59)
    (colour p59 red)
    (wood p59 pine)
    (surface-condition p59 verysmooth)
    (treatment p59 varnished)
    (goalsize p59 small)
    
    
    
    
    (available p60)
    (colour p60 red)
    (wood p60 walnut)
    (surface-condition p60 rough)
    (treatment p60 varnished)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (available p68)
    (colour p68 blue)
    (wood p68 cherry)
    (surface-condition p68 verysmooth)
    (treatment p68 colourfragments)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (available p70)
    (colour p70 black)
    (wood p70 walnut)
    (surface-condition p70 smooth)
    (treatment p70 colourfragments)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s11)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s10)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s4)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 oak)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s8)
    (wood b7 oak)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s7)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 pine)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s6)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 walnut)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s2)
    (wood b13 walnut)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 teak)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s10)
    (wood b15 teak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s3)
    (wood b16 teak)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s7)
    (wood b17 beech)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 beech)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s9)
    (wood b19 beech)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s5)
    (wood b20 beech)
    (surface-condition b20 rough)
    (available b20)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (treatment p0 varnished)
      (available p1)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 white)
      (wood p2 oak)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 white)
      (wood p3 teak)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 red)
      (wood p4 mahogany)
      (available p5)
      (colour p5 white)
      (treatment p5 glazed)
      (available p6)
      (colour p6 green)
      (wood p6 walnut)
      (surface-condition p6 smooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 natural)
      (wood p7 mahogany)
      (treatment p7 glazed)
      (available p8)
      (colour p8 black)
      (treatment p8 glazed)
      (available p9)
      (colour p9 green)
      (wood p9 walnut)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 blue)
      (wood p10 beech)
      (available p11)
      (colour p11 green)
      (wood p11 teak)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 natural)
      (treatment p12 glazed)
      (available p13)
      (colour p13 natural)
      (wood p13 teak)
      (available p14)
      (colour p14 white)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (wood p15 cherry)
      (treatment p15 varnished)
      (available p16)
      (wood p16 mahogany)
      (treatment p16 varnished)
      (available p17)
      (wood p17 oak)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 mauve)
      (wood p18 mahogany)
      (available p19)
      (colour p19 mauve)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 red)
      (wood p20 teak)
      (surface-condition p20 smooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 white)
      (treatment p21 glazed)
      (available p22)
      (wood p22 beech)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 natural)
      (treatment p23 glazed)
      (available p24)
      (wood p24 oak)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 green)
      (wood p26 pine)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (wood p27 cherry)
      (treatment p27 varnished)
      (available p28)
      (colour p28 white)
      (treatment p28 varnished)
      (available p29)
      (colour p29 black)
      (wood p29 cherry)
      (available p30)
      (colour p30 blue)
      (wood p30 mahogany)
      (surface-condition p30 verysmooth)
      (available p31)
      (wood p31 oak)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (wood p32 oak)
      (surface-condition p32 smooth)
      (available p33)
      (surface-condition p33 smooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 mauve)
      (treatment p34 glazed)
      (available p35)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 green)
      (wood p36 oak)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 black)
      (surface-condition p37 smooth)
      (available p38)
      (wood p38 beech)
      (surface-condition p38 verysmooth)
      (available p39)
      (colour p39 green)
      (wood p39 beech)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 natural)
      (treatment p41 varnished)
      (available p42)
      (colour p42 green)
      (treatment p42 glazed)
      (available p43)
      (surface-condition p43 smooth)
      (treatment p43 glazed)
      (available p44)
      (colour p44 green)
      (wood p44 mahogany)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 blue)
      (wood p45 mahogany)
      (surface-condition p45 smooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 black)
      (treatment p46 varnished)
      (available p47)
      (colour p47 black)
      (surface-condition p47 verysmooth)
      (available p48)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 white)
      (treatment p49 varnished)
      (available p50)
      (colour p50 red)
      (wood p50 oak)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 red)
      (wood p51 oak)
      (available p52)
      (colour p52 green)
      (treatment p52 varnished)
      (available p53)
      (wood p53 pine)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 black)
      (wood p54 beech)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 black)
      (wood p55 teak)
      (surface-condition p55 smooth)
      (available p56)
      (surface-condition p56 verysmooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 natural)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 mauve)
      (wood p58 mahogany)
      (surface-condition p58 smooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 natural)
      (wood p59 pine)
      (available p60)
      (colour p60 white)
      (surface-condition p60 verysmooth)
      (treatment p60 glazed)
      (available p61)
      (wood p61 cherry)
      (treatment p61 varnished)
      (available p62)
      (colour p62 mauve)
      (wood p62 cherry)
      (available p63)
      (colour p63 white)
      (treatment p63 glazed)
      (available p64)
      (colour p64 natural)
      (surface-condition p64 smooth)
      (available p65)
      (colour p65 black)
      (surface-condition p65 verysmooth)
      (available p66)
      (colour p66 natural)
      (treatment p66 glazed)
      (available p67)
      (colour p67 red)
      (treatment p67 varnished)
      (available p68)
      (wood p68 cherry)
      (surface-condition p68 smooth)
      (available p69)
      (colour p69 red)
      (wood p69 pine)
      (surface-condition p69 smooth)
      (treatment p69 varnished)
      (available p70)
      (colour p70 blue)
      (wood p70 walnut)
      (surface-condition p70 smooth)
      (available p71)
      (wood p71 cherry)
      (surface-condition p71 smooth)
      (available p72)
      (colour p72 blue)
      (wood p72 mahogany)
      (surface-condition p72 verysmooth)
      (treatment p72 glazed)
      (available p73)
      (wood p73 pine)
      (treatment p73 glazed)
      (available p74)
      (wood p74 beech)
      (surface-condition p74 smooth)
      (available p75)
      (colour p75 mauve)
      (wood p75 pine)
      (available p76)
      (colour p76 black)
      (wood p76 oak)
      (available p77)
      (colour p77 black)
      (wood p77 beech)
      (available p78)
      (colour p78 white)
      (wood p78 beech)
      (available p79)
      (colour p79 blue)
      (wood p79 walnut)
      (treatment p79 glazed)
    )
  )
  
)
