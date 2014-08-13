; woodworking task with 77 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 406946

(define (problem wood-prob-sat-36)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue black green mauve red white - acolour
    mahogany cherry oak beech teak walnut pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer1 mauve)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 black)
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
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 green)
    (wood p6 oak)
    (surface-condition p6 rough)
    (treatment p6 glazed)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (available p15)
    (colour p15 white)
    (wood p15 teak)
    (surface-condition p15 smooth)
    (treatment p15 varnished)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 blue)
    (wood p17 pine)
    (surface-condition p17 verysmooth)
    (treatment p17 colourfragments)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (available p20)
    (colour p20 white)
    (wood p20 mahogany)
    (surface-condition p20 smooth)
    (treatment p20 glazed)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (available p26)
    (colour p26 green)
    (wood p26 beech)
    (surface-condition p26 smooth)
    (treatment p26 varnished)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (available p30)
    (colour p30 natural)
    (wood p30 oak)
    (surface-condition p30 verysmooth)
    (treatment p30 colourfragments)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (available p43)
    (colour p43 mauve)
    (wood p43 mahogany)
    (surface-condition p43 smooth)
    (treatment p43 colourfragments)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (available p48)
    (colour p48 green)
    (wood p48 mahogany)
    (surface-condition p48 rough)
    (treatment p48 varnished)
    (goalsize p48 large)
    
    
    
    
    (available p49)
    (colour p49 green)
    (wood p49 cherry)
    (surface-condition p49 rough)
    (treatment p49 colourfragments)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (available p52)
    (colour p52 black)
    (wood p52 pine)
    (surface-condition p52 smooth)
    (treatment p52 varnished)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (available p56)
    (colour p56 red)
    (wood p56 teak)
    (surface-condition p56 rough)
    (treatment p56 varnished)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (available p61)
    (colour p61 white)
    (wood p61 mahogany)
    (surface-condition p61 rough)
    (treatment p61 varnished)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (available p67)
    (colour p67 red)
    (wood p67 walnut)
    (surface-condition p67 verysmooth)
    (treatment p67 colourfragments)
    (goalsize p67 medium)
    
    
    
    
    (available p68)
    (colour p68 mauve)
    (wood p68 walnut)
    (surface-condition p68 smooth)
    (treatment p68 varnished)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (available p72)
    (colour p72 blue)
    (wood p72 pine)
    (surface-condition p72 smooth)
    (treatment p72 glazed)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (available p75)
    (colour p75 red)
    (wood p75 oak)
    (surface-condition p75 smooth)
    (treatment p75 colourfragments)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 small)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s5)
    (wood b4 oak)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s10)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s6)
    (wood b6 oak)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s10)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s3)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 pine)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s3)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 walnut)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s8)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s9)
    (wood b15 teak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s10)
    (wood b16 teak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s4)
    (wood b17 teak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 beech)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s6)
    (wood b19 beech)
    (surface-condition b19 rough)
    (available b19)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (wood p0 mahogany)
      (treatment p0 varnished)
      (available p1)
      (colour p1 blue)
      (wood p1 oak)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 white)
      (wood p2 pine)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 green)
      (treatment p3 glazed)
      (available p4)
      (colour p4 white)
      (surface-condition p4 verysmooth)
      (available p5)
      (wood p5 walnut)
      (treatment p5 glazed)
      (available p6)
      (colour p6 black)
      (wood p6 oak)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (wood p7 walnut)
      (surface-condition p7 verysmooth)
      (available p8)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 blue)
      (wood p9 beech)
      (treatment p9 glazed)
      (available p10)
      (colour p10 black)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (wood p11 pine)
      (surface-condition p11 smooth)
      (available p12)
      (wood p12 oak)
      (treatment p12 varnished)
      (available p13)
      (colour p13 white)
      (wood p13 oak)
      (surface-condition p13 verysmooth)
      (available p14)
      (wood p14 beech)
      (treatment p14 glazed)
      (available p15)
      (colour p15 red)
      (wood p15 teak)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 black)
      (wood p16 oak)
      (surface-condition p16 verysmooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 green)
      (surface-condition p17 verysmooth)
      (available p18)
      (colour p18 green)
      (wood p18 walnut)
      (treatment p18 glazed)
      (available p19)
      (colour p19 mauve)
      (treatment p19 glazed)
      (available p20)
      (colour p20 blue)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 natural)
      (wood p21 teak)
      (available p22)
      (wood p22 pine)
      (surface-condition p22 smooth)
      (available p23)
      (wood p23 oak)
      (treatment p23 glazed)
      (available p24)
      (colour p24 white)
      (wood p24 beech)
      (available p25)
      (colour p25 green)
      (treatment p25 varnished)
      (available p26)
      (colour p26 black)
      (wood p26 beech)
      (available p27)
      (wood p27 oak)
      (treatment p27 glazed)
      (available p28)
      (wood p28 teak)
      (surface-condition p28 smooth)
      (available p29)
      (colour p29 natural)
      (wood p29 cherry)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (wood p30 oak)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 blue)
      (wood p31 teak)
      (treatment p31 glazed)
      (available p32)
      (colour p32 mauve)
      (treatment p32 varnished)
      (available p33)
      (wood p33 pine)
      (treatment p33 glazed)
      (available p34)
      (colour p34 black)
      (surface-condition p34 smooth)
      (available p35)
      (colour p35 green)
      (wood p35 cherry)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (wood p37 pine)
      (surface-condition p37 verysmooth)
      (available p38)
      (colour p38 green)
      (wood p38 walnut)
      (treatment p38 glazed)
      (available p39)
      (wood p39 walnut)
      (surface-condition p39 verysmooth)
      (available p40)
      (wood p40 beech)
      (treatment p40 glazed)
      (available p41)
      (wood p41 beech)
      (treatment p41 varnished)
      (available p42)
      (colour p42 black)
      (wood p42 mahogany)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 red)
      (wood p43 mahogany)
      (available p44)
      (colour p44 blue)
      (surface-condition p44 verysmooth)
      (available p45)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (wood p46 mahogany)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 natural)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (surface-condition p48 verysmooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 red)
      (treatment p49 glazed)
      (available p50)
      (colour p50 black)
      (wood p50 oak)
      (available p51)
      (colour p51 blue)
      (wood p51 oak)
      (treatment p51 varnished)
      (available p52)
      (colour p52 white)
      (wood p52 pine)
      (available p53)
      (colour p53 white)
      (wood p53 pine)
      (surface-condition p53 verysmooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 green)
      (wood p54 oak)
      (surface-condition p54 verysmooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 red)
      (treatment p55 varnished)
      (available p56)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (wood p57 cherry)
      (treatment p57 varnished)
      (available p58)
      (colour p58 blue)
      (wood p58 beech)
      (available p59)
      (colour p59 white)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 blue)
      (wood p61 mahogany)
      (surface-condition p61 verysmooth)
      (treatment p61 glazed)
      (available p62)
      (colour p62 green)
      (wood p62 pine)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 black)
      (wood p63 teak)
      (available p64)
      (colour p64 red)
      (treatment p64 glazed)
      (available p65)
      (colour p65 black)
      (wood p65 cherry)
      (treatment p65 glazed)
      (available p66)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (surface-condition p67 verysmooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 black)
      (treatment p68 varnished)
      (available p69)
      (colour p69 white)
      (surface-condition p69 verysmooth)
      (available p70)
      (wood p70 walnut)
      (surface-condition p70 smooth)
      (available p71)
      (colour p71 green)
      (wood p71 oak)
      (treatment p71 glazed)
      (available p72)
      (colour p72 red)
      (surface-condition p72 smooth)
      (available p73)
      (wood p73 teak)
      (surface-condition p73 smooth)
      (treatment p73 glazed)
      (available p74)
      (colour p74 blue)
      (wood p74 oak)
      (available p75)
      (colour p75 mauve)
      (treatment p75 varnished)
      (available p76)
      (wood p76 teak)
      (treatment p76 varnished)
    )
  )
  
)
