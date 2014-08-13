; woodworking task with 44 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 777907

(define (problem wood-prob-sat-119)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve red black white green blue - acolour
    walnut pine mahogany beech teak cherry oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - board
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
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (available p1)
    (colour p1 green)
    (wood p1 mahogany)
    (surface-condition p1 rough)
    (treatment p1 varnished)
    (goalsize p1 large)
    
    
    
    
    (available p2)
    (colour p2 white)
    (wood p2 walnut)
    (surface-condition p2 verysmooth)
    (treatment p2 glazed)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 black)
    (wood p3 oak)
    (surface-condition p3 rough)
    (treatment p3 glazed)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (available p14)
    (colour p14 black)
    (wood p14 oak)
    (surface-condition p14 verysmooth)
    (treatment p14 glazed)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (available p17)
    (colour p17 natural)
    (wood p17 oak)
    (surface-condition p17 smooth)
    (treatment p17 glazed)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (available p19)
    (colour p19 green)
    (wood p19 cherry)
    (surface-condition p19 verysmooth)
    (treatment p19 colourfragments)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (available p21)
    (colour p21 green)
    (wood p21 mahogany)
    (surface-condition p21 smooth)
    (treatment p21 colourfragments)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (available p30)
    (colour p30 red)
    (wood p30 walnut)
    (surface-condition p30 smooth)
    (treatment p30 varnished)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 red)
    (wood p31 cherry)
    (surface-condition p31 smooth)
    (treatment p31 varnished)
    (goalsize p31 small)
    
    
    
    
    (available p32)
    (colour p32 natural)
    (wood p32 cherry)
    (surface-condition p32 smooth)
    (treatment p32 varnished)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (available p39)
    (colour p39 black)
    (wood p39 pine)
    (surface-condition p39 verysmooth)
    (treatment p39 varnished)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (available p43)
    (colour p43 green)
    (wood p43 walnut)
    (surface-condition p43 verysmooth)
    (treatment p43 colourfragments)
    (goalsize p43 large)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s9)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s4)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s2)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 walnut)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s9)
    (wood b9 walnut)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s6)
    (wood b10 teak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 beech)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s3)
    (wood b12 beech)
    (surface-condition b12 rough)
    (available b12)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (surface-condition p0 verysmooth)
      (available p1)
      (wood p1 mahogany)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 blue)
      (surface-condition p2 smooth)
      (available p3)
      (wood p3 oak)
      (treatment p3 varnished)
      (available p4)
      (colour p4 black)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 red)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 white)
      (wood p6 cherry)
      (treatment p6 varnished)
      (available p7)
      (colour p7 blue)
      (wood p7 walnut)
      (treatment p7 varnished)
      (available p8)
      (colour p8 white)
      (treatment p8 glazed)
      (available p9)
      (colour p9 mauve)
      (wood p9 walnut)
      (available p10)
      (wood p10 cherry)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 black)
      (wood p11 beech)
      (treatment p11 glazed)
      (available p12)
      (wood p12 cherry)
      (treatment p12 glazed)
      (available p13)
      (colour p13 black)
      (wood p13 oak)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 green)
      (wood p14 oak)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 white)
      (wood p15 beech)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 red)
      (wood p16 mahogany)
      (available p17)
      (wood p17 oak)
      (treatment p17 varnished)
      (available p18)
      (colour p18 red)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (wood p19 cherry)
      (surface-condition p19 smooth)
      (treatment p19 varnished)
      (available p20)
      (wood p20 oak)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 mauve)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 white)
      (wood p24 mahogany)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 green)
      (surface-condition p25 verysmooth)
      (available p26)
      (colour p26 black)
      (wood p26 teak)
      (available p27)
      (wood p27 oak)
      (surface-condition p27 smooth)
      (available p28)
      (wood p28 oak)
      (treatment p28 varnished)
      (available p29)
      (colour p29 mauve)
      (wood p29 walnut)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 natural)
      (wood p30 walnut)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 green)
      (wood p31 cherry)
      (available p32)
      (colour p32 black)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 mauve)
      (surface-condition p33 smooth)
      (available p34)
      (wood p34 pine)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (wood p35 pine)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 green)
      (wood p36 teak)
      (available p37)
      (colour p37 red)
      (wood p37 cherry)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 black)
      (wood p38 cherry)
      (available p39)
      (colour p39 green)
      (surface-condition p39 verysmooth)
      (available p40)
      (wood p40 pine)
      (treatment p40 varnished)
      (available p41)
      (colour p41 white)
      (wood p41 walnut)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 white)
      (wood p42 walnut)
      (surface-condition p42 smooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 mauve)
      (surface-condition p43 verysmooth)
    )
  )
  
)
