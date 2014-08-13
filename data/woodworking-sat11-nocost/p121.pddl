; woodworking task with 50 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 733044

(define (problem wood-prob-sat-121)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green blue black white red mauve - acolour
    teak pine mahogany walnut oak beech cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer0 black)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 black)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 black)
    (wood p22 cherry)
    (surface-condition p22 smooth)
    (treatment p22 colourfragments)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (available p24)
    (colour p24 blue)
    (wood p24 pine)
    (surface-condition p24 rough)
    (treatment p24 varnished)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 blue)
    (wood p26 beech)
    (surface-condition p26 smooth)
    (treatment p26 colourfragments)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 black)
    (wood p33 walnut)
    (surface-condition p33 rough)
    (treatment p33 glazed)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (available p35)
    (colour p35 blue)
    (wood p35 beech)
    (surface-condition p35 rough)
    (treatment p35 glazed)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (available p42)
    (colour p42 green)
    (wood p42 cherry)
    (surface-condition p42 smooth)
    (treatment p42 colourfragments)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (available p45)
    (colour p45 white)
    (wood p45 beech)
    (surface-condition p45 rough)
    (treatment p45 varnished)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (available p48)
    (colour p48 black)
    (wood p48 teak)
    (surface-condition p48 rough)
    (treatment p48 glazed)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (boardsize b0 s8)
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
    (boardsize b6 s10)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 pine)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s7)
    (wood b10 pine)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 walnut)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s8)
    (wood b12 walnut)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s10)
    (wood b13 teak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s3)
    (wood b14 teak)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s6)
    (wood b15 beech)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s1)
    (wood b16 beech)
    (surface-condition b16 rough)
    (available b16)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 blue)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 black)
      (surface-condition p2 verysmooth)
      (available p3)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 blue)
      (treatment p4 varnished)
      (available p5)
      (wood p5 walnut)
      (treatment p5 varnished)
      (available p6)
      (wood p6 beech)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 white)
      (treatment p7 glazed)
      (available p8)
      (colour p8 blue)
      (wood p8 pine)
      (treatment p8 glazed)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (wood p10 pine)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 red)
      (surface-condition p11 verysmooth)
      (available p12)
      (wood p12 cherry)
      (surface-condition p12 verysmooth)
      (available p13)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 black)
      (wood p14 pine)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 oak)
      (treatment p15 varnished)
      (available p16)
      (wood p16 beech)
      (treatment p16 glazed)
      (available p17)
      (colour p17 green)
      (surface-condition p17 verysmooth)
      (available p18)
      (wood p18 oak)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 mauve)
      (wood p19 walnut)
      (available p20)
      (colour p20 white)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 black)
      (treatment p21 varnished)
      (available p22)
      (colour p22 red)
      (wood p22 cherry)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 green)
      (wood p23 walnut)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 green)
      (wood p24 pine)
      (treatment p24 varnished)
      (available p25)
      (colour p25 red)
      (wood p25 mahogany)
      (treatment p25 varnished)
      (available p26)
      (wood p26 beech)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 white)
      (surface-condition p27 smooth)
      (available p28)
      (wood p28 teak)
      (treatment p28 glazed)
      (available p29)
      (colour p29 white)
      (wood p29 walnut)
      (available p30)
      (colour p30 blue)
      (wood p30 cherry)
      (treatment p30 varnished)
      (available p31)
      (colour p31 blue)
      (treatment p31 varnished)
      (available p32)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 red)
      (wood p33 walnut)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 white)
      (surface-condition p34 smooth)
      (available p35)
      (colour p35 black)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 natural)
      (wood p36 cherry)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 green)
      (wood p37 cherry)
      (surface-condition p37 verysmooth)
      (available p38)
      (colour p38 white)
      (surface-condition p38 smooth)
      (available p39)
      (wood p39 cherry)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 green)
      (surface-condition p40 verysmooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 white)
      (wood p41 mahogany)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 white)
      (wood p42 cherry)
      (treatment p42 glazed)
      (available p43)
      (colour p43 mauve)
      (wood p43 cherry)
      (surface-condition p43 smooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 red)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 mauve)
      (surface-condition p45 verysmooth)
      (available p46)
      (colour p46 black)
      (wood p46 oak)
      (available p47)
      (colour p47 red)
      (wood p47 walnut)
      (treatment p47 glazed)
      (available p48)
      (colour p48 red)
      (wood p48 teak)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 black)
      (surface-condition p49 smooth)
      (treatment p49 varnished)
    )
  )
  
)
