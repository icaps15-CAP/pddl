; woodworking task with 71 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 406230

(define (problem wood-prob-sat-68)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white blue green red mauve black - acolour
    oak cherry beech pine walnut teak mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 white)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 natural)
    (has-colour glazer2 blue)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 black)
    (wood p3 teak)
    (surface-condition p3 verysmooth)
    (treatment p3 colourfragments)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 red)
    (wood p5 teak)
    (surface-condition p5 smooth)
    (treatment p5 varnished)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 red)
    (wood p10 walnut)
    (surface-condition p10 smooth)
    (treatment p10 colourfragments)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 medium)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 red)
    (wood p15 mahogany)
    (surface-condition p15 verysmooth)
    (treatment p15 colourfragments)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (available p27)
    (colour p27 green)
    (wood p27 pine)
    (surface-condition p27 rough)
    (treatment p27 glazed)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (available p32)
    (colour p32 green)
    (wood p32 cherry)
    (surface-condition p32 smooth)
    (treatment p32 colourfragments)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (available p34)
    (colour p34 black)
    (wood p34 pine)
    (surface-condition p34 smooth)
    (treatment p34 glazed)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (available p38)
    (colour p38 blue)
    (wood p38 walnut)
    (surface-condition p38 verysmooth)
    (treatment p38 varnished)
    (goalsize p38 small)
    
    
    
    
    (available p39)
    (colour p39 mauve)
    (wood p39 mahogany)
    (surface-condition p39 verysmooth)
    (treatment p39 varnished)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (available p59)
    (colour p59 green)
    (wood p59 pine)
    (surface-condition p59 rough)
    (treatment p59 colourfragments)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (available p68)
    (colour p68 blue)
    (wood p68 oak)
    (surface-condition p68 verysmooth)
    (treatment p68 varnished)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s4)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 mahogany)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s10)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 oak)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s7)
    (wood b7 pine)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 pine)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 pine)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s9)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s3)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 walnut)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 walnut)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s11)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s10)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 walnut)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s10)
    (wood b18 teak)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s7)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 beech)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 beech)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 beech)
    (surface-condition b22 rough)
    (available b22)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (treatment p0 varnished)
      (available p1)
      (colour p1 black)
      (treatment p1 varnished)
      (available p2)
      (colour p2 blue)
      (wood p2 teak)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 red)
      (treatment p3 varnished)
      (available p4)
      (colour p4 green)
      (wood p4 mahogany)
      (available p5)
      (colour p5 blue)
      (wood p5 teak)
      (surface-condition p5 smooth)
      (treatment p5 varnished)
      (available p6)
      (colour p6 red)
      (wood p6 pine)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 white)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 black)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 green)
      (treatment p9 varnished)
      (available p10)
      (colour p10 green)
      (surface-condition p10 verysmooth)
      (available p11)
      (wood p11 pine)
      (surface-condition p11 verysmooth)
      (available p12)
      (wood p12 beech)
      (treatment p12 glazed)
      (available p13)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 white)
      (wood p14 cherry)
      (available p15)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 natural)
      (surface-condition p16 smooth)
      (available p17)
      (colour p17 mauve)
      (wood p17 beech)
      (surface-condition p17 smooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 natural)
      (wood p18 mahogany)
      (available p19)
      (surface-condition p19 smooth)
      (treatment p19 varnished)
      (available p20)
      (wood p20 teak)
      (surface-condition p20 smooth)
      (available p21)
      (wood p21 cherry)
      (surface-condition p21 smooth)
      (available p22)
      (colour p22 black)
      (wood p22 cherry)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 white)
      (surface-condition p23 verysmooth)
      (available p24)
      (wood p24 walnut)
      (treatment p24 glazed)
      (available p25)
      (colour p25 red)
      (surface-condition p25 smooth)
      (available p26)
      (colour p26 mauve)
      (wood p26 mahogany)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (wood p27 pine)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 blue)
      (wood p28 pine)
      (available p29)
      (colour p29 natural)
      (wood p29 oak)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 red)
      (wood p30 walnut)
      (surface-condition p30 smooth)
      (available p31)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 red)
      (wood p32 cherry)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (colour p33 natural)
      (wood p33 walnut)
      (surface-condition p33 smooth)
      (available p34)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 green)
      (wood p35 teak)
      (surface-condition p35 smooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 green)
      (treatment p36 glazed)
      (available p37)
      (colour p37 green)
      (surface-condition p37 smooth)
      (available p38)
      (colour p38 natural)
      (wood p38 walnut)
      (available p39)
      (colour p39 red)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 natural)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (wood p43 walnut)
      (treatment p43 varnished)
      (available p44)
      (wood p44 pine)
      (treatment p44 glazed)
      (available p45)
      (colour p45 green)
      (wood p45 walnut)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (wood p46 pine)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (colour p47 white)
      (wood p47 pine)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 red)
      (surface-condition p48 smooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 mauve)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (wood p50 walnut)
      (treatment p50 varnished)
      (available p51)
      (colour p51 mauve)
      (wood p51 beech)
      (available p52)
      (colour p52 black)
      (wood p52 oak)
      (treatment p52 glazed)
      (available p53)
      (colour p53 red)
      (treatment p53 glazed)
      (available p54)
      (surface-condition p54 smooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 black)
      (wood p55 teak)
      (surface-condition p55 smooth)
      (available p56)
      (colour p56 red)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 blue)
      (wood p58 oak)
      (surface-condition p58 smooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 white)
      (wood p59 pine)
      (surface-condition p59 smooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 mauve)
      (wood p60 mahogany)
      (surface-condition p60 smooth)
      (available p61)
      (colour p61 green)
      (wood p61 pine)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (wood p62 pine)
      (treatment p62 varnished)
      (available p63)
      (colour p63 mauve)
      (wood p63 pine)
      (surface-condition p63 smooth)
      (treatment p63 varnished)
      (available p64)
      (colour p64 mauve)
      (wood p64 walnut)
      (surface-condition p64 verysmooth)
      (treatment p64 glazed)
      (available p65)
      (wood p65 walnut)
      (treatment p65 varnished)
      (available p66)
      (colour p66 natural)
      (wood p66 beech)
      (surface-condition p66 verysmooth)
      (available p67)
      (colour p67 white)
      (wood p67 pine)
      (available p68)
      (colour p68 red)
      (wood p68 oak)
      (available p69)
      (colour p69 white)
      (surface-condition p69 smooth)
      (available p70)
      (colour p70 white)
      (treatment p70 varnished)
    )
  )
  
)
