; woodworking task with 50 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 533652

(define (problem wood-prob-sat-27)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue green red mauve white black - acolour
    walnut pine beech cherry mahogany oak teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 - part
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
    (has-colour glazer0 black)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 red)
    (wood p0 beech)
    (surface-condition p0 verysmooth)
    (treatment p0 varnished)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 natural)
    (wood p1 teak)
    (surface-condition p1 verysmooth)
    (treatment p1 colourfragments)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 blue)
    (wood p3 oak)
    (surface-condition p3 verysmooth)
    (treatment p3 glazed)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 mauve)
    (wood p12 mahogany)
    (surface-condition p12 smooth)
    (treatment p12 colourfragments)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (available p17)
    (colour p17 natural)
    (wood p17 walnut)
    (surface-condition p17 rough)
    (treatment p17 colourfragments)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 black)
    (wood p22 walnut)
    (surface-condition p22 smooth)
    (treatment p22 colourfragments)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (available p25)
    (colour p25 mauve)
    (wood p25 cherry)
    (surface-condition p25 verysmooth)
    (treatment p25 glazed)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (available p47)
    (colour p47 white)
    (wood p47 oak)
    (surface-condition p47 smooth)
    (treatment p47 colourfragments)
    (goalsize p47 medium)
    
    
    
    
    (available p48)
    (colour p48 white)
    (wood p48 mahogany)
    (surface-condition p48 verysmooth)
    (treatment p48 glazed)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (boardsize b0 s5)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s3)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s3)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s5)
    (wood b9 walnut)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s6)
    (wood b10 teak)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s10)
    (wood b11 teak)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s1)
    (wood b12 teak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 beech)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 beech)
    (surface-condition b14 rough)
    (available b14)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (wood p0 beech)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 black)
      (wood p2 teak)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 red)
      (wood p3 oak)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (wood p5 mahogany)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 white)
      (wood p6 teak)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 green)
      (wood p7 walnut)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 black)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 white)
      (wood p9 cherry)
      (surface-condition p9 verysmooth)
      (available p10)
      (colour p10 white)
      (wood p10 cherry)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 white)
      (wood p11 walnut)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 natural)
      (wood p12 mahogany)
      (treatment p12 glazed)
      (available p13)
      (colour p13 red)
      (treatment p13 varnished)
      (available p14)
      (colour p14 green)
      (wood p14 cherry)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 beech)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 red)
      (wood p16 oak)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 pine)
      (treatment p18 glazed)
      (available p19)
      (colour p19 white)
      (wood p19 beech)
      (treatment p19 glazed)
      (available p20)
      (colour p20 black)
      (wood p20 teak)
      (treatment p20 glazed)
      (available p21)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 natural)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 black)
      (wood p23 mahogany)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (wood p24 teak)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 red)
      (wood p25 cherry)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 red)
      (wood p26 beech)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 green)
      (surface-condition p27 verysmooth)
      (available p28)
      (wood p28 cherry)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 red)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 red)
      (wood p30 pine)
      (surface-condition p30 verysmooth)
      (available p31)
      (colour p31 mauve)
      (surface-condition p31 smooth)
      (available p32)
      (colour p32 natural)
      (wood p32 cherry)
      (available p33)
      (colour p33 red)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 white)
      (treatment p34 varnished)
      (available p35)
      (colour p35 mauve)
      (wood p35 teak)
      (available p36)
      (colour p36 blue)
      (wood p36 oak)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (surface-condition p37 smooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 black)
      (wood p38 beech)
      (surface-condition p38 smooth)
      (available p39)
      (wood p39 walnut)
      (treatment p39 glazed)
      (available p40)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 green)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 red)
      (wood p42 cherry)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 green)
      (treatment p43 glazed)
      (available p44)
      (colour p44 black)
      (wood p44 pine)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 natural)
      (wood p45 teak)
      (available p46)
      (wood p46 teak)
      (treatment p46 glazed)
      (available p47)
      (colour p47 green)
      (wood p47 oak)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 black)
      (wood p48 mahogany)
      (available p49)
      (colour p49 red)
      (wood p49 cherry)
    )
  )
  
)
