; woodworking task with 41 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 322850

(define (problem wood-prob-sat-24)
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
    teak cherry walnut pine beech mahogany oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 - aboardsize
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
    (has-colour glazer0 blue)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer1 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour glazer2 mauve)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (available p0)
    (colour p0 black)
    (wood p0 oak)
    (surface-condition p0 rough)
    (treatment p0 glazed)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 natural)
    (wood p1 walnut)
    (surface-condition p1 rough)
    (treatment p1 varnished)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 red)
    (wood p10 teak)
    (surface-condition p10 smooth)
    (treatment p10 varnished)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 red)
    (wood p13 pine)
    (surface-condition p13 verysmooth)
    (treatment p13 glazed)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (available p16)
    (colour p16 mauve)
    (wood p16 oak)
    (surface-condition p16 smooth)
    (treatment p16 colourfragments)
    (goalsize p16 small)
    
    
    
    
    (available p17)
    (colour p17 green)
    (wood p17 cherry)
    (surface-condition p17 rough)
    (treatment p17 varnished)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (available p33)
    (colour p33 black)
    (wood p33 pine)
    (surface-condition p33 rough)
    (treatment p33 varnished)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (boardsize b0 s4)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s1)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s6)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s4)
    (wood b5 pine)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s2)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s4)
    (wood b7 walnut)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 teak)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s1)
    (wood b9 teak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s6)
    (wood b10 beech)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s5)
    (wood b11 beech)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 beech)
    (surface-condition b12 rough)
    (available b12)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (wood p0 oak)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 mauve)
      (wood p1 walnut)
      (available p2)
      (colour p2 white)
      (wood p2 mahogany)
      (available p3)
      (colour p3 natural)
      (wood p3 cherry)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 natural)
      (surface-condition p4 verysmooth)
      (available p5)
      (colour p5 black)
      (treatment p5 glazed)
      (available p6)
      (wood p6 beech)
      (treatment p6 glazed)
      (available p7)
      (colour p7 mauve)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 green)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 red)
      (treatment p9 glazed)
      (available p10)
      (colour p10 white)
      (wood p10 teak)
      (surface-condition p10 verysmooth)
      (available p11)
      (colour p11 blue)
      (wood p11 beech)
      (available p12)
      (colour p12 green)
      (treatment p12 glazed)
      (available p13)
      (colour p13 blue)
      (wood p13 pine)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 blue)
      (wood p14 mahogany)
      (surface-condition p14 smooth)
      (available p15)
      (wood p15 beech)
      (treatment p15 varnished)
      (available p16)
      (colour p16 black)
      (wood p16 oak)
      (treatment p16 glazed)
      (available p17)
      (colour p17 white)
      (treatment p17 varnished)
      (available p18)
      (colour p18 natural)
      (treatment p18 glazed)
      (available p19)
      (surface-condition p19 smooth)
      (treatment p19 varnished)
      (available p20)
      (wood p20 beech)
      (treatment p20 glazed)
      (available p21)
      (colour p21 black)
      (surface-condition p21 smooth)
      (available p22)
      (wood p22 pine)
      (treatment p22 glazed)
      (available p23)
      (colour p23 blue)
      (wood p23 teak)
      (surface-condition p23 smooth)
      (available p24)
      (wood p24 beech)
      (treatment p24 glazed)
      (available p25)
      (colour p25 white)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 red)
      (wood p26 oak)
      (treatment p26 glazed)
      (available p27)
      (colour p27 green)
      (wood p27 cherry)
      (treatment p27 varnished)
      (available p28)
      (colour p28 mauve)
      (wood p28 mahogany)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 mauve)
      (wood p29 oak)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 blue)
      (wood p30 cherry)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 black)
      (wood p31 walnut)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 natural)
      (wood p32 teak)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 mauve)
      (wood p33 pine)
      (surface-condition p33 verysmooth)
      (treatment p33 glazed)
      (available p34)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 blue)
      (wood p36 mahogany)
      (available p37)
      (colour p37 black)
      (wood p37 beech)
      (treatment p37 varnished)
      (available p38)
      (wood p38 cherry)
      (surface-condition p38 verysmooth)
      (available p39)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 natural)
      (surface-condition p40 verysmooth)
    )
  )
  
)
