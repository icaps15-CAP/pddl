; woodworking task with 50 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 533652

(define (problem wood-prob)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue green red mauve white black - acolour
    walnut pine beech cherry mahogany oak teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 - aboardsize
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
    (boardsize-successor s9 s10)
    (has-colour glazer0 blue)
    (has-colour glazer0 black)
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 green)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 red)
    (wood p0 beech)
    (surface-condition p0 verysmooth)
    (treatment p0 varnished)
    (goalsize p0 small)
    (= (spray-varnish-cost p0) 5)
    (= (glaze-cost p0) 10)
    (= (grind-cost p0) 15)
    (= (plane-cost p0) 10)
    (available p1)
    (colour p1 natural)
    (wood p1 teak)
    (surface-condition p1 verysmooth)
    (treatment p1 colourfragments)
    (goalsize p1 large)
    (= (spray-varnish-cost p1) 15)
    (= (glaze-cost p1) 20)
    (= (grind-cost p1) 45)
    (= (plane-cost p1) 30)
    (unused p2)
    (goalsize p2 small)
    (= (spray-varnish-cost p2) 5)
    (= (glaze-cost p2) 10)
    (= (grind-cost p2) 15)
    (= (plane-cost p2) 10)
    (available p3)
    (colour p3 blue)
    (wood p3 oak)
    (surface-condition p3 verysmooth)
    (treatment p3 glazed)
    (goalsize p3 large)
    (= (spray-varnish-cost p3) 15)
    (= (glaze-cost p3) 20)
    (= (grind-cost p3) 45)
    (= (plane-cost p3) 30)
    (unused p4)
    (goalsize p4 small)
    (= (spray-varnish-cost p4) 5)
    (= (glaze-cost p4) 10)
    (= (grind-cost p4) 15)
    (= (plane-cost p4) 10)
    (unused p5)
    (goalsize p5 medium)
    (= (spray-varnish-cost p5) 10)
    (= (glaze-cost p5) 15)
    (= (grind-cost p5) 30)
    (= (plane-cost p5) 20)
    (unused p6)
    (goalsize p6 small)
    (= (spray-varnish-cost p6) 5)
    (= (glaze-cost p6) 10)
    (= (grind-cost p6) 15)
    (= (plane-cost p6) 10)
    (unused p7)
    (goalsize p7 medium)
    (= (spray-varnish-cost p7) 10)
    (= (glaze-cost p7) 15)
    (= (grind-cost p7) 30)
    (= (plane-cost p7) 20)
    (unused p8)
    (goalsize p8 small)
    (= (spray-varnish-cost p8) 5)
    (= (glaze-cost p8) 10)
    (= (grind-cost p8) 15)
    (= (plane-cost p8) 10)
    (unused p9)
    (goalsize p9 small)
    (= (spray-varnish-cost p9) 5)
    (= (glaze-cost p9) 10)
    (= (grind-cost p9) 15)
    (= (plane-cost p9) 10)
    (unused p10)
    (goalsize p10 small)
    (= (spray-varnish-cost p10) 5)
    (= (glaze-cost p10) 10)
    (= (grind-cost p10) 15)
    (= (plane-cost p10) 10)
    (unused p11)
    (goalsize p11 medium)
    (= (spray-varnish-cost p11) 10)
    (= (glaze-cost p11) 15)
    (= (grind-cost p11) 30)
    (= (plane-cost p11) 20)
    (available p12)
    (colour p12 mauve)
    (wood p12 mahogany)
    (surface-condition p12 smooth)
    (treatment p12 colourfragments)
    (goalsize p12 medium)
    (= (spray-varnish-cost p12) 10)
    (= (glaze-cost p12) 15)
    (= (grind-cost p12) 30)
    (= (plane-cost p12) 20)
    (unused p13)
    (goalsize p13 medium)
    (= (spray-varnish-cost p13) 10)
    (= (glaze-cost p13) 15)
    (= (grind-cost p13) 30)
    (= (plane-cost p13) 20)
    (unused p14)
    (goalsize p14 medium)
    (= (spray-varnish-cost p14) 10)
    (= (glaze-cost p14) 15)
    (= (grind-cost p14) 30)
    (= (plane-cost p14) 20)
    (unused p15)
    (goalsize p15 small)
    (= (spray-varnish-cost p15) 5)
    (= (glaze-cost p15) 10)
    (= (grind-cost p15) 15)
    (= (plane-cost p15) 10)
    (unused p16)
    (goalsize p16 medium)
    (= (spray-varnish-cost p16) 10)
    (= (glaze-cost p16) 15)
    (= (grind-cost p16) 30)
    (= (plane-cost p16) 20)
    (available p17)
    (colour p17 natural)
    (wood p17 walnut)
    (surface-condition p17 rough)
    (treatment p17 colourfragments)
    (goalsize p17 small)
    (= (spray-varnish-cost p17) 5)
    (= (glaze-cost p17) 10)
    (= (grind-cost p17) 15)
    (= (plane-cost p17) 10)
    (unused p18)
    (goalsize p18 large)
    (= (spray-varnish-cost p18) 15)
    (= (glaze-cost p18) 20)
    (= (grind-cost p18) 45)
    (= (plane-cost p18) 30)
    (unused p19)
    (goalsize p19 medium)
    (= (spray-varnish-cost p19) 10)
    (= (glaze-cost p19) 15)
    (= (grind-cost p19) 30)
    (= (plane-cost p19) 20)
    (unused p20)
    (goalsize p20 small)
    (= (spray-varnish-cost p20) 5)
    (= (glaze-cost p20) 10)
    (= (grind-cost p20) 15)
    (= (plane-cost p20) 10)
    (unused p21)
    (goalsize p21 large)
    (= (spray-varnish-cost p21) 15)
    (= (glaze-cost p21) 20)
    (= (grind-cost p21) 45)
    (= (plane-cost p21) 30)
    (available p22)
    (colour p22 black)
    (wood p22 walnut)
    (surface-condition p22 smooth)
    (treatment p22 colourfragments)
    (goalsize p22 medium)
    (= (spray-varnish-cost p22) 10)
    (= (glaze-cost p22) 15)
    (= (grind-cost p22) 30)
    (= (plane-cost p22) 20)
    (unused p23)
    (goalsize p23 large)
    (= (spray-varnish-cost p23) 15)
    (= (glaze-cost p23) 20)
    (= (grind-cost p23) 45)
    (= (plane-cost p23) 30)
    (unused p24)
    (goalsize p24 large)
    (= (spray-varnish-cost p24) 15)
    (= (glaze-cost p24) 20)
    (= (grind-cost p24) 45)
    (= (plane-cost p24) 30)
    (available p25)
    (colour p25 mauve)
    (wood p25 cherry)
    (surface-condition p25 verysmooth)
    (treatment p25 glazed)
    (goalsize p25 medium)
    (= (spray-varnish-cost p25) 10)
    (= (glaze-cost p25) 15)
    (= (grind-cost p25) 30)
    (= (plane-cost p25) 20)
    (unused p26)
    (goalsize p26 medium)
    (= (spray-varnish-cost p26) 10)
    (= (glaze-cost p26) 15)
    (= (grind-cost p26) 30)
    (= (plane-cost p26) 20)
    (unused p27)
    (goalsize p27 large)
    (= (spray-varnish-cost p27) 15)
    (= (glaze-cost p27) 20)
    (= (grind-cost p27) 45)
    (= (plane-cost p27) 30)
    (unused p28)
    (goalsize p28 large)
    (= (spray-varnish-cost p28) 15)
    (= (glaze-cost p28) 20)
    (= (grind-cost p28) 45)
    (= (plane-cost p28) 30)
    (unused p29)
    (goalsize p29 medium)
    (= (spray-varnish-cost p29) 10)
    (= (glaze-cost p29) 15)
    (= (grind-cost p29) 30)
    (= (plane-cost p29) 20)
    (unused p30)
    (goalsize p30 medium)
    (= (spray-varnish-cost p30) 10)
    (= (glaze-cost p30) 15)
    (= (grind-cost p30) 30)
    (= (plane-cost p30) 20)
    (unused p31)
    (goalsize p31 medium)
    (= (spray-varnish-cost p31) 10)
    (= (glaze-cost p31) 15)
    (= (grind-cost p31) 30)
    (= (plane-cost p31) 20)
    (unused p32)
    (goalsize p32 small)
    (= (spray-varnish-cost p32) 5)
    (= (glaze-cost p32) 10)
    (= (grind-cost p32) 15)
    (= (plane-cost p32) 10)
    (unused p33)
    (goalsize p33 small)
    (= (spray-varnish-cost p33) 5)
    (= (glaze-cost p33) 10)
    (= (grind-cost p33) 15)
    (= (plane-cost p33) 10)
    (unused p34)
    (goalsize p34 medium)
    (= (spray-varnish-cost p34) 10)
    (= (glaze-cost p34) 15)
    (= (grind-cost p34) 30)
    (= (plane-cost p34) 20)
    (unused p35)
    (goalsize p35 small)
    (= (spray-varnish-cost p35) 5)
    (= (glaze-cost p35) 10)
    (= (grind-cost p35) 15)
    (= (plane-cost p35) 10)
    (unused p36)
    (goalsize p36 medium)
    (= (spray-varnish-cost p36) 10)
    (= (glaze-cost p36) 15)
    (= (grind-cost p36) 30)
    (= (plane-cost p36) 20)
    (unused p37)
    (goalsize p37 small)
    (= (spray-varnish-cost p37) 5)
    (= (glaze-cost p37) 10)
    (= (grind-cost p37) 15)
    (= (plane-cost p37) 10)
    (unused p38)
    (goalsize p38 large)
    (= (spray-varnish-cost p38) 15)
    (= (glaze-cost p38) 20)
    (= (grind-cost p38) 45)
    (= (plane-cost p38) 30)
    (unused p39)
    (goalsize p39 large)
    (= (spray-varnish-cost p39) 15)
    (= (glaze-cost p39) 20)
    (= (grind-cost p39) 45)
    (= (plane-cost p39) 30)
    (unused p40)
    (goalsize p40 small)
    (= (spray-varnish-cost p40) 5)
    (= (glaze-cost p40) 10)
    (= (grind-cost p40) 15)
    (= (plane-cost p40) 10)
    (unused p41)
    (goalsize p41 large)
    (= (spray-varnish-cost p41) 15)
    (= (glaze-cost p41) 20)
    (= (grind-cost p41) 45)
    (= (plane-cost p41) 30)
    (unused p42)
    (goalsize p42 medium)
    (= (spray-varnish-cost p42) 10)
    (= (glaze-cost p42) 15)
    (= (grind-cost p42) 30)
    (= (plane-cost p42) 20)
    (unused p43)
    (goalsize p43 small)
    (= (spray-varnish-cost p43) 5)
    (= (glaze-cost p43) 10)
    (= (grind-cost p43) 15)
    (= (plane-cost p43) 10)
    (unused p44)
    (goalsize p44 small)
    (= (spray-varnish-cost p44) 5)
    (= (glaze-cost p44) 10)
    (= (grind-cost p44) 15)
    (= (plane-cost p44) 10)
    (unused p45)
    (goalsize p45 large)
    (= (spray-varnish-cost p45) 15)
    (= (glaze-cost p45) 20)
    (= (grind-cost p45) 45)
    (= (plane-cost p45) 30)
    (unused p46)
    (goalsize p46 small)
    (= (spray-varnish-cost p46) 5)
    (= (glaze-cost p46) 10)
    (= (grind-cost p46) 15)
    (= (plane-cost p46) 10)
    (available p47)
    (colour p47 white)
    (wood p47 oak)
    (surface-condition p47 smooth)
    (treatment p47 colourfragments)
    (goalsize p47 medium)
    (= (spray-varnish-cost p47) 10)
    (= (glaze-cost p47) 15)
    (= (grind-cost p47) 30)
    (= (plane-cost p47) 20)
    (available p48)
    (colour p48 white)
    (wood p48 mahogany)
    (surface-condition p48 verysmooth)
    (treatment p48 glazed)
    (goalsize p48 small)
    (= (spray-varnish-cost p48) 5)
    (= (glaze-cost p48) 10)
    (= (grind-cost p48) 15)
    (= (plane-cost p48) 10)
    (unused p49)
    (goalsize p49 large)
    (= (spray-varnish-cost p49) 15)
    (= (glaze-cost p49) 20)
    (= (grind-cost p49) 45)
    (= (plane-cost p49) 30)
    (boardsize b0 s5)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s6)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s3)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s3)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s10)
    (wood b8 walnut)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s5)
    (wood b9 walnut)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s6)
    (wood b10 teak)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s10)
    (wood b11 teak)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s1)
    (wood b12 teak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 beech)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 beech)
    (surface-condition b14 rough)
    (available b14)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (wood p0 beech)
      (surface-condition p0 smooth)
      (treatment p0 glazed)
      (available p1)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 black)
      (wood p2 teak)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 red)
      (wood p3 oak)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (wood p5 mahogany)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 white)
      (wood p6 teak)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 green)
      (wood p7 walnut)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 black)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 white)
      (wood p9 cherry)
      (surface-condition p9 verysmooth)
      (available p10)
      (colour p10 white)
      (wood p10 cherry)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 white)
      (wood p11 walnut)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 natural)
      (wood p12 mahogany)
      (treatment p12 glazed)
      (available p13)
      (colour p13 red)
      (treatment p13 varnished)
      (available p14)
      (colour p14 green)
      (wood p14 cherry)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (wood p15 beech)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 red)
      (wood p16 oak)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 pine)
      (treatment p18 glazed)
      (available p19)
      (colour p19 white)
      (wood p19 beech)
      (treatment p19 glazed)
      (available p20)
      (colour p20 black)
      (wood p20 teak)
      (treatment p20 glazed)
      (available p21)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 natural)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 black)
      (wood p23 mahogany)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (wood p24 teak)
      (surface-condition p24 verysmooth)
      (available p25)
      (colour p25 red)
      (wood p25 cherry)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 red)
      (wood p26 beech)
      (surface-condition p26 verysmooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 green)
      (surface-condition p27 verysmooth)
      (available p28)
      (wood p28 cherry)
      (surface-condition p28 smooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 red)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 red)
      (wood p30 pine)
      (surface-condition p30 verysmooth)
      (available p31)
      (colour p31 mauve)
      (surface-condition p31 smooth)
      (available p32)
      (colour p32 natural)
      (wood p32 cherry)
      (available p33)
      (colour p33 red)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 white)
      (treatment p34 varnished)
      (available p35)
      (colour p35 mauve)
      (wood p35 teak)
      (available p36)
      (colour p36 blue)
      (wood p36 oak)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (surface-condition p37 smooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 black)
      (wood p38 beech)
      (surface-condition p38 smooth)
      (available p39)
      (wood p39 walnut)
      (treatment p39 glazed)
      (available p40)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 green)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 red)
      (wood p42 cherry)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 green)
      (treatment p43 glazed)
      (available p44)
      (colour p44 black)
      (wood p44 pine)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 natural)
      (wood p45 teak)
      (available p46)
      (wood p46 teak)
      (treatment p46 glazed)
      (available p47)
      (colour p47 green)
      (wood p47 oak)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 black)
      (wood p48 mahogany)
      (available p49)
      (colour p49 red)
      (wood p49 cherry)
    )
  )
  (:metric minimize (total-cost))
)
