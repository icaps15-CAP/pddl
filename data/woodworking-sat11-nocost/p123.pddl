; woodworking task with 56 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 450516

(define (problem wood-prob-sat-123)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve black green blue white red - acolour
    cherry mahogany beech pine oak walnut teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 - board
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
    (has-colour glazer0 blue)
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 mauve)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 white)
    (wood p7 pine)
    (surface-condition p7 smooth)
    (treatment p7 colourfragments)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
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
    (wood p13 cherry)
    (surface-condition p13 rough)
    (treatment p13 colourfragments)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (available p15)
    (colour p15 blue)
    (wood p15 cherry)
    (surface-condition p15 verysmooth)
    (treatment p15 colourfragments)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (available p19)
    (colour p19 green)
    (wood p19 teak)
    (surface-condition p19 verysmooth)
    (treatment p19 varnished)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (available p21)
    (colour p21 white)
    (wood p21 walnut)
    (surface-condition p21 verysmooth)
    (treatment p21 colourfragments)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (available p26)
    (colour p26 red)
    (wood p26 mahogany)
    (surface-condition p26 rough)
    (treatment p26 glazed)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (available p31)
    (colour p31 green)
    (wood p31 pine)
    (surface-condition p31 smooth)
    (treatment p31 colourfragments)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (available p33)
    (colour p33 red)
    (wood p33 oak)
    (surface-condition p33 rough)
    (treatment p33 glazed)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (available p41)
    (colour p41 natural)
    (wood p41 cherry)
    (surface-condition p41 rough)
    (treatment p41 colourfragments)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 smooth)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s1)
    (wood b5 mahogany)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s3)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 pine)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s5)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s5)
    (wood b10 walnut)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s5)
    (wood b11 teak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s1)
    (wood b12 teak)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s9)
    (wood b13 beech)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s6)
    (wood b14 beech)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s7)
    (wood b15 beech)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 beech)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s6)
    (wood b17 beech)
    (surface-condition b17 rough)
    (available b17)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (treatment p0 varnished)
      (available p1)
      (colour p1 blue)
      (surface-condition p1 smooth)
      (available p2)
      (colour p2 mauve)
      (wood p2 pine)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (wood p3 mahogany)
      (surface-condition p3 smooth)
      (available p4)
      (wood p4 teak)
      (treatment p4 varnished)
      (available p5)
      (colour p5 natural)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 white)
      (wood p6 beech)
      (available p7)
      (colour p7 green)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (colour p8 white)
      (wood p8 teak)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (wood p9 cherry)
      (surface-condition p9 verysmooth)
      (treatment p9 glazed)
      (available p10)
      (wood p10 cherry)
      (treatment p10 varnished)
      (available p11)
      (wood p11 mahogany)
      (treatment p11 varnished)
      (available p12)
      (colour p12 natural)
      (wood p12 beech)
      (surface-condition p12 verysmooth)
      (treatment p12 glazed)
      (available p13)
      (wood p13 cherry)
      (treatment p13 glazed)
      (available p14)
      (wood p14 cherry)
      (treatment p14 varnished)
      (available p15)
      (colour p15 mauve)
      (wood p15 cherry)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 red)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (wood p18 beech)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 white)
      (wood p19 teak)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (colour p20 blue)
      (wood p20 mahogany)
      (surface-condition p20 verysmooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 natural)
      (wood p21 walnut)
      (treatment p21 glazed)
      (available p22)
      (colour p22 red)
      (wood p22 cherry)
      (available p23)
      (wood p23 beech)
      (treatment p23 glazed)
      (available p24)
      (wood p24 beech)
      (treatment p24 glazed)
      (available p25)
      (wood p25 pine)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 mauve)
      (wood p26 mahogany)
      (surface-condition p26 verysmooth)
      (available p27)
      (wood p27 mahogany)
      (surface-condition p27 smooth)
      (available p28)
      (wood p28 walnut)
      (treatment p28 varnished)
      (available p29)
      (colour p29 black)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 white)
      (wood p30 cherry)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 black)
      (wood p31 pine)
      (available p32)
      (colour p32 black)
      (wood p32 cherry)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 blue)
      (surface-condition p33 smooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 mauve)
      (treatment p34 varnished)
      (available p35)
      (colour p35 mauve)
      (wood p35 pine)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 mauve)
      (wood p36 oak)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 green)
      (treatment p37 glazed)
      (available p38)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 mauve)
      (wood p39 beech)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 blue)
      (wood p40 beech)
      (available p41)
      (wood p41 cherry)
      (surface-condition p41 smooth)
      (available p42)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (wood p43 walnut)
      (surface-condition p43 smooth)
      (available p44)
      (colour p44 red)
      (treatment p44 varnished)
      (available p45)
      (colour p45 natural)
      (treatment p45 glazed)
      (available p46)
      (wood p46 beech)
      (surface-condition p46 smooth)
      (available p47)
      (colour p47 natural)
      (wood p47 pine)
      (available p48)
      (colour p48 green)
      (wood p48 beech)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (wood p49 beech)
      (treatment p49 varnished)
      (available p50)
      (colour p50 black)
      (wood p50 beech)
      (available p51)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (wood p52 teak)
      (treatment p52 glazed)
      (available p53)
      (wood p53 mahogany)
      (treatment p53 varnished)
      (available p54)
      (colour p54 red)
      (wood p54 pine)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 white)
      (wood p55 beech)
    )
  )
  
)
