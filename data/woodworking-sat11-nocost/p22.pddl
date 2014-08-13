; woodworking task with 35 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 552195

(define (problem wood-prob-sat-22)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white red green mauve black blue - acolour
    mahogany cherry beech pine walnut oak teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer1 blue)
    (has-colour glazer1 black)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 red)
    (wood p0 cherry)
    (surface-condition p0 rough)
    (treatment p0 glazed)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (available p2)
    (colour p2 black)
    (wood p2 beech)
    (surface-condition p2 verysmooth)
    (treatment p2 varnished)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (available p8)
    (colour p8 white)
    (wood p8 beech)
    (surface-condition p8 smooth)
    (treatment p8 colourfragments)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 blue)
    (wood p12 pine)
    (surface-condition p12 rough)
    (treatment p12 varnished)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (available p14)
    (colour p14 natural)
    (wood p14 oak)
    (surface-condition p14 smooth)
    (treatment p14 glazed)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 black)
    (wood p17 pine)
    (surface-condition p17 verysmooth)
    (treatment p17 varnished)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (available p23)
    (colour p23 mauve)
    (wood p23 beech)
    (surface-condition p23 rough)
    (treatment p23 varnished)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 mauve)
    (wood p28 walnut)
    (surface-condition p28 smooth)
    (treatment p28 colourfragments)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (available p30)
    (colour p30 white)
    (wood p30 mahogany)
    (surface-condition p30 rough)
    (treatment p30 varnished)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s11)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s1)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s3)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 pine)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s10)
    (wood b6 walnut)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s1)
    (wood b7 walnut)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 teak)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s5)
    (wood b9 teak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 beech)
    (surface-condition b10 rough)
    (available b10)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (wood p0 cherry)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 green)
      (wood p1 walnut)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 green)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 blue)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 white)
      (wood p4 cherry)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (wood p5 teak)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 mauve)
      (wood p6 cherry)
      (available p7)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (wood p8 beech)
      (treatment p8 varnished)
      (available p9)
      (colour p9 green)
      (surface-condition p9 smooth)
      (available p10)
      (colour p10 blue)
      (wood p10 cherry)
      (surface-condition p10 smooth)
      (available p11)
      (colour p11 mauve)
      (surface-condition p11 smooth)
      (available p12)
      (surface-condition p12 smooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 black)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 red)
      (wood p14 oak)
      (surface-condition p14 smooth)
      (treatment p14 varnished)
      (available p15)
      (colour p15 blue)
      (wood p15 teak)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 red)
      (wood p16 walnut)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 red)
      (wood p17 pine)
      (available p18)
      (colour p18 natural)
      (wood p18 cherry)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 blue)
      (wood p19 oak)
      (available p20)
      (colour p20 blue)
      (wood p20 beech)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 natural)
      (wood p21 beech)
      (available p22)
      (wood p22 teak)
      (surface-condition p22 smooth)
      (available p23)
      (wood p23 beech)
      (treatment p23 glazed)
      (available p24)
      (colour p24 natural)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 mauve)
      (treatment p25 glazed)
      (available p26)
      (colour p26 green)
      (treatment p26 varnished)
      (available p27)
      (colour p27 white)
      (wood p27 pine)
      (available p28)
      (colour p28 blue)
      (wood p28 walnut)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 mauve)
      (wood p29 beech)
      (surface-condition p29 smooth)
      (available p30)
      (wood p30 mahogany)
      (treatment p30 glazed)
      (available p31)
      (colour p31 mauve)
      (wood p31 pine)
      (surface-condition p31 verysmooth)
      (treatment p31 varnished)
      (available p32)
      (colour p32 white)
      (treatment p32 varnished)
      (available p33)
      (wood p33 mahogany)
      (surface-condition p33 verysmooth)
      (available p34)
      (wood p34 walnut)
      (treatment p34 glazed)
    )
  )
  
)
