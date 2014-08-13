; woodworking task with 53 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 468341

(define (problem wood-prob-sat-28)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue white black green red mauve - acolour
    oak cherry pine walnut teak mahogany beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 - board
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
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 black)
    (has-colour glazer1 mauve)
    (has-colour glazer2 blue)
    (has-colour glazer2 black)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 white)
    (wood p5 mahogany)
    (surface-condition p5 rough)
    (treatment p5 varnished)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 mauve)
    (wood p11 teak)
    (surface-condition p11 rough)
    (treatment p11 glazed)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 black)
    (wood p12 teak)
    (surface-condition p12 verysmooth)
    (treatment p12 varnished)
    (goalsize p12 large)
    
    
    
    
    (available p13)
    (colour p13 black)
    (wood p13 mahogany)
    (surface-condition p13 verysmooth)
    (treatment p13 varnished)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (available p17)
    (colour p17 white)
    (wood p17 beech)
    (surface-condition p17 smooth)
    (treatment p17 glazed)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (available p23)
    (colour p23 mauve)
    (wood p23 beech)
    (surface-condition p23 rough)
    (treatment p23 varnished)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 black)
    (wood p29 pine)
    (surface-condition p29 smooth)
    (treatment p29 glazed)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (available p32)
    (colour p32 green)
    (wood p32 mahogany)
    (surface-condition p32 smooth)
    (treatment p32 colourfragments)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (available p36)
    (colour p36 green)
    (wood p36 beech)
    (surface-condition p36 smooth)
    (treatment p36 colourfragments)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 green)
    (wood p38 walnut)
    (surface-condition p38 smooth)
    (treatment p38 colourfragments)
    (goalsize p38 medium)
    
    
    
    
    (available p39)
    (colour p39 red)
    (wood p39 pine)
    (surface-condition p39 smooth)
    (treatment p39 colourfragments)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (available p50)
    (colour p50 natural)
    (wood p50 oak)
    (surface-condition p50 verysmooth)
    (treatment p50 varnished)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (available p52)
    (colour p52 blue)
    (wood p52 mahogany)
    (surface-condition p52 rough)
    (treatment p52 glazed)
    (goalsize p52 large)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s2)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 oak)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s3)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s6)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s10)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 pine)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s2)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 walnut)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s2)
    (wood b11 walnut)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 teak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 beech)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s4)
    (wood b14 beech)
    (surface-condition b14 rough)
    (available b14)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 pine)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 mauve)
      (wood p1 mahogany)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 red)
      (wood p2 beech)
      (surface-condition p2 verysmooth)
      (available p3)
      (colour p3 blue)
      (surface-condition p3 verysmooth)
      (available p4)
      (colour p4 natural)
      (wood p4 pine)
      (available p5)
      (colour p5 blue)
      (wood p5 mahogany)
      (available p6)
      (wood p6 walnut)
      (treatment p6 varnished)
      (available p7)
      (colour p7 mauve)
      (treatment p7 varnished)
      (available p8)
      (colour p8 natural)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 natural)
      (treatment p9 glazed)
      (available p10)
      (colour p10 red)
      (wood p10 mahogany)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 red)
      (surface-condition p13 verysmooth)
      (available p14)
      (surface-condition p14 smooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 green)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 black)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (wood p17 beech)
      (surface-condition p17 verysmooth)
      (available p18)
      (wood p18 cherry)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 blue)
      (treatment p19 varnished)
      (available p20)
      (colour p20 white)
      (wood p20 mahogany)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (wood p21 oak)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 black)
      (surface-condition p22 verysmooth)
      (available p23)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (wood p24 beech)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 blue)
      (treatment p25 varnished)
      (available p26)
      (wood p26 beech)
      (treatment p26 glazed)
      (available p27)
      (colour p27 red)
      (wood p27 cherry)
      (treatment p27 glazed)
      (available p28)
      (colour p28 mauve)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 green)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 blue)
      (wood p30 pine)
      (available p31)
      (wood p31 pine)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 natural)
      (treatment p32 varnished)
      (available p33)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 red)
      (surface-condition p34 verysmooth)
      (available p35)
      (colour p35 natural)
      (wood p35 cherry)
      (surface-condition p35 smooth)
      (available p36)
      (colour p36 red)
      (wood p36 beech)
      (treatment p36 varnished)
      (available p37)
      (colour p37 white)
      (treatment p37 varnished)
      (available p38)
      (colour p38 blue)
      (wood p38 walnut)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 natural)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 blue)
      (wood p40 mahogany)
      (treatment p40 glazed)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 mauve)
      (wood p42 walnut)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 mauve)
      (wood p43 oak)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (surface-condition p45 verysmooth)
      (treatment p45 varnished)
      (available p46)
      (wood p46 oak)
      (treatment p46 varnished)
      (available p47)
      (wood p47 oak)
      (treatment p47 glazed)
      (available p48)
      (colour p48 natural)
      (wood p48 oak)
      (surface-condition p48 smooth)
      (available p49)
      (wood p49 pine)
      (surface-condition p49 verysmooth)
      (available p50)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 green)
      (wood p52 mahogany)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
    )
  )
  
)
