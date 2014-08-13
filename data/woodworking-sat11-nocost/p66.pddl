; woodworking task with 65 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 495168

(define (problem wood-prob-sat-66)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    blue green red mauve black white - acolour
    pine oak beech mahogany walnut cherry teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 - part
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
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 natural)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (available p5)
    (colour p5 natural)
    (wood p5 teak)
    (surface-condition p5 smooth)
    (treatment p5 glazed)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 black)
    (wood p10 pine)
    (surface-condition p10 verysmooth)
    (treatment p10 glazed)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 mauve)
    (wood p12 oak)
    (surface-condition p12 verysmooth)
    (treatment p12 colourfragments)
    (goalsize p12 large)
    
    
    
    
    (available p13)
    (colour p13 green)
    (wood p13 mahogany)
    (surface-condition p13 rough)
    (treatment p13 varnished)
    (goalsize p13 large)
    
    
    
    
    (available p14)
    (colour p14 white)
    (wood p14 beech)
    (surface-condition p14 rough)
    (treatment p14 colourfragments)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (available p30)
    (colour p30 white)
    (wood p30 pine)
    (surface-condition p30 rough)
    (treatment p30 glazed)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (available p33)
    (colour p33 mauve)
    (wood p33 walnut)
    (surface-condition p33 verysmooth)
    (treatment p33 colourfragments)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 white)
    (wood p37 beech)
    (surface-condition p37 verysmooth)
    (treatment p37 glazed)
    (goalsize p37 medium)
    
    
    
    
    (available p38)
    (colour p38 red)
    (wood p38 oak)
    (surface-condition p38 verysmooth)
    (treatment p38 colourfragments)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (available p47)
    (colour p47 blue)
    (wood p47 cherry)
    (surface-condition p47 smooth)
    (treatment p47 colourfragments)
    (goalsize p47 small)
    
    
    
    
    (available p48)
    (colour p48 white)
    (wood p48 walnut)
    (surface-condition p48 smooth)
    (treatment p48 colourfragments)
    (goalsize p48 large)
    
    
    
    
    (available p49)
    (colour p49 white)
    (wood p49 beech)
    (surface-condition p49 rough)
    (treatment p49 glazed)
    (goalsize p49 small)
    
    
    
    
    (available p50)
    (colour p50 natural)
    (wood p50 teak)
    (surface-condition p50 smooth)
    (treatment p50 colourfragments)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (available p58)
    (colour p58 white)
    (wood p58 teak)
    (surface-condition p58 rough)
    (treatment p58 glazed)
    (goalsize p58 large)
    
    
    
    
    (available p59)
    (colour p59 black)
    (wood p59 oak)
    (surface-condition p59 verysmooth)
    (treatment p59 colourfragments)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (available p63)
    (colour p63 natural)
    (wood p63 cherry)
    (surface-condition p63 smooth)
    (treatment p63 glazed)
    (goalsize p63 small)
    
    
    
    
    (available p64)
    (colour p64 black)
    (wood p64 pine)
    (surface-condition p64 smooth)
    (treatment p64 colourfragments)
    (goalsize p64 large)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s2)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s6)
    (wood b5 mahogany)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s11)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s3)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s9)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s9)
    (wood b10 pine)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s5)
    (wood b11 pine)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s5)
    (wood b12 walnut)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 walnut)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s7)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s6)
    (wood b15 teak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 teak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s4)
    (wood b17 teak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s10)
    (wood b18 beech)
    (surface-condition b18 smooth)
    (available b18)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (wood p0 oak)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 mauve)
      (treatment p1 glazed)
      (available p2)
      (colour p2 green)
      (treatment p2 varnished)
      (available p3)
      (colour p3 red)
      (treatment p3 varnished)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 white)
      (wood p5 teak)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 natural)
      (treatment p6 varnished)
      (available p7)
      (wood p7 walnut)
      (surface-condition p7 verysmooth)
      (available p8)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 green)
      (wood p9 mahogany)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 red)
      (wood p10 pine)
      (surface-condition p10 verysmooth)
      (available p11)
      (colour p11 mauve)
      (treatment p11 varnished)
      (available p12)
      (colour p12 green)
      (treatment p12 glazed)
      (available p13)
      (colour p13 red)
      (wood p13 mahogany)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 mauve)
      (treatment p15 varnished)
      (available p16)
      (colour p16 white)
      (wood p16 cherry)
      (treatment p16 varnished)
      (available p17)
      (colour p17 red)
      (wood p17 mahogany)
      (available p18)
      (colour p18 mauve)
      (surface-condition p18 verysmooth)
      (available p19)
      (colour p19 white)
      (wood p19 cherry)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 green)
      (wood p20 pine)
      (available p21)
      (surface-condition p21 verysmooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 white)
      (wood p22 oak)
      (treatment p22 varnished)
      (available p23)
      (colour p23 mauve)
      (wood p23 pine)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 white)
      (wood p24 walnut)
      (available p25)
      (colour p25 white)
      (wood p25 cherry)
      (available p26)
      (colour p26 white)
      (wood p26 cherry)
      (available p27)
      (colour p27 red)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (wood p28 mahogany)
      (treatment p28 varnished)
      (available p29)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (colour p31 mauve)
      (surface-condition p31 verysmooth)
      (available p32)
      (wood p32 oak)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 red)
      (wood p33 walnut)
      (surface-condition p33 smooth)
      (available p34)
      (colour p34 green)
      (treatment p34 glazed)
      (available p35)
      (colour p35 natural)
      (wood p35 teak)
      (available p36)
      (colour p36 red)
      (wood p36 cherry)
      (available p37)
      (colour p37 red)
      (surface-condition p37 verysmooth)
      (available p38)
      (colour p38 natural)
      (treatment p38 glazed)
      (available p39)
      (colour p39 blue)
      (wood p39 pine)
      (treatment p39 varnished)
      (available p40)
      (colour p40 black)
      (wood p40 teak)
      (surface-condition p40 smooth)
      (available p41)
      (wood p41 walnut)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 red)
      (treatment p42 varnished)
      (available p43)
      (colour p43 mauve)
      (wood p43 pine)
      (surface-condition p43 smooth)
      (treatment p43 varnished)
      (available p44)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 green)
      (wood p45 pine)
      (surface-condition p45 verysmooth)
      (available p46)
      (colour p46 black)
      (wood p46 walnut)
      (treatment p46 varnished)
      (available p47)
      (wood p47 cherry)
      (treatment p47 glazed)
      (available p48)
      (colour p48 green)
      (wood p48 walnut)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 natural)
      (wood p49 beech)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 green)
      (surface-condition p50 smooth)
      (treatment p50 glazed)
      (available p51)
      (colour p51 white)
      (wood p51 teak)
      (treatment p51 varnished)
      (available p52)
      (colour p52 white)
      (treatment p52 varnished)
      (available p53)
      (colour p53 mauve)
      (wood p53 beech)
      (available p54)
      (colour p54 white)
      (surface-condition p54 smooth)
      (treatment p54 glazed)
      (available p55)
      (surface-condition p55 verysmooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 black)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 green)
      (wood p57 pine)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (wood p58 teak)
      (surface-condition p58 verysmooth)
      (available p59)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 blue)
      (wood p60 mahogany)
      (available p61)
      (colour p61 black)
      (treatment p61 varnished)
      (available p62)
      (colour p62 mauve)
      (surface-condition p62 verysmooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 black)
      (wood p63 cherry)
      (surface-condition p63 smooth)
      (available p64)
      (colour p64 blue)
      (treatment p64 glazed)
    )
  )
  
)
