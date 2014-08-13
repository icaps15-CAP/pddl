; woodworking task with 74 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 131139

(define (problem wood-prob-sat-35)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red green blue black mauve white - acolour
    oak mahogany beech teak cherry pine walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 green)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 green)
    (wood p7 pine)
    (surface-condition p7 rough)
    (treatment p7 colourfragments)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 white)
    (wood p9 oak)
    (surface-condition p9 smooth)
    (treatment p9 glazed)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (available p14)
    (colour p14 natural)
    (wood p14 mahogany)
    (surface-condition p14 smooth)
    (treatment p14 colourfragments)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 black)
    (wood p21 teak)
    (surface-condition p21 rough)
    (treatment p21 glazed)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 blue)
    (wood p24 walnut)
    (surface-condition p24 rough)
    (treatment p24 glazed)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 mauve)
    (wood p25 mahogany)
    (surface-condition p25 verysmooth)
    (treatment p25 glazed)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (available p28)
    (colour p28 mauve)
    (wood p28 teak)
    (surface-condition p28 smooth)
    (treatment p28 colourfragments)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 mauve)
    (wood p35 cherry)
    (surface-condition p35 rough)
    (treatment p35 colourfragments)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (available p41)
    (colour p41 blue)
    (wood p41 beech)
    (surface-condition p41 smooth)
    (treatment p41 glazed)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (available p46)
    (colour p46 blue)
    (wood p46 oak)
    (surface-condition p46 verysmooth)
    (treatment p46 colourfragments)
    (goalsize p46 large)
    
    
    
    
    (available p47)
    (colour p47 green)
    (wood p47 beech)
    (surface-condition p47 rough)
    (treatment p47 varnished)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (available p58)
    (colour p58 red)
    (wood p58 mahogany)
    (surface-condition p58 smooth)
    (treatment p58 colourfragments)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (available p63)
    (colour p63 white)
    (wood p63 teak)
    (surface-condition p63 rough)
    (treatment p63 glazed)
    (goalsize p63 small)
    
    
    
    
    (available p64)
    (colour p64 black)
    (wood p64 pine)
    (surface-condition p64 verysmooth)
    (treatment p64 colourfragments)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (available p66)
    (colour p66 blue)
    (wood p66 beech)
    (surface-condition p66 rough)
    (treatment p66 varnished)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s7)
    (wood b2 mahogany)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s6)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 oak)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s6)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s2)
    (wood b8 oak)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s11)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 pine)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s6)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s10)
    (wood b13 walnut)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s12)
    (wood b15 teak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s6)
    (wood b16 teak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s5)
    (wood b17 teak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 beech)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s9)
    (wood b19 beech)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s4)
    (wood b20 beech)
    (surface-condition b20 rough)
    (available b20)
  )
  (:goal
    (and
      (available p0)
      (wood p0 mahogany)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 pine)
      (surface-condition p1 smooth)
      (available p2)
      (wood p2 mahogany)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (wood p3 beech)
      (treatment p3 varnished)
      (available p4)
      (wood p4 beech)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (wood p5 beech)
      (treatment p5 varnished)
      (available p6)
      (colour p6 green)
      (wood p6 cherry)
      (available p7)
      (colour p7 red)
      (wood p7 pine)
      (available p8)
      (colour p8 black)
      (treatment p8 glazed)
      (available p9)
      (colour p9 black)
      (wood p9 oak)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 white)
      (surface-condition p11 smooth)
      (available p12)
      (wood p12 pine)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 black)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 mahogany)
      (treatment p15 varnished)
      (available p16)
      (colour p16 red)
      (wood p16 beech)
      (surface-condition p16 verysmooth)
      (treatment p16 glazed)
      (available p17)
      (wood p17 teak)
      (treatment p17 varnished)
      (available p18)
      (colour p18 green)
      (wood p18 teak)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (wood p19 mahogany)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 blue)
      (treatment p20 varnished)
      (available p21)
      (colour p21 green)
      (wood p21 teak)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (wood p22 oak)
      (surface-condition p22 verysmooth)
      (available p23)
      (wood p23 oak)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (wood p24 walnut)
      (surface-condition p24 smooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 black)
      (wood p25 mahogany)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 natural)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 mauve)
      (wood p27 oak)
      (treatment p27 varnished)
      (available p28)
      (wood p28 teak)
      (treatment p28 varnished)
      (available p29)
      (colour p29 green)
      (treatment p29 varnished)
      (available p30)
      (colour p30 white)
      (wood p30 beech)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (wood p31 oak)
      (surface-condition p31 verysmooth)
      (treatment p31 varnished)
      (available p32)
      (colour p32 green)
      (treatment p32 varnished)
      (available p33)
      (wood p33 oak)
      (treatment p33 glazed)
      (available p34)
      (wood p34 oak)
      (surface-condition p34 smooth)
      (available p35)
      (wood p35 cherry)
      (treatment p35 glazed)
      (available p36)
      (colour p36 green)
      (wood p36 cherry)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 blue)
      (surface-condition p37 smooth)
      (available p38)
      (wood p38 teak)
      (surface-condition p38 verysmooth)
      (available p39)
      (wood p39 pine)
      (treatment p39 varnished)
      (available p40)
      (colour p40 white)
      (treatment p40 glazed)
      (available p41)
      (colour p41 mauve)
      (surface-condition p41 verysmooth)
      (available p42)
      (wood p42 beech)
      (surface-condition p42 verysmooth)
      (available p43)
      (wood p43 teak)
      (treatment p43 glazed)
      (available p44)
      (colour p44 black)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 black)
      (wood p45 walnut)
      (available p46)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 blue)
      (wood p47 beech)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (surface-condition p48 verysmooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 blue)
      (wood p49 cherry)
      (available p50)
      (colour p50 black)
      (wood p50 beech)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 red)
      (treatment p51 glazed)
      (available p52)
      (wood p52 walnut)
      (surface-condition p52 smooth)
      (available p53)
      (wood p53 walnut)
      (surface-condition p53 verysmooth)
      (available p54)
      (wood p54 oak)
      (surface-condition p54 smooth)
      (available p55)
      (colour p55 blue)
      (treatment p55 varnished)
      (available p56)
      (wood p56 cherry)
      (treatment p56 varnished)
      (available p57)
      (colour p57 red)
      (surface-condition p57 smooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 blue)
      (treatment p58 glazed)
      (available p59)
      (colour p59 black)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (wood p60 pine)
      (surface-condition p60 smooth)
      (available p61)
      (wood p61 beech)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 green)
      (wood p62 pine)
      (available p63)
      (colour p63 mauve)
      (wood p63 teak)
      (treatment p63 glazed)
      (available p64)
      (colour p64 green)
      (wood p64 pine)
      (available p65)
      (colour p65 red)
      (wood p65 teak)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (wood p66 beech)
      (surface-condition p66 verysmooth)
      (available p67)
      (wood p67 teak)
      (treatment p67 varnished)
      (available p68)
      (colour p68 natural)
      (wood p68 oak)
      (available p69)
      (colour p69 white)
      (treatment p69 glazed)
      (available p70)
      (colour p70 red)
      (treatment p70 varnished)
      (available p71)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (colour p72 black)
      (wood p72 walnut)
      (surface-condition p72 verysmooth)
      (treatment p72 varnished)
      (available p73)
      (wood p73 cherry)
      (surface-condition p73 smooth)
    )
  )
  
)
