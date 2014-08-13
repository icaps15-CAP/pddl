; woodworking task with 71 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 341601

(define (problem wood-prob-sat-34)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white blue mauve black red green - acolour
    mahogany walnut oak teak pine beech cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 - part
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 mauve)
    (wood p1 cherry)
    (surface-condition p1 rough)
    (treatment p1 colourfragments)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 white)
    (wood p5 beech)
    (surface-condition p5 verysmooth)
    (treatment p5 glazed)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 white)
    (wood p6 teak)
    (surface-condition p6 smooth)
    (treatment p6 glazed)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (available p10)
    (colour p10 mauve)
    (wood p10 teak)
    (surface-condition p10 rough)
    (treatment p10 glazed)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (available p16)
    (colour p16 mauve)
    (wood p16 cherry)
    (surface-condition p16 verysmooth)
    (treatment p16 glazed)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (available p18)
    (colour p18 green)
    (wood p18 beech)
    (surface-condition p18 rough)
    (treatment p18 glazed)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (available p26)
    (colour p26 green)
    (wood p26 oak)
    (surface-condition p26 verysmooth)
    (treatment p26 colourfragments)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (available p30)
    (colour p30 black)
    (wood p30 oak)
    (surface-condition p30 verysmooth)
    (treatment p30 glazed)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 natural)
    (wood p37 oak)
    (surface-condition p37 rough)
    (treatment p37 colourfragments)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (available p48)
    (colour p48 natural)
    (wood p48 mahogany)
    (surface-condition p48 rough)
    (treatment p48 colourfragments)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (available p51)
    (colour p51 red)
    (wood p51 beech)
    (surface-condition p51 smooth)
    (treatment p51 varnished)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (available p58)
    (colour p58 red)
    (wood p58 pine)
    (surface-condition p58 smooth)
    (treatment p58 glazed)
    (goalsize p58 small)
    
    
    
    
    (available p59)
    (colour p59 red)
    (wood p59 mahogany)
    (surface-condition p59 rough)
    (treatment p59 glazed)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (available p63)
    (colour p63 white)
    (wood p63 beech)
    (surface-condition p63 verysmooth)
    (treatment p63 colourfragments)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (available p65)
    (colour p65 mauve)
    (wood p65 oak)
    (surface-condition p65 smooth)
    (treatment p65 colourfragments)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (available p70)
    (colour p70 natural)
    (wood p70 pine)
    (surface-condition p70 rough)
    (treatment p70 colourfragments)
    (goalsize p70 medium)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s5)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s5)
    (wood b4 mahogany)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s1)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s6)
    (wood b6 oak)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s9)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s2)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s10)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s4)
    (wood b13 pine)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s7)
    (wood b14 walnut)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s10)
    (wood b15 walnut)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s7)
    (wood b16 teak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 teak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s5)
    (wood b18 beech)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s4)
    (wood b19 beech)
    (surface-condition b19 rough)
    (available b19)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (surface-condition p0 smooth)
      (available p1)
      (colour p1 black)
      (surface-condition p1 verysmooth)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 black)
      (wood p3 teak)
      (available p4)
      (wood p4 pine)
      (surface-condition p4 verysmooth)
      (available p5)
      (colour p5 black)
      (wood p5 beech)
      (available p6)
      (wood p6 teak)
      (surface-condition p6 verysmooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 natural)
      (treatment p7 glazed)
      (available p8)
      (colour p8 natural)
      (wood p8 walnut)
      (surface-condition p8 verysmooth)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 blue)
      (wood p10 teak)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 black)
      (wood p11 teak)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 green)
      (wood p12 beech)
      (available p13)
      (wood p13 walnut)
      (surface-condition p13 verysmooth)
      (available p14)
      (wood p14 walnut)
      (surface-condition p14 verysmooth)
      (available p15)
      (wood p15 oak)
      (treatment p15 glazed)
      (available p16)
      (colour p16 black)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 natural)
      (wood p17 pine)
      (treatment p17 varnished)
      (available p18)
      (colour p18 mauve)
      (wood p18 beech)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 mauve)
      (wood p19 oak)
      (surface-condition p19 verysmooth)
      (available p20)
      (wood p20 beech)
      (treatment p20 varnished)
      (available p21)
      (colour p21 white)
      (wood p21 mahogany)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 black)
      (wood p22 cherry)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 red)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 white)
      (wood p24 mahogany)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 black)
      (surface-condition p25 smooth)
      (available p26)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (surface-condition p27 verysmooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 mauve)
      (wood p28 oak)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 mauve)
      (wood p30 oak)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 blue)
      (wood p31 oak)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 white)
      (wood p32 walnut)
      (available p33)
      (colour p33 red)
      (wood p33 pine)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 green)
      (wood p34 cherry)
      (available p35)
      (wood p35 cherry)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 mauve)
      (wood p36 mahogany)
      (treatment p36 varnished)
      (available p37)
      (colour p37 mauve)
      (treatment p37 varnished)
      (available p38)
      (wood p38 cherry)
      (treatment p38 varnished)
      (available p39)
      (wood p39 beech)
      (surface-condition p39 smooth)
      (available p40)
      (colour p40 mauve)
      (wood p40 oak)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (wood p41 oak)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 mauve)
      (wood p42 oak)
      (available p43)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 mauve)
      (wood p44 teak)
      (surface-condition p44 verysmooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 red)
      (wood p45 pine)
      (available p46)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (surface-condition p47 smooth)
      (treatment p47 glazed)
      (available p48)
      (wood p48 mahogany)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (wood p49 walnut)
      (surface-condition p49 smooth)
      (available p50)
      (colour p50 blue)
      (wood p50 mahogany)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 green)
      (wood p51 beech)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (wood p52 mahogany)
      (treatment p52 glazed)
      (available p53)
      (wood p53 oak)
      (surface-condition p53 smooth)
      (treatment p53 glazed)
      (available p54)
      (wood p54 oak)
      (surface-condition p54 verysmooth)
      (available p55)
      (wood p55 cherry)
      (surface-condition p55 smooth)
      (available p56)
      (colour p56 green)
      (wood p56 oak)
      (surface-condition p56 smooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 mauve)
      (treatment p57 varnished)
      (available p58)
      (surface-condition p58 smooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 black)
      (surface-condition p59 smooth)
      (available p60)
      (colour p60 blue)
      (wood p60 beech)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 blue)
      (wood p61 teak)
      (surface-condition p61 smooth)
      (treatment p61 glazed)
      (available p62)
      (wood p62 pine)
      (surface-condition p62 smooth)
      (available p63)
      (colour p63 green)
      (treatment p63 varnished)
      (available p64)
      (colour p64 green)
      (surface-condition p64 verysmooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 green)
      (wood p65 oak)
      (surface-condition p65 verysmooth)
      (available p66)
      (colour p66 green)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (wood p67 cherry)
      (surface-condition p67 verysmooth)
      (available p68)
      (colour p68 blue)
      (surface-condition p68 smooth)
      (available p69)
      (wood p69 teak)
      (treatment p69 varnished)
      (available p70)
      (colour p70 red)
      (wood p70 pine)
    )
  )
  
)
