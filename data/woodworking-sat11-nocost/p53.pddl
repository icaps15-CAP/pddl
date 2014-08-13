; woodworking task with 26 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 65939

(define (problem wood-prob-sat-53)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green blue red mauve white black - acolour
    teak pine walnut cherry beech oak mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - board
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
    (has-colour glazer0 blue)
    (has-colour glazer0 white)
    (has-colour glazer0 black)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 white)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 red)
    (wood p1 oak)
    (surface-condition p1 smooth)
    (treatment p1 varnished)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (available p6)
    (colour p6 black)
    (wood p6 teak)
    (surface-condition p6 verysmooth)
    (treatment p6 varnished)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 black)
    (wood p7 mahogany)
    (surface-condition p7 smooth)
    (treatment p7 glazed)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (available p11)
    (colour p11 red)
    (wood p11 mahogany)
    (surface-condition p11 smooth)
    (treatment p11 colourfragments)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 black)
    (wood p19 walnut)
    (surface-condition p19 smooth)
    (treatment p19 colourfragments)
    (goalsize p19 large)
    
    
    
    
    (available p20)
    (colour p20 mauve)
    (wood p20 oak)
    (surface-condition p20 rough)
    (treatment p20 varnished)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 mahogany)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s4)
    (wood b1 mahogany)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 oak)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s11)
    (wood b3 oak)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 pine)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s3)
    (wood b5 pine)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s5)
    (wood b6 walnut)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s3)
    (wood b7 teak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 beech)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s5)
    (wood b9 beech)
    (surface-condition b9 rough)
    (available b9)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 black)
      (wood p1 oak)
      (treatment p1 varnished)
      (available p2)
      (colour p2 black)
      (wood p2 oak)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 beech)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (wood p4 pine)
      (surface-condition p4 verysmooth)
      (available p5)
      (colour p5 green)
      (wood p5 mahogany)
      (surface-condition p5 verysmooth)
      (available p6)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 white)
      (treatment p7 glazed)
      (available p8)
      (wood p8 oak)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (wood p9 oak)
      (surface-condition p9 verysmooth)
      (available p10)
      (colour p10 mauve)
      (surface-condition p10 verysmooth)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (wood p13 mahogany)
      (treatment p13 varnished)
      (available p14)
      (colour p14 blue)
      (wood p14 walnut)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 mahogany)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 red)
      (surface-condition p16 verysmooth)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 white)
      (wood p18 oak)
      (available p19)
      (wood p19 walnut)
      (treatment p19 glazed)
      (available p20)
      (colour p20 black)
      (wood p20 oak)
      (surface-condition p20 smooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 green)
      (wood p21 beech)
      (available p22)
      (colour p22 red)
      (wood p22 mahogany)
      (available p23)
      (colour p23 blue)
      (wood p23 pine)
      (treatment p23 varnished)
      (available p24)
      (colour p24 blue)
      (wood p24 pine)
      (surface-condition p24 smooth)
      (available p25)
      (wood p25 beech)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
    )
  )
  
)
