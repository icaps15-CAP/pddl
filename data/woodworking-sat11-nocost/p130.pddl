; woodworking task with 77 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 769545

(define (problem wood-prob-sat-130)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black white blue mauve green red - acolour
    cherry pine mahogany walnut beech teak oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (available p4)
    (colour p4 white)
    (wood p4 cherry)
    (surface-condition p4 smooth)
    (treatment p4 glazed)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 blue)
    (wood p11 oak)
    (surface-condition p11 verysmooth)
    (treatment p11 colourfragments)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 mauve)
    (wood p12 cherry)
    (surface-condition p12 verysmooth)
    (treatment p12 glazed)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 blue)
    (wood p14 beech)
    (surface-condition p14 verysmooth)
    (treatment p14 glazed)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 black)
    (wood p17 beech)
    (surface-condition p17 smooth)
    (treatment p17 varnished)
    (goalsize p17 medium)
    
    
    
    
    (available p18)
    (colour p18 black)
    (wood p18 walnut)
    (surface-condition p18 verysmooth)
    (treatment p18 colourfragments)
    (goalsize p18 small)
    
    
    
    
    (available p19)
    (colour p19 white)
    (wood p19 teak)
    (surface-condition p19 smooth)
    (treatment p19 varnished)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (available p23)
    (colour p23 mauve)
    (wood p23 oak)
    (surface-condition p23 rough)
    (treatment p23 glazed)
    (goalsize p23 medium)
    
    
    
    
    (available p24)
    (colour p24 blue)
    (wood p24 pine)
    (surface-condition p24 smooth)
    (treatment p24 colourfragments)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (available p26)
    (colour p26 red)
    (wood p26 pine)
    (surface-condition p26 rough)
    (treatment p26 glazed)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (available p29)
    (colour p29 natural)
    (wood p29 teak)
    (surface-condition p29 verysmooth)
    (treatment p29 colourfragments)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (available p34)
    (colour p34 white)
    (wood p34 cherry)
    (surface-condition p34 smooth)
    (treatment p34 glazed)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 white)
    (wood p36 mahogany)
    (surface-condition p36 rough)
    (treatment p36 colourfragments)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (available p40)
    (colour p40 green)
    (wood p40 walnut)
    (surface-condition p40 smooth)
    (treatment p40 varnished)
    (goalsize p40 medium)
    
    
    
    
    (available p41)
    (colour p41 natural)
    (wood p41 cherry)
    (surface-condition p41 rough)
    (treatment p41 varnished)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (available p50)
    (colour p50 blue)
    (wood p50 mahogany)
    (surface-condition p50 rough)
    (treatment p50 colourfragments)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (available p55)
    (colour p55 natural)
    (wood p55 pine)
    (surface-condition p55 rough)
    (treatment p55 colourfragments)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (available p71)
    (colour p71 red)
    (wood p71 beech)
    (surface-condition p71 rough)
    (treatment p71 colourfragments)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (available p73)
    (colour p73 natural)
    (wood p73 cherry)
    (surface-condition p73 verysmooth)
    (treatment p73 glazed)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (available p75)
    (colour p75 green)
    (wood p75 teak)
    (surface-condition p75 smooth)
    (treatment p75 varnished)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 mahogany)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s7)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s3)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s10)
    (wood b7 oak)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s6)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 oak)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s3)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s4)
    (wood b14 pine)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s10)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 walnut)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s8)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s3)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s12)
    (wood b19 teak)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s11)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s3)
    (wood b21 teak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s11)
    (wood b22 beech)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s9)
    (wood b23 beech)
    (surface-condition b23 smooth)
    (available b23)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (wood p0 pine)
      (treatment p0 varnished)
      (available p1)
      (colour p1 white)
      (wood p1 pine)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 green)
      (wood p2 oak)
      (available p3)
      (colour p3 white)
      (wood p3 cherry)
      (available p4)
      (wood p4 cherry)
      (surface-condition p4 verysmooth)
      (available p5)
      (wood p5 pine)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (wood p6 cherry)
      (surface-condition p6 verysmooth)
      (available p7)
      (colour p7 blue)
      (wood p7 pine)
      (available p8)
      (colour p8 green)
      (wood p8 teak)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 natural)
      (wood p9 oak)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 white)
      (wood p10 cherry)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 blue)
      (treatment p12 glazed)
      (available p13)
      (colour p13 black)
      (wood p13 walnut)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 white)
      (wood p14 beech)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (wood p17 beech)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 green)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (wood p19 teak)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 red)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 green)
      (treatment p21 glazed)
      (available p22)
      (colour p22 red)
      (wood p22 walnut)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 black)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (wood p24 pine)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 blue)
      (treatment p25 varnished)
      (available p26)
      (colour p26 blue)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 mauve)
      (wood p27 cherry)
      (surface-condition p27 verysmooth)
      (available p28)
      (colour p28 white)
      (wood p28 pine)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 white)
      (wood p29 teak)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (wood p30 walnut)
      (surface-condition p30 verysmooth)
      (available p31)
      (wood p31 mahogany)
      (treatment p31 varnished)
      (available p32)
      (colour p32 natural)
      (treatment p32 varnished)
      (available p33)
      (colour p33 natural)
      (wood p33 oak)
      (available p34)
      (colour p34 blue)
      (wood p34 cherry)
      (treatment p34 varnished)
      (available p35)
      (wood p35 cherry)
      (surface-condition p35 smooth)
      (available p36)
      (colour p36 blue)
      (wood p36 mahogany)
      (available p37)
      (colour p37 mauve)
      (wood p37 beech)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (wood p38 cherry)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 blue)
      (surface-condition p39 smooth)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 white)
      (wood p41 cherry)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 green)
      (wood p42 pine)
      (available p43)
      (colour p43 natural)
      (surface-condition p43 smooth)
      (available p44)
      (colour p44 black)
      (wood p44 walnut)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 black)
      (wood p45 walnut)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (wood p46 cherry)
      (treatment p46 varnished)
      (available p47)
      (colour p47 red)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (wood p48 walnut)
      (treatment p48 varnished)
      (available p49)
      (wood p49 cherry)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 natural)
      (treatment p50 glazed)
      (available p51)
      (wood p51 teak)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (wood p53 walnut)
      (surface-condition p53 verysmooth)
      (available p54)
      (colour p54 white)
      (wood p54 oak)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (wood p55 pine)
      (surface-condition p55 verysmooth)
      (available p56)
      (colour p56 green)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 green)
      (treatment p57 glazed)
      (available p58)
      (wood p58 walnut)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 white)
      (surface-condition p59 smooth)
      (available p60)
      (wood p60 pine)
      (surface-condition p60 verysmooth)
      (available p61)
      (colour p61 blue)
      (wood p61 pine)
      (available p62)
      (colour p62 mauve)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 natural)
      (wood p64 oak)
      (available p65)
      (wood p65 pine)
      (treatment p65 glazed)
      (available p66)
      (wood p66 oak)
      (surface-condition p66 smooth)
      (treatment p66 glazed)
      (available p67)
      (wood p67 teak)
      (surface-condition p67 smooth)
      (available p68)
      (colour p68 red)
      (surface-condition p68 smooth)
      (available p69)
      (wood p69 oak)
      (surface-condition p69 smooth)
      (available p70)
      (colour p70 blue)
      (wood p70 mahogany)
      (available p71)
      (colour p71 white)
      (wood p71 beech)
      (surface-condition p71 smooth)
      (treatment p71 glazed)
      (available p72)
      (colour p72 mauve)
      (wood p72 oak)
      (surface-condition p72 smooth)
      (available p73)
      (wood p73 cherry)
      (treatment p73 varnished)
      (available p74)
      (colour p74 natural)
      (wood p74 pine)
      (surface-condition p74 smooth)
      (treatment p74 glazed)
      (available p75)
      (colour p75 natural)
      (wood p75 teak)
      (treatment p75 glazed)
      (available p76)
      (colour p76 white)
      (treatment p76 varnished)
    )
  )
  
)
