; woodworking task with 68 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 668109

(define (problem wood-prob-sat-67)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    red mauve green black white blue - acolour
    walnut cherry mahogany beech oak pine teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 - board
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
    (has-colour glazer0 blue)
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 mauve)
    (wood p0 beech)
    (surface-condition p0 verysmooth)
    (treatment p0 varnished)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 white)
    (wood p1 teak)
    (surface-condition p1 smooth)
    (treatment p1 glazed)
    (goalsize p1 small)
    
    
    
    
    (available p2)
    (colour p2 black)
    (wood p2 beech)
    (surface-condition p2 smooth)
    (treatment p2 colourfragments)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 white)
    (wood p5 teak)
    (surface-condition p5 rough)
    (treatment p5 glazed)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (available p13)
    (colour p13 white)
    (wood p13 walnut)
    (surface-condition p13 rough)
    (treatment p13 varnished)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 white)
    (wood p19 pine)
    (surface-condition p19 smooth)
    (treatment p19 varnished)
    (goalsize p19 large)
    
    
    
    
    (available p20)
    (colour p20 natural)
    (wood p20 beech)
    (surface-condition p20 rough)
    (treatment p20 glazed)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 medium)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
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
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (available p42)
    (colour p42 green)
    (wood p42 pine)
    (surface-condition p42 verysmooth)
    (treatment p42 glazed)
    (goalsize p42 small)
    
    
    
    
    (available p43)
    (colour p43 red)
    (wood p43 oak)
    (surface-condition p43 smooth)
    (treatment p43 glazed)
    (goalsize p43 medium)
    
    
    
    
    (available p44)
    (colour p44 green)
    (wood p44 walnut)
    (surface-condition p44 smooth)
    (treatment p44 colourfragments)
    (goalsize p44 large)
    
    
    
    
    (available p45)
    (colour p45 green)
    (wood p45 beech)
    (surface-condition p45 rough)
    (treatment p45 colourfragments)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (available p50)
    (colour p50 white)
    (wood p50 pine)
    (surface-condition p50 verysmooth)
    (treatment p50 varnished)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (available p52)
    (colour p52 blue)
    (wood p52 beech)
    (surface-condition p52 rough)
    (treatment p52 varnished)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (boardsize b0 s5)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s5)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s5)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 mahogany)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s8)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s3)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 pine)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 pine)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s7)
    (wood b10 pine)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s7)
    (wood b11 walnut)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s8)
    (wood b12 walnut)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 walnut)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s1)
    (wood b14 walnut)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s9)
    (wood b15 teak)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s6)
    (wood b16 teak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 teak)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 beech)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 beech)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s10)
    (wood b20 beech)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s4)
    (wood b21 beech)
    (surface-condition b21 rough)
    (available b21)
  )
  (:goal
    (and
      (available p0)
      (colour p0 red)
      (wood p0 beech)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 green)
      (wood p1 teak)
      (treatment p1 varnished)
      (available p2)
      (wood p2 beech)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 natural)
      (surface-condition p3 verysmooth)
      (available p4)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (wood p5 teak)
      (surface-condition p5 verysmooth)
      (available p6)
      (wood p6 pine)
      (treatment p6 glazed)
      (available p7)
      (colour p7 mauve)
      (wood p7 oak)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 blue)
      (wood p8 mahogany)
      (available p9)
      (colour p9 natural)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (wood p10 beech)
      (treatment p10 varnished)
      (available p11)
      (colour p11 green)
      (wood p11 cherry)
      (available p12)
      (colour p12 blue)
      (wood p12 oak)
      (treatment p12 varnished)
      (available p13)
      (colour p13 mauve)
      (wood p13 walnut)
      (available p14)
      (wood p14 teak)
      (treatment p14 varnished)
      (available p15)
      (wood p15 beech)
      (surface-condition p15 verysmooth)
      (available p16)
      (colour p16 black)
      (wood p16 cherry)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 white)
      (wood p17 beech)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 mauve)
      (wood p18 mahogany)
      (treatment p18 glazed)
      (available p19)
      (colour p19 blue)
      (wood p19 pine)
      (surface-condition p19 verysmooth)
      (available p20)
      (wood p20 beech)
      (treatment p20 varnished)
      (available p21)
      (colour p21 black)
      (treatment p21 varnished)
      (available p22)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 red)
      (wood p23 teak)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (wood p24 mahogany)
      (treatment p24 varnished)
      (available p25)
      (colour p25 mauve)
      (surface-condition p25 verysmooth)
      (treatment p25 varnished)
      (available p26)
      (wood p26 teak)
      (surface-condition p26 verysmooth)
      (available p27)
      (colour p27 natural)
      (surface-condition p27 verysmooth)
      (available p28)
      (wood p28 walnut)
      (surface-condition p28 smooth)
      (available p29)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 white)
      (treatment p30 glazed)
      (available p31)
      (wood p31 beech)
      (treatment p31 glazed)
      (available p32)
      (colour p32 black)
      (wood p32 pine)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 blue)
      (treatment p33 glazed)
      (available p34)
      (colour p34 mauve)
      (wood p34 oak)
      (available p35)
      (wood p35 beech)
      (surface-condition p35 verysmooth)
      (treatment p35 glazed)
      (available p36)
      (wood p36 pine)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 green)
      (wood p37 pine)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 natural)
      (wood p38 pine)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 red)
      (wood p39 pine)
      (treatment p39 varnished)
      (available p40)
      (colour p40 blue)
      (wood p40 beech)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (wood p41 teak)
      (treatment p41 glazed)
      (available p42)
      (wood p42 pine)
      (surface-condition p42 smooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 black)
      (surface-condition p43 smooth)
      (available p44)
      (colour p44 natural)
      (wood p44 walnut)
      (available p45)
      (colour p45 white)
      (surface-condition p45 verysmooth)
      (available p46)
      (wood p46 mahogany)
      (surface-condition p46 smooth)
      (available p47)
      (wood p47 mahogany)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 white)
      (wood p48 walnut)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (colour p49 red)
      (wood p49 walnut)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 mauve)
      (treatment p50 varnished)
      (available p51)
      (colour p51 blue)
      (wood p51 walnut)
      (surface-condition p51 verysmooth)
      (treatment p51 varnished)
      (available p52)
      (wood p52 beech)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (colour p53 black)
      (wood p53 teak)
      (treatment p53 glazed)
      (available p54)
      (colour p54 blue)
      (wood p54 beech)
      (surface-condition p54 verysmooth)
      (available p55)
      (colour p55 blue)
      (surface-condition p55 smooth)
      (available p56)
      (colour p56 red)
      (wood p56 oak)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 blue)
      (wood p57 pine)
      (surface-condition p57 smooth)
      (treatment p57 varnished)
      (available p58)
      (wood p58 pine)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 white)
      (wood p59 pine)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (wood p60 walnut)
      (surface-condition p60 smooth)
      (available p61)
      (colour p61 natural)
      (surface-condition p61 smooth)
      (available p62)
      (wood p62 oak)
      (surface-condition p62 verysmooth)
      (available p63)
      (colour p63 natural)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 blue)
      (wood p64 walnut)
      (available p65)
      (colour p65 green)
      (wood p65 beech)
      (treatment p65 varnished)
      (available p66)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 red)
      (treatment p67 glazed)
    )
  )
  
)
