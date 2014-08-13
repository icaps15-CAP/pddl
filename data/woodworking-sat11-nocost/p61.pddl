; woodworking task with 50 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 525407

(define (problem wood-prob-sat-61)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue green mauve white black red - acolour
    teak beech mahogany pine walnut cherry oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 - aboardsize
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
    (has-colour glazer0 blue)
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 white)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 green)
    (wood p1 mahogany)
    (surface-condition p1 smooth)
    (treatment p1 glazed)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 mauve)
    (wood p3 pine)
    (surface-condition p3 verysmooth)
    (treatment p3 colourfragments)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 red)
    (wood p7 beech)
    (surface-condition p7 verysmooth)
    (treatment p7 varnished)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 black)
    (wood p10 mahogany)
    (surface-condition p10 verysmooth)
    (treatment p10 varnished)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 red)
    (wood p11 mahogany)
    (surface-condition p11 smooth)
    (treatment p11 colourfragments)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 black)
    (wood p13 pine)
    (surface-condition p13 smooth)
    (treatment p13 colourfragments)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (available p18)
    (colour p18 white)
    (wood p18 oak)
    (surface-condition p18 verysmooth)
    (treatment p18 varnished)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (available p29)
    (colour p29 blue)
    (wood p29 oak)
    (surface-condition p29 smooth)
    (treatment p29 varnished)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 natural)
    (wood p31 cherry)
    (surface-condition p31 verysmooth)
    (treatment p31 colourfragments)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (available p35)
    (colour p35 natural)
    (wood p35 mahogany)
    (surface-condition p35 smooth)
    (treatment p35 varnished)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (available p43)
    (colour p43 green)
    (wood p43 oak)
    (surface-condition p43 smooth)
    (treatment p43 glazed)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s7)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s5)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s1)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s3)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s3)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 walnut)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s2)
    (wood b11 walnut)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s6)
    (wood b12 teak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 teak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s2)
    (wood b14 teak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 beech)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 beech)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s2)
    (wood b17 beech)
    (surface-condition b17 smooth)
    (available b17)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (wood p0 teak)
      (available p1)
      (colour p1 white)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 red)
      (wood p2 mahogany)
      (available p3)
      (colour p3 black)
      (wood p3 pine)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (wood p5 cherry)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 green)
      (wood p6 mahogany)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 natural)
      (wood p7 beech)
      (available p8)
      (colour p8 blue)
      (surface-condition p8 verysmooth)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 natural)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (wood p11 mahogany)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 green)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 red)
      (wood p13 pine)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 black)
      (treatment p14 glazed)
      (available p15)
      (wood p15 mahogany)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 white)
      (surface-condition p16 smooth)
      (available p17)
      (wood p17 beech)
      (surface-condition p17 verysmooth)
      (available p18)
      (colour p18 green)
      (treatment p18 glazed)
      (available p19)
      (colour p19 white)
      (wood p19 teak)
      (surface-condition p19 smooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 white)
      (treatment p20 glazed)
      (available p21)
      (colour p21 white)
      (wood p21 cherry)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 green)
      (treatment p23 varnished)
      (available p24)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (wood p26 cherry)
      (surface-condition p26 verysmooth)
      (available p27)
      (surface-condition p27 verysmooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 natural)
      (wood p28 beech)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 red)
      (wood p29 oak)
      (surface-condition p29 verysmooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 green)
      (treatment p30 glazed)
      (available p31)
      (colour p31 white)
      (wood p31 cherry)
      (surface-condition p31 smooth)
      (available p32)
      (wood p32 mahogany)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 red)
      (treatment p33 varnished)
      (available p34)
      (colour p34 mauve)
      (treatment p34 glazed)
      (available p35)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (wood p36 walnut)
      (surface-condition p36 smooth)
      (available p37)
      (colour p37 green)
      (wood p37 mahogany)
      (surface-condition p37 smooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 red)
      (wood p38 mahogany)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 black)
      (wood p40 teak)
      (surface-condition p40 verysmooth)
      (available p41)
      (wood p41 teak)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 white)
      (wood p42 beech)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 red)
      (wood p43 oak)
      (treatment p43 glazed)
      (available p44)
      (wood p44 walnut)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 red)
      (wood p45 walnut)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 white)
      (surface-condition p46 verysmooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 white)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 white)
      (treatment p48 varnished)
      (available p49)
      (colour p49 green)
      (surface-condition p49 verysmooth)
    )
  )
  
)
