; woodworking task with 71 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 211485

(define (problem wood-prob-sat-128)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white red black blue mauve green - acolour
    oak teak walnut cherry pine mahogany beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (available p1)
    (colour p1 black)
    (wood p1 beech)
    (surface-condition p1 smooth)
    (treatment p1 colourfragments)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 green)
    (wood p9 beech)
    (surface-condition p9 smooth)
    (treatment p9 varnished)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 large)
    
    
    
    
    (available p13)
    (colour p13 red)
    (wood p13 beech)
    (surface-condition p13 smooth)
    (treatment p13 varnished)
    (goalsize p13 small)
    
    
    
    
    (available p14)
    (colour p14 mauve)
    (wood p14 beech)
    (surface-condition p14 rough)
    (treatment p14 colourfragments)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 white)
    (wood p15 beech)
    (surface-condition p15 smooth)
    (treatment p15 varnished)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 green)
    (wood p25 oak)
    (surface-condition p25 rough)
    (treatment p25 glazed)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 mauve)
    (wood p29 walnut)
    (surface-condition p29 smooth)
    (treatment p29 colourfragments)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (available p55)
    (colour p55 red)
    (wood p55 walnut)
    (surface-condition p55 rough)
    (treatment p55 varnished)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (available p57)
    (colour p57 blue)
    (wood p57 teak)
    (surface-condition p57 rough)
    (treatment p57 glazed)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (available p60)
    (colour p60 mauve)
    (wood p60 cherry)
    (surface-condition p60 rough)
    (treatment p60 colourfragments)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (available p62)
    (colour p62 blue)
    (wood p62 mahogany)
    (surface-condition p62 smooth)
    (treatment p62 colourfragments)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s2)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s10)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 mahogany)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s5)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 oak)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s6)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 oak)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s5)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s10)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s11)
    (wood b14 pine)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s6)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s7)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s1)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s9)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s4)
    (wood b21 teak)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 beech)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s6)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s3)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
  )
  (:goal
    (and
      (available p0)
      (colour p0 mauve)
      (treatment p0 varnished)
      (available p1)
      (colour p1 natural)
      (wood p1 beech)
      (surface-condition p1 verysmooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 blue)
      (wood p2 oak)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 green)
      (wood p3 beech)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      (available p4)
      (colour p4 mauve)
      (wood p4 mahogany)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (surface-condition p5 verysmooth)
      (treatment p5 glazed)
      (available p6)
      (colour p6 natural)
      (treatment p6 glazed)
      (available p7)
      (colour p7 mauve)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (wood p8 cherry)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 mauve)
      (wood p9 beech)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 red)
      (wood p10 mahogany)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (surface-condition p11 verysmooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 black)
      (wood p12 teak)
      (surface-condition p12 smooth)
      (treatment p12 glazed)
      (available p13)
      (colour p13 mauve)
      (wood p13 beech)
      (surface-condition p13 smooth)
      (available p14)
      (wood p14 beech)
      (surface-condition p14 verysmooth)
      (available p15)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 green)
      (wood p16 cherry)
      (surface-condition p16 verysmooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 red)
      (wood p17 teak)
      (surface-condition p17 verysmooth)
      (treatment p17 varnished)
      (available p18)
      (wood p18 teak)
      (surface-condition p18 verysmooth)
      (available p19)
      (wood p19 walnut)
      (treatment p19 glazed)
      (available p20)
      (wood p20 cherry)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 natural)
      (wood p21 oak)
      (treatment p21 glazed)
      (available p22)
      (colour p22 red)
      (wood p22 cherry)
      (surface-condition p22 verysmooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 natural)
      (wood p23 teak)
      (treatment p23 varnished)
      (available p24)
      (wood p24 pine)
      (surface-condition p24 smooth)
      (available p25)
      (colour p25 black)
      (wood p25 oak)
      (treatment p25 glazed)
      (available p26)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 natural)
      (wood p27 cherry)
      (surface-condition p27 verysmooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 mauve)
      (treatment p28 glazed)
      (available p29)
      (colour p29 red)
      (surface-condition p29 verysmooth)
      (available p30)
      (wood p30 walnut)
      (surface-condition p30 smooth)
      (treatment p30 glazed)
      (available p31)
      (wood p31 mahogany)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (wood p32 pine)
      (surface-condition p32 smooth)
      (available p33)
      (colour p33 red)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 black)
      (wood p34 pine)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 blue)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (wood p37 pine)
      (treatment p37 varnished)
      (available p38)
      (surface-condition p38 verysmooth)
      (treatment p38 varnished)
      (available p39)
      (wood p39 oak)
      (surface-condition p39 verysmooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 blue)
      (wood p40 mahogany)
      (surface-condition p40 smooth)
      (treatment p40 varnished)
      (available p41)
      (colour p41 green)
      (wood p41 cherry)
      (available p42)
      (colour p42 blue)
      (surface-condition p42 smooth)
      (treatment p42 glazed)
      (available p43)
      (surface-condition p43 smooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 red)
      (wood p44 teak)
      (surface-condition p44 smooth)
      (treatment p44 glazed)
      (available p45)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (wood p46 oak)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (wood p47 mahogany)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 red)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (wood p49 oak)
      (surface-condition p49 smooth)
      (available p50)
      (colour p50 red)
      (wood p50 beech)
      (surface-condition p50 verysmooth)
      (available p51)
      (colour p51 white)
      (treatment p51 glazed)
      (available p52)
      (colour p52 mauve)
      (treatment p52 varnished)
      (available p53)
      (wood p53 cherry)
      (treatment p53 varnished)
      (available p54)
      (colour p54 natural)
      (wood p54 beech)
      (available p55)
      (colour p55 green)
      (wood p55 walnut)
      (available p56)
      (colour p56 black)
      (surface-condition p56 verysmooth)
      (available p57)
      (colour p57 black)
      (surface-condition p57 verysmooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 green)
      (surface-condition p58 verysmooth)
      (available p59)
      (wood p59 oak)
      (treatment p59 glazed)
      (available p60)
      (colour p60 black)
      (treatment p60 glazed)
      (available p61)
      (colour p61 blue)
      (wood p61 walnut)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 white)
      (wood p62 mahogany)
      (available p63)
      (colour p63 green)
      (treatment p63 glazed)
      (available p64)
      (colour p64 green)
      (wood p64 cherry)
      (surface-condition p64 verysmooth)
      (treatment p64 varnished)
      (available p65)
      (wood p65 mahogany)
      (surface-condition p65 verysmooth)
      (available p66)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 white)
      (treatment p67 varnished)
      (available p68)
      (colour p68 natural)
      (surface-condition p68 smooth)
      (available p69)
      (colour p69 blue)
      (wood p69 cherry)
      (available p70)
      (surface-condition p70 smooth)
      (treatment p70 glazed)
    )
  )
  
)
