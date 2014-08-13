; woodworking task with 44 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 177851

(define (problem wood-prob-sat-25)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white black green mauve red blue - acolour
    mahogany walnut teak pine beech cherry oak - awood
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (available p4)
    (colour p4 natural)
    (wood p4 mahogany)
    (surface-condition p4 smooth)
    (treatment p4 varnished)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (available p6)
    (colour p6 white)
    (wood p6 cherry)
    (surface-condition p6 verysmooth)
    (treatment p6 glazed)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (available p10)
    (colour p10 blue)
    (wood p10 cherry)
    (surface-condition p10 rough)
    (treatment p10 glazed)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 white)
    (wood p31 oak)
    (surface-condition p31 rough)
    (treatment p31 glazed)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (available p35)
    (colour p35 mauve)
    (wood p35 cherry)
    (surface-condition p35 rough)
    (treatment p35 colourfragments)
    (goalsize p35 medium)
    
    
    
    
    (available p36)
    (colour p36 red)
    (wood p36 teak)
    (surface-condition p36 verysmooth)
    (treatment p36 glazed)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 oak)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s4)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s5)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 teak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s5)
    (wood b10 teak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s10)
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
      (wood p0 oak)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (wood p1 pine)
      (treatment p1 varnished)
      (available p2)
      (wood p2 cherry)
      (treatment p2 glazed)
      (available p3)
      (colour p3 red)
      (wood p3 beech)
      (treatment p3 varnished)
      (available p4)
      (colour p4 mauve)
      (surface-condition p4 verysmooth)
      (available p5)
      (colour p5 black)
      (treatment p5 varnished)
      (available p6)
      (wood p6 cherry)
      (treatment p6 varnished)
      (available p7)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (wood p8 cherry)
      (surface-condition p8 smooth)
      (available p9)
      (wood p9 cherry)
      (treatment p9 varnished)
      (available p10)
      (wood p10 cherry)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (colour p11 mauve)
      (wood p11 pine)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 black)
      (wood p12 beech)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 mauve)
      (wood p13 beech)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (wood p14 walnut)
      (treatment p14 varnished)
      (available p15)
      (colour p15 red)
      (wood p15 cherry)
      (available p16)
      (colour p16 mauve)
      (wood p16 beech)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 red)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 green)
      (wood p19 cherry)
      (available p20)
      (colour p20 mauve)
      (surface-condition p20 smooth)
      (available p21)
      (wood p21 oak)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (wood p22 teak)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (wood p24 oak)
      (surface-condition p24 verysmooth)
      (treatment p24 varnished)
      (available p25)
      (wood p25 mahogany)
      (treatment p25 glazed)
      (available p26)
      (colour p26 natural)
      (wood p26 mahogany)
      (available p27)
      (wood p27 teak)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 white)
      (wood p28 pine)
      (available p29)
      (colour p29 red)
      (wood p29 teak)
      (surface-condition p29 verysmooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 blue)
      (wood p30 cherry)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 mauve)
      (wood p31 oak)
      (treatment p31 glazed)
      (available p32)
      (colour p32 blue)
      (wood p32 oak)
      (surface-condition p32 verysmooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 white)
      (surface-condition p33 smooth)
      (treatment p33 varnished)
      (available p34)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (colour p35 white)
      (wood p35 cherry)
      (treatment p35 varnished)
      (available p36)
      (colour p36 natural)
      (surface-condition p36 smooth)
      (available p37)
      (colour p37 red)
      (treatment p37 varnished)
      (available p38)
      (colour p38 white)
      (wood p38 beech)
      (available p39)
      (colour p39 black)
      (wood p39 pine)
      (surface-condition p39 verysmooth)
      (available p40)
      (surface-condition p40 verysmooth)
      (treatment p40 glazed)
      (available p41)
      (colour p41 red)
      (wood p41 pine)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 mauve)
      (wood p42 teak)
      (surface-condition p42 smooth)
      (treatment p42 glazed)
      (available p43)
      (wood p43 beech)
      (treatment p43 varnished)
    )
  )
  
)
