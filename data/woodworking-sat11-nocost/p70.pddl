; woodworking task with 77 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 758609

(define (problem wood-prob-sat-70)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green red white mauve black blue - acolour
    mahogany cherry beech teak pine walnut oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 - aboardsize
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
    (has-colour glazer0 blue)
    (has-colour glazer0 mauve)
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (available p1)
    (colour p1 black)
    (wood p1 teak)
    (surface-condition p1 smooth)
    (treatment p1 glazed)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (available p11)
    (colour p11 red)
    (wood p11 oak)
    (surface-condition p11 rough)
    (treatment p11 colourfragments)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (available p20)
    (colour p20 blue)
    (wood p20 walnut)
    (surface-condition p20 rough)
    (treatment p20 varnished)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 black)
    (wood p21 walnut)
    (surface-condition p21 smooth)
    (treatment p21 colourfragments)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (available p33)
    (colour p33 white)
    (wood p33 beech)
    (surface-condition p33 verysmooth)
    (treatment p33 glazed)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (available p39)
    (colour p39 red)
    (wood p39 teak)
    (surface-condition p39 rough)
    (treatment p39 varnished)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (available p43)
    (colour p43 black)
    (wood p43 walnut)
    (surface-condition p43 rough)
    (treatment p43 varnished)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (available p47)
    (colour p47 blue)
    (wood p47 walnut)
    (surface-condition p47 verysmooth)
    (treatment p47 varnished)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (available p50)
    (colour p50 mauve)
    (wood p50 pine)
    (surface-condition p50 verysmooth)
    (treatment p50 glazed)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (available p58)
    (colour p58 black)
    (wood p58 teak)
    (surface-condition p58 verysmooth)
    (treatment p58 glazed)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (available p62)
    (colour p62 black)
    (wood p62 oak)
    (surface-condition p62 rough)
    (treatment p62 colourfragments)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 blue)
    (wood p65 oak)
    (surface-condition p65 verysmooth)
    (treatment p65 varnished)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (available p69)
    (colour p69 green)
    (wood p69 beech)
    (surface-condition p69 smooth)
    (treatment p69 varnished)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (available p73)
    (colour p73 natural)
    (wood p73 pine)
    (surface-condition p73 rough)
    (treatment p73 glazed)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s1)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 mahogany)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s10)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s2)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s5)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s6)
    (wood b10 oak)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s8)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s2)
    (wood b14 pine)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s7)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 walnut)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s9)
    (wood b17 walnut)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s7)
    (wood b18 walnut)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s10)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s1)
    (wood b20 walnut)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s6)
    (wood b21 teak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s8)
    (wood b22 teak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s5)
    (wood b23 teak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s2)
    (wood b25 beech)
    (surface-condition b25 rough)
    (available b25)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 oak)
      (available p1)
      (wood p1 teak)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 green)
      (wood p2 pine)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 red)
      (wood p3 cherry)
      (treatment p3 varnished)
      (available p4)
      (colour p4 black)
      (wood p4 oak)
      (surface-condition p4 verysmooth)
      (available p5)
      (colour p5 mauve)
      (wood p5 teak)
      (available p6)
      (colour p6 blue)
      (surface-condition p6 verysmooth)
      (treatment p6 varnished)
      (available p7)
      (wood p7 walnut)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 blue)
      (surface-condition p8 verysmooth)
      (available p9)
      (colour p9 green)
      (wood p9 teak)
      (available p10)
      (colour p10 mauve)
      (surface-condition p10 smooth)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (wood p13 oak)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 red)
      (wood p14 cherry)
      (available p15)
      (wood p15 walnut)
      (surface-condition p15 verysmooth)
      (available p16)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 mauve)
      (wood p17 pine)
      (surface-condition p17 smooth)
      (available p18)
      (wood p18 mahogany)
      (surface-condition p18 smooth)
      (available p19)
      (wood p19 teak)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 green)
      (wood p20 walnut)
      (treatment p20 varnished)
      (available p21)
      (colour p21 mauve)
      (wood p21 walnut)
      (treatment p21 glazed)
      (available p22)
      (colour p22 natural)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 blue)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 red)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 black)
      (wood p25 pine)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 blue)
      (wood p26 walnut)
      (treatment p26 varnished)
      (available p27)
      (colour p27 black)
      (wood p27 oak)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 blue)
      (wood p28 cherry)
      (available p29)
      (colour p29 red)
      (treatment p29 glazed)
      (available p30)
      (wood p30 cherry)
      (surface-condition p30 smooth)
      (available p31)
      (wood p31 mahogany)
      (surface-condition p31 smooth)
      (available p32)
      (colour p32 black)
      (wood p32 walnut)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 green)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 red)
      (treatment p34 glazed)
      (available p35)
      (colour p35 white)
      (wood p35 oak)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 white)
      (treatment p36 varnished)
      (available p37)
      (wood p37 oak)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 black)
      (wood p38 teak)
      (available p39)
      (colour p39 mauve)
      (wood p39 teak)
      (available p40)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 natural)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 black)
      (treatment p42 varnished)
      (available p43)
      (wood p43 walnut)
      (surface-condition p43 verysmooth)
      (available p44)
      (colour p44 blue)
      (wood p44 pine)
      (available p45)
      (colour p45 mauve)
      (wood p45 walnut)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (wood p46 walnut)
      (treatment p46 varnished)
      (available p47)
      (colour p47 natural)
      (wood p47 walnut)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (wood p48 beech)
      (surface-condition p48 verysmooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 green)
      (treatment p49 glazed)
      (available p50)
      (colour p50 green)
      (wood p50 pine)
      (surface-condition p50 smooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 mauve)
      (treatment p51 glazed)
      (available p52)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (wood p53 mahogany)
      (surface-condition p53 smooth)
      (available p54)
      (surface-condition p54 verysmooth)
      (treatment p54 glazed)
      (available p55)
      (surface-condition p55 smooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 green)
      (surface-condition p56 smooth)
      (available p57)
      (wood p57 pine)
      (surface-condition p57 verysmooth)
      (available p58)
      (colour p58 red)
      (surface-condition p58 verysmooth)
      (available p59)
      (colour p59 mauve)
      (surface-condition p59 verysmooth)
      (available p60)
      (colour p60 white)
      (wood p60 cherry)
      (available p61)
      (surface-condition p61 verysmooth)
      (treatment p61 glazed)
      (available p62)
      (colour p62 natural)
      (surface-condition p62 smooth)
      (available p63)
      (colour p63 blue)
      (treatment p63 varnished)
      (available p64)
      (colour p64 red)
      (wood p64 walnut)
      (treatment p64 varnished)
      (available p65)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (colour p66 black)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 natural)
      (surface-condition p67 smooth)
      (treatment p67 glazed)
      (available p68)
      (wood p68 walnut)
      (treatment p68 varnished)
      (available p69)
      (colour p69 black)
      (wood p69 beech)
      (surface-condition p69 smooth)
      (treatment p69 varnished)
      (available p70)
      (colour p70 blue)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (wood p71 beech)
      (surface-condition p71 verysmooth)
      (available p72)
      (colour p72 blue)
      (wood p72 pine)
      (surface-condition p72 smooth)
      (available p73)
      (colour p73 white)
      (wood p73 pine)
      (surface-condition p73 verysmooth)
      (treatment p73 varnished)
      (available p74)
      (wood p74 pine)
      (surface-condition p74 smooth)
      (available p75)
      (colour p75 green)
      (wood p75 oak)
      (surface-condition p75 verysmooth)
      (treatment p75 glazed)
      (available p76)
      (colour p76 green)
      (surface-condition p76 smooth)
    )
  )
  
)
