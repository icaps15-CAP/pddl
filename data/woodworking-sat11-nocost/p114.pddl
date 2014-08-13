; woodworking task with 29 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 135455

(define (problem wood-prob-sat-114)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black mauve blue white red green - acolour
    walnut pine teak beech mahogany cherry oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer0 black)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer1 mauve)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 red)
    (wood p3 beech)
    (surface-condition p3 rough)
    (treatment p3 glazed)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (available p7)
    (colour p7 natural)
    (wood p7 pine)
    (surface-condition p7 smooth)
    (treatment p7 varnished)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 white)
    (wood p13 walnut)
    (surface-condition p13 verysmooth)
    (treatment p13 colourfragments)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 green)
    (wood p19 cherry)
    (surface-condition p19 verysmooth)
    (treatment p19 colourfragments)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 white)
    (wood p21 oak)
    (surface-condition p21 smooth)
    (treatment p21 colourfragments)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 blue)
    (wood p25 walnut)
    (surface-condition p25 verysmooth)
    (treatment p25 varnished)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s1)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s7)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s2)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s9)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 pine)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 walnut)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s3)
    (wood b7 walnut)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s5)
    (wood b8 teak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 beech)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s1)
    (wood b10 beech)
    (surface-condition b10 rough)
    (available b10)
  )
  (:goal
    (and
      (available p0)
      (colour p0 white)
      (surface-condition p0 smooth)
      (available p1)
      (colour p1 mauve)
      (wood p1 walnut)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (wood p2 walnut)
      (treatment p2 varnished)
      (available p3)
      (colour p3 natural)
      (wood p3 beech)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 mauve)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 mauve)
      (treatment p5 varnished)
      (available p6)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 blue)
      (wood p7 pine)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 red)
      (treatment p8 varnished)
      (available p9)
      (colour p9 green)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 red)
      (wood p10 cherry)
      (available p11)
      (colour p11 natural)
      (wood p11 cherry)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 black)
      (wood p12 teak)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (wood p13 walnut)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 natural)
      (wood p15 cherry)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 black)
      (wood p16 walnut)
      (surface-condition p16 verysmooth)
      (available p17)
      (wood p17 pine)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 black)
      (treatment p18 glazed)
      (available p19)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (surface-condition p20 smooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 black)
      (surface-condition p21 smooth)
      (available p22)
      (colour p22 red)
      (treatment p22 varnished)
      (available p23)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 mauve)
      (wood p24 oak)
      (available p25)
      (wood p25 walnut)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 red)
      (treatment p26 glazed)
      (available p27)
      (colour p27 white)
      (treatment p27 varnished)
      (available p28)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
    )
  )
  
)
