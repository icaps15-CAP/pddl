; woodworking task with 68 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 717695

(define (problem wood-prob-sat-33)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green white black mauve red blue - acolour
    beech pine mahogany oak teak cherry walnut - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 mauve)
    (has-colour glazer1 white)
    (has-colour glazer1 natural)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
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
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 black)
    (wood p17 mahogany)
    (surface-condition p17 verysmooth)
    (treatment p17 glazed)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 green)
    (wood p21 pine)
    (surface-condition p21 verysmooth)
    (treatment p21 glazed)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 black)
    (wood p25 walnut)
    (surface-condition p25 rough)
    (treatment p25 glazed)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (available p28)
    (colour p28 white)
    (wood p28 mahogany)
    (surface-condition p28 rough)
    (treatment p28 glazed)
    (goalsize p28 small)
    
    
    
    
    (available p29)
    (colour p29 natural)
    (wood p29 teak)
    (surface-condition p29 smooth)
    (treatment p29 colourfragments)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 large)
    
    
    
    
    (available p32)
    (colour p32 blue)
    (wood p32 walnut)
    (surface-condition p32 verysmooth)
    (treatment p32 colourfragments)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 small)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 blue)
    (wood p37 oak)
    (surface-condition p37 rough)
    (treatment p37 colourfragments)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (available p45)
    (colour p45 red)
    (wood p45 teak)
    (surface-condition p45 verysmooth)
    (treatment p45 glazed)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (available p47)
    (colour p47 green)
    (wood p47 pine)
    (surface-condition p47 rough)
    (treatment p47 glazed)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (available p49)
    (colour p49 mauve)
    (wood p49 cherry)
    (surface-condition p49 smooth)
    (treatment p49 colourfragments)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (available p53)
    (colour p53 black)
    (wood p53 walnut)
    (surface-condition p53 smooth)
    (treatment p53 varnished)
    (goalsize p53 medium)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (available p57)
    (colour p57 blue)
    (wood p57 mahogany)
    (surface-condition p57 rough)
    (treatment p57 glazed)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (available p67)
    (colour p67 mauve)
    (wood p67 pine)
    (surface-condition p67 verysmooth)
    (treatment p67 colourfragments)
    (goalsize p67 small)
    
    
    
    
    (boardsize b0 s6)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s10)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s7)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s1)
    (wood b5 oak)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s8)
    (wood b6 pine)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 pine)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s8)
    (wood b8 pine)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s2)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s6)
    (wood b10 walnut)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 walnut)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s5)
    (wood b12 walnut)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 teak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 teak)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s4)
    (wood b15 teak)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 beech)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s6)
    (wood b17 beech)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 beech)
    (surface-condition b18 rough)
    (available b18)
  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 mauve)
      (surface-condition p1 verysmooth)
      (available p2)
      (wood p2 pine)
      (treatment p2 glazed)
      (available p3)
      (colour p3 blue)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (wood p4 oak)
      (surface-condition p4 smooth)
      (available p5)
      (colour p5 red)
      (wood p5 beech)
      (available p6)
      (wood p6 walnut)
      (surface-condition p6 smooth)
      (available p7)
      (colour p7 white)
      (wood p7 beech)
      (available p8)
      (colour p8 natural)
      (wood p8 pine)
      (surface-condition p8 verysmooth)
      (treatment p8 glazed)
      (available p9)
      (colour p9 white)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (wood p10 mahogany)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 green)
      (wood p12 pine)
      (treatment p12 varnished)
      (available p13)
      (wood p13 cherry)
      (surface-condition p13 verysmooth)
      (available p14)
      (wood p14 cherry)
      (surface-condition p14 smooth)
      (available p15)
      (colour p15 black)
      (surface-condition p15 verysmooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 black)
      (surface-condition p16 verysmooth)
      (available p17)
      (colour p17 natural)
      (wood p17 mahogany)
      (surface-condition p17 smooth)
      (treatment p17 varnished)
      (available p18)
      (colour p18 natural)
      (surface-condition p18 smooth)
      (available p19)
      (colour p19 black)
      (treatment p19 varnished)
      (available p20)
      (colour p20 black)
      (wood p20 teak)
      (available p21)
      (colour p21 red)
      (treatment p21 glazed)
      (available p22)
      (wood p22 walnut)
      (treatment p22 varnished)
      (available p23)
      (colour p23 green)
      (wood p23 beech)
      (available p24)
      (colour p24 natural)
      (wood p24 beech)
      (surface-condition p24 smooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 white)
      (wood p25 walnut)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 blue)
      (wood p26 beech)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 mauve)
      (wood p27 walnut)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 blue)
      (surface-condition p28 verysmooth)
      (available p29)
      (colour p29 mauve)
      (wood p29 teak)
      (surface-condition p29 smooth)
      (treatment p29 glazed)
      (available p30)
      (wood p30 beech)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (wood p32 walnut)
      (treatment p32 varnished)
      (available p33)
      (colour p33 mauve)
      (treatment p33 glazed)
      (available p34)
      (colour p34 natural)
      (treatment p34 varnished)
      (available p35)
      (colour p35 white)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 red)
      (surface-condition p36 smooth)
      (treatment p36 glazed)
      (available p37)
      (wood p37 oak)
      (treatment p37 glazed)
      (available p38)
      (colour p38 mauve)
      (wood p38 walnut)
      (surface-condition p38 smooth)
      (available p39)
      (wood p39 oak)
      (treatment p39 glazed)
      (available p40)
      (colour p40 mauve)
      (surface-condition p40 smooth)
      (treatment p40 glazed)
      (available p41)
      (wood p41 cherry)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 white)
      (wood p42 teak)
      (surface-condition p42 verysmooth)
      (available p43)
      (colour p43 black)
      (wood p43 cherry)
      (available p44)
      (colour p44 red)
      (wood p44 mahogany)
      (surface-condition p44 verysmooth)
      (treatment p44 varnished)
      (available p45)
      (colour p45 blue)
      (treatment p45 glazed)
      (available p46)
      (colour p46 natural)
      (treatment p46 varnished)
      (available p47)
      (colour p47 mauve)
      (wood p47 pine)
      (surface-condition p47 verysmooth)
      (treatment p47 glazed)
      (available p48)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (wood p49 cherry)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 blue)
      (wood p50 oak)
      (treatment p50 varnished)
      (available p51)
      (colour p51 black)
      (treatment p51 varnished)
      (available p52)
      (colour p52 mauve)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 natural)
      (wood p53 walnut)
      (surface-condition p53 smooth)
      (available p54)
      (colour p54 red)
      (surface-condition p54 verysmooth)
      (available p55)
      (colour p55 white)
      (wood p55 beech)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (wood p56 teak)
      (treatment p56 glazed)
      (available p57)
      (colour p57 mauve)
      (wood p57 mahogany)
      (surface-condition p57 smooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 blue)
      (wood p58 cherry)
      (available p59)
      (colour p59 mauve)
      (wood p59 pine)
      (surface-condition p59 smooth)
      (treatment p59 varnished)
      (available p60)
      (wood p60 walnut)
      (treatment p60 varnished)
      (available p61)
      (colour p61 green)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 black)
      (treatment p62 glazed)
      (available p63)
      (colour p63 white)
      (wood p63 cherry)
      (surface-condition p63 smooth)
      (treatment p63 glazed)
      (available p64)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (wood p65 cherry)
      (surface-condition p65 verysmooth)
      (available p66)
      (wood p66 oak)
      (surface-condition p66 smooth)
      (treatment p66 glazed)
      (available p67)
      (colour p67 white)
      (wood p67 pine)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
    )
  )
  
)
