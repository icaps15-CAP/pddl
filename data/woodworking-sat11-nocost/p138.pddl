; woodworking task with 101 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 986474

(define (problem wood-prob-sat-138)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white green black blue mauve red - acolour
    cherry mahogany beech walnut pine oak teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 - board
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
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
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
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (unused p0)
    (goalsize p0 large)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 red)
    (wood p3 walnut)
    (surface-condition p3 rough)
    (treatment p3 colourfragments)
    (goalsize p3 small)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 mauve)
    (wood p5 beech)
    (surface-condition p5 verysmooth)
    (treatment p5 glazed)
    (goalsize p5 small)
    
    
    
    
    (available p6)
    (colour p6 mauve)
    (wood p6 walnut)
    (surface-condition p6 rough)
    (treatment p6 varnished)
    (goalsize p6 medium)
    
    
    
    
    (available p7)
    (colour p7 mauve)
    (wood p7 teak)
    (surface-condition p7 rough)
    (treatment p7 varnished)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 medium)
    
    
    
    
    (available p9)
    (colour p9 green)
    (wood p9 walnut)
    (surface-condition p9 smooth)
    (treatment p9 colourfragments)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 small)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 large)
    
    
    
    
    (available p17)
    (colour p17 red)
    (wood p17 walnut)
    (surface-condition p17 smooth)
    (treatment p17 varnished)
    (goalsize p17 large)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (unused p19)
    (goalsize p19 small)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (unused p24)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (unused p27)
    (goalsize p27 large)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 small)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 medium)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (available p37)
    (colour p37 mauve)
    (wood p37 cherry)
    (surface-condition p37 verysmooth)
    (treatment p37 glazed)
    (goalsize p37 medium)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 small)
    
    
    
    
    (available p40)
    (colour p40 mauve)
    (wood p40 walnut)
    (surface-condition p40 rough)
    (treatment p40 glazed)
    (goalsize p40 large)
    
    
    
    
    (available p41)
    (colour p41 green)
    (wood p41 walnut)
    (surface-condition p41 rough)
    (treatment p41 colourfragments)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 small)
    
    
    
    
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
    
    
    
    
    (available p48)
    (colour p48 black)
    (wood p48 pine)
    (surface-condition p48 smooth)
    (treatment p48 varnished)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 medium)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (available p54)
    (colour p54 blue)
    (wood p54 cherry)
    (surface-condition p54 smooth)
    (treatment p54 glazed)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (unused p61)
    (goalsize p61 large)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 medium)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 large)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (available p69)
    (colour p69 white)
    (wood p69 mahogany)
    (surface-condition p69 smooth)
    (treatment p69 varnished)
    (goalsize p69 medium)
    
    
    
    
    (available p70)
    (colour p70 blue)
    (wood p70 walnut)
    (surface-condition p70 verysmooth)
    (treatment p70 glazed)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
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
    (colour p78 blue)
    (wood p78 beech)
    (surface-condition p78 rough)
    (treatment p78 varnished)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 large)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (unused p83)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (available p89)
    (colour p89 mauve)
    (wood p89 cherry)
    (surface-condition p89 smooth)
    (treatment p89 varnished)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (available p92)
    (colour p92 black)
    (wood p92 beech)
    (surface-condition p92 smooth)
    (treatment p92 varnished)
    (goalsize p92 medium)
    
    
    
    
    (available p93)
    (colour p93 red)
    (wood p93 mahogany)
    (surface-condition p93 rough)
    (treatment p93 glazed)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (available p95)
    (colour p95 black)
    (wood p95 beech)
    (surface-condition p95 smooth)
    (treatment p95 glazed)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (available p98)
    (colour p98 natural)
    (wood p98 teak)
    (surface-condition p98 rough)
    (treatment p98 varnished)
    (goalsize p98 large)
    
    
    
    
    (available p99)
    (colour p99 red)
    (wood p99 cherry)
    (surface-condition p99 verysmooth)
    (treatment p99 varnished)
    (goalsize p99 small)
    
    
    
    
    (available p100)
    (colour p100 black)
    (wood p100 walnut)
    (surface-condition p100 verysmooth)
    (treatment p100 colourfragments)
    (goalsize p100 medium)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s10)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s5)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s9)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s9)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s7)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s3)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s11)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s10)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s7)
    (wood b13 oak)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s8)
    (wood b14 pine)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s4)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s11)
    (wood b16 pine)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s9)
    (wood b17 pine)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s5)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s6)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 walnut)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s8)
    (wood b21 walnut)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s8)
    (wood b22 walnut)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s6)
    (wood b23 teak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s10)
    (wood b24 teak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s8)
    (wood b25 teak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s6)
    (wood b26 teak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 teak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s7)
    (wood b28 beech)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s7)
    (wood b29 beech)
    (surface-condition b29 rough)
    (available b29)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (wood p0 oak)
      (available p1)
      (colour p1 blue)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 black)
      (wood p2 walnut)
      (surface-condition p2 verysmooth)
      (treatment p2 varnished)
      (available p3)
      (wood p3 walnut)
      (treatment p3 glazed)
      (available p4)
      (surface-condition p4 verysmooth)
      (treatment p4 glazed)
      (available p5)
      (colour p5 green)
      (surface-condition p5 verysmooth)
      (available p6)
      (wood p6 walnut)
      (surface-condition p6 verysmooth)
      (available p7)
      (colour p7 natural)
      (wood p7 teak)
      (surface-condition p7 smooth)
      (treatment p7 glazed)
      (available p8)
      (colour p8 black)
      (wood p8 cherry)
      (surface-condition p8 smooth)
      (treatment p8 glazed)
      (available p9)
      (wood p9 walnut)
      (treatment p9 glazed)
      (available p10)
      (colour p10 red)
      (wood p10 pine)
      (available p11)
      (wood p11 teak)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 green)
      (wood p12 cherry)
      (available p13)
      (colour p13 white)
      (wood p13 beech)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (wood p14 cherry)
      (treatment p14 varnished)
      (available p15)
      (wood p15 walnut)
      (treatment p15 varnished)
      (available p16)
      (colour p16 black)
      (treatment p16 glazed)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 walnut)
      (treatment p18 varnished)
      (available p19)
      (wood p19 beech)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 red)
      (wood p20 oak)
      (surface-condition p20 smooth)
      (treatment p20 glazed)
      (available p21)
      (colour p21 red)
      (wood p21 pine)
      (treatment p21 varnished)
      (available p22)
      (wood p22 cherry)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 mauve)
      (treatment p23 varnished)
      (available p24)
      (colour p24 red)
      (treatment p24 glazed)
      (available p25)
      (colour p25 blue)
      (wood p25 oak)
      (surface-condition p25 verysmooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 natural)
      (wood p26 oak)
      (available p27)
      (colour p27 natural)
      (wood p27 pine)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (colour p28 mauve)
      (surface-condition p28 verysmooth)
      (treatment p28 varnished)
      (available p29)
      (colour p29 red)
      (surface-condition p29 smooth)
      (available p30)
      (colour p30 red)
      (wood p30 pine)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (wood p31 oak)
      (treatment p31 varnished)
      (available p32)
      (colour p32 natural)
      (surface-condition p32 verysmooth)
      (available p33)
      (colour p33 red)
      (wood p33 oak)
      (surface-condition p33 verysmooth)
      (treatment p33 varnished)
      (available p34)
      (colour p34 green)
      (wood p34 cherry)
      (surface-condition p34 verysmooth)
      (treatment p34 varnished)
      (available p35)
      (colour p35 mauve)
      (wood p35 teak)
      (available p36)
      (wood p36 walnut)
      (treatment p36 glazed)
      (available p37)
      (surface-condition p37 verysmooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 mauve)
      (wood p38 mahogany)
      (available p39)
      (colour p39 mauve)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 red)
      (wood p40 walnut)
      (surface-condition p40 verysmooth)
      (treatment p40 varnished)
      (available p41)
      (surface-condition p41 smooth)
      (treatment p41 glazed)
      (available p42)
      (colour p42 white)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (wood p43 teak)
      (surface-condition p43 smooth)
      (available p44)
      (colour p44 white)
      (surface-condition p44 smooth)
      (available p45)
      (colour p45 natural)
      (surface-condition p45 smooth)
      (available p46)
      (colour p46 black)
      (surface-condition p46 smooth)
      (available p47)
      (colour p47 black)
      (wood p47 teak)
      (available p48)
      (colour p48 natural)
      (wood p48 pine)
      (treatment p48 glazed)
      (available p49)
      (colour p49 mauve)
      (treatment p49 varnished)
      (available p50)
      (colour p50 natural)
      (wood p50 mahogany)
      (surface-condition p50 smooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 mauve)
      (surface-condition p51 smooth)
      (available p52)
      (wood p52 cherry)
      (treatment p52 varnished)
      (available p53)
      (colour p53 natural)
      (treatment p53 glazed)
      (available p54)
      (colour p54 mauve)
      (wood p54 cherry)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 blue)
      (wood p55 pine)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (colour p56 mauve)
      (wood p56 pine)
      (surface-condition p56 smooth)
      (treatment p56 glazed)
      (available p57)
      (colour p57 white)
      (wood p57 pine)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 green)
      (surface-condition p58 verysmooth)
      (available p59)
      (wood p59 teak)
      (surface-condition p59 verysmooth)
      (available p60)
      (wood p60 mahogany)
      (treatment p60 varnished)
      (available p61)
      (colour p61 red)
      (wood p61 teak)
      (available p62)
      (wood p62 mahogany)
      (surface-condition p62 verysmooth)
      (available p63)
      (colour p63 mauve)
      (surface-condition p63 verysmooth)
      (available p64)
      (colour p64 mauve)
      (wood p64 cherry)
      (available p65)
      (colour p65 black)
      (wood p65 cherry)
      (treatment p65 varnished)
      (available p66)
      (colour p66 green)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 red)
      (wood p67 pine)
      (surface-condition p67 smooth)
      (available p68)
      (colour p68 green)
      (surface-condition p68 verysmooth)
      (available p69)
      (colour p69 black)
      (wood p69 mahogany)
      (surface-condition p69 verysmooth)
      (treatment p69 varnished)
      (available p70)
      (colour p70 black)
      (surface-condition p70 verysmooth)
      (treatment p70 varnished)
      (available p71)
      (colour p71 white)
      (wood p71 pine)
      (surface-condition p71 smooth)
      (available p72)
      (colour p72 white)
      (wood p72 mahogany)
      (treatment p72 glazed)
      (available p73)
      (wood p73 oak)
      (surface-condition p73 smooth)
      (available p74)
      (colour p74 red)
      (wood p74 mahogany)
      (available p75)
      (wood p75 teak)
      (surface-condition p75 smooth)
      (treatment p75 glazed)
      (available p76)
      (colour p76 mauve)
      (wood p76 walnut)
      (available p77)
      (wood p77 mahogany)
      (surface-condition p77 smooth)
      (treatment p77 glazed)
      (available p78)
      (colour p78 black)
      (wood p78 beech)
      (surface-condition p78 verysmooth)
      (treatment p78 glazed)
      (available p79)
      (colour p79 white)
      (surface-condition p79 smooth)
      (available p80)
      (colour p80 green)
      (wood p80 oak)
      (available p81)
      (colour p81 mauve)
      (wood p81 teak)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (colour p82 red)
      (wood p82 cherry)
      (surface-condition p82 smooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 mauve)
      (wood p83 cherry)
      (treatment p83 varnished)
      (available p84)
      (colour p84 blue)
      (wood p84 mahogany)
      (available p85)
      (wood p85 mahogany)
      (treatment p85 varnished)
      (available p86)
      (wood p86 pine)
      (surface-condition p86 smooth)
      (treatment p86 varnished)
      (available p87)
      (colour p87 white)
      (wood p87 teak)
      (treatment p87 glazed)
      (available p88)
      (colour p88 white)
      (wood p88 teak)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 black)
      (surface-condition p89 smooth)
      (available p90)
      (colour p90 blue)
      (wood p90 teak)
      (surface-condition p90 verysmooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 natural)
      (surface-condition p91 verysmooth)
      (treatment p91 varnished)
      (available p92)
      (colour p92 green)
      (treatment p92 varnished)
      (available p93)
      (wood p93 mahogany)
      (surface-condition p93 verysmooth)
      (available p94)
      (colour p94 white)
      (surface-condition p94 smooth)
      (available p95)
      (surface-condition p95 verysmooth)
      (treatment p95 glazed)
      (available p96)
      (wood p96 beech)
      (surface-condition p96 smooth)
      (treatment p96 glazed)
      (available p97)
      (colour p97 green)
      (wood p97 oak)
      (surface-condition p97 smooth)
      (available p98)
      (colour p98 mauve)
      (treatment p98 varnished)
      (available p99)
      (colour p99 mauve)
      (wood p99 cherry)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 mauve)
      (treatment p100 glazed)
    )
  )
  
)
