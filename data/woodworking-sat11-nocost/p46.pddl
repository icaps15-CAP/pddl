; woodworking task with 107 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 66650

(define (problem wood-prob-sat-46)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve red black white green blue - acolour
    pine beech cherry mahogany walnut oak teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 - board
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
    (has-colour glazer1 mauve)
    (has-colour glazer1 natural)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 white)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 mauve)
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
    (goalsize p0 small)
    
    
    
    
    (unused p1)
    (goalsize p1 small)
    
    
    
    
    (unused p2)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 small)
    
    
    
    
    (available p4)
    (colour p4 mauve)
    (wood p4 beech)
    (surface-condition p4 verysmooth)
    (treatment p4 colourfragments)
    (goalsize p4 medium)
    
    
    
    
    (unused p5)
    (goalsize p5 large)
    
    
    
    
    (available p6)
    (colour p6 red)
    (wood p6 pine)
    (surface-condition p6 verysmooth)
    (treatment p6 varnished)
    (goalsize p6 medium)
    
    
    
    
    (unused p7)
    (goalsize p7 medium)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (available p11)
    (colour p11 white)
    (wood p11 beech)
    (surface-condition p11 smooth)
    (treatment p11 colourfragments)
    (goalsize p11 medium)
    
    
    
    
    (available p12)
    (colour p12 black)
    (wood p12 mahogany)
    (surface-condition p12 rough)
    (treatment p12 glazed)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 large)
    
    
    
    
    (unused p15)
    (goalsize p15 large)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (unused p19)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 medium)
    
    
    
    
    (unused p21)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 medium)
    
    
    
    
    (unused p23)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 mauve)
    (wood p24 cherry)
    (surface-condition p24 rough)
    (treatment p24 glazed)
    (goalsize p24 large)
    
    
    
    
    (unused p25)
    (goalsize p25 large)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 large)
    
    
    
    
    (unused p30)
    (goalsize p30 medium)
    
    
    
    
    (available p31)
    (colour p31 blue)
    (wood p31 teak)
    (surface-condition p31 smooth)
    (treatment p31 glazed)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 small)
    
    
    
    
    (available p33)
    (colour p33 red)
    (wood p33 pine)
    (surface-condition p33 rough)
    (treatment p33 glazed)
    (goalsize p33 large)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (available p35)
    (colour p35 blue)
    (wood p35 cherry)
    (surface-condition p35 rough)
    (treatment p35 colourfragments)
    (goalsize p35 small)
    
    
    
    
    (unused p36)
    (goalsize p36 small)
    
    
    
    
    (available p37)
    (colour p37 red)
    (wood p37 walnut)
    (surface-condition p37 verysmooth)
    (treatment p37 colourfragments)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (available p41)
    (colour p41 green)
    (wood p41 oak)
    (surface-condition p41 rough)
    (treatment p41 varnished)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 small)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (available p48)
    (colour p48 natural)
    (wood p48 mahogany)
    (surface-condition p48 verysmooth)
    (treatment p48 glazed)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 medium)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 small)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 small)
    
    
    
    
    (unused p54)
    (goalsize p54 medium)
    
    
    
    
    (available p55)
    (colour p55 green)
    (wood p55 beech)
    (surface-condition p55 rough)
    (treatment p55 colourfragments)
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
    
    
    
    
    (available p61)
    (colour p61 black)
    (wood p61 beech)
    (surface-condition p61 smooth)
    (treatment p61 glazed)
    (goalsize p61 small)
    
    
    
    
    (available p62)
    (colour p62 green)
    (wood p62 beech)
    (surface-condition p62 smooth)
    (treatment p62 glazed)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 medium)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (available p66)
    (colour p66 red)
    (wood p66 cherry)
    (surface-condition p66 smooth)
    (treatment p66 colourfragments)
    (goalsize p66 medium)
    
    
    
    
    (unused p67)
    (goalsize p67 medium)
    
    
    
    
    (unused p68)
    (goalsize p68 medium)
    
    
    
    
    (available p69)
    (colour p69 white)
    (wood p69 beech)
    (surface-condition p69 smooth)
    (treatment p69 varnished)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (unused p71)
    (goalsize p71 medium)
    
    
    
    
    (unused p72)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (available p74)
    (colour p74 blue)
    (wood p74 teak)
    (surface-condition p74 smooth)
    (treatment p74 glazed)
    (goalsize p74 medium)
    
    
    
    
    (available p75)
    (colour p75 mauve)
    (wood p75 beech)
    (surface-condition p75 rough)
    (treatment p75 varnished)
    (goalsize p75 small)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 large)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (unused p83)
    (goalsize p83 large)
    
    
    
    
    (unused p84)
    (goalsize p84 large)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (available p86)
    (colour p86 blue)
    (wood p86 cherry)
    (surface-condition p86 rough)
    (treatment p86 varnished)
    (goalsize p86 medium)
    
    
    
    
    (unused p87)
    (goalsize p87 large)
    
    
    
    
    (available p88)
    (colour p88 blue)
    (wood p88 mahogany)
    (surface-condition p88 verysmooth)
    (treatment p88 glazed)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 small)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 large)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (available p93)
    (colour p93 green)
    (wood p93 mahogany)
    (surface-condition p93 smooth)
    (treatment p93 colourfragments)
    (goalsize p93 large)
    
    
    
    
    (available p94)
    (colour p94 red)
    (wood p94 oak)
    (surface-condition p94 smooth)
    (treatment p94 glazed)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 small)
    
    
    
    
    (available p97)
    (colour p97 natural)
    (wood p97 oak)
    (surface-condition p97 rough)
    (treatment p97 varnished)
    (goalsize p97 large)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 medium)
    
    
    
    
    (available p100)
    (colour p100 blue)
    (wood p100 cherry)
    (surface-condition p100 verysmooth)
    (treatment p100 varnished)
    (goalsize p100 medium)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (available p102)
    (colour p102 red)
    (wood p102 teak)
    (surface-condition p102 rough)
    (treatment p102 colourfragments)
    (goalsize p102 medium)
    
    
    
    
    (available p103)
    (colour p103 red)
    (wood p103 cherry)
    (surface-condition p103 rough)
    (treatment p103 glazed)
    (goalsize p103 large)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (available p105)
    (colour p105 natural)
    (wood p105 walnut)
    (surface-condition p105 verysmooth)
    (treatment p105 colourfragments)
    (goalsize p105 medium)
    
    
    
    
    (unused p106)
    (goalsize p106 medium)
    
    
    
    
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s6)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s2)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s9)
    (wood b3 mahogany)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s8)
    (wood b4 mahogany)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s9)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s2)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s10)
    (wood b7 oak)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s9)
    (wood b8 oak)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s9)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s7)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s8)
    (wood b11 pine)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s7)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 pine)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s6)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 walnut)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s11)
    (wood b16 walnut)
    (surface-condition b16 smooth)
    (available b16)
    (boardsize b17 s5)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s8)
    (wood b18 teak)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s8)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s11)
    (wood b21 beech)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s10)
    (wood b22 beech)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s10)
    (wood b23 beech)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s8)
    (wood b24 beech)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s8)
    (wood b25 beech)
    (surface-condition b25 smooth)
    (available b25)
  )
  (:goal
    (and
      (available p0)
      (colour p0 red)
      (wood p0 cherry)
      (available p1)
      (colour p1 blue)
      (wood p1 teak)
      (surface-condition p1 verysmooth)
      (treatment p1 varnished)
      (available p2)
      (colour p2 green)
      (treatment p2 varnished)
      (available p3)
      (colour p3 green)
      (wood p3 cherry)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (colour p4 green)
      (surface-condition p4 verysmooth)
      (available p5)
      (wood p5 cherry)
      (treatment p5 varnished)
      (available p6)
      (colour p6 black)
      (wood p6 pine)
      (available p7)
      (colour p7 mauve)
      (wood p7 walnut)
      (surface-condition p7 verysmooth)
      (available p8)
      (colour p8 natural)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (colour p10 mauve)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (surface-condition p11 smooth)
      (treatment p11 varnished)
      (available p12)
      (colour p12 natural)
      (surface-condition p12 smooth)
      (available p13)
      (wood p13 oak)
      (surface-condition p13 smooth)
      (available p14)
      (surface-condition p14 smooth)
      (treatment p14 glazed)
      (available p15)
      (colour p15 mauve)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 white)
      (surface-condition p16 smooth)
      (available p17)
      (colour p17 green)
      (surface-condition p17 verysmooth)
      (available p18)
      (colour p18 natural)
      (wood p18 pine)
      (available p19)
      (wood p19 teak)
      (surface-condition p19 smooth)
      (available p20)
      (wood p20 teak)
      (treatment p20 varnished)
      (available p21)
      (colour p21 natural)
      (wood p21 oak)
      (surface-condition p21 smooth)
      (treatment p21 varnished)
      (available p22)
      (colour p22 mauve)
      (surface-condition p22 smooth)
      (available p23)
      (colour p23 natural)
      (wood p23 beech)
      (available p24)
      (surface-condition p24 verysmooth)
      (treatment p24 varnished)
      (available p25)
      (colour p25 blue)
      (wood p25 beech)
      (surface-condition p25 smooth)
      (treatment p25 glazed)
      (available p26)
      (colour p26 red)
      (wood p26 beech)
      (surface-condition p26 verysmooth)
      (treatment p26 varnished)
      (available p27)
      (wood p27 walnut)
      (surface-condition p27 verysmooth)
      (treatment p27 glazed)
      (available p28)
      (colour p28 white)
      (wood p28 cherry)
      (surface-condition p28 smooth)
      (treatment p28 varnished)
      (available p29)
      (wood p29 oak)
      (surface-condition p29 verysmooth)
      (available p30)
      (wood p30 mahogany)
      (surface-condition p30 verysmooth)
      (treatment p30 varnished)
      (available p31)
      (colour p31 green)
      (wood p31 teak)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (surface-condition p32 smooth)
      (treatment p32 varnished)
      (available p33)
      (wood p33 pine)
      (surface-condition p33 verysmooth)
      (available p34)
      (wood p34 beech)
      (surface-condition p34 verysmooth)
      (available p35)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (colour p36 black)
      (treatment p36 glazed)
      (available p37)
      (surface-condition p37 smooth)
      (treatment p37 varnished)
      (available p38)
      (colour p38 mauve)
      (surface-condition p38 verysmooth)
      (available p39)
      (colour p39 blue)
      (wood p39 pine)
      (surface-condition p39 smooth)
      (treatment p39 glazed)
      (available p40)
      (colour p40 red)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 red)
      (wood p41 oak)
      (surface-condition p41 smooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 mauve)
      (wood p42 walnut)
      (surface-condition p42 verysmooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 white)
      (wood p43 walnut)
      (surface-condition p43 smooth)
      (treatment p43 varnished)
      (available p44)
      (wood p44 oak)
      (treatment p44 glazed)
      (available p45)
      (surface-condition p45 smooth)
      (treatment p45 glazed)
      (available p46)
      (surface-condition p46 smooth)
      (treatment p46 glazed)
      (available p47)
      (wood p47 teak)
      (surface-condition p47 verysmooth)
      (available p48)
      (wood p48 mahogany)
      (treatment p48 varnished)
      (available p49)
      (surface-condition p49 verysmooth)
      (treatment p49 varnished)
      (available p50)
      (surface-condition p50 verysmooth)
      (treatment p50 glazed)
      (available p51)
      (wood p51 pine)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 red)
      (wood p52 teak)
      (available p53)
      (colour p53 mauve)
      (wood p53 oak)
      (treatment p53 glazed)
      (available p54)
      (colour p54 green)
      (surface-condition p54 verysmooth)
      (available p55)
      (colour p55 white)
      (wood p55 beech)
      (surface-condition p55 smooth)
      (available p56)
      (colour p56 black)
      (treatment p56 glazed)
      (available p57)
      (colour p57 green)
      (surface-condition p57 smooth)
      (available p58)
      (colour p58 mauve)
      (treatment p58 glazed)
      (available p59)
      (colour p59 blue)
      (treatment p59 varnished)
      (available p60)
      (wood p60 walnut)
      (surface-condition p60 smooth)
      (treatment p60 varnished)
      (available p61)
      (colour p61 green)
      (surface-condition p61 verysmooth)
      (available p62)
      (colour p62 black)
      (treatment p62 varnished)
      (available p63)
      (wood p63 mahogany)
      (surface-condition p63 smooth)
      (available p64)
      (colour p64 black)
      (surface-condition p64 verysmooth)
      (treatment p64 varnished)
      (available p65)
      (colour p65 blue)
      (wood p65 pine)
      (available p66)
      (colour p66 natural)
      (surface-condition p66 smooth)
      (available p67)
      (colour p67 green)
      (wood p67 mahogany)
      (available p68)
      (wood p68 oak)
      (surface-condition p68 verysmooth)
      (available p69)
      (colour p69 mauve)
      (wood p69 beech)
      (surface-condition p69 verysmooth)
      (available p70)
      (wood p70 walnut)
      (treatment p70 glazed)
      (available p71)
      (colour p71 mauve)
      (wood p71 mahogany)
      (available p72)
      (colour p72 natural)
      (wood p72 walnut)
      (surface-condition p72 verysmooth)
      (treatment p72 glazed)
      (available p73)
      (colour p73 blue)
      (surface-condition p73 verysmooth)
      (available p74)
      (colour p74 green)
      (wood p74 teak)
      (surface-condition p74 verysmooth)
      (treatment p74 glazed)
      (available p75)
      (wood p75 beech)
      (surface-condition p75 smooth)
      (available p76)
      (colour p76 natural)
      (wood p76 beech)
      (surface-condition p76 smooth)
      (available p77)
      (colour p77 green)
      (wood p77 teak)
      (available p78)
      (surface-condition p78 smooth)
      (treatment p78 varnished)
      (available p79)
      (colour p79 black)
      (treatment p79 glazed)
      (available p80)
      (colour p80 black)
      (wood p80 teak)
      (available p81)
      (wood p81 beech)
      (surface-condition p81 smooth)
      (treatment p81 glazed)
      (available p82)
      (surface-condition p82 smooth)
      (treatment p82 varnished)
      (available p83)
      (colour p83 white)
      (surface-condition p83 smooth)
      (available p84)
      (colour p84 blue)
      (surface-condition p84 smooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 white)
      (wood p85 walnut)
      (available p86)
      (colour p86 natural)
      (treatment p86 varnished)
      (available p87)
      (surface-condition p87 smooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 red)
      (wood p88 mahogany)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 red)
      (surface-condition p89 smooth)
      (treatment p89 varnished)
      (available p90)
      (colour p90 green)
      (wood p90 beech)
      (surface-condition p90 smooth)
      (available p91)
      (colour p91 blue)
      (surface-condition p91 smooth)
      (available p92)
      (surface-condition p92 verysmooth)
      (treatment p92 varnished)
      (available p93)
      (colour p93 mauve)
      (treatment p93 glazed)
      (available p94)
      (colour p94 blue)
      (surface-condition p94 verysmooth)
      (available p95)
      (wood p95 cherry)
      (treatment p95 glazed)
      (available p96)
      (colour p96 red)
      (surface-condition p96 smooth)
      (available p97)
      (wood p97 oak)
      (treatment p97 glazed)
      (available p98)
      (colour p98 mauve)
      (surface-condition p98 smooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 black)
      (wood p99 beech)
      (surface-condition p99 smooth)
      (available p100)
      (wood p100 cherry)
      (surface-condition p100 smooth)
      (available p101)
      (surface-condition p101 verysmooth)
      (treatment p101 varnished)
      (available p102)
      (colour p102 mauve)
      (wood p102 teak)
      (available p103)
      (surface-condition p103 verysmooth)
      (treatment p103 glazed)
      (available p104)
      (colour p104 mauve)
      (wood p104 oak)
      (surface-condition p104 smooth)
      (treatment p104 glazed)
      (available p105)
      (colour p105 mauve)
      (surface-condition p105 verysmooth)
      (treatment p105 varnished)
      (available p106)
      (wood p106 beech)
      (treatment p106 varnished)
    )
  )
  
)
