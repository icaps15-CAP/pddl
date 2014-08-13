; woodworking task with 68 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 56132

(define (problem wood-prob-sat-127)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red green mauve blue black white - acolour
    mahogany oak beech teak walnut pine cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 - part
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
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 black)
    (wood p6 pine)
    (surface-condition p6 smooth)
    (treatment p6 varnished)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (available p9)
    (colour p9 black)
    (wood p9 teak)
    (surface-condition p9 smooth)
    (treatment p9 colourfragments)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 blue)
    (wood p12 mahogany)
    (surface-condition p12 smooth)
    (treatment p12 colourfragments)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 mauve)
    (wood p17 beech)
    (surface-condition p17 rough)
    (treatment p17 glazed)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (available p20)
    (colour p20 green)
    (wood p20 walnut)
    (surface-condition p20 smooth)
    (treatment p20 colourfragments)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 natural)
    (wood p22 teak)
    (surface-condition p22 rough)
    (treatment p22 varnished)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (available p30)
    (colour p30 white)
    (wood p30 walnut)
    (surface-condition p30 smooth)
    (treatment p30 varnished)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 red)
    (wood p31 beech)
    (surface-condition p31 rough)
    (treatment p31 glazed)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (available p33)
    (colour p33 natural)
    (wood p33 cherry)
    (surface-condition p33 rough)
    (treatment p33 glazed)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (available p38)
    (colour p38 black)
    (wood p38 cherry)
    (surface-condition p38 verysmooth)
    (treatment p38 glazed)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (available p40)
    (colour p40 black)
    (wood p40 walnut)
    (surface-condition p40 verysmooth)
    (treatment p40 glazed)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (available p52)
    (colour p52 green)
    (wood p52 pine)
    (surface-condition p52 verysmooth)
    (treatment p52 varnished)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (available p60)
    (colour p60 blue)
    (wood p60 beech)
    (surface-condition p60 smooth)
    (treatment p60 varnished)
    (goalsize p60 small)
    
    
    
    
    (available p61)
    (colour p61 green)
    (wood p61 teak)
    (surface-condition p61 smooth)
    (treatment p61 colourfragments)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (available p66)
    (colour p66 red)
    (wood p66 beech)
    (surface-condition p66 smooth)
    (treatment p66 glazed)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s5)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s5)
    (wood b5 mahogany)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s3)
    (wood b6 mahogany)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s7)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
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
    (boardsize b11 s8)
    (wood b11 pine)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s10)
    (wood b12 walnut)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s4)
    (wood b13 walnut)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s11)
    (wood b14 teak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 teak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 teak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s3)
    (wood b17 teak)
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
    (surface-condition b20 smooth)
    (available b20)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (wood p0 mahogany)
      (available p1)
      (colour p1 blue)
      (wood p1 walnut)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 black)
      (treatment p2 glazed)
      (available p3)
      (wood p3 beech)
      (treatment p3 varnished)
      (available p4)
      (colour p4 red)
      (wood p4 beech)
      (treatment p4 varnished)
      (available p5)
      (surface-condition p5 verysmooth)
      (treatment p5 varnished)
      (available p6)
      (wood p6 pine)
      (surface-condition p6 verysmooth)
      (available p7)
      (colour p7 black)
      (wood p7 cherry)
      (treatment p7 varnished)
      (available p8)
      (colour p8 natural)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 green)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 natural)
      (wood p11 oak)
      (available p12)
      (colour p12 red)
      (wood p12 mahogany)
      (treatment p12 glazed)
      (available p13)
      (wood p13 cherry)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 black)
      (wood p14 beech)
      (treatment p14 glazed)
      (available p15)
      (wood p15 teak)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 mauve)
      (wood p16 walnut)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 red)
      (wood p17 beech)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 pine)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 green)
      (wood p19 walnut)
      (available p20)
      (wood p20 walnut)
      (treatment p20 glazed)
      (available p21)
      (wood p21 teak)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 white)
      (wood p22 teak)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 green)
      (wood p23 teak)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 natural)
      (wood p24 cherry)
      (surface-condition p24 smooth)
      (treatment p24 varnished)
      (available p25)
      (wood p25 mahogany)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 mauve)
      (wood p26 oak)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 green)
      (wood p27 cherry)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (wood p28 teak)
      (treatment p28 varnished)
      (available p29)
      (colour p29 mauve)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 red)
      (treatment p30 glazed)
      (available p31)
      (colour p31 blue)
      (surface-condition p31 smooth)
      (available p32)
      (wood p32 pine)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 blue)
      (wood p33 cherry)
      (surface-condition p33 smooth)
      (available p34)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 black)
      (treatment p35 glazed)
      (available p36)
      (colour p36 mauve)
      (treatment p36 varnished)
      (available p37)
      (colour p37 red)
      (treatment p37 varnished)
      (available p38)
      (wood p38 cherry)
      (treatment p38 varnished)
      (available p39)
      (wood p39 beech)
      (surface-condition p39 verysmooth)
      (treatment p39 glazed)
      (available p40)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (wood p41 mahogany)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 red)
      (wood p42 oak)
      (treatment p42 glazed)
      (available p43)
      (colour p43 black)
      (wood p43 oak)
      (available p44)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 blue)
      (treatment p45 glazed)
      (available p46)
      (colour p46 white)
      (surface-condition p46 smooth)
      (treatment p46 varnished)
      (available p47)
      (wood p47 cherry)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 blue)
      (treatment p48 varnished)
      (available p49)
      (colour p49 mauve)
      (wood p49 oak)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
      (available p50)
      (colour p50 white)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 natural)
      (wood p51 cherry)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 mauve)
      (wood p52 pine)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 white)
      (wood p53 teak)
      (surface-condition p53 smooth)
      (treatment p53 glazed)
      (available p54)
      (wood p54 walnut)
      (surface-condition p54 verysmooth)
      (available p55)
      (wood p55 beech)
      (surface-condition p55 verysmooth)
      (treatment p55 glazed)
      (available p56)
      (wood p56 mahogany)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 red)
      (wood p57 mahogany)
      (available p58)
      (colour p58 mauve)
      (wood p58 mahogany)
      (surface-condition p58 smooth)
      (treatment p58 varnished)
      (available p59)
      (wood p59 oak)
      (surface-condition p59 smooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 mauve)
      (wood p60 beech)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 natural)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 red)
      (surface-condition p62 smooth)
      (available p63)
      (colour p63 blue)
      (wood p63 cherry)
      (treatment p63 glazed)
      (available p64)
      (wood p64 pine)
      (treatment p64 glazed)
      (available p65)
      (wood p65 pine)
      (treatment p65 glazed)
      (available p66)
      (colour p66 green)
      (wood p66 beech)
      (available p67)
      (wood p67 mahogany)
      (treatment p67 glazed)
    )
  )
  
)
