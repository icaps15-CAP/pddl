; woodworking task with 53 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 374829

(define (problem wood-prob-sat-122)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white black red blue mauve green - acolour
    mahogany pine cherry oak beech walnut teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (available p2)
    (colour p2 green)
    (wood p2 mahogany)
    (surface-condition p2 smooth)
    (treatment p2 glazed)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (available p6)
    (colour p6 red)
    (wood p6 pine)
    (surface-condition p6 rough)
    (treatment p6 varnished)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 green)
    (wood p12 beech)
    (surface-condition p12 smooth)
    (treatment p12 varnished)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (available p16)
    (colour p16 natural)
    (wood p16 pine)
    (surface-condition p16 verysmooth)
    (treatment p16 glazed)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (available p18)
    (colour p18 black)
    (wood p18 pine)
    (surface-condition p18 verysmooth)
    (treatment p18 glazed)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 mauve)
    (wood p22 teak)
    (surface-condition p22 verysmooth)
    (treatment p22 glazed)
    (goalsize p22 medium)
    
    
    
    
    (available p23)
    (colour p23 blue)
    (wood p23 mahogany)
    (surface-condition p23 verysmooth)
    (treatment p23 colourfragments)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 natural)
    (wood p31 beech)
    (surface-condition p31 rough)
    (treatment p31 colourfragments)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (available p49)
    (colour p49 black)
    (wood p49 mahogany)
    (surface-condition p49 verysmooth)
    (treatment p49 glazed)
    (goalsize p49 medium)
    
    
    
    
    (available p50)
    (colour p50 green)
    (wood p50 oak)
    (surface-condition p50 rough)
    (treatment p50 glazed)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (available p52)
    (colour p52 red)
    (wood p52 mahogany)
    (surface-condition p52 smooth)
    (treatment p52 glazed)
    (goalsize p52 large)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s5)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 mahogany)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s7)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s2)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s6)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s6)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 pine)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s12)
    (wood b10 walnut)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 walnut)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 walnut)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 teak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 teak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s2)
    (wood b15 teak)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s8)
    (wood b16 beech)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s4)
    (wood b17 beech)
    (surface-condition b17 smooth)
    (available b17)
  )
  (:goal
    (and
      (available p0)
      (colour p0 red)
      (treatment p0 glazed)
      (available p1)
      (colour p1 mauve)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 white)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 red)
      (wood p4 walnut)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 red)
      (treatment p5 varnished)
      (available p6)
      (wood p6 pine)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 white)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 black)
      (treatment p8 glazed)
      (available p9)
      (colour p9 black)
      (surface-condition p9 verysmooth)
      (available p10)
      (wood p10 cherry)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 red)
      (wood p11 pine)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 blue)
      (surface-condition p12 smooth)
      (available p13)
      (colour p13 mauve)
      (wood p13 oak)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (wood p14 walnut)
      (treatment p14 varnished)
      (available p15)
      (colour p15 natural)
      (wood p15 cherry)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 green)
      (wood p16 pine)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 natural)
      (treatment p17 glazed)
      (available p18)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 mauve)
      (wood p19 cherry)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 mauve)
      (wood p20 teak)
      (available p21)
      (wood p21 cherry)
      (treatment p21 glazed)
      (available p22)
      (wood p22 teak)
      (surface-condition p22 smooth)
      (available p23)
      (wood p23 mahogany)
      (treatment p23 varnished)
      (available p24)
      (colour p24 natural)
      (treatment p24 varnished)
      (available p25)
      (colour p25 white)
      (wood p25 beech)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (wood p26 walnut)
      (treatment p26 varnished)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 mauve)
      (surface-condition p28 smooth)
      (available p29)
      (colour p29 natural)
      (treatment p29 glazed)
      (available p30)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 blue)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 green)
      (wood p32 oak)
      (surface-condition p32 verysmooth)
      (available p33)
      (colour p33 blue)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 natural)
      (surface-condition p34 verysmooth)
      (available p35)
      (colour p35 blue)
      (wood p35 teak)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 red)
      (wood p36 beech)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (wood p37 walnut)
      (treatment p37 glazed)
      (available p38)
      (colour p38 mauve)
      (treatment p38 glazed)
      (available p39)
      (wood p39 pine)
      (treatment p39 glazed)
      (available p40)
      (colour p40 green)
      (wood p40 walnut)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (wood p41 oak)
      (surface-condition p41 smooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 blue)
      (wood p42 mahogany)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 white)
      (treatment p43 varnished)
      (available p44)
      (colour p44 red)
      (wood p44 teak)
      (available p45)
      (colour p45 white)
      (surface-condition p45 smooth)
      (available p46)
      (colour p46 black)
      (wood p46 teak)
      (surface-condition p46 smooth)
      (available p47)
      (colour p47 natural)
      (wood p47 pine)
      (surface-condition p47 smooth)
      (available p48)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 white)
      (treatment p49 varnished)
      (available p50)
      (colour p50 black)
      (wood p50 oak)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (wood p51 pine)
      (surface-condition p51 smooth)
      (available p52)
      (colour p52 green)
      (wood p52 mahogany)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
    )
  )
  
)
