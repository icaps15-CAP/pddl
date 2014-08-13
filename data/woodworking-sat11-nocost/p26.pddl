; woodworking task with 47 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 209381

(define (problem wood-prob-sat-26)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green white red black mauve blue - acolour
    teak beech walnut mahogany cherry pine oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 red)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer1 black)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 white)
    (wood p0 mahogany)
    (surface-condition p0 verysmooth)
    (treatment p0 varnished)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (available p8)
    (colour p8 green)
    (wood p8 teak)
    (surface-condition p8 rough)
    (treatment p8 colourfragments)
    (goalsize p8 large)
    
    
    
    
    (available p9)
    (colour p9 red)
    (wood p9 pine)
    (surface-condition p9 rough)
    (treatment p9 colourfragments)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 mauve)
    (wood p11 cherry)
    (surface-condition p11 rough)
    (treatment p11 glazed)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 green)
    (wood p12 mahogany)
    (surface-condition p12 rough)
    (treatment p12 colourfragments)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 white)
    (wood p16 oak)
    (surface-condition p16 smooth)
    (treatment p16 varnished)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 green)
    (wood p29 cherry)
    (surface-condition p29 rough)
    (treatment p29 glazed)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (available p37)
    (colour p37 black)
    (wood p37 cherry)
    (surface-condition p37 rough)
    (treatment p37 colourfragments)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s5)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s1)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s5)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s12)
    (wood b7 walnut)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s5)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s10)
    (wood b9 teak)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s5)
    (wood b10 teak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 teak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s10)
    (wood b12 beech)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 beech)
    (surface-condition b13 rough)
    (available b13)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (treatment p0 glazed)
      (available p1)
      (colour p1 blue)
      (wood p1 walnut)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 mauve)
      (wood p2 cherry)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 white)
      (wood p3 teak)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (wood p4 mahogany)
      (treatment p4 varnished)
      (available p5)
      (colour p5 black)
      (wood p5 walnut)
      (available p6)
      (colour p6 white)
      (wood p6 oak)
      (surface-condition p6 verysmooth)
      (available p7)
      (colour p7 white)
      (wood p7 teak)
      (treatment p7 varnished)
      (available p8)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (wood p9 pine)
      (surface-condition p9 smooth)
      (available p10)
      (wood p10 walnut)
      (treatment p10 glazed)
      (available p11)
      (colour p11 white)
      (wood p11 cherry)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 natural)
      (surface-condition p12 smooth)
      (available p13)
      (colour p13 natural)
      (wood p13 beech)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 red)
      (wood p14 beech)
      (treatment p14 glazed)
      (available p15)
      (colour p15 green)
      (treatment p15 glazed)
      (available p16)
      (colour p16 mauve)
      (wood p16 oak)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 mauve)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 blue)
      (wood p18 beech)
      (available p19)
      (colour p19 red)
      (wood p19 walnut)
      (treatment p19 varnished)
      (available p20)
      (wood p20 pine)
      (surface-condition p20 smooth)
      (available p21)
      (wood p21 teak)
      (treatment p21 glazed)
      (available p22)
      (colour p22 white)
      (wood p22 mahogany)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 red)
      (wood p23 walnut)
      (treatment p23 varnished)
      (available p24)
      (colour p24 white)
      (wood p24 beech)
      (available p25)
      (colour p25 white)
      (wood p25 teak)
      (available p26)
      (colour p26 natural)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 natural)
      (wood p27 oak)
      (surface-condition p27 verysmooth)
      (treatment p27 varnished)
      (available p28)
      (wood p28 oak)
      (treatment p28 glazed)
      (available p29)
      (colour p29 white)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 white)
      (treatment p30 varnished)
      (available p31)
      (colour p31 red)
      (treatment p31 varnished)
      (available p32)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 natural)
      (wood p33 cherry)
      (available p34)
      (colour p34 red)
      (wood p34 teak)
      (treatment p34 glazed)
      (available p35)
      (colour p35 mauve)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 black)
      (treatment p36 glazed)
      (available p37)
      (colour p37 white)
      (treatment p37 glazed)
      (available p38)
      (colour p38 blue)
      (wood p38 teak)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 black)
      (surface-condition p39 verysmooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 blue)
      (wood p40 beech)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 red)
      (surface-condition p41 smooth)
      (available p42)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (wood p43 mahogany)
      (surface-condition p43 verysmooth)
      (available p44)
      (colour p44 white)
      (wood p44 beech)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (wood p45 mahogany)
      (surface-condition p45 smooth)
      (available p46)
      (colour p46 blue)
      (surface-condition p46 smooth)
    )
  )
  
)
