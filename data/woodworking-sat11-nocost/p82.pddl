; woodworking task with 113 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 430348

(define (problem wood-prob-sat-82)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    mauve white blue green red black - acolour
    mahogany pine cherry walnut oak teak beech - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 - board
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
    (has-colour glazer0 white)
    (has-colour glazer0 black)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 green)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 natural)
    (has-colour glazer2 mauve)
    (has-colour glazer2 green)
    (has-colour glazer2 black)
    (has-colour glazer2 white)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 black)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 large)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (available p3)
    (colour p3 black)
    (wood p3 cherry)
    (surface-condition p3 smooth)
    (treatment p3 colourfragments)
    (goalsize p3 large)
    
    
    
    
    (available p4)
    (colour p4 blue)
    (wood p4 pine)
    (surface-condition p4 smooth)
    (treatment p4 varnished)
    (goalsize p4 large)
    
    
    
    
    (available p5)
    (colour p5 natural)
    (wood p5 walnut)
    (surface-condition p5 smooth)
    (treatment p5 colourfragments)
    (goalsize p5 small)
    
    
    
    
    (unused p6)
    (goalsize p6 small)
    
    
    
    
    (unused p7)
    (goalsize p7 small)
    
    
    
    
    (unused p8)
    (goalsize p8 large)
    
    
    
    
    (unused p9)
    (goalsize p9 medium)
    
    
    
    
    (unused p10)
    (goalsize p10 large)
    
    
    
    
    (unused p11)
    (goalsize p11 medium)
    
    
    
    
    (unused p12)
    (goalsize p12 medium)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (unused p16)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 medium)
    
    
    
    
    (available p19)
    (colour p19 white)
    (wood p19 teak)
    (surface-condition p19 rough)
    (treatment p19 colourfragments)
    (goalsize p19 medium)
    
    
    
    
    (unused p20)
    (goalsize p20 large)
    
    
    
    
    (available p21)
    (colour p21 blue)
    (wood p21 teak)
    (surface-condition p21 rough)
    (treatment p21 varnished)
    (goalsize p21 medium)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (available p24)
    (colour p24 red)
    (wood p24 teak)
    (surface-condition p24 rough)
    (treatment p24 varnished)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 small)
    
    
    
    
    (unused p26)
    (goalsize p26 small)
    
    
    
    
    (unused p27)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 small)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (available p30)
    (colour p30 green)
    (wood p30 teak)
    (surface-condition p30 rough)
    (treatment p30 glazed)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 small)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (available p33)
    (colour p33 green)
    (wood p33 beech)
    (surface-condition p33 verysmooth)
    (treatment p33 glazed)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 medium)
    
    
    
    
    (unused p37)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 large)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (unused p42)
    (goalsize p42 large)
    
    
    
    
    (unused p43)
    (goalsize p43 medium)
    
    
    
    
    (unused p44)
    (goalsize p44 large)
    
    
    
    
    (unused p45)
    (goalsize p45 large)
    
    
    
    
    (unused p46)
    (goalsize p46 medium)
    
    
    
    
    (unused p47)
    (goalsize p47 large)
    
    
    
    
    (unused p48)
    (goalsize p48 large)
    
    
    
    
    (unused p49)
    (goalsize p49 large)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 medium)
    
    
    
    
    (unused p52)
    (goalsize p52 small)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 small)
    
    
    
    
    (unused p55)
    (goalsize p55 small)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (available p57)
    (colour p57 blue)
    (wood p57 teak)
    (surface-condition p57 verysmooth)
    (treatment p57 varnished)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 small)
    
    
    
    
    (unused p60)
    (goalsize p60 medium)
    
    
    
    
    (unused p61)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 large)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 large)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 small)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 small)
    
    
    
    
    (available p69)
    (colour p69 black)
    (wood p69 walnut)
    (surface-condition p69 rough)
    (treatment p69 varnished)
    (goalsize p69 small)
    
    
    
    
    (unused p70)
    (goalsize p70 large)
    
    
    
    
    (unused p71)
    (goalsize p71 small)
    
    
    
    
    (available p72)
    (colour p72 black)
    (wood p72 beech)
    (surface-condition p72 verysmooth)
    (treatment p72 varnished)
    (goalsize p72 small)
    
    
    
    
    (unused p73)
    (goalsize p73 large)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 medium)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (available p77)
    (colour p77 blue)
    (wood p77 beech)
    (surface-condition p77 smooth)
    (treatment p77 glazed)
    (goalsize p77 medium)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 small)
    
    
    
    
    (unused p80)
    (goalsize p80 large)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (unused p82)
    (goalsize p82 medium)
    
    
    
    
    (available p83)
    (colour p83 white)
    (wood p83 oak)
    (surface-condition p83 verysmooth)
    (treatment p83 varnished)
    (goalsize p83 small)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 large)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 small)
    
    
    
    
    (available p94)
    (colour p94 black)
    (wood p94 mahogany)
    (surface-condition p94 rough)
    (treatment p94 glazed)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 medium)
    
    
    
    
    (available p96)
    (colour p96 black)
    (wood p96 beech)
    (surface-condition p96 smooth)
    (treatment p96 colourfragments)
    (goalsize p96 medium)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 medium)
    
    
    
    
    (unused p99)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (available p102)
    (colour p102 blue)
    (wood p102 teak)
    (surface-condition p102 rough)
    (treatment p102 varnished)
    (goalsize p102 medium)
    
    
    
    
    (available p103)
    (colour p103 blue)
    (wood p103 beech)
    (surface-condition p103 rough)
    (treatment p103 varnished)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 large)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (available p110)
    (colour p110 blue)
    (wood p110 beech)
    (surface-condition p110 rough)
    (treatment p110 varnished)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 medium)
    
    
    
    
    (unused p112)
    (goalsize p112 medium)
    
    
    
    
    (boardsize b0 s10)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s9)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s9)
    (wood b2 cherry)
    (surface-condition b2 smooth)
    (available b2)
    (boardsize b3 s3)
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
    (boardsize b6 s10)
    (wood b6 mahogany)
    (surface-condition b6 smooth)
    (available b6)
    (boardsize b7 s9)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s5)
    (wood b8 mahogany)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s8)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s10)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s4)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s11)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s2)
    (wood b13 oak)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s7)
    (wood b14 pine)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s6)
    (wood b15 pine)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s5)
    (wood b16 pine)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s4)
    (wood b17 pine)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s5)
    (wood b18 pine)
    (surface-condition b18 smooth)
    (available b18)
    (boardsize b19 s9)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s6)
    (wood b20 walnut)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s8)
    (wood b21 walnut)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s9)
    (wood b22 walnut)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s8)
    (wood b23 walnut)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s4)
    (wood b24 walnut)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s10)
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
    (boardsize b28 s10)
    (wood b28 teak)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s2)
    (wood b29 teak)
    (surface-condition b29 smooth)
    (available b29)
    (boardsize b30 s8)
    (wood b30 beech)
    (surface-condition b30 rough)
    (available b30)
    (boardsize b31 s9)
    (wood b31 beech)
    (surface-condition b31 rough)
    (available b31)
    (boardsize b32 s12)
    (wood b32 beech)
    (surface-condition b32 rough)
    (available b32)
    (boardsize b33 s6)
    (wood b33 beech)
    (surface-condition b33 smooth)
    (available b33)
    (boardsize b34 s10)
    (wood b34 beech)
    (surface-condition b34 smooth)
    (available b34)
  )
  (:goal
    (and
      (available p0)
      (colour p0 natural)
      (surface-condition p0 smooth)
      (available p1)
      (wood p1 oak)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 black)
      (treatment p2 glazed)
      (available p3)
      (wood p3 cherry)
      (treatment p3 glazed)
      (available p4)
      (colour p4 red)
      (wood p4 pine)
      (treatment p4 glazed)
      (available p5)
      (colour p5 green)
      (wood p5 walnut)
      (treatment p5 varnished)
      (available p6)
      (colour p6 blue)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 mauve)
      (wood p7 teak)
      (available p8)
      (colour p8 green)
      (wood p8 oak)
      (available p9)
      (colour p9 green)
      (wood p9 teak)
      (available p10)
      (colour p10 black)
      (surface-condition p10 smooth)
      (treatment p10 varnished)
      (available p11)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (wood p12 cherry)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 white)
      (wood p13 pine)
      (surface-condition p13 smooth)
      (treatment p13 varnished)
      (available p14)
      (wood p14 cherry)
      (surface-condition p14 verysmooth)
      (available p15)
      (colour p15 black)
      (wood p15 walnut)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (colour p16 natural)
      (wood p16 pine)
      (surface-condition p16 verysmooth)
      (treatment p16 varnished)
      (available p17)
      (colour p17 mauve)
      (wood p17 teak)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (colour p18 green)
      (wood p18 mahogany)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 mauve)
      (wood p19 teak)
      (surface-condition p19 verysmooth)
      (treatment p19 varnished)
      (available p20)
      (colour p20 white)
      (treatment p20 varnished)
      (available p21)
      (colour p21 natural)
      (wood p21 teak)
      (available p22)
      (colour p22 black)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 green)
      (wood p23 walnut)
      (surface-condition p23 smooth)
      (treatment p23 varnished)
      (available p24)
      (surface-condition p24 smooth)
      (treatment p24 glazed)
      (available p25)
      (colour p25 green)
      (wood p25 mahogany)
      (surface-condition p25 smooth)
      (treatment p25 varnished)
      (available p26)
      (colour p26 natural)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 blue)
      (treatment p27 varnished)
      (available p28)
      (wood p28 walnut)
      (surface-condition p28 smooth)
      (available p29)
      (colour p29 white)
      (treatment p29 glazed)
      (available p30)
      (surface-condition p30 smooth)
      (treatment p30 varnished)
      (available p31)
      (wood p31 beech)
      (treatment p31 varnished)
      (available p32)
      (colour p32 mauve)
      (wood p32 teak)
      (surface-condition p32 verysmooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 mauve)
      (wood p33 beech)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 red)
      (wood p34 beech)
      (surface-condition p34 smooth)
      (available p35)
      (colour p35 green)
      (wood p35 teak)
      (surface-condition p35 verysmooth)
      (treatment p35 varnished)
      (available p36)
      (wood p36 teak)
      (surface-condition p36 verysmooth)
      (treatment p36 varnished)
      (available p37)
      (colour p37 black)
      (wood p37 mahogany)
      (treatment p37 varnished)
      (available p38)
      (colour p38 black)
      (wood p38 teak)
      (surface-condition p38 smooth)
      (treatment p38 glazed)
      (available p39)
      (wood p39 beech)
      (treatment p39 varnished)
      (available p40)
      (wood p40 mahogany)
      (surface-condition p40 verysmooth)
      (available p41)
      (surface-condition p41 verysmooth)
      (treatment p41 varnished)
      (available p42)
      (colour p42 natural)
      (surface-condition p42 smooth)
      (available p43)
      (colour p43 black)
      (surface-condition p43 verysmooth)
      (available p44)
      (colour p44 black)
      (wood p44 cherry)
      (available p45)
      (colour p45 blue)
      (surface-condition p45 smooth)
      (treatment p45 varnished)
      (available p46)
      (colour p46 mauve)
      (wood p46 walnut)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 white)
      (wood p47 cherry)
      (surface-condition p47 verysmooth)
      (treatment p47 varnished)
      (available p48)
      (wood p48 mahogany)
      (treatment p48 glazed)
      (available p49)
      (wood p49 oak)
      (treatment p49 glazed)
      (available p50)
      (surface-condition p50 verysmooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 green)
      (wood p51 oak)
      (surface-condition p51 smooth)
      (available p52)
      (wood p52 oak)
      (treatment p52 glazed)
      (available p53)
      (wood p53 oak)
      (surface-condition p53 verysmooth)
      (available p54)
      (colour p54 red)
      (wood p54 pine)
      (surface-condition p54 verysmooth)
      (treatment p54 varnished)
      (available p55)
      (colour p55 mauve)
      (treatment p55 glazed)
      (available p56)
      (colour p56 mauve)
      (wood p56 cherry)
      (surface-condition p56 smooth)
      (treatment p56 varnished)
      (available p57)
      (colour p57 mauve)
      (surface-condition p57 verysmooth)
      (available p58)
      (colour p58 black)
      (wood p58 cherry)
      (available p59)
      (surface-condition p59 verysmooth)
      (treatment p59 varnished)
      (available p60)
      (surface-condition p60 verysmooth)
      (treatment p60 varnished)
      (available p61)
      (wood p61 pine)
      (surface-condition p61 smooth)
      (available p62)
      (colour p62 green)
      (surface-condition p62 verysmooth)
      (available p63)
      (colour p63 black)
      (wood p63 pine)
      (surface-condition p63 verysmooth)
      (treatment p63 glazed)
      (available p64)
      (colour p64 white)
      (wood p64 cherry)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 white)
      (wood p65 mahogany)
      (available p66)
      (wood p66 beech)
      (surface-condition p66 smooth)
      (available p67)
      (wood p67 walnut)
      (surface-condition p67 verysmooth)
      (available p68)
      (colour p68 red)
      (treatment p68 glazed)
      (available p69)
      (colour p69 green)
      (treatment p69 varnished)
      (available p70)
      (colour p70 black)
      (treatment p70 varnished)
      (available p71)
      (wood p71 pine)
      (surface-condition p71 smooth)
      (treatment p71 varnished)
      (available p72)
      (colour p72 blue)
      (wood p72 beech)
      (available p73)
      (surface-condition p73 smooth)
      (treatment p73 varnished)
      (available p74)
      (wood p74 walnut)
      (treatment p74 varnished)
      (available p75)
      (wood p75 mahogany)
      (surface-condition p75 verysmooth)
      (available p76)
      (wood p76 teak)
      (treatment p76 varnished)
      (available p77)
      (colour p77 green)
      (wood p77 beech)
      (available p78)
      (wood p78 oak)
      (treatment p78 varnished)
      (available p79)
      (colour p79 green)
      (wood p79 beech)
      (available p80)
      (wood p80 walnut)
      (surface-condition p80 smooth)
      (treatment p80 varnished)
      (available p81)
      (colour p81 black)
      (wood p81 pine)
      (surface-condition p81 smooth)
      (treatment p81 glazed)
      (available p82)
      (colour p82 red)
      (treatment p82 glazed)
      (available p83)
      (colour p83 mauve)
      (wood p83 oak)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (colour p84 mauve)
      (wood p84 pine)
      (available p85)
      (wood p85 oak)
      (treatment p85 varnished)
      (available p86)
      (colour p86 white)
      (wood p86 beech)
      (surface-condition p86 smooth)
      (available p87)
      (wood p87 walnut)
      (treatment p87 varnished)
      (available p88)
      (wood p88 mahogany)
      (surface-condition p88 verysmooth)
      (available p89)
      (colour p89 black)
      (wood p89 beech)
      (available p90)
      (colour p90 natural)
      (wood p90 teak)
      (surface-condition p90 smooth)
      (available p91)
      (colour p91 red)
      (wood p91 pine)
      (surface-condition p91 smooth)
      (treatment p91 glazed)
      (available p92)
      (colour p92 green)
      (surface-condition p92 smooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 white)
      (treatment p93 glazed)
      (available p94)
      (colour p94 green)
      (wood p94 mahogany)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (wood p95 teak)
      (treatment p95 varnished)
      (available p96)
      (wood p96 beech)
      (surface-condition p96 verysmooth)
      (available p97)
      (colour p97 black)
      (wood p97 mahogany)
      (surface-condition p97 smooth)
      (treatment p97 varnished)
      (available p98)
      (colour p98 green)
      (wood p98 beech)
      (surface-condition p98 verysmooth)
      (treatment p98 glazed)
      (available p99)
      (surface-condition p99 verysmooth)
      (treatment p99 glazed)
      (available p100)
      (colour p100 white)
      (surface-condition p100 verysmooth)
      (available p101)
      (wood p101 teak)
      (surface-condition p101 smooth)
      (available p102)
      (wood p102 teak)
      (surface-condition p102 smooth)
      (available p103)
      (colour p103 black)
      (surface-condition p103 verysmooth)
      (treatment p103 varnished)
      (available p104)
      (surface-condition p104 verysmooth)
      (treatment p104 varnished)
      (available p105)
      (colour p105 white)
      (wood p105 walnut)
      (surface-condition p105 smooth)
      (available p106)
      (colour p106 green)
      (wood p106 teak)
      (treatment p106 varnished)
      (available p107)
      (colour p107 natural)
      (surface-condition p107 smooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 black)
      (wood p108 cherry)
      (surface-condition p108 verysmooth)
      (treatment p108 varnished)
      (available p109)
      (colour p109 natural)
      (treatment p109 varnished)
      (available p110)
      (colour p110 mauve)
      (surface-condition p110 smooth)
      (available p111)
      (colour p111 red)
      (wood p111 walnut)
      (surface-condition p111 verysmooth)
      (available p112)
      (colour p112 blue)
      (wood p112 teak)
      (surface-condition p112 verysmooth)
      (treatment p112 glazed)
    )
  )
  
)
