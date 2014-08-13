; woodworking task with 38 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 664699

(define (problem wood-prob-sat-117)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black mauve blue red green white - acolour
    walnut oak teak pine beech cherry mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 - aboardsize
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
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 green)
    (has-colour glazer1 natural)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (available p0)
    (colour p0 natural)
    (wood p0 pine)
    (surface-condition p0 rough)
    (treatment p0 colourfragments)
    (goalsize p0 medium)
    
    
    
    
    (available p1)
    (colour p1 natural)
    (wood p1 oak)
    (surface-condition p1 verysmooth)
    (treatment p1 colourfragments)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 black)
    (wood p6 pine)
    (surface-condition p6 smooth)
    (treatment p6 varnished)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (available p9)
    (colour p9 mauve)
    (wood p9 teak)
    (surface-condition p9 smooth)
    (treatment p9 glazed)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (available p12)
    (colour p12 white)
    (wood p12 beech)
    (surface-condition p12 rough)
    (treatment p12 varnished)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (available p14)
    (colour p14 green)
    (wood p14 pine)
    (surface-condition p14 verysmooth)
    (treatment p14 glazed)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 green)
    (wood p17 oak)
    (surface-condition p17 smooth)
    (treatment p17 glazed)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 black)
    (wood p21 cherry)
    (surface-condition p21 verysmooth)
    (treatment p21 varnished)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (available p24)
    (colour p24 black)
    (wood p24 cherry)
    (surface-condition p24 rough)
    (treatment p24 colourfragments)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 white)
    (wood p29 oak)
    (surface-condition p29 verysmooth)
    (treatment p29 glazed)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 black)
    (wood p31 mahogany)
    (surface-condition p31 rough)
    (treatment p31 colourfragments)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (available p37)
    (colour p37 mauve)
    (wood p37 mahogany)
    (surface-condition p37 rough)
    (treatment p37 colourfragments)
    (goalsize p37 large)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s11)
    (wood b2 mahogany)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s3)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s5)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s5)
    (wood b5 pine)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 walnut)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s4)
    (wood b7 walnut)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
    (wood b8 teak)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s6)
    (wood b9 teak)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s9)
    (wood b10 beech)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 beech)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s3)
    (wood b12 beech)
    (surface-condition b12 rough)
    (available b12)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (treatment p0 varnished)
      (available p1)
      (colour p1 white)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 mauve)
      (wood p2 beech)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 white)
      (surface-condition p3 verysmooth)
      (available p4)
      (colour p4 red)
      (wood p4 walnut)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (wood p5 walnut)
      (treatment p5 varnished)
      (available p6)
      (colour p6 natural)
      (treatment p6 varnished)
      (available p7)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 green)
      (wood p8 mahogany)
      (treatment p8 glazed)
      (available p9)
      (colour p9 blue)
      (wood p9 teak)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (wood p10 walnut)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 mauve)
      (wood p11 cherry)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 blue)
      (treatment p12 varnished)
      (available p13)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 natural)
      (wood p14 pine)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 mauve)
      (wood p15 oak)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (wood p16 pine)
      (treatment p16 varnished)
      (available p17)
      (colour p17 mauve)
      (surface-condition p17 verysmooth)
      (available p18)
      (colour p18 red)
      (wood p18 teak)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 natural)
      (wood p19 beech)
      (treatment p19 glazed)
      (available p20)
      (colour p20 green)
      (wood p20 cherry)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 natural)
      (wood p21 cherry)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 mauve)
      (wood p22 teak)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 mauve)
      (surface-condition p23 smooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 green)
      (wood p24 cherry)
      (treatment p24 glazed)
      (available p25)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 red)
      (wood p26 beech)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 mauve)
      (wood p27 beech)
      (surface-condition p27 verysmooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 mauve)
      (treatment p28 varnished)
      (available p29)
      (colour p29 blue)
      (wood p29 oak)
      (available p30)
      (colour p30 green)
      (wood p30 walnut)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 white)
      (wood p31 mahogany)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 mauve)
      (wood p32 beech)
      (surface-condition p32 smooth)
      (available p33)
      (wood p33 teak)
      (surface-condition p33 verysmooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 green)
      (treatment p34 varnished)
      (available p35)
      (colour p35 green)
      (treatment p35 varnished)
      (available p36)
      (colour p36 blue)
      (wood p36 teak)
      (available p37)
      (colour p37 natural)
      (wood p37 mahogany)
      (surface-condition p37 smooth)
      (treatment p37 glazed)
    )
  )
  
)
