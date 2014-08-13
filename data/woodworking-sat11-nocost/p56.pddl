; woodworking task with 35 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 177791

(define (problem wood-prob-sat-56)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black white mauve blue red green - acolour
    teak walnut mahogany pine cherry oak beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 black)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 natural)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 red)
    (wood p7 walnut)
    (surface-condition p7 verysmooth)
    (treatment p7 colourfragments)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
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
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s3)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s6)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s5)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s3)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 pine)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s9)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 walnut)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 teak)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s7)
    (wood b11 teak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s7)
    (wood b12 beech)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 beech)
    (surface-condition b13 rough)
    (available b13)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 beech)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 cherry)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (wood p2 mahogany)
      (surface-condition p2 verysmooth)
      (available p3)
      (wood p3 oak)
      (surface-condition p3 verysmooth)
      (available p4)
      (colour p4 mauve)
      (surface-condition p4 verysmooth)
      (available p5)
      (colour p5 white)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (wood p6 walnut)
      (surface-condition p6 smooth)
      (available p7)
      (wood p7 walnut)
      (treatment p7 varnished)
      (available p8)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (wood p9 mahogany)
      (treatment p9 glazed)
      (available p10)
      (wood p10 oak)
      (treatment p10 varnished)
      (available p11)
      (wood p11 beech)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 red)
      (wood p12 walnut)
      (surface-condition p12 smooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 blue)
      (surface-condition p13 smooth)
      (available p14)
      (wood p14 oak)
      (treatment p14 glazed)
      (available p15)
      (colour p15 mauve)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 mauve)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 blue)
      (wood p17 pine)
      (available p18)
      (wood p18 cherry)
      (treatment p18 glazed)
      (available p19)
      (colour p19 blue)
      (wood p19 oak)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (wood p20 teak)
      (treatment p20 varnished)
      (available p21)
      (colour p21 blue)
      (treatment p21 varnished)
      (available p22)
      (colour p22 white)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 natural)
      (surface-condition p23 smooth)
      (available p24)
      (colour p24 mauve)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 green)
      (wood p25 beech)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 white)
      (wood p26 oak)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 mauve)
      (wood p27 beech)
      (available p28)
      (colour p28 green)
      (treatment p28 glazed)
      (available p29)
      (colour p29 blue)
      (treatment p29 glazed)
      (available p30)
      (wood p30 teak)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 mauve)
      (wood p31 beech)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 mauve)
      (wood p32 mahogany)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (wood p33 walnut)
      (surface-condition p33 verysmooth)
      (available p34)
      (wood p34 walnut)
      (surface-condition p34 smooth)
    )
  )
  
)
