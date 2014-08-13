; woodworking task with 98 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 613796

(define (problem wood-prob-sat-43)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black mauve white red blue green - acolour
    walnut beech oak cherry mahogany pine teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer0 black)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (available p1)
    (colour p1 black)
    (wood p1 teak)
    (surface-condition p1 smooth)
    (treatment p1 varnished)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (available p7)
    (colour p7 white)
    (wood p7 beech)
    (surface-condition p7 verysmooth)
    (treatment p7 colourfragments)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 mauve)
    (wood p9 pine)
    (surface-condition p9 rough)
    (treatment p9 varnished)
    (goalsize p9 medium)
    
    
    
    
    (available p10)
    (colour p10 blue)
    (wood p10 cherry)
    (surface-condition p10 verysmooth)
    (treatment p10 glazed)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (available p14)
    (colour p14 white)
    (wood p14 mahogany)
    (surface-condition p14 smooth)
    (treatment p14 colourfragments)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 green)
    (wood p15 beech)
    (surface-condition p15 verysmooth)
    (treatment p15 colourfragments)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 small)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (available p25)
    (colour p25 natural)
    (wood p25 walnut)
    (surface-condition p25 rough)
    (treatment p25 varnished)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (available p28)
    (colour p28 blue)
    (wood p28 mahogany)
    (surface-condition p28 verysmooth)
    (treatment p28 varnished)
    (goalsize p28 large)
    
    
    
    
    (available p29)
    (colour p29 mauve)
    (wood p29 beech)
    (surface-condition p29 verysmooth)
    (treatment p29 colourfragments)
    (goalsize p29 large)
    
    
    
    
    (available p30)
    (colour p30 white)
    (wood p30 beech)
    (surface-condition p30 rough)
    (treatment p30 glazed)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 blue)
    (wood p31 pine)
    (surface-condition p31 smooth)
    (treatment p31 varnished)
    (goalsize p31 large)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (available p34)
    (colour p34 mauve)
    (wood p34 walnut)
    (surface-condition p34 rough)
    (treatment p34 glazed)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 blue)
    (wood p37 walnut)
    (surface-condition p37 verysmooth)
    (treatment p37 glazed)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (available p41)
    (colour p41 red)
    (wood p41 walnut)
    (surface-condition p41 smooth)
    (treatment p41 glazed)
    (goalsize p41 medium)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (available p43)
    (colour p43 natural)
    (wood p43 walnut)
    (surface-condition p43 smooth)
    (treatment p43 colourfragments)
    (goalsize p43 small)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (available p48)
    (colour p48 mauve)
    (wood p48 mahogany)
    (surface-condition p48 smooth)
    (treatment p48 glazed)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (available p51)
    (colour p51 mauve)
    (wood p51 cherry)
    (surface-condition p51 verysmooth)
    (treatment p51 glazed)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 small)
    
    
    
    
    (unused p58)
    (goalsize p58 large)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 medium)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (available p78)
    (colour p78 red)
    (wood p78 teak)
    (surface-condition p78 rough)
    (treatment p78 varnished)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (available p80)
    (colour p80 white)
    (wood p80 beech)
    (surface-condition p80 smooth)
    (treatment p80 glazed)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (available p84)
    (colour p84 blue)
    (wood p84 pine)
    (surface-condition p84 rough)
    (treatment p84 colourfragments)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (available p87)
    (colour p87 natural)
    (wood p87 mahogany)
    (surface-condition p87 smooth)
    (treatment p87 colourfragments)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (available p89)
    (colour p89 red)
    (wood p89 beech)
    (surface-condition p89 smooth)
    (treatment p89 glazed)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (available p92)
    (colour p92 blue)
    (wood p92 beech)
    (surface-condition p92 verysmooth)
    (treatment p92 glazed)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 medium)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (available p96)
    (colour p96 white)
    (wood p96 beech)
    (surface-condition p96 smooth)
    (treatment p96 colourfragments)
    (goalsize p96 small)
    
    
    
    
    (available p97)
    (colour p97 black)
    (wood p97 beech)
    (surface-condition p97 smooth)
    (treatment p97 colourfragments)
    (goalsize p97 small)
    
    
    
    
    (boardsize b0 s7)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s3)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s6)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s10)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s10)
    (wood b5 oak)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s3)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 pine)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 pine)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s10)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s2)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s9)
    (wood b15 walnut)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s5)
    (wood b16 walnut)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s8)
    (wood b17 teak)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s10)
    (wood b18 teak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s4)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s5)
    (wood b20 beech)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 beech)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 beech)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s12)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s5)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
  )
  (:goal
    (and
      (available p0)
      (colour p0 green)
      (wood p0 beech)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 red)
      (wood p1 teak)
      (surface-condition p1 smooth)
      (treatment p1 glazed)
      (available p2)
      (colour p2 blue)
      (wood p2 beech)
      (surface-condition p2 smooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 red)
      (wood p3 teak)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 mauve)
      (wood p4 beech)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 mauve)
      (wood p5 walnut)
      (treatment p5 varnished)
      (available p6)
      (wood p6 cherry)
      (treatment p6 glazed)
      (available p7)
      (colour p7 mauve)
      (wood p7 beech)
      (available p8)
      (colour p8 mauve)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 green)
      (wood p9 pine)
      (available p10)
      (colour p10 white)
      (wood p10 cherry)
      (surface-condition p10 verysmooth)
      (available p11)
      (wood p11 beech)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (wood p12 cherry)
      (treatment p12 glazed)
      (available p13)
      (colour p13 red)
      (wood p13 walnut)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (wood p15 beech)
      (treatment p15 glazed)
      (available p16)
      (colour p16 green)
      (wood p16 walnut)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (wood p17 pine)
      (surface-condition p17 verysmooth)
      (available p18)
      (colour p18 red)
      (surface-condition p18 verysmooth)
      (treatment p18 glazed)
      (available p19)
      (colour p19 white)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 mauve)
      (wood p20 pine)
      (available p21)
      (wood p21 cherry)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 white)
      (wood p22 pine)
      (available p23)
      (surface-condition p23 verysmooth)
      (treatment p23 glazed)
      (available p24)
      (colour p24 blue)
      (wood p24 beech)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 red)
      (wood p25 walnut)
      (available p26)
      (colour p26 white)
      (wood p26 teak)
      (available p27)
      (wood p27 beech)
      (treatment p27 varnished)
      (available p28)
      (colour p28 black)
      (wood p28 mahogany)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (wood p29 beech)
      (surface-condition p29 verysmooth)
      (treatment p29 glazed)
      (available p30)
      (colour p30 mauve)
      (treatment p30 varnished)
      (available p31)
      (wood p31 pine)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 red)
      (wood p32 beech)
      (surface-condition p32 smooth)
      (available p33)
      (wood p33 pine)
      (treatment p33 varnished)
      (available p34)
      (colour p34 white)
      (wood p34 walnut)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 red)
      (surface-condition p35 smooth)
      (available p36)
      (colour p36 red)
      (wood p36 beech)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 natural)
      (wood p37 walnut)
      (surface-condition p37 verysmooth)
      (treatment p37 glazed)
      (available p38)
      (surface-condition p38 smooth)
      (treatment p38 varnished)
      (available p39)
      (colour p39 blue)
      (wood p39 oak)
      (available p40)
      (colour p40 mauve)
      (wood p40 pine)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 natural)
      (surface-condition p41 smooth)
      (available p42)
      (colour p42 natural)
      (wood p42 mahogany)
      (treatment p42 varnished)
      (available p43)
      (colour p43 blue)
      (wood p43 walnut)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 blue)
      (wood p44 mahogany)
      (surface-condition p44 smooth)
      (treatment p44 varnished)
      (available p45)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 natural)
      (wood p46 pine)
      (treatment p46 varnished)
      (available p47)
      (wood p47 beech)
      (surface-condition p47 verysmooth)
      (available p48)
      (colour p48 white)
      (wood p48 mahogany)
      (surface-condition p48 smooth)
      (treatment p48 glazed)
      (available p49)
      (surface-condition p49 smooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 blue)
      (surface-condition p50 verysmooth)
      (treatment p50 varnished)
      (available p51)
      (wood p51 cherry)
      (surface-condition p51 smooth)
      (available p52)
      (wood p52 walnut)
      (surface-condition p52 verysmooth)
      (available p53)
      (colour p53 mauve)
      (wood p53 walnut)
      (available p54)
      (colour p54 mauve)
      (wood p54 beech)
      (surface-condition p54 verysmooth)
      (available p55)
      (colour p55 black)
      (wood p55 cherry)
      (available p56)
      (colour p56 black)
      (wood p56 walnut)
      (surface-condition p56 verysmooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 white)
      (surface-condition p57 smooth)
      (treatment p57 varnished)
      (available p58)
      (surface-condition p58 smooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 white)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (wood p60 teak)
      (treatment p60 glazed)
      (available p61)
      (colour p61 white)
      (wood p61 oak)
      (surface-condition p61 smooth)
      (treatment p61 glazed)
      (available p62)
      (colour p62 blue)
      (wood p62 pine)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (colour p63 natural)
      (treatment p63 varnished)
      (available p64)
      (colour p64 white)
      (wood p64 oak)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 white)
      (wood p65 oak)
      (surface-condition p65 verysmooth)
      (treatment p65 varnished)
      (available p66)
      (colour p66 green)
      (surface-condition p66 verysmooth)
      (available p67)
      (colour p67 black)
      (wood p67 walnut)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 green)
      (surface-condition p68 smooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 red)
      (surface-condition p69 smooth)
      (treatment p69 varnished)
      (available p70)
      (wood p70 oak)
      (surface-condition p70 smooth)
      (available p71)
      (colour p71 mauve)
      (wood p71 beech)
      (surface-condition p71 verysmooth)
      (treatment p71 varnished)
      (available p72)
      (surface-condition p72 verysmooth)
      (treatment p72 varnished)
      (available p73)
      (colour p73 green)
      (wood p73 oak)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 natural)
      (wood p74 oak)
      (available p75)
      (colour p75 mauve)
      (wood p75 walnut)
      (surface-condition p75 verysmooth)
      (treatment p75 glazed)
      (available p76)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (colour p77 blue)
      (wood p77 mahogany)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (wood p78 teak)
      (surface-condition p78 smooth)
      (available p79)
      (colour p79 white)
      (wood p79 oak)
      (surface-condition p79 verysmooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 natural)
      (wood p80 beech)
      (surface-condition p80 smooth)
      (available p81)
      (colour p81 white)
      (wood p81 pine)
      (surface-condition p81 smooth)
      (treatment p81 varnished)
      (available p82)
      (colour p82 blue)
      (wood p82 mahogany)
      (surface-condition p82 verysmooth)
      (treatment p82 glazed)
      (available p83)
      (colour p83 red)
      (surface-condition p83 verysmooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 natural)
      (wood p84 pine)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 green)
      (treatment p85 varnished)
      (available p86)
      (colour p86 black)
      (treatment p86 glazed)
      (available p87)
      (wood p87 mahogany)
      (surface-condition p87 smooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 red)
      (surface-condition p88 smooth)
      (available p89)
      (surface-condition p89 smooth)
      (treatment p89 varnished)
      (available p90)
      (colour p90 natural)
      (treatment p90 varnished)
      (available p91)
      (wood p91 cherry)
      (surface-condition p91 smooth)
      (available p92)
      (wood p92 beech)
      (surface-condition p92 smooth)
      (treatment p92 varnished)
      (available p93)
      (wood p93 oak)
      (treatment p93 varnished)
      (available p94)
      (colour p94 mauve)
      (treatment p94 varnished)
      (available p95)
      (colour p95 red)
      (wood p95 pine)
      (treatment p95 varnished)
      (available p96)
      (colour p96 blue)
      (wood p96 beech)
      (surface-condition p96 verysmooth)
      (treatment p96 varnished)
      (available p97)
      (wood p97 beech)
      (treatment p97 varnished)
    )
  )
  
)
