; woodworking task with 20 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 800971

(define (problem wood-prob-sat-111)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue mauve white green red black - acolour
    pine mahogany teak oak beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 - part
    b0 b1 b2 b3 b4 b5 b6 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 red)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer2 blue)
    (has-colour glazer2 green)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher2 blue)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (available p2)
    (colour p2 mauve)
    (wood p2 teak)
    (surface-condition p2 smooth)
    (treatment p2 colourfragments)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (available p6)
    (colour p6 black)
    (wood p6 oak)
    (surface-condition p6 smooth)
    (treatment p6 colourfragments)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 white)
    (wood p10 pine)
    (surface-condition p10 smooth)
    (treatment p10 colourfragments)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (available p12)
    (colour p12 natural)
    (wood p12 beech)
    (surface-condition p12 verysmooth)
    (treatment p12 varnished)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 white)
    (wood p14 teak)
    (surface-condition p14 rough)
    (treatment p14 glazed)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (available p16)
    (colour p16 black)
    (wood p16 pine)
    (surface-condition p16 smooth)
    (treatment p16 colourfragments)
    (goalsize p16 medium)
    
    
    
    
    (available p17)
    (colour p17 mauve)
    (wood p17 teak)
    (surface-condition p17 smooth)
    (treatment p17 glazed)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 beech)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 teak)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s2)
    (wood b2 teak)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s6)
    (wood b4 mahogany)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s5)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (wood p0 teak)
      (treatment p0 glazed)
      (available p1)
      (colour p1 mauve)
      (wood p1 teak)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 mauve)
      (wood p4 mahogany)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 black)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 blue)
      (treatment p6 glazed)
      (available p7)
      (colour p7 natural)
      (surface-condition p7 smooth)
      (available p8)
      (colour p8 natural)
      (wood p8 oak)
      (available p9)
      (colour p9 black)
      (wood p9 pine)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 red)
      (wood p10 pine)
      (surface-condition p10 smooth)
      (treatment p10 glazed)
      (available p11)
      (wood p11 teak)
      (treatment p11 glazed)
      (available p12)
      (colour p12 blue)
      (surface-condition p12 verysmooth)
      (available p13)
      (wood p13 mahogany)
      (treatment p13 varnished)
      (available p14)
      (colour p14 green)
      (wood p14 teak)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 mahogany)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 mauve)
      (treatment p16 glazed)
      (available p17)
      (colour p17 black)
      (surface-condition p17 verysmooth)
      (available p18)
      (colour p18 blue)
      (surface-condition p18 verysmooth)
      (available p19)
      (wood p19 beech)
      (treatment p19 varnished)
    )
  )
  
)
