; woodworking task with 62 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 271462

(define (problem wood-prob-sat-31)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue green white red black mauve - acolour
    oak teak walnut cherry beech mahogany pine - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 mauve)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (has-colour spray-varnisher2 mauve)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (available p12)
    (colour p12 white)
    (wood p12 pine)
    (surface-condition p12 rough)
    (treatment p12 glazed)
    (goalsize p12 large)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (available p15)
    (colour p15 red)
    (wood p15 cherry)
    (surface-condition p15 rough)
    (treatment p15 colourfragments)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (available p22)
    (colour p22 blue)
    (wood p22 mahogany)
    (surface-condition p22 verysmooth)
    (treatment p22 varnished)
    (goalsize p22 medium)
    
    
    
    
    (available p23)
    (colour p23 blue)
    (wood p23 oak)
    (surface-condition p23 rough)
    (treatment p23 colourfragments)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 medium)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (available p30)
    (colour p30 mauve)
    (wood p30 pine)
    (surface-condition p30 smooth)
    (treatment p30 varnished)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (available p35)
    (colour p35 natural)
    (wood p35 mahogany)
    (surface-condition p35 rough)
    (treatment p35 glazed)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (available p40)
    (colour p40 blue)
    (wood p40 cherry)
    (surface-condition p40 verysmooth)
    (treatment p40 varnished)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (available p42)
    (colour p42 blue)
    (wood p42 pine)
    (surface-condition p42 verysmooth)
    (treatment p42 colourfragments)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 large)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (available p57)
    (colour p57 white)
    (wood p57 cherry)
    (surface-condition p57 smooth)
    (treatment p57 colourfragments)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (boardsize b0 s11)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s5)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s8)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s2)
    (wood b4 mahogany)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s10)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s4)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s5)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s11)
    (wood b8 pine)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s7)
    (wood b9 walnut)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s6)
    (wood b10 walnut)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s6)
    (wood b11 walnut)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s2)
    (wood b12 walnut)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s9)
    (wood b13 teak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s2)
    (wood b14 teak)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s8)
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
    (boardsize b18 s2)
    (wood b18 beech)
    (surface-condition b18 smooth)
    (available b18)
  )
  (:goal
    (and
      (available p0)
      (colour p0 red)
      (wood p0 beech)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 red)
      (wood p1 walnut)
      (surface-condition p1 smooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 mauve)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 red)
      (wood p3 mahogany)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 red)
      (wood p4 cherry)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (colour p5 red)
      (treatment p5 varnished)
      (available p6)
      (colour p6 green)
      (wood p6 oak)
      (treatment p6 varnished)
      (available p7)
      (colour p7 red)
      (wood p7 beech)
      (surface-condition p7 verysmooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 white)
      (surface-condition p8 verysmooth)
      (available p9)
      (wood p9 pine)
      (treatment p9 varnished)
      (available p10)
      (colour p10 black)
      (surface-condition p10 verysmooth)
      (available p11)
      (colour p11 natural)
      (wood p11 teak)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 black)
      (wood p12 pine)
      (available p13)
      (wood p13 cherry)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 mauve)
      (wood p14 beech)
      (treatment p14 glazed)
      (available p15)
      (wood p15 cherry)
      (treatment p15 glazed)
      (available p16)
      (wood p16 pine)
      (treatment p16 glazed)
      (available p17)
      (colour p17 mauve)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 green)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 red)
      (wood p19 oak)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (wood p20 pine)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 green)
      (surface-condition p21 verysmooth)
      (available p22)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (wood p23 oak)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 green)
      (wood p24 beech)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 mauve)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 natural)
      (wood p26 teak)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 blue)
      (treatment p27 glazed)
      (available p28)
      (colour p28 black)
      (wood p28 walnut)
      (surface-condition p28 verysmooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 red)
      (wood p29 walnut)
      (available p30)
      (wood p30 pine)
      (surface-condition p30 verysmooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 natural)
      (wood p31 teak)
      (treatment p31 varnished)
      (available p32)
      (wood p32 mahogany)
      (surface-condition p32 verysmooth)
      (available p33)
      (colour p33 blue)
      (wood p33 beech)
      (available p34)
      (colour p34 white)
      (treatment p34 glazed)
      (available p35)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 natural)
      (treatment p36 glazed)
      (available p37)
      (wood p37 teak)
      (treatment p37 varnished)
      (available p38)
      (wood p38 oak)
      (surface-condition p38 verysmooth)
      (available p39)
      (colour p39 natural)
      (wood p39 walnut)
      (available p40)
      (colour p40 mauve)
      (wood p40 cherry)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 red)
      (wood p41 walnut)
      (surface-condition p41 verysmooth)
      (treatment p41 glazed)
      (available p42)
      (surface-condition p42 smooth)
      (treatment p42 glazed)
      (available p43)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 red)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 blue)
      (wood p45 walnut)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 black)
      (treatment p46 varnished)
      (available p47)
      (colour p47 mauve)
      (treatment p47 varnished)
      (available p48)
      (colour p48 green)
      (treatment p48 glazed)
      (available p49)
      (wood p49 oak)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 blue)
      (wood p50 pine)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 mauve)
      (wood p51 cherry)
      (treatment p51 glazed)
      (available p52)
      (colour p52 blue)
      (wood p52 beech)
      (treatment p52 glazed)
      (available p53)
      (colour p53 green)
      (treatment p53 varnished)
      (available p54)
      (colour p54 white)
      (surface-condition p54 verysmooth)
      (available p55)
      (surface-condition p55 verysmooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 white)
      (wood p56 walnut)
      (available p57)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 black)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (wood p59 beech)
      (surface-condition p59 smooth)
      (available p60)
      (colour p60 mauve)
      (wood p60 pine)
      (surface-condition p60 smooth)
      (treatment p60 glazed)
      (available p61)
      (wood p61 cherry)
      (treatment p61 glazed)
    )
  )
  
)
