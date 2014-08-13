; woodworking task with 47 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 419479

(define (problem wood-prob-sat-60)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red black green blue white mauve - acolour
    walnut teak beech pine oak mahogany cherry - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 natural)
    (wood p1 pine)
    (surface-condition p1 smooth)
    (treatment p1 varnished)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (available p7)
    (colour p7 green)
    (wood p7 mahogany)
    (surface-condition p7 smooth)
    (treatment p7 colourfragments)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 blue)
    (wood p12 beech)
    (surface-condition p12 verysmooth)
    (treatment p12 colourfragments)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (available p18)
    (colour p18 green)
    (wood p18 teak)
    (surface-condition p18 smooth)
    (treatment p18 glazed)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (available p22)
    (colour p22 blue)
    (wood p22 walnut)
    (surface-condition p22 rough)
    (treatment p22 varnished)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 white)
    (wood p25 walnut)
    (surface-condition p25 rough)
    (treatment p25 varnished)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (available p44)
    (colour p44 natural)
    (wood p44 beech)
    (surface-condition p44 rough)
    (treatment p44 varnished)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s5)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s1)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 oak)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s8)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s5)
    (wood b6 pine)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s11)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 walnut)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s4)
    (wood b10 walnut)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 teak)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s7)
    (wood b12 teak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s1)
    (wood b13 teak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 beech)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s12)
    (wood b15 beech)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s3)
    (wood b16 beech)
    (surface-condition b16 rough)
    (available b16)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 white)
      (wood p1 pine)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 white)
      (treatment p2 varnished)
      (available p3)
      (colour p3 blue)
      (wood p3 walnut)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 blue)
      (wood p5 walnut)
      (treatment p5 glazed)
      (available p6)
      (colour p6 mauve)
      (treatment p6 glazed)
      (available p7)
      (colour p7 blue)
      (wood p7 mahogany)
      (surface-condition p7 verysmooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 red)
      (wood p8 walnut)
      (treatment p8 varnished)
      (available p9)
      (colour p9 white)
      (wood p9 pine)
      (surface-condition p9 smooth)
      (available p10)
      (wood p10 mahogany)
      (treatment p10 glazed)
      (available p11)
      (wood p11 beech)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 mauve)
      (wood p12 beech)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 natural)
      (wood p13 oak)
      (treatment p13 glazed)
      (available p14)
      (colour p14 mauve)
      (surface-condition p14 verysmooth)
      (available p15)
      (wood p15 mahogany)
      (treatment p15 varnished)
      (available p16)
      (colour p16 green)
      (wood p16 teak)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (wood p17 cherry)
      (treatment p17 glazed)
      (available p18)
      (colour p18 blue)
      (wood p18 teak)
      (treatment p18 glazed)
      (available p19)
      (wood p19 oak)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 red)
      (wood p20 teak)
      (available p21)
      (colour p21 red)
      (wood p21 beech)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 red)
      (wood p22 walnut)
      (available p23)
      (wood p23 walnut)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 natural)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (wood p26 beech)
      (surface-condition p26 smooth)
      (available p27)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 natural)
      (treatment p28 glazed)
      (available p29)
      (colour p29 natural)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 black)
      (wood p30 teak)
      (available p31)
      (colour p31 blue)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 green)
      (wood p32 walnut)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (wood p33 oak)
      (surface-condition p33 smooth)
      (available p34)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 red)
      (wood p35 teak)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 blue)
      (wood p37 pine)
      (available p38)
      (colour p38 red)
      (treatment p38 glazed)
      (available p39)
      (colour p39 white)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 white)
      (wood p40 pine)
      (surface-condition p40 verysmooth)
      (treatment p40 glazed)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 red)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 black)
      (treatment p43 varnished)
      (available p44)
      (wood p44 beech)
      (surface-condition p44 smooth)
      (available p45)
      (colour p45 white)
      (wood p45 oak)
      (available p46)
      (wood p46 oak)
      (treatment p46 glazed)
    )
  )
  
)
