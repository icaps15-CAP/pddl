; woodworking task with 74 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 91337

(define (problem wood-prob-sat-129)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green red black mauve white blue - acolour
    pine beech oak walnut mahogany teak cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 - part
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
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
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
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (available p7)
    (colour p7 blue)
    (wood p7 pine)
    (surface-condition p7 smooth)
    (treatment p7 glazed)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (available p15)
    (colour p15 green)
    (wood p15 mahogany)
    (surface-condition p15 rough)
    (treatment p15 glazed)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (available p44)
    (colour p44 white)
    (wood p44 mahogany)
    (surface-condition p44 verysmooth)
    (treatment p44 colourfragments)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (available p56)
    (colour p56 blue)
    (wood p56 cherry)
    (surface-condition p56 smooth)
    (treatment p56 glazed)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 small)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 natural)
    (wood p67 walnut)
    (surface-condition p67 verysmooth)
    (treatment p67 colourfragments)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (available p72)
    (colour p72 natural)
    (wood p72 walnut)
    (surface-condition p72 rough)
    (treatment p72 varnished)
    (goalsize p72 small)
    
    
    
    
    (available p73)
    (colour p73 blue)
    (wood p73 beech)
    (surface-condition p73 verysmooth)
    (treatment p73 glazed)
    (goalsize p73 small)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
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
    (boardsize b4 s10)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 oak)
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
    (boardsize b9 s9)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 pine)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s10)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 pine)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s7)
    (wood b13 pine)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s5)
    (wood b14 pine)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s6)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s2)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s5)
    (wood b18 teak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s1)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 beech)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s4)
    (wood b22 beech)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s7)
    (wood b23 beech)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s7)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s4)
    (wood b25 beech)
    (surface-condition b25 rough)
    (available b25)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 blue)
      (wood p1 beech)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 red)
      (wood p2 cherry)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 mauve)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 white)
      (wood p4 mahogany)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (wood p6 oak)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 white)
      (surface-condition p7 verysmooth)
      (available p8)
      (wood p8 beech)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 green)
      (wood p9 mahogany)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 mauve)
      (surface-condition p10 verysmooth)
      (available p11)
      (wood p11 teak)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 green)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 blue)
      (wood p13 cherry)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 red)
      (wood p14 beech)
      (surface-condition p14 smooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 red)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 black)
      (wood p16 mahogany)
      (treatment p16 glazed)
      (available p17)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 green)
      (wood p18 beech)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (wood p19 oak)
      (treatment p19 glazed)
      (available p20)
      (colour p20 blue)
      (wood p20 pine)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 red)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 red)
      (wood p22 cherry)
      (available p23)
      (colour p23 black)
      (wood p23 beech)
      (available p24)
      (colour p24 red)
      (wood p24 beech)
      (surface-condition p24 smooth)
      (treatment p24 varnished)
      (available p25)
      (wood p25 cherry)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 green)
      (treatment p26 varnished)
      (available p27)
      (colour p27 white)
      (wood p27 walnut)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (wood p28 oak)
      (surface-condition p28 smooth)
      (available p29)
      (colour p29 green)
      (treatment p29 varnished)
      (available p30)
      (wood p30 cherry)
      (surface-condition p30 verysmooth)
      (available p31)
      (colour p31 natural)
      (wood p31 pine)
      (surface-condition p31 smooth)
      (treatment p31 varnished)
      (available p32)
      (colour p32 red)
      (treatment p32 varnished)
      (available p33)
      (wood p33 walnut)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (wood p34 pine)
      (surface-condition p34 smooth)
      (available p35)
      (wood p35 teak)
      (treatment p35 varnished)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (wood p37 cherry)
      (surface-condition p37 verysmooth)
      (available p38)
      (colour p38 mauve)
      (surface-condition p38 smooth)
      (available p39)
      (colour p39 white)
      (wood p39 pine)
      (surface-condition p39 smooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 mauve)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 black)
      (wood p41 beech)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 mauve)
      (wood p42 beech)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 green)
      (wood p43 beech)
      (available p44)
      (wood p44 mahogany)
      (surface-condition p44 verysmooth)
      (treatment p44 glazed)
      (available p45)
      (colour p45 white)
      (wood p45 walnut)
      (available p46)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
      (available p47)
      (wood p47 teak)
      (surface-condition p47 verysmooth)
      (available p48)
      (colour p48 red)
      (wood p48 pine)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 blue)
      (wood p49 cherry)
      (available p50)
      (colour p50 white)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 red)
      (treatment p52 varnished)
      (available p53)
      (wood p53 oak)
      (surface-condition p53 verysmooth)
      (available p54)
      (colour p54 blue)
      (wood p54 pine)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (wood p55 cherry)
      (surface-condition p55 smooth)
      (available p56)
      (colour p56 mauve)
      (wood p56 cherry)
      (surface-condition p56 smooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 black)
      (wood p57 oak)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 green)
      (surface-condition p58 verysmooth)
      (available p59)
      (colour p59 mauve)
      (wood p59 cherry)
      (surface-condition p59 smooth)
      (available p60)
      (colour p60 blue)
      (treatment p60 glazed)
      (available p61)
      (colour p61 green)
      (wood p61 pine)
      (available p62)
      (colour p62 green)
      (surface-condition p62 verysmooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 white)
      (wood p63 pine)
      (surface-condition p63 verysmooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 blue)
      (treatment p64 glazed)
      (available p65)
      (colour p65 white)
      (treatment p65 varnished)
      (available p66)
      (colour p66 mauve)
      (wood p66 mahogany)
      (surface-condition p66 smooth)
      (treatment p66 glazed)
      (available p67)
      (colour p67 white)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 natural)
      (treatment p68 glazed)
      (available p69)
      (colour p69 green)
      (wood p69 walnut)
      (treatment p69 varnished)
      (available p70)
      (wood p70 beech)
      (surface-condition p70 smooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 white)
      (treatment p71 varnished)
      (available p72)
      (colour p72 black)
      (treatment p72 varnished)
      (available p73)
      (colour p73 white)
      (surface-condition p73 smooth)
      (treatment p73 glazed)
    )
  )
  
)
