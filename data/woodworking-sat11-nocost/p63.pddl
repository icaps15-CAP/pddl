; woodworking task with 56 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 788069

(define (problem wood-prob-sat-63)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green red black blue white mauve - acolour
    cherry pine walnut oak beech teak mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 - aboardsize
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
    (boardsize-successor s11 s12)
    (has-colour glazer0 blue)
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 natural)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (available p19)
    (colour p19 natural)
    (wood p19 oak)
    (surface-condition p19 smooth)
    (treatment p19 glazed)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 white)
    (wood p25 cherry)
    (surface-condition p25 verysmooth)
    (treatment p25 colourfragments)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (available p29)
    (colour p29 black)
    (wood p29 walnut)
    (surface-condition p29 verysmooth)
    (treatment p29 colourfragments)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (available p31)
    (colour p31 mauve)
    (wood p31 beech)
    (surface-condition p31 rough)
    (treatment p31 glazed)
    (goalsize p31 large)
    
    
    
    
    (available p32)
    (colour p32 red)
    (wood p32 walnut)
    (surface-condition p32 verysmooth)
    (treatment p32 varnished)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (available p50)
    (colour p50 red)
    (wood p50 cherry)
    (surface-condition p50 verysmooth)
    (treatment p50 glazed)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s5)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s2)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 mahogany)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s2)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 oak)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s12)
    (wood b10 pine)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s1)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 walnut)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s9)
    (wood b15 teak)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s7)
    (wood b16 teak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s4)
    (wood b17 teak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 beech)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s7)
    (wood b19 beech)
    (surface-condition b19 rough)
    (available b19)
  )
  (:goal
    (and
      (available p0)
      (colour p0 white)
      (wood p0 cherry)
      (treatment p0 varnished)
      (available p1)
      (colour p1 green)
      (surface-condition p1 verysmooth)
      (available p2)
      (wood p2 mahogany)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (wood p3 pine)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 blue)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 blue)
      (wood p5 walnut)
      (available p6)
      (colour p6 natural)
      (wood p6 beech)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 natural)
      (treatment p7 varnished)
      (available p8)
      (colour p8 natural)
      (wood p8 oak)
      (surface-condition p8 smooth)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (wood p10 mahogany)
      (treatment p10 glazed)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 blue)
      (wood p12 pine)
      (surface-condition p12 smooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 green)
      (wood p13 oak)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (wood p14 cherry)
      (surface-condition p14 verysmooth)
      (available p15)
      (wood p15 teak)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 white)
      (surface-condition p16 smooth)
      (available p17)
      (colour p17 green)
      (wood p17 oak)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 natural)
      (treatment p18 varnished)
      (available p19)
      (colour p19 white)
      (wood p19 oak)
      (surface-condition p19 verysmooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 blue)
      (wood p20 oak)
      (available p21)
      (surface-condition p21 smooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 white)
      (treatment p22 glazed)
      (available p23)
      (colour p23 blue)
      (wood p23 beech)
      (surface-condition p23 smooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 mauve)
      (treatment p24 glazed)
      (available p25)
      (colour p25 blue)
      (wood p25 cherry)
      (available p26)
      (colour p26 blue)
      (wood p26 walnut)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 black)
      (wood p27 cherry)
      (surface-condition p27 verysmooth)
      (treatment p27 varnished)
      (available p28)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 natural)
      (wood p29 walnut)
      (treatment p29 glazed)
      (available p30)
      (colour p30 blue)
      (treatment p30 glazed)
      (available p31)
      (colour p31 black)
      (surface-condition p31 verysmooth)
      (available p32)
      (colour p32 white)
      (wood p32 walnut)
      (available p33)
      (wood p33 cherry)
      (surface-condition p33 smooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 mauve)
      (wood p34 teak)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 white)
      (wood p37 mahogany)
      (available p38)
      (wood p38 pine)
      (surface-condition p38 verysmooth)
      (available p39)
      (colour p39 black)
      (wood p39 teak)
      (surface-condition p39 smooth)
      (available p40)
      (colour p40 red)
      (wood p40 teak)
      (surface-condition p40 verysmooth)
      (treatment p40 glazed)
      (available p41)
      (wood p41 mahogany)
      (treatment p41 glazed)
      (available p42)
      (colour p42 red)
      (wood p42 mahogany)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (wood p43 teak)
      (surface-condition p43 smooth)
      (available p44)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (wood p46 mahogany)
      (treatment p46 glazed)
      (available p47)
      (colour p47 natural)
      (wood p47 oak)
      (treatment p47 glazed)
      (available p48)
      (colour p48 black)
      (wood p48 beech)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 green)
      (wood p49 pine)
      (available p50)
      (colour p50 green)
      (wood p50 cherry)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (wood p51 mahogany)
      (surface-condition p51 smooth)
      (treatment p51 varnished)
      (available p52)
      (colour p52 blue)
      (wood p52 oak)
      (available p53)
      (wood p53 teak)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 blue)
      (wood p54 oak)
      (available p55)
      (colour p55 natural)
      (wood p55 cherry)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
    )
  )
  
)
