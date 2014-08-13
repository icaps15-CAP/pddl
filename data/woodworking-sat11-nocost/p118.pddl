; woodworking task with 41 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 761412

(define (problem wood-prob-sat-118)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white mauve green red black blue - acolour
    walnut mahogany cherry pine teak beech oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 - part
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 mauve)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (available p0)
    (colour p0 white)
    (wood p0 oak)
    (surface-condition p0 smooth)
    (treatment p0 colourfragments)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (available p13)
    (colour p13 natural)
    (wood p13 oak)
    (surface-condition p13 verysmooth)
    (treatment p13 colourfragments)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (available p16)
    (colour p16 green)
    (wood p16 pine)
    (surface-condition p16 rough)
    (treatment p16 varnished)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 white)
    (wood p21 cherry)
    (surface-condition p21 verysmooth)
    (treatment p21 colourfragments)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (available p24)
    (colour p24 mauve)
    (wood p24 teak)
    (surface-condition p24 verysmooth)
    (treatment p24 glazed)
    (goalsize p24 large)
    
    
    
    
    (available p25)
    (colour p25 green)
    (wood p25 walnut)
    (surface-condition p25 rough)
    (treatment p25 varnished)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 mauve)
    (wood p26 cherry)
    (surface-condition p26 smooth)
    (treatment p26 varnished)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (available p30)
    (colour p30 mauve)
    (wood p30 cherry)
    (surface-condition p30 rough)
    (treatment p30 glazed)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 blue)
    (wood p33 oak)
    (surface-condition p33 rough)
    (treatment p33 colourfragments)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (available p39)
    (colour p39 red)
    (wood p39 teak)
    (surface-condition p39 verysmooth)
    (treatment p39 glazed)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s3)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 mahogany)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s2)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s2)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 walnut)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 teak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s2)
    (wood b10 teak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 beech)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 beech)
    (surface-condition b12 rough)
    (available b12)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (wood p0 oak)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 black)
      (treatment p1 varnished)
      (available p2)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (wood p3 teak)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 white)
      (wood p4 walnut)
      (treatment p4 varnished)
      (available p5)
      (colour p5 blue)
      (wood p5 cherry)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 natural)
      (wood p6 walnut)
      (surface-condition p6 verysmooth)
      (treatment p6 varnished)
      (available p7)
      (wood p7 cherry)
      (treatment p7 varnished)
      (available p8)
      (wood p8 mahogany)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (wood p9 cherry)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 black)
      (wood p10 beech)
      (surface-condition p10 verysmooth)
      (available p11)
      (colour p11 natural)
      (wood p11 teak)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 black)
      (wood p12 cherry)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 mauve)
      (treatment p13 varnished)
      (available p14)
      (wood p14 teak)
      (surface-condition p14 smooth)
      (available p15)
      (wood p15 walnut)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 blue)
      (wood p16 pine)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 black)
      (wood p18 teak)
      (available p19)
      (colour p19 mauve)
      (treatment p19 varnished)
      (available p20)
      (colour p20 natural)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 natural)
      (wood p21 cherry)
      (available p22)
      (colour p22 green)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 blue)
      (wood p24 teak)
      (available p25)
      (colour p25 black)
      (wood p25 walnut)
      (surface-condition p25 smooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 natural)
      (wood p26 cherry)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 white)
      (wood p27 walnut)
      (surface-condition p27 smooth)
      (available p28)
      (wood p28 beech)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 mauve)
      (wood p29 mahogany)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 red)
      (surface-condition p30 verysmooth)
      (available p31)
      (wood p31 walnut)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 natural)
      (wood p32 pine)
      (available p33)
      (colour p33 natural)
      (wood p33 oak)
      (surface-condition p33 verysmooth)
      (available p34)
      (wood p34 cherry)
      (treatment p34 varnished)
      (available p35)
      (colour p35 blue)
      (surface-condition p35 smooth)
      (available p36)
      (wood p36 mahogany)
      (treatment p36 varnished)
      (available p37)
      (colour p37 red)
      (wood p37 mahogany)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 green)
      (wood p38 beech)
      (available p39)
      (colour p39 mauve)
      (treatment p39 glazed)
      (available p40)
      (wood p40 beech)
      (treatment p40 varnished)
    )
  )
  
)
