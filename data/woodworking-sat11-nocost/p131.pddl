; woodworking task with 80 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 475186

(define (problem wood-prob-sat-131)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue red mauve black white green - acolour
    oak cherry walnut pine mahogany teak beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (available p4)
    (colour p4 blue)
    (wood p4 oak)
    (surface-condition p4 verysmooth)
    (treatment p4 glazed)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 white)
    (wood p5 cherry)
    (surface-condition p5 smooth)
    (treatment p5 varnished)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 green)
    (wood p11 beech)
    (surface-condition p11 verysmooth)
    (treatment p11 colourfragments)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 white)
    (wood p12 pine)
    (surface-condition p12 verysmooth)
    (treatment p12 colourfragments)
    (goalsize p12 large)
    
    
    
    
    (available p13)
    (colour p13 natural)
    (wood p13 cherry)
    (surface-condition p13 smooth)
    (treatment p13 colourfragments)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 mauve)
    (wood p22 pine)
    (surface-condition p22 rough)
    (treatment p22 varnished)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (available p31)
    (colour p31 black)
    (wood p31 mahogany)
    (surface-condition p31 smooth)
    (treatment p31 varnished)
    (goalsize p31 medium)
    
    
    
    
    (available p32)
    (colour p32 green)
    (wood p32 mahogany)
    (surface-condition p32 rough)
    (treatment p32 glazed)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (available p37)
    (colour p37 white)
    (wood p37 pine)
    (surface-condition p37 rough)
    (treatment p37 varnished)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (available p40)
    (colour p40 white)
    (wood p40 mahogany)
    (surface-condition p40 rough)
    (treatment p40 varnished)
    (goalsize p40 medium)
    
    
    
    
    (available p41)
    (colour p41 natural)
    (wood p41 oak)
    (surface-condition p41 smooth)
    (treatment p41 varnished)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (available p43)
    (colour p43 mauve)
    (wood p43 oak)
    (surface-condition p43 smooth)
    (treatment p43 glazed)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (available p45)
    (colour p45 natural)
    (wood p45 beech)
    (surface-condition p45 verysmooth)
    (treatment p45 glazed)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (available p47)
    (colour p47 natural)
    (wood p47 walnut)
    (surface-condition p47 verysmooth)
    (treatment p47 varnished)
    (goalsize p47 small)
    
    
    
    
    (available p48)
    (colour p48 white)
    (wood p48 oak)
    (surface-condition p48 verysmooth)
    (treatment p48 colourfragments)
    (goalsize p48 small)
    
    
    
    
    (available p49)
    (colour p49 red)
    (wood p49 pine)
    (surface-condition p49 smooth)
    (treatment p49 colourfragments)
    (goalsize p49 large)
    
    
    
    
    (available p50)
    (colour p50 mauve)
    (wood p50 walnut)
    (surface-condition p50 verysmooth)
    (treatment p50 varnished)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (available p54)
    (colour p54 blue)
    (wood p54 teak)
    (surface-condition p54 smooth)
    (treatment p54 varnished)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (available p56)
    (colour p56 mauve)
    (wood p56 oak)
    (surface-condition p56 rough)
    (treatment p56 varnished)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 red)
    (wood p65 oak)
    (surface-condition p65 rough)
    (treatment p65 varnished)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (boardsize b0 s5)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s11)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s3)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 oak)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s10)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s6)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s3)
    (wood b10 oak)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s8)
    (wood b11 pine)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s8)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s3)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 walnut)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s11)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s5)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s10)
    (wood b17 teak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 teak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s7)
    (wood b19 teak)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s8)
    (wood b20 beech)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s5)
    (wood b21 beech)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s8)
    (wood b22 beech)
    (surface-condition b22 smooth)
    (available b22)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (wood p0 mahogany)
      (treatment p0 glazed)
      (available p1)
      (colour p1 white)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 black)
      (wood p2 oak)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 blue)
      (treatment p3 glazed)
      (available p4)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 white)
      (wood p6 teak)
      (treatment p6 varnished)
      (available p7)
      (colour p7 black)
      (wood p7 pine)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 white)
      (wood p8 cherry)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 mauve)
      (wood p9 pine)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 black)
      (wood p10 oak)
      (treatment p10 varnished)
      (available p11)
      (colour p11 blue)
      (treatment p11 varnished)
      (available p12)
      (colour p12 green)
      (treatment p12 glazed)
      (available p13)
      (colour p13 blue)
      (treatment p13 varnished)
      (available p14)
      (wood p14 mahogany)
      (treatment p14 glazed)
      (available p15)
      (wood p15 oak)
      (surface-condition p15 smooth)
      (available p16)
      (wood p16 cherry)
      (surface-condition p16 smooth)
      (available p17)
      (wood p17 oak)
      (treatment p17 varnished)
      (available p18)
      (colour p18 white)
      (treatment p18 varnished)
      (available p19)
      (colour p19 natural)
      (wood p19 mahogany)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (surface-condition p20 smooth)
      (treatment p20 glazed)
      (available p21)
      (wood p21 cherry)
      (treatment p21 varnished)
      (available p22)
      (colour p22 blue)
      (treatment p22 varnished)
      (available p23)
      (colour p23 green)
      (wood p23 teak)
      (available p24)
      (colour p24 green)
      (wood p24 pine)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (wood p25 walnut)
      (treatment p25 varnished)
      (available p26)
      (colour p26 white)
      (wood p26 cherry)
      (available p27)
      (colour p27 white)
      (surface-condition p27 smooth)
      (available p28)
      (wood p28 oak)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 mauve)
      (wood p29 cherry)
      (surface-condition p29 verysmooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 black)
      (wood p30 oak)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (wood p31 mahogany)
      (surface-condition p31 verysmooth)
      (available p32)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 green)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 red)
      (wood p34 walnut)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 natural)
      (treatment p35 glazed)
      (available p36)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (wood p37 pine)
      (treatment p37 glazed)
      (available p38)
      (colour p38 red)
      (wood p38 mahogany)
      (available p39)
      (wood p39 teak)
      (treatment p39 varnished)
      (available p40)
      (colour p40 red)
      (treatment p40 glazed)
      (available p41)
      (colour p41 black)
      (wood p41 oak)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 white)
      (wood p42 teak)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 blue)
      (wood p43 oak)
      (available p44)
      (colour p44 black)
      (wood p44 beech)
      (treatment p44 glazed)
      (available p45)
      (colour p45 red)
      (wood p45 beech)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (wood p46 pine)
      (treatment p46 glazed)
      (available p47)
      (surface-condition p47 verysmooth)
      (treatment p47 glazed)
      (available p48)
      (surface-condition p48 verysmooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 natural)
      (treatment p49 varnished)
      (available p50)
      (surface-condition p50 smooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 red)
      (wood p51 teak)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 mauve)
      (wood p52 cherry)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 green)
      (wood p53 beech)
      (surface-condition p53 verysmooth)
      (available p54)
      (colour p54 mauve)
      (wood p54 teak)
      (treatment p54 glazed)
      (available p55)
      (colour p55 blue)
      (wood p55 beech)
      (available p56)
      (wood p56 oak)
      (treatment p56 glazed)
      (available p57)
      (colour p57 red)
      (wood p57 pine)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (wood p58 mahogany)
      (surface-condition p58 verysmooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 white)
      (wood p59 walnut)
      (surface-condition p59 verysmooth)
      (available p60)
      (colour p60 natural)
      (treatment p60 glazed)
      (available p61)
      (colour p61 blue)
      (wood p61 walnut)
      (available p62)
      (colour p62 mauve)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 blue)
      (wood p63 cherry)
      (surface-condition p63 verysmooth)
      (treatment p63 glazed)
      (available p64)
      (surface-condition p64 verysmooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 white)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 green)
      (wood p66 cherry)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 red)
      (wood p67 oak)
      (surface-condition p67 verysmooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 natural)
      (wood p68 pine)
      (surface-condition p68 verysmooth)
      (treatment p68 varnished)
      (available p69)
      (wood p69 walnut)
      (surface-condition p69 smooth)
      (available p70)
      (surface-condition p70 smooth)
      (treatment p70 varnished)
      (available p71)
      (wood p71 oak)
      (surface-condition p71 verysmooth)
      (treatment p71 glazed)
      (available p72)
      (colour p72 white)
      (treatment p72 varnished)
      (available p73)
      (colour p73 mauve)
      (wood p73 mahogany)
      (available p74)
      (colour p74 mauve)
      (wood p74 pine)
      (available p75)
      (wood p75 walnut)
      (surface-condition p75 smooth)
      (available p76)
      (colour p76 green)
      (wood p76 oak)
      (available p77)
      (wood p77 walnut)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 natural)
      (wood p78 teak)
      (surface-condition p78 verysmooth)
      (available p79)
      (colour p79 green)
      (wood p79 teak)
      (surface-condition p79 smooth)
      (treatment p79 varnished)
    )
  )
  
)
