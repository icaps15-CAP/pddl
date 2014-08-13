; woodworking task with 41 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 127842

(define (problem wood-prob-sat-58)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red white black green mauve blue - acolour
    walnut teak cherry mahogany oak beech pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 - part
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer1 black)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 mauve)
    (available p0)
    (colour p0 white)
    (wood p0 oak)
    (surface-condition p0 rough)
    (treatment p0 colourfragments)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 green)
    (wood p1 walnut)
    (surface-condition p1 rough)
    (treatment p1 colourfragments)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 green)
    (wood p10 beech)
    (surface-condition p10 verysmooth)
    (treatment p10 colourfragments)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 mauve)
    (wood p11 teak)
    (surface-condition p11 rough)
    (treatment p11 colourfragments)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 white)
    (wood p14 beech)
    (surface-condition p14 verysmooth)
    (treatment p14 glazed)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (available p20)
    (colour p20 mauve)
    (wood p20 beech)
    (surface-condition p20 verysmooth)
    (treatment p20 colourfragments)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (available p35)
    (colour p35 natural)
    (wood p35 walnut)
    (surface-condition p35 rough)
    (treatment p35 colourfragments)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (available p37)
    (colour p37 black)
    (wood p37 beech)
    (surface-condition p37 rough)
    (treatment p37 glazed)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 red)
    (wood p38 oak)
    (surface-condition p38 verysmooth)
    (treatment p38 varnished)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s2)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s6)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s6)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s3)
    (wood b9 walnut)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s3)
    (wood b10 teak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 beech)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 beech)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s2)
    (wood b13 beech)
    (surface-condition b13 rough)
    (available b13)
  )
  (:goal
    (and
      (available p0)
      (colour p0 red)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 mauve)
      (wood p1 walnut)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 white)
      (surface-condition p2 smooth)
      (available p3)
      (colour p3 mauve)
      (treatment p3 glazed)
      (available p4)
      (colour p4 blue)
      (wood p4 oak)
      (available p5)
      (wood p5 pine)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 green)
      (wood p6 walnut)
      (treatment p6 varnished)
      (available p7)
      (wood p7 pine)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 natural)
      (wood p8 beech)
      (available p9)
      (wood p9 pine)
      (treatment p9 glazed)
      (available p10)
      (colour p10 red)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 red)
      (wood p11 teak)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 blue)
      (wood p12 beech)
      (available p13)
      (colour p13 white)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 black)
      (wood p14 beech)
      (available p15)
      (colour p15 mauve)
      (wood p15 beech)
      (available p16)
      (colour p16 black)
      (wood p16 beech)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 mauve)
      (wood p17 mahogany)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 black)
      (wood p18 cherry)
      (available p19)
      (colour p19 red)
      (wood p19 oak)
      (available p20)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 mauve)
      (wood p21 beech)
      (surface-condition p21 smooth)
      (available p22)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (surface-condition p23 smooth)
      (treatment p23 varnished)
      (available p24)
      (wood p24 oak)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (wood p25 teak)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 natural)
      (treatment p26 varnished)
      (available p27)
      (wood p27 oak)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (wood p29 cherry)
      (treatment p29 glazed)
      (available p30)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 blue)
      (treatment p31 varnished)
      (available p32)
      (colour p32 black)
      (surface-condition p32 verysmooth)
      (available p33)
      (colour p33 white)
      (surface-condition p33 smooth)
      (available p34)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (wood p35 walnut)
      (surface-condition p35 verysmooth)
      (available p36)
      (wood p36 mahogany)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 natural)
      (wood p37 beech)
      (surface-condition p37 smooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 green)
      (wood p38 oak)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 black)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 green)
      (surface-condition p40 verysmooth)
    )
  )
  
)
