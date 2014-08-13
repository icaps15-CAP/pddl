; woodworking task with 83 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 365393

(define (problem wood-prob-sat-38)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve white blue black green red - acolour
    teak walnut pine oak mahogany cherry beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 - board
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
    (has-colour glazer0 mauve)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 mauve)
    (wood p1 pine)
    (surface-condition p1 verysmooth)
    (treatment p1 varnished)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 green)
    (wood p6 walnut)
    (surface-condition p6 smooth)
    (treatment p6 colourfragments)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (available p8)
    (colour p8 red)
    (wood p8 beech)
    (surface-condition p8 verysmooth)
    (treatment p8 colourfragments)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (available p14)
    (colour p14 blue)
    (wood p14 pine)
    (surface-condition p14 rough)
    (treatment p14 colourfragments)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 medium)
    
    
    
    
    (available p16)
    (colour p16 red)
    (wood p16 walnut)
    (surface-condition p16 rough)
    (treatment p16 colourfragments)
    (goalsize p16 large)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 white)
    (wood p19 oak)
    (surface-condition p19 smooth)
    (treatment p19 glazed)
    (goalsize p19 large)
    
    
    
    
    (available p20)
    (colour p20 red)
    (wood p20 oak)
    (surface-condition p20 smooth)
    (treatment p20 colourfragments)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 green)
    (wood p21 pine)
    (surface-condition p21 smooth)
    (treatment p21 varnished)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (available p23)
    (colour p23 blue)
    (wood p23 mahogany)
    (surface-condition p23 verysmooth)
    (treatment p23 colourfragments)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 black)
    (wood p25 beech)
    (surface-condition p25 smooth)
    (treatment p25 glazed)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (available p29)
    (colour p29 black)
    (wood p29 walnut)
    (surface-condition p29 smooth)
    (treatment p29 glazed)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (available p32)
    (colour p32 red)
    (wood p32 oak)
    (surface-condition p32 rough)
    (treatment p32 colourfragments)
    (goalsize p32 small)
    
    
    
    
    (available p33)
    (colour p33 natural)
    (wood p33 mahogany)
    (surface-condition p33 verysmooth)
    (treatment p33 colourfragments)
    (goalsize p33 small)
    
    
    
    
    (available p34)
    (colour p34 blue)
    (wood p34 mahogany)
    (surface-condition p34 rough)
    (treatment p34 colourfragments)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 white)
    (wood p38 pine)
    (surface-condition p38 rough)
    (treatment p38 glazed)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 large)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (available p48)
    (colour p48 mauve)
    (wood p48 beech)
    (surface-condition p48 smooth)
    (treatment p48 colourfragments)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 medium)
    
    
    
    
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
    (goalsize p59 medium)
    
    
    
    
    (available p60)
    (colour p60 mauve)
    (wood p60 oak)
    (surface-condition p60 rough)
    (treatment p60 colourfragments)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 large)
    
    
    
    
    (available p75)
    (colour p75 natural)
    (wood p75 mahogany)
    (surface-condition p75 rough)
    (treatment p75 glazed)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (available p79)
    (colour p79 natural)
    (wood p79 cherry)
    (surface-condition p79 rough)
    (treatment p79 glazed)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (available p82)
    (colour p82 black)
    (wood p82 beech)
    (surface-condition p82 verysmooth)
    (treatment p82 glazed)
    (goalsize p82 medium)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s12)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s6)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s3)
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
    (boardsize b8 s10)
    (wood b8 pine)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s11)
    (wood b10 pine)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s10)
    (wood b11 walnut)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s10)
    (wood b12 walnut)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s2)
    (wood b13 walnut)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s9)
    (wood b14 teak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 teak)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s5)
    (wood b16 teak)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 beech)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s8)
    (wood b18 beech)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s10)
    (wood b19 beech)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 beech)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s1)
    (wood b21 beech)
    (surface-condition b21 rough)
    (available b21)
  )
  (:goal
    (and
      (available p0)
      (colour p0 black)
      (wood p0 beech)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 black)
      (wood p1 pine)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 red)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 black)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 blue)
      (wood p4 teak)
      (surface-condition p4 smooth)
      (treatment p4 varnished)
      (available p5)
      (wood p5 cherry)
      (surface-condition p5 smooth)
      (available p6)
      (colour p6 blue)
      (wood p6 walnut)
      (surface-condition p6 verysmooth)
      (treatment p6 varnished)
      (available p7)
      (wood p7 beech)
      (treatment p7 glazed)
      (available p8)
      (colour p8 mauve)
      (wood p8 beech)
      (surface-condition p8 verysmooth)
      (available p9)
      (colour p9 green)
      (wood p9 teak)
      (surface-condition p9 verysmooth)
      (available p10)
      (wood p10 cherry)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 white)
      (surface-condition p11 verysmooth)
      (treatment p11 varnished)
      (available p12)
      (wood p12 pine)
      (surface-condition p12 smooth)
      (available p13)
      (wood p13 walnut)
      (surface-condition p13 verysmooth)
      (available p14)
      (colour p14 red)
      (treatment p14 varnished)
      (available p15)
      (colour p15 natural)
      (wood p15 oak)
      (available p16)
      (colour p16 black)
      (wood p16 walnut)
      (available p17)
      (wood p17 oak)
      (treatment p17 varnished)
      (available p18)
      (wood p18 beech)
      (treatment p18 glazed)
      (available p19)
      (colour p19 natural)
      (wood p19 oak)
      (available p20)
      (colour p20 green)
      (wood p20 oak)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 white)
      (wood p21 pine)
      (available p22)
      (colour p22 black)
      (surface-condition p22 smooth)
      (treatment p22 glazed)
      (available p23)
      (wood p23 mahogany)
      (surface-condition p23 smooth)
      (treatment p23 varnished)
      (available p24)
      (wood p24 beech)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 red)
      (wood p25 beech)
      (available p26)
      (wood p26 beech)
      (treatment p26 glazed)
      (available p27)
      (colour p27 white)
      (wood p27 mahogany)
      (surface-condition p27 verysmooth)
      (treatment p27 varnished)
      (available p28)
      (wood p28 mahogany)
      (treatment p28 varnished)
      (available p29)
      (wood p29 walnut)
      (surface-condition p29 verysmooth)
      (available p30)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (wood p31 pine)
      (surface-condition p31 smooth)
      (available p32)
      (wood p32 oak)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 white)
      (surface-condition p33 smooth)
      (available p34)
      (wood p34 mahogany)
      (treatment p34 glazed)
      (available p35)
      (colour p35 green)
      (wood p35 pine)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 black)
      (wood p37 cherry)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 mauve)
      (wood p38 pine)
      (treatment p38 varnished)
      (available p39)
      (colour p39 mauve)
      (treatment p39 glazed)
      (available p40)
      (colour p40 black)
      (treatment p40 varnished)
      (available p41)
      (colour p41 blue)
      (wood p41 cherry)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 natural)
      (wood p42 cherry)
      (surface-condition p42 verysmooth)
      (available p43)
      (wood p43 beech)
      (treatment p43 varnished)
      (available p44)
      (wood p44 pine)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 red)
      (treatment p45 varnished)
      (available p46)
      (colour p46 natural)
      (treatment p46 varnished)
      (available p47)
      (colour p47 green)
      (wood p47 oak)
      (available p48)
      (wood p48 beech)
      (treatment p48 glazed)
      (available p49)
      (colour p49 natural)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 natural)
      (wood p50 beech)
      (surface-condition p50 smooth)
      (treatment p50 varnished)
      (available p51)
      (wood p51 teak)
      (treatment p51 varnished)
      (available p52)
      (colour p52 green)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 green)
      (wood p53 walnut)
      (surface-condition p53 smooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 blue)
      (wood p54 cherry)
      (available p55)
      (colour p55 black)
      (treatment p55 glazed)
      (available p56)
      (colour p56 white)
      (surface-condition p56 smooth)
      (available p57)
      (surface-condition p57 verysmooth)
      (treatment p57 glazed)
      (available p58)
      (wood p58 beech)
      (treatment p58 varnished)
      (available p59)
      (colour p59 blue)
      (wood p59 beech)
      (treatment p59 varnished)
      (available p60)
      (colour p60 green)
      (wood p60 oak)
      (available p61)
      (colour p61 red)
      (wood p61 oak)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 blue)
      (treatment p63 varnished)
      (available p64)
      (wood p64 oak)
      (surface-condition p64 smooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 blue)
      (treatment p65 varnished)
      (available p66)
      (surface-condition p66 verysmooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 mauve)
      (wood p67 pine)
      (available p68)
      (wood p68 walnut)
      (surface-condition p68 smooth)
      (available p69)
      (surface-condition p69 verysmooth)
      (treatment p69 varnished)
      (available p70)
      (colour p70 black)
      (wood p70 walnut)
      (surface-condition p70 smooth)
      (treatment p70 varnished)
      (available p71)
      (wood p71 teak)
      (surface-condition p71 smooth)
      (available p72)
      (colour p72 black)
      (treatment p72 varnished)
      (available p73)
      (colour p73 green)
      (wood p73 pine)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 black)
      (wood p74 walnut)
      (available p75)
      (surface-condition p75 verysmooth)
      (treatment p75 varnished)
      (available p76)
      (wood p76 beech)
      (treatment p76 glazed)
      (available p77)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (wood p78 pine)
      (surface-condition p78 smooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 red)
      (treatment p79 varnished)
      (available p80)
      (colour p80 red)
      (treatment p80 glazed)
      (available p81)
      (wood p81 pine)
      (surface-condition p81 smooth)
      (treatment p81 varnished)
      (available p82)
      (colour p82 mauve)
      (wood p82 beech)
      (surface-condition p82 verysmooth)
      (treatment p82 glazed)
    )
  )
  
)
