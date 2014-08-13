; woodworking task with 44 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 779562

(define (problem wood-prob-sat-59)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white green black blue red mauve - acolour
    teak walnut cherry pine beech oak mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 - part
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
    (has-colour glazer0 natural)
    (has-colour glazer0 white)
    (has-colour glazer0 black)
    (has-colour glazer0 mauve)
    (has-colour glazer1 blue)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (available p0)
    (colour p0 white)
    (wood p0 mahogany)
    (surface-condition p0 verysmooth)
    (treatment p0 colourfragments)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (available p18)
    (colour p18 white)
    (wood p18 mahogany)
    (surface-condition p18 rough)
    (treatment p18 glazed)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (available p20)
    (colour p20 black)
    (wood p20 cherry)
    (surface-condition p20 rough)
    (treatment p20 glazed)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 mauve)
    (wood p21 walnut)
    (surface-condition p21 rough)
    (treatment p21 glazed)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 mauve)
    (wood p36 cherry)
    (surface-condition p36 verysmooth)
    (treatment p36 varnished)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (available p40)
    (colour p40 blue)
    (wood p40 oak)
    (surface-condition p40 smooth)
    (treatment p40 colourfragments)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s2)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s3)
    (wood b4 mahogany)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s9)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s3)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
    (wood b8 pine)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s9)
    (wood b9 walnut)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s7)
    (wood b10 walnut)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s4)
    (wood b11 walnut)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s9)
    (wood b12 teak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 teak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s1)
    (wood b14 teak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s6)
    (wood b15 beech)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s1)
    (wood b16 beech)
    (surface-condition b16 smooth)
    (available b16)
  )
  (:goal
    (and
      (available p0)
      (wood p0 mahogany)
      (surface-condition p0 smooth)
      (available p1)
      (colour p1 natural)
      (wood p1 mahogany)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 mauve)
      (wood p3 mahogany)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (wood p4 walnut)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 red)
      (surface-condition p5 verysmooth)
      (available p6)
      (colour p6 mauve)
      (wood p6 teak)
      (surface-condition p6 smooth)
      (treatment p6 varnished)
      (available p7)
      (wood p7 pine)
      (treatment p7 glazed)
      (available p8)
      (colour p8 blue)
      (wood p8 oak)
      (treatment p8 glazed)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 blue)
      (wood p10 oak)
      (available p11)
      (colour p11 white)
      (surface-condition p11 smooth)
      (available p12)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 white)
      (treatment p13 varnished)
      (available p14)
      (colour p14 black)
      (treatment p14 varnished)
      (available p15)
      (colour p15 green)
      (treatment p15 varnished)
      (available p16)
      (colour p16 natural)
      (wood p16 walnut)
      (surface-condition p16 verysmooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 blue)
      (treatment p17 varnished)
      (available p18)
      (wood p18 mahogany)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 natural)
      (wood p19 walnut)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (wood p20 cherry)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 white)
      (wood p21 walnut)
      (available p22)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 blue)
      (wood p23 cherry)
      (treatment p23 varnished)
      (available p24)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (wood p25 pine)
      (surface-condition p25 smooth)
      (available p26)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 mauve)
      (wood p27 beech)
      (available p28)
      (wood p28 beech)
      (treatment p28 varnished)
      (available p29)
      (wood p29 cherry)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 white)
      (wood p30 walnut)
      (treatment p30 varnished)
      (available p31)
      (colour p31 blue)
      (treatment p31 varnished)
      (available p32)
      (colour p32 white)
      (wood p32 teak)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (wood p33 pine)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 black)
      (wood p34 beech)
      (treatment p34 varnished)
      (available p35)
      (wood p35 oak)
      (treatment p35 glazed)
      (available p36)
      (wood p36 cherry)
      (treatment p36 glazed)
      (available p37)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 black)
      (wood p38 teak)
      (surface-condition p38 verysmooth)
      (treatment p38 glazed)
      (available p39)
      (colour p39 blue)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 green)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 red)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 natural)
      (treatment p42 glazed)
      (available p43)
      (colour p43 black)
      (treatment p43 glazed)
    )
  )
  
)
