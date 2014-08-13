; woodworking task with 104 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 54724

(define (problem wood-prob-sat-79)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black blue white green mauve red - acolour
    cherry mahogany pine beech walnut oak teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 - board
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
    (has-colour glazer0 natural)
    (has-colour glazer0 green)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer2 mauve)
    (has-colour glazer2 white)
    (has-colour glazer2 black)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (unused p0)
    (goalsize p0 small)
    
    
    
    
    (available p1)
    (colour p1 mauve)
    (wood p1 mahogany)
    (surface-condition p1 verysmooth)
    (treatment p1 colourfragments)
    (goalsize p1 large)
    
    
    
    
    (available p2)
    (colour p2 blue)
    (wood p2 beech)
    (surface-condition p2 smooth)
    (treatment p2 glazed)
    (goalsize p2 large)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (available p9)
    (colour p9 natural)
    (wood p9 walnut)
    (surface-condition p9 smooth)
    (treatment p9 varnished)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (available p12)
    (colour p12 green)
    (wood p12 cherry)
    (surface-condition p12 rough)
    (treatment p12 colourfragments)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 medium)
    
    
    
    
    (available p15)
    (colour p15 white)
    (wood p15 beech)
    (surface-condition p15 rough)
    (treatment p15 colourfragments)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 large)
    
    
    
    
    (unused p19)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 small)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (unused p37)
    (goalsize p37 small)
    
    
    
    
    (available p38)
    (colour p38 mauve)
    (wood p38 cherry)
    (surface-condition p38 smooth)
    (treatment p38 varnished)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (unused p40)
    (goalsize p40 large)
    
    
    
    
    (unused p41)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 small)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 large)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 large)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 medium)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 medium)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 small)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (unused p69)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 large)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 large)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (available p80)
    (colour p80 natural)
    (wood p80 oak)
    (surface-condition p80 smooth)
    (treatment p80 varnished)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 small)
    
    
    
    
    (unused p83)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 medium)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 small)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (available p100)
    (colour p100 blue)
    (wood p100 oak)
    (surface-condition p100 verysmooth)
    (treatment p100 colourfragments)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 smooth)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s7)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s11)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s8)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s7)
    (wood b5 cherry)
    (surface-condition b5 smooth)
    (available b5)
    (boardsize b6 s7)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s10)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s7)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 mahogany)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s2)
    (wood b10 mahogany)
    (surface-condition b10 smooth)
    (available b10)
    (boardsize b11 s8)
    (wood b11 oak)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s10)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s10)
    (wood b13 oak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 oak)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s5)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 pine)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s11)
    (wood b17 pine)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s9)
    (wood b19 pine)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s5)
    (wood b20 pine)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s10)
    (wood b21 walnut)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s8)
    (wood b22 walnut)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 walnut)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s7)
    (wood b24 walnut)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 teak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s7)
    (wood b26 teak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s9)
    (wood b27 teak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s6)
    (wood b28 teak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 teak)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s4)
    (wood b30 teak)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 beech)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s10)
    (wood b32 beech)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s11)
    (wood b33 beech)
    (surface-condition b33 rough)
    (available b33)
    (boardsize b34 s7)
    (wood b34 beech)
    (surface-condition b34 rough)
    (available b34)
  )
  (:goal
    (and
      (available p0)
      (wood p0 oak)
      (surface-condition p0 smooth)
      (available p1)
      (colour p1 black)
      (treatment p1 glazed)
      (available p2)
      (colour p2 natural)
      (wood p2 beech)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 mahogany)
      (surface-condition p3 smooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 mauve)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 green)
      (wood p5 cherry)
      (available p6)
      (colour p6 white)
      (wood p6 teak)
      (surface-condition p6 smooth)
      (treatment p6 varnished)
      (available p7)
      (colour p7 mauve)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 mauve)
      (surface-condition p8 verysmooth)
      (available p9)
      (colour p9 black)
      (surface-condition p9 verysmooth)
      (available p10)
      (colour p10 white)
      (treatment p10 varnished)
      (available p11)
      (wood p11 teak)
      (surface-condition p11 verysmooth)
      (available p12)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 red)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 natural)
      (surface-condition p15 smooth)
      (available p16)
      (colour p16 green)
      (wood p16 pine)
      (surface-condition p16 smooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 green)
      (wood p17 teak)
      (available p18)
      (wood p18 beech)
      (surface-condition p18 smooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 mauve)
      (wood p19 beech)
      (surface-condition p19 smooth)
      (treatment p19 glazed)
      (available p20)
      (wood p20 pine)
      (surface-condition p20 verysmooth)
      (available p21)
      (colour p21 natural)
      (wood p21 teak)
      (available p22)
      (colour p22 mauve)
      (treatment p22 glazed)
      (available p23)
      (colour p23 red)
      (treatment p23 varnished)
      (available p24)
      (wood p24 cherry)
      (surface-condition p24 smooth)
      (available p25)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (wood p26 mahogany)
      (surface-condition p26 smooth)
      (treatment p26 glazed)
      (available p27)
      (colour p27 black)
      (wood p27 oak)
      (surface-condition p27 verysmooth)
      (available p28)
      (wood p28 mahogany)
      (treatment p28 varnished)
      (available p29)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 white)
      (wood p30 oak)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 blue)
      (wood p31 mahogany)
      (available p32)
      (wood p32 walnut)
      (surface-condition p32 verysmooth)
      (available p33)
      (colour p33 mauve)
      (wood p33 oak)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (wood p35 teak)
      (treatment p35 varnished)
      (available p36)
      (surface-condition p36 smooth)
      (treatment p36 varnished)
      (available p37)
      (wood p37 mahogany)
      (surface-condition p37 verysmooth)
      (available p38)
      (colour p38 black)
      (surface-condition p38 verysmooth)
      (available p39)
      (wood p39 walnut)
      (surface-condition p39 verysmooth)
      (available p40)
      (colour p40 green)
      (wood p40 mahogany)
      (available p41)
      (colour p41 black)
      (surface-condition p41 smooth)
      (available p42)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 green)
      (wood p43 cherry)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (wood p44 oak)
      (treatment p44 varnished)
      (available p45)
      (colour p45 natural)
      (wood p45 mahogany)
      (surface-condition p45 verysmooth)
      (available p46)
      (colour p46 mauve)
      (wood p46 pine)
      (available p47)
      (wood p47 beech)
      (surface-condition p47 verysmooth)
      (available p48)
      (wood p48 pine)
      (surface-condition p48 verysmooth)
      (treatment p48 varnished)
      (available p49)
      (colour p49 blue)
      (wood p49 cherry)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 natural)
      (wood p50 cherry)
      (available p51)
      (colour p51 blue)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 white)
      (wood p52 pine)
      (treatment p52 glazed)
      (available p53)
      (wood p53 walnut)
      (surface-condition p53 verysmooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 red)
      (wood p54 walnut)
      (available p55)
      (wood p55 pine)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 black)
      (wood p56 walnut)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (wood p57 teak)
      (treatment p57 varnished)
      (available p58)
      (colour p58 natural)
      (wood p58 pine)
      (surface-condition p58 smooth)
      (available p59)
      (colour p59 natural)
      (surface-condition p59 verysmooth)
      (available p60)
      (colour p60 blue)
      (wood p60 pine)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 blue)
      (wood p61 beech)
      (available p62)
      (wood p62 beech)
      (surface-condition p62 verysmooth)
      (available p63)
      (colour p63 green)
      (wood p63 teak)
      (treatment p63 glazed)
      (available p64)
      (wood p64 cherry)
      (surface-condition p64 verysmooth)
      (available p65)
      (colour p65 natural)
      (treatment p65 glazed)
      (available p66)
      (wood p66 mahogany)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 green)
      (wood p67 oak)
      (surface-condition p67 smooth)
      (treatment p67 glazed)
      (available p68)
      (colour p68 black)
      (surface-condition p68 smooth)
      (treatment p68 varnished)
      (available p69)
      (wood p69 walnut)
      (treatment p69 glazed)
      (available p70)
      (colour p70 green)
      (wood p70 mahogany)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 green)
      (wood p71 oak)
      (available p72)
      (colour p72 blue)
      (wood p72 cherry)
      (surface-condition p72 smooth)
      (treatment p72 varnished)
      (available p73)
      (colour p73 white)
      (wood p73 cherry)
      (surface-condition p73 verysmooth)
      (treatment p73 varnished)
      (available p74)
      (colour p74 white)
      (treatment p74 varnished)
      (available p75)
      (colour p75 natural)
      (wood p75 pine)
      (treatment p75 varnished)
      (available p76)
      (wood p76 beech)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 blue)
      (wood p77 teak)
      (surface-condition p77 verysmooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 white)
      (wood p78 beech)
      (available p79)
      (colour p79 natural)
      (wood p79 walnut)
      (surface-condition p79 verysmooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 green)
      (wood p80 oak)
      (surface-condition p80 verysmooth)
      (treatment p80 varnished)
      (available p81)
      (wood p81 pine)
      (surface-condition p81 verysmooth)
      (treatment p81 glazed)
      (available p82)
      (wood p82 teak)
      (surface-condition p82 smooth)
      (available p83)
      (colour p83 red)
      (wood p83 teak)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 natural)
      (treatment p84 glazed)
      (available p85)
      (colour p85 blue)
      (wood p85 oak)
      (surface-condition p85 smooth)
      (available p86)
      (surface-condition p86 smooth)
      (treatment p86 glazed)
      (available p87)
      (colour p87 green)
      (wood p87 pine)
      (available p88)
      (colour p88 natural)
      (wood p88 walnut)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (surface-condition p89 verysmooth)
      (treatment p89 varnished)
      (available p90)
      (colour p90 mauve)
      (wood p90 cherry)
      (surface-condition p90 verysmooth)
      (treatment p90 glazed)
      (available p91)
      (colour p91 blue)
      (surface-condition p91 smooth)
      (available p92)
      (colour p92 natural)
      (treatment p92 varnished)
      (available p93)
      (colour p93 white)
      (treatment p93 varnished)
      (available p94)
      (colour p94 mauve)
      (surface-condition p94 smooth)
      (available p95)
      (surface-condition p95 verysmooth)
      (treatment p95 varnished)
      (available p96)
      (colour p96 natural)
      (wood p96 teak)
      (surface-condition p96 verysmooth)
      (treatment p96 glazed)
      (available p97)
      (colour p97 mauve)
      (wood p97 mahogany)
      (surface-condition p97 smooth)
      (treatment p97 glazed)
      (available p98)
      (wood p98 oak)
      (surface-condition p98 verysmooth)
      (available p99)
      (surface-condition p99 smooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 red)
      (surface-condition p100 smooth)
      (available p101)
      (wood p101 pine)
      (treatment p101 glazed)
      (available p102)
      (colour p102 green)
      (wood p102 cherry)
      (surface-condition p102 verysmooth)
      (treatment p102 glazed)
      (available p103)
      (colour p103 blue)
      (wood p103 cherry)
    )
  )
  
)
