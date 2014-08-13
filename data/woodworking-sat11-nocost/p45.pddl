; woodworking task with 104 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 472737

(define (problem wood-prob-sat-45)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    green blue white red black mauve - acolour
    cherry beech oak mahogany pine walnut teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 - board
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
    (has-colour glazer1 black)
    (has-colour glazer1 green)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 mauve)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 natural)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 green)
    (wood p4 mahogany)
    (surface-condition p4 rough)
    (treatment p4 colourfragments)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 mauve)
    (wood p5 pine)
    (surface-condition p5 verysmooth)
    (treatment p5 colourfragments)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (unused p9)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (available p11)
    (colour p11 white)
    (wood p11 cherry)
    (surface-condition p11 verysmooth)
    (treatment p11 colourfragments)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 red)
    (wood p15 teak)
    (surface-condition p15 verysmooth)
    (treatment p15 varnished)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 medium)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (available p30)
    (colour p30 white)
    (wood p30 beech)
    (surface-condition p30 verysmooth)
    (treatment p30 colourfragments)
    (goalsize p30 large)
    
    
    
    
    (available p31)
    (colour p31 mauve)
    (wood p31 teak)
    (surface-condition p31 smooth)
    (treatment p31 colourfragments)
    (goalsize p31 large)
    
    
    
    
    (available p32)
    (colour p32 blue)
    (wood p32 mahogany)
    (surface-condition p32 verysmooth)
    (treatment p32 colourfragments)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (available p34)
    (colour p34 blue)
    (wood p34 walnut)
    (surface-condition p34 smooth)
    (treatment p34 glazed)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (available p39)
    (colour p39 black)
    (wood p39 pine)
    (surface-condition p39 rough)
    (treatment p39 colourfragments)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (available p42)
    (colour p42 red)
    (wood p42 teak)
    (surface-condition p42 verysmooth)
    (treatment p42 colourfragments)
    (goalsize p42 large)
    
    
    
    
    (available p43)
    (colour p43 red)
    (wood p43 teak)
    (surface-condition p43 verysmooth)
    (treatment p43 varnished)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (available p47)
    (colour p47 natural)
    (wood p47 teak)
    (surface-condition p47 smooth)
    (treatment p47 colourfragments)
    (goalsize p47 large)
    
    
    
    
    (available p48)
    (colour p48 black)
    (wood p48 oak)
    (surface-condition p48 smooth)
    (treatment p48 glazed)
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
    
    
    
    
    (available p54)
    (colour p54 mauve)
    (wood p54 pine)
    (surface-condition p54 smooth)
    (treatment p54 varnished)
    (goalsize p54 medium)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (available p56)
    (colour p56 mauve)
    (wood p56 beech)
    (surface-condition p56 rough)
    (treatment p56 colourfragments)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 large)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (available p64)
    (colour p64 white)
    (wood p64 walnut)
    (surface-condition p64 rough)
    (treatment p64 colourfragments)
    (goalsize p64 large)
    
    
    
    
    (available p65)
    (colour p65 mauve)
    (wood p65 beech)
    (surface-condition p65 verysmooth)
    (treatment p65 colourfragments)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 medium)
    
    
    
    
    (available p67)
    (colour p67 natural)
    (wood p67 beech)
    (surface-condition p67 smooth)
    (treatment p67 glazed)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (available p69)
    (colour p69 white)
    (wood p69 mahogany)
    (surface-condition p69 smooth)
    (treatment p69 varnished)
    (goalsize p69 medium)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 small)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (available p76)
    (colour p76 black)
    (wood p76 beech)
    (surface-condition p76 rough)
    (treatment p76 colourfragments)
    (goalsize p76 small)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (available p78)
    (colour p78 white)
    (wood p78 teak)
    (surface-condition p78 rough)
    (treatment p78 colourfragments)
    (goalsize p78 small)
    
    
    
    
    (available p79)
    (colour p79 red)
    (wood p79 mahogany)
    (surface-condition p79 rough)
    (treatment p79 glazed)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 medium)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (available p84)
    (colour p84 red)
    (wood p84 pine)
    (surface-condition p84 verysmooth)
    (treatment p84 colourfragments)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (available p91)
    (colour p91 mauve)
    (wood p91 walnut)
    (surface-condition p91 rough)
    (treatment p91 colourfragments)
    (goalsize p91 large)
    
    
    
    
    (available p92)
    (colour p92 natural)
    (wood p92 teak)
    (surface-condition p92 smooth)
    (treatment p92 glazed)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 medium)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 small)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (available p100)
    (colour p100 green)
    (wood p100 walnut)
    (surface-condition p100 rough)
    (treatment p100 varnished)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (unused p102)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 large)
    
    
    
    
    (boardsize b0 s8)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s7)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s7)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s6)
    (wood b6 oak)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s9)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s8)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 pine)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s6)
    (wood b10 pine)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s5)
    (wood b12 pine)
    (surface-condition b12 smooth)
    (available b12)
    (boardsize b13 s4)
    (wood b13 walnut)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s9)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s9)
    (wood b15 walnut)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s6)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 teak)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s6)
    (wood b18 teak)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s7)
    (wood b19 teak)
    (surface-condition b19 smooth)
    (available b19)
    (boardsize b20 s1)
    (wood b20 teak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s9)
    (wood b21 beech)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s7)
    (wood b22 beech)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s7)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 beech)
    (surface-condition b24 smooth)
    (available b24)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (wood p0 walnut)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 red)
      (wood p1 mahogany)
      (available p2)
      (colour p2 blue)
      (wood p2 pine)
      (treatment p2 glazed)
      (available p3)
      (colour p3 green)
      (treatment p3 varnished)
      (available p4)
      (colour p4 natural)
      (wood p4 mahogany)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      (available p5)
      (wood p5 pine)
      (treatment p5 varnished)
      (available p6)
      (colour p6 green)
      (wood p6 pine)
      (available p7)
      (wood p7 mahogany)
      (treatment p7 glazed)
      (available p8)
      (wood p8 beech)
      (treatment p8 varnished)
      (available p9)
      (colour p9 red)
      (treatment p9 varnished)
      (available p10)
      (colour p10 natural)
      (treatment p10 varnished)
      (available p11)
      (colour p11 mauve)
      (wood p11 cherry)
      (available p12)
      (wood p12 beech)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 green)
      (surface-condition p13 smooth)
      (available p14)
      (colour p14 black)
      (wood p14 beech)
      (surface-condition p14 verysmooth)
      (available p15)
      (colour p15 black)
      (wood p15 teak)
      (surface-condition p15 smooth)
      (treatment p15 glazed)
      (available p16)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (wood p17 walnut)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 red)
      (wood p18 walnut)
      (available p19)
      (wood p19 teak)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 red)
      (treatment p20 glazed)
      (available p21)
      (colour p21 mauve)
      (surface-condition p21 verysmooth)
      (available p22)
      (colour p22 white)
      (wood p22 beech)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 blue)
      (wood p23 walnut)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 white)
      (wood p24 pine)
      (treatment p24 glazed)
      (available p25)
      (colour p25 white)
      (wood p25 oak)
      (available p26)
      (wood p26 teak)
      (treatment p26 glazed)
      (available p27)
      (surface-condition p27 smooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 red)
      (wood p28 cherry)
      (available p29)
      (colour p29 blue)
      (wood p29 pine)
      (treatment p29 glazed)
      (available p30)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 white)
      (surface-condition p31 verysmooth)
      (available p32)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 black)
      (treatment p33 varnished)
      (available p34)
      (surface-condition p34 smooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 green)
      (wood p35 cherry)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 white)
      (surface-condition p36 verysmooth)
      (available p37)
      (colour p37 red)
      (treatment p37 glazed)
      (available p38)
      (colour p38 white)
      (surface-condition p38 smooth)
      (available p39)
      (colour p39 blue)
      (treatment p39 varnished)
      (available p40)
      (colour p40 white)
      (wood p40 cherry)
      (treatment p40 glazed)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 white)
      (wood p42 teak)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 mauve)
      (treatment p43 glazed)
      (available p44)
      (wood p44 walnut)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 natural)
      (wood p45 cherry)
      (surface-condition p45 smooth)
      (available p46)
      (colour p46 red)
      (wood p46 teak)
      (treatment p46 glazed)
      (available p47)
      (surface-condition p47 smooth)
      (treatment p47 varnished)
      (available p48)
      (colour p48 mauve)
      (surface-condition p48 smooth)
      (available p49)
      (colour p49 mauve)
      (surface-condition p49 smooth)
      (available p50)
      (colour p50 natural)
      (wood p50 walnut)
      (available p51)
      (colour p51 red)
      (wood p51 beech)
      (surface-condition p51 smooth)
      (treatment p51 glazed)
      (available p52)
      (wood p52 mahogany)
      (surface-condition p52 verysmooth)
      (treatment p52 glazed)
      (available p53)
      (wood p53 oak)
      (surface-condition p53 smooth)
      (treatment p53 glazed)
      (available p54)
      (wood p54 pine)
      (surface-condition p54 verysmooth)
      (available p55)
      (surface-condition p55 smooth)
      (treatment p55 glazed)
      (available p56)
      (surface-condition p56 verysmooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 red)
      (wood p57 cherry)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 red)
      (wood p58 walnut)
      (surface-condition p58 verysmooth)
      (treatment p58 varnished)
      (available p59)
      (colour p59 white)
      (surface-condition p59 verysmooth)
      (available p60)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (wood p61 teak)
      (treatment p61 glazed)
      (available p62)
      (colour p62 red)
      (wood p62 walnut)
      (surface-condition p62 verysmooth)
      (treatment p62 glazed)
      (available p63)
      (colour p63 natural)
      (wood p63 teak)
      (surface-condition p63 verysmooth)
      (treatment p63 glazed)
      (available p64)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 natural)
      (wood p65 beech)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (wood p66 cherry)
      (surface-condition p66 verysmooth)
      (available p67)
      (colour p67 green)
      (wood p67 beech)
      (surface-condition p67 verysmooth)
      (available p68)
      (colour p68 red)
      (wood p68 oak)
      (available p69)
      (wood p69 mahogany)
      (treatment p69 glazed)
      (available p70)
      (colour p70 natural)
      (wood p70 beech)
      (surface-condition p70 verysmooth)
      (available p71)
      (wood p71 mahogany)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (colour p72 green)
      (wood p72 mahogany)
      (available p73)
      (wood p73 cherry)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 mauve)
      (wood p74 walnut)
      (available p75)
      (colour p75 red)
      (wood p75 oak)
      (surface-condition p75 smooth)
      (treatment p75 glazed)
      (available p76)
      (wood p76 beech)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 mauve)
      (wood p77 pine)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 blue)
      (wood p78 teak)
      (surface-condition p78 verysmooth)
      (available p79)
      (colour p79 white)
      (treatment p79 glazed)
      (available p80)
      (colour p80 red)
      (wood p80 beech)
      (surface-condition p80 verysmooth)
      (treatment p80 glazed)
      (available p81)
      (surface-condition p81 verysmooth)
      (treatment p81 glazed)
      (available p82)
      (surface-condition p82 verysmooth)
      (treatment p82 varnished)
      (available p83)
      (wood p83 beech)
      (surface-condition p83 smooth)
      (available p84)
      (colour p84 white)
      (wood p84 pine)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 white)
      (wood p85 oak)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 green)
      (wood p86 mahogany)
      (available p87)
      (wood p87 cherry)
      (treatment p87 varnished)
      (available p88)
      (colour p88 natural)
      (treatment p88 varnished)
      (available p89)
      (colour p89 black)
      (wood p89 pine)
      (surface-condition p89 smooth)
      (available p90)
      (colour p90 black)
      (surface-condition p90 verysmooth)
      (available p91)
      (colour p91 black)
      (treatment p91 varnished)
      (available p92)
      (colour p92 black)
      (surface-condition p92 smooth)
      (available p93)
      (wood p93 teak)
      (treatment p93 varnished)
      (available p94)
      (wood p94 beech)
      (surface-condition p94 smooth)
      (treatment p94 varnished)
      (available p95)
      (colour p95 black)
      (wood p95 mahogany)
      (available p96)
      (colour p96 red)
      (surface-condition p96 smooth)
      (treatment p96 varnished)
      (available p97)
      (colour p97 natural)
      (surface-condition p97 verysmooth)
      (available p98)
      (surface-condition p98 smooth)
      (treatment p98 glazed)
      (available p99)
      (colour p99 natural)
      (wood p99 pine)
      (surface-condition p99 verysmooth)
      (available p100)
      (colour p100 white)
      (surface-condition p100 smooth)
      (available p101)
      (colour p101 red)
      (wood p101 mahogany)
      (surface-condition p101 smooth)
      (treatment p101 glazed)
      (available p102)
      (colour p102 natural)
      (wood p102 pine)
      (treatment p102 glazed)
      (available p103)
      (colour p103 blue)
      (wood p103 oak)
      (surface-condition p103 smooth)
      (treatment p103 glazed)
    )
  )
  
)
