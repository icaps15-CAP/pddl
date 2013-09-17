; woodworking task with 36 parts and 140% wood
; Machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 592015

(define (problem wood-prob-14)
  (:domain woodworking)
  (:objects
    grinder0 - grinder
    glazer0 - glazer
    immersion-varnisher0 - immersion-varnisher
    planer0 - planer
    highspeed-saw0 - highspeed-saw
    spray-varnisher0 - spray-varnisher
    saw0 - saw
    white black red green mauve blue - acolour
    cherry mahogany beech teak oak pine walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (= (total-cost) 0)
    (boardsize-successor s0 s1)
    (boardsize-successor s1 s2)
    (boardsize-successor s2 s3)
    (boardsize-successor s3 s4)
    (boardsize-successor s4 s5)
    (boardsize-successor s5 s6)
    (boardsize-successor s6 s7)
    (boardsize-successor s7 s8)
    (boardsize-successor s8 s9)
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (empty highspeed-saw0)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (unused p0)
    (goalsize p0 small)
    (= (spray-varnish-cost p0) 5)
    (= (glaze-cost p0) 10)
    (= (grind-cost p0) 15)
    (= (plane-cost p0) 10)
    (unused p1)
    (goalsize p1 medium)
    (= (spray-varnish-cost p1) 10)
    (= (glaze-cost p1) 15)
    (= (grind-cost p1) 30)
    (= (plane-cost p1) 20)
    (unused p2)
    (goalsize p2 large)
    (= (spray-varnish-cost p2) 15)
    (= (glaze-cost p2) 20)
    (= (grind-cost p2) 45)
    (= (plane-cost p2) 30)
    (available p3)
    (colour p3 green)
    (wood p3 beech)
    (surface-condition p3 verysmooth)
    (treatment p3 glazed)
    (goalsize p3 small)
    (= (spray-varnish-cost p3) 5)
    (= (glaze-cost p3) 10)
    (= (grind-cost p3) 15)
    (= (plane-cost p3) 10)
    (unused p4)
    (goalsize p4 large)
    (= (spray-varnish-cost p4) 15)
    (= (glaze-cost p4) 20)
    (= (grind-cost p4) 45)
    (= (plane-cost p4) 30)
    (available p5)
    (colour p5 white)
    (wood p5 beech)
    (surface-condition p5 smooth)
    (treatment p5 glazed)
    (goalsize p5 small)
    (= (spray-varnish-cost p5) 5)
    (= (glaze-cost p5) 10)
    (= (grind-cost p5) 15)
    (= (plane-cost p5) 10)
    (unused p6)
    (goalsize p6 small)
    (= (spray-varnish-cost p6) 5)
    (= (glaze-cost p6) 10)
    (= (grind-cost p6) 15)
    (= (plane-cost p6) 10)
    (available p7)
    (colour p7 blue)
    (wood p7 oak)
    (surface-condition p7 verysmooth)
    (treatment p7 glazed)
    (goalsize p7 medium)
    (= (spray-varnish-cost p7) 10)
    (= (glaze-cost p7) 15)
    (= (grind-cost p7) 30)
    (= (plane-cost p7) 20)
    (unused p8)
    (goalsize p8 medium)
    (= (spray-varnish-cost p8) 10)
    (= (glaze-cost p8) 15)
    (= (grind-cost p8) 30)
    (= (plane-cost p8) 20)
    (available p9)
    (colour p9 black)
    (wood p9 teak)
    (surface-condition p9 verysmooth)
    (treatment p9 glazed)
    (goalsize p9 small)
    (= (spray-varnish-cost p9) 5)
    (= (glaze-cost p9) 10)
    (= (grind-cost p9) 15)
    (= (plane-cost p9) 10)
    (unused p10)
    (goalsize p10 large)
    (= (spray-varnish-cost p10) 15)
    (= (glaze-cost p10) 20)
    (= (grind-cost p10) 45)
    (= (plane-cost p10) 30)
    (unused p11)
    (goalsize p11 medium)
    (= (spray-varnish-cost p11) 10)
    (= (glaze-cost p11) 15)
    (= (grind-cost p11) 30)
    (= (plane-cost p11) 20)
    (available p12)
    (colour p12 natural)
    (wood p12 oak)
    (surface-condition p12 rough)
    (treatment p12 colourfragments)
    (goalsize p12 medium)
    (= (spray-varnish-cost p12) 10)
    (= (glaze-cost p12) 15)
    (= (grind-cost p12) 30)
    (= (plane-cost p12) 20)
    (unused p13)
    (goalsize p13 small)
    (= (spray-varnish-cost p13) 5)
    (= (glaze-cost p13) 10)
    (= (grind-cost p13) 15)
    (= (plane-cost p13) 10)
    (unused p14)
    (goalsize p14 small)
    (= (spray-varnish-cost p14) 5)
    (= (glaze-cost p14) 10)
    (= (grind-cost p14) 15)
    (= (plane-cost p14) 10)
    (unused p15)
    (goalsize p15 small)
    (= (spray-varnish-cost p15) 5)
    (= (glaze-cost p15) 10)
    (= (grind-cost p15) 15)
    (= (plane-cost p15) 10)
    (unused p16)
    (goalsize p16 large)
    (= (spray-varnish-cost p16) 15)
    (= (glaze-cost p16) 20)
    (= (grind-cost p16) 45)
    (= (plane-cost p16) 30)
    (unused p17)
    (goalsize p17 medium)
    (= (spray-varnish-cost p17) 10)
    (= (glaze-cost p17) 15)
    (= (grind-cost p17) 30)
    (= (plane-cost p17) 20)
    (unused p18)
    (goalsize p18 small)
    (= (spray-varnish-cost p18) 5)
    (= (glaze-cost p18) 10)
    (= (grind-cost p18) 15)
    (= (plane-cost p18) 10)
    (available p19)
    (colour p19 mauve)
    (wood p19 oak)
    (surface-condition p19 smooth)
    (treatment p19 colourfragments)
    (goalsize p19 small)
    (= (spray-varnish-cost p19) 5)
    (= (glaze-cost p19) 10)
    (= (grind-cost p19) 15)
    (= (plane-cost p19) 10)
    (available p20)
    (colour p20 red)
    (wood p20 walnut)
    (surface-condition p20 smooth)
    (treatment p20 colourfragments)
    (goalsize p20 small)
    (= (spray-varnish-cost p20) 5)
    (= (glaze-cost p20) 10)
    (= (grind-cost p20) 15)
    (= (plane-cost p20) 10)
    (unused p21)
    (goalsize p21 medium)
    (= (spray-varnish-cost p21) 10)
    (= (glaze-cost p21) 15)
    (= (grind-cost p21) 30)
    (= (plane-cost p21) 20)
    (unused p22)
    (goalsize p22 medium)
    (= (spray-varnish-cost p22) 10)
    (= (glaze-cost p22) 15)
    (= (grind-cost p22) 30)
    (= (plane-cost p22) 20)
    (available p23)
    (colour p23 black)
    (wood p23 cherry)
    (surface-condition p23 verysmooth)
    (treatment p23 glazed)
    (goalsize p23 large)
    (= (spray-varnish-cost p23) 15)
    (= (glaze-cost p23) 20)
    (= (grind-cost p23) 45)
    (= (plane-cost p23) 30)
    (available p24)
    (colour p24 red)
    (wood p24 beech)
    (surface-condition p24 verysmooth)
    (treatment p24 glazed)
    (goalsize p24 large)
    (= (spray-varnish-cost p24) 15)
    (= (glaze-cost p24) 20)
    (= (grind-cost p24) 45)
    (= (plane-cost p24) 30)
    (unused p25)
    (goalsize p25 small)
    (= (spray-varnish-cost p25) 5)
    (= (glaze-cost p25) 10)
    (= (grind-cost p25) 15)
    (= (plane-cost p25) 10)
    (available p26)
    (colour p26 green)
    (wood p26 oak)
    (surface-condition p26 rough)
    (treatment p26 varnished)
    (goalsize p26 small)
    (= (spray-varnish-cost p26) 5)
    (= (glaze-cost p26) 10)
    (= (grind-cost p26) 15)
    (= (plane-cost p26) 10)
    (available p27)
    (colour p27 mauve)
    (wood p27 mahogany)
    (surface-condition p27 verysmooth)
    (treatment p27 colourfragments)
    (goalsize p27 large)
    (= (spray-varnish-cost p27) 15)
    (= (glaze-cost p27) 20)
    (= (grind-cost p27) 45)
    (= (plane-cost p27) 30)
    (unused p28)
    (goalsize p28 small)
    (= (spray-varnish-cost p28) 5)
    (= (glaze-cost p28) 10)
    (= (grind-cost p28) 15)
    (= (plane-cost p28) 10)
    (unused p29)
    (goalsize p29 large)
    (= (spray-varnish-cost p29) 15)
    (= (glaze-cost p29) 20)
    (= (grind-cost p29) 45)
    (= (plane-cost p29) 30)
    (unused p30)
    (goalsize p30 small)
    (= (spray-varnish-cost p30) 5)
    (= (glaze-cost p30) 10)
    (= (grind-cost p30) 15)
    (= (plane-cost p30) 10)
    (available p31)
    (colour p31 mauve)
    (wood p31 mahogany)
    (surface-condition p31 verysmooth)
    (treatment p31 varnished)
    (goalsize p31 small)
    (= (spray-varnish-cost p31) 5)
    (= (glaze-cost p31) 10)
    (= (grind-cost p31) 15)
    (= (plane-cost p31) 10)
    (unused p32)
    (goalsize p32 small)
    (= (spray-varnish-cost p32) 5)
    (= (glaze-cost p32) 10)
    (= (grind-cost p32) 15)
    (= (plane-cost p32) 10)
    (unused p33)
    (goalsize p33 medium)
    (= (spray-varnish-cost p33) 10)
    (= (glaze-cost p33) 15)
    (= (grind-cost p33) 30)
    (= (plane-cost p33) 20)
    (available p34)
    (colour p34 green)
    (wood p34 oak)
    (surface-condition p34 verysmooth)
    (treatment p34 colourfragments)
    (goalsize p34 small)
    (= (spray-varnish-cost p34) 5)
    (= (glaze-cost p34) 10)
    (= (grind-cost p34) 15)
    (= (plane-cost p34) 10)
    (available p35)
    (colour p35 red)
    (wood p35 oak)
    (surface-condition p35 smooth)
    (treatment p35 varnished)
    (goalsize p35 small)
    (= (spray-varnish-cost p35) 5)
    (= (glaze-cost p35) 10)
    (= (grind-cost p35) 15)
    (= (plane-cost p35) 10)
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s2)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 oak)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s5)
    (wood b4 pine)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 pine)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s8)
    (wood b6 walnut)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s1)
    (wood b7 walnut)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 teak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 beech)
    (surface-condition b9 smooth)
    (available b9)
  )
  (:goal
    (and
      (available p0)
      (wood p0 cherry)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 mauve)
      (treatment p1 varnished)
      (available p2)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (wood p3 beech)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 black)
      (surface-condition p4 smooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 mauve)
      (treatment p5 varnished)
      (available p6)
      (wood p6 pine)
      (treatment p6 glazed)
      (available p7)
      (colour p7 green)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 natural)
      (wood p8 walnut)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 natural)
      (wood p9 teak)
      (available p10)
      (colour p10 blue)
      (treatment p10 varnished)
      (available p11)
      (colour p11 natural)
      (wood p11 cherry)
      (available p12)
      (colour p12 mauve)
      (wood p12 oak)
      (available p13)
      (colour p13 green)
      (wood p13 beech)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 black)
      (wood p14 mahogany)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 red)
      (treatment p15 glazed)
      (available p16)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (wood p17 pine)
      (treatment p17 glazed)
      (available p18)
      (colour p18 white)
      (wood p18 walnut)
      (surface-condition p18 smooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 black)
      (wood p19 oak)
      (surface-condition p19 verysmooth)
      (available p20)
      (colour p20 mauve)
      (wood p20 walnut)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (colour p21 mauve)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 mauve)
      (treatment p22 varnished)
      (available p23)
      (colour p23 red)
      (wood p23 cherry)
      (available p24)
      (wood p24 beech)
      (surface-condition p24 smooth)
      (available p25)
      (wood p25 pine)
      (surface-condition p25 smooth)
      (available p26)
      (wood p26 oak)
      (treatment p26 glazed)
      (available p27)
      (colour p27 black)
      (wood p27 mahogany)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 natural)
      (wood p28 teak)
      (available p29)
      (colour p29 white)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 natural)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 white)
      (treatment p31 varnished)
      (available p32)
      (wood p32 oak)
      (treatment p32 varnished)
      (available p33)
      (wood p33 beech)
      (treatment p33 varnished)
      (available p34)
      (colour p34 white)
      (wood p34 oak)
      (surface-condition p34 verysmooth)
      (available p35)
      (wood p35 oak)
      (surface-condition p35 verysmooth)
    )
  )
  (:metric minimize (total-cost))
)
