; woodworking task with 110 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 520038

(define (problem wood-prob-sat-47)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    black red green mauve white blue - acolour
    cherry beech oak pine walnut teak mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 - board
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
    (has-colour glazer0 blue)
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
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 green)
    (has-colour immersion-varnisher2 red)
    (has-colour immersion-varnisher2 black)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 green)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 green)
    (has-colour spray-varnisher2 black)
    (has-colour spray-varnisher2 red)
    (unused p0)
    (goalsize p0 medium)
    
    
    
    
    (unused p1)
    (goalsize p1 medium)
    
    
    
    
    (unused p2)
    (goalsize p2 small)
    
    
    
    
    (unused p3)
    (goalsize p3 large)
    
    
    
    
    (unused p4)
    (goalsize p4 large)
    
    
    
    
    (unused p5)
    (goalsize p5 medium)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (available p8)
    (colour p8 black)
    (wood p8 teak)
    (surface-condition p8 verysmooth)
    (treatment p8 varnished)
    (goalsize p8 large)
    
    
    
    
    (available p9)
    (colour p9 red)
    (wood p9 oak)
    (surface-condition p9 rough)
    (treatment p9 varnished)
    (goalsize p9 small)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 small)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (available p13)
    (colour p13 red)
    (wood p13 pine)
    (surface-condition p13 rough)
    (treatment p13 glazed)
    (goalsize p13 large)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (available p15)
    (colour p15 white)
    (wood p15 teak)
    (surface-condition p15 rough)
    (treatment p15 glazed)
    (goalsize p15 medium)
    
    
    
    
    (unused p16)
    (goalsize p16 medium)
    
    
    
    
    (available p17)
    (colour p17 natural)
    (wood p17 pine)
    (surface-condition p17 verysmooth)
    (treatment p17 glazed)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (available p19)
    (colour p19 white)
    (wood p19 pine)
    (surface-condition p19 rough)
    (treatment p19 varnished)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (available p21)
    (colour p21 mauve)
    (wood p21 mahogany)
    (surface-condition p21 verysmooth)
    (treatment p21 varnished)
    (goalsize p21 large)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (unused p23)
    (goalsize p23 medium)
    
    
    
    
    (unused p24)
    (goalsize p24 medium)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 medium)
    
    
    
    
    (available p27)
    (colour p27 red)
    (wood p27 teak)
    (surface-condition p27 rough)
    (treatment p27 varnished)
    (goalsize p27 medium)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 medium)
    
    
    
    
    (available p30)
    (colour p30 black)
    (wood p30 oak)
    (surface-condition p30 rough)
    (treatment p30 varnished)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (available p32)
    (colour p32 black)
    (wood p32 walnut)
    (surface-condition p32 verysmooth)
    (treatment p32 varnished)
    (goalsize p32 small)
    
    
    
    
    (unused p33)
    (goalsize p33 small)
    
    
    
    
    (unused p34)
    (goalsize p34 large)
    
    
    
    
    (unused p35)
    (goalsize p35 medium)
    
    
    
    
    (unused p36)
    (goalsize p36 large)
    
    
    
    
    (available p37)
    (colour p37 white)
    (wood p37 walnut)
    (surface-condition p37 verysmooth)
    (treatment p37 varnished)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 medium)
    
    
    
    
    (unused p39)
    (goalsize p39 medium)
    
    
    
    
    (unused p40)
    (goalsize p40 small)
    
    
    
    
    (available p41)
    (colour p41 natural)
    (wood p41 cherry)
    (surface-condition p41 verysmooth)
    (treatment p41 varnished)
    (goalsize p41 large)
    
    
    
    
    (unused p42)
    (goalsize p42 medium)
    
    
    
    
    (unused p43)
    (goalsize p43 small)
    
    
    
    
    (available p44)
    (colour p44 red)
    (wood p44 beech)
    (surface-condition p44 verysmooth)
    (treatment p44 glazed)
    (goalsize p44 small)
    
    
    
    
    (available p45)
    (colour p45 white)
    (wood p45 oak)
    (surface-condition p45 verysmooth)
    (treatment p45 varnished)
    (goalsize p45 small)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 medium)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (available p49)
    (colour p49 white)
    (wood p49 mahogany)
    (surface-condition p49 rough)
    (treatment p49 colourfragments)
    (goalsize p49 large)
    
    
    
    
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
    
    
    
    
    (unused p55)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 large)
    
    
    
    
    (unused p57)
    (goalsize p57 medium)
    
    
    
    
    (unused p58)
    (goalsize p58 small)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 large)
    
    
    
    
    (available p61)
    (colour p61 blue)
    (wood p61 teak)
    (surface-condition p61 rough)
    (treatment p61 glazed)
    (goalsize p61 small)
    
    
    
    
    (unused p62)
    (goalsize p62 medium)
    
    
    
    
    (unused p63)
    (goalsize p63 small)
    
    
    
    
    (unused p64)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
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
    
    
    
    
    (unused p71)
    (goalsize p71 large)
    
    
    
    
    (available p72)
    (colour p72 black)
    (wood p72 beech)
    (surface-condition p72 verysmooth)
    (treatment p72 colourfragments)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 medium)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (unused p75)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 large)
    
    
    
    
    (unused p77)
    (goalsize p77 large)
    
    
    
    
    (unused p78)
    (goalsize p78 small)
    
    
    
    
    (available p79)
    (colour p79 mauve)
    (wood p79 mahogany)
    (surface-condition p79 smooth)
    (treatment p79 varnished)
    (goalsize p79 medium)
    
    
    
    
    (available p80)
    (colour p80 natural)
    (wood p80 walnut)
    (surface-condition p80 smooth)
    (treatment p80 glazed)
    (goalsize p80 large)
    
    
    
    
    (available p81)
    (colour p81 white)
    (wood p81 teak)
    (surface-condition p81 verysmooth)
    (treatment p81 colourfragments)
    (goalsize p81 medium)
    
    
    
    
    (unused p82)
    (goalsize p82 large)
    
    
    
    
    (available p83)
    (colour p83 white)
    (wood p83 beech)
    (surface-condition p83 verysmooth)
    (treatment p83 glazed)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 medium)
    
    
    
    
    (unused p85)
    (goalsize p85 small)
    
    
    
    
    (unused p86)
    (goalsize p86 small)
    
    
    
    
    (available p87)
    (colour p87 mauve)
    (wood p87 oak)
    (surface-condition p87 verysmooth)
    (treatment p87 varnished)
    (goalsize p87 medium)
    
    
    
    
    (unused p88)
    (goalsize p88 small)
    
    
    
    
    (unused p89)
    (goalsize p89 large)
    
    
    
    
    (unused p90)
    (goalsize p90 large)
    
    
    
    
    (unused p91)
    (goalsize p91 medium)
    
    
    
    
    (unused p92)
    (goalsize p92 large)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (unused p94)
    (goalsize p94 large)
    
    
    
    
    (unused p95)
    (goalsize p95 large)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 large)
    
    
    
    
    (available p98)
    (colour p98 green)
    (wood p98 oak)
    (surface-condition p98 smooth)
    (treatment p98 colourfragments)
    (goalsize p98 large)
    
    
    
    
    (available p99)
    (colour p99 blue)
    (wood p99 oak)
    (surface-condition p99 verysmooth)
    (treatment p99 varnished)
    (goalsize p99 large)
    
    
    
    
    (unused p100)
    (goalsize p100 small)
    
    
    
    
    (unused p101)
    (goalsize p101 large)
    
    
    
    
    (unused p102)
    (goalsize p102 large)
    
    
    
    
    (unused p103)
    (goalsize p103 small)
    
    
    
    
    (unused p104)
    (goalsize p104 medium)
    
    
    
    
    (unused p105)
    (goalsize p105 small)
    
    
    
    
    (unused p106)
    (goalsize p106 small)
    
    
    
    
    (unused p107)
    (goalsize p107 medium)
    
    
    
    
    (unused p108)
    (goalsize p108 medium)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (boardsize b0 s7)
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
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 smooth)
    (available b3)
    (boardsize b4 s9)
    (wood b4 cherry)
    (surface-condition b4 smooth)
    (available b4)
    (boardsize b5 s2)
    (wood b5 cherry)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s10)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s12)
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
    (boardsize b10 s4)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s9)
    (wood b11 pine)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s6)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 pine)
    (surface-condition b13 rough)
    (available b13)
    (boardsize b14 s10)
    (wood b14 pine)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s1)
    (wood b15 pine)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s8)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 walnut)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s7)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s3)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s8)
    (wood b20 teak)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s9)
    (wood b21 teak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s5)
    (wood b22 teak)
    (surface-condition b22 rough)
    (available b22)
    (boardsize b23 s5)
    (wood b23 teak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s6)
    (wood b24 beech)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s11)
    (wood b25 beech)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s6)
    (wood b26 beech)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s7)
    (wood b27 beech)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s5)
    (wood b28 beech)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s4)
    (wood b29 beech)
    (surface-condition b29 smooth)
    (available b29)
  )
  (:goal
    (and
      (available p0)
      (colour p0 blue)
      (wood p0 beech)
      (surface-condition p0 verysmooth)
      (treatment p0 varnished)
      (available p1)
      (wood p1 walnut)
      (treatment p1 glazed)
      (available p2)
      (surface-condition p2 smooth)
      (treatment p2 varnished)
      (available p3)
      (colour p3 blue)
      (wood p3 beech)
      (surface-condition p3 verysmooth)
      (treatment p3 glazed)
      (available p4)
      (wood p4 oak)
      (treatment p4 glazed)
      (available p5)
      (colour p5 black)
      (treatment p5 varnished)
      (available p6)
      (colour p6 blue)
      (treatment p6 glazed)
      (available p7)
      (wood p7 pine)
      (treatment p7 varnished)
      (available p8)
      (wood p8 teak)
      (surface-condition p8 smooth)
      (available p9)
      (colour p9 mauve)
      (wood p9 oak)
      (available p10)
      (surface-condition p10 verysmooth)
      (treatment p10 glazed)
      (available p11)
      (wood p11 walnut)
      (surface-condition p11 verysmooth)
      (available p12)
      (colour p12 black)
      (wood p12 cherry)
      (available p13)
      (colour p13 blue)
      (treatment p13 glazed)
      (available p14)
      (colour p14 white)
      (surface-condition p14 verysmooth)
      (treatment p14 varnished)
      (available p15)
      (wood p15 teak)
      (surface-condition p15 smooth)
      (treatment p15 varnished)
      (available p16)
      (colour p16 natural)
      (wood p16 walnut)
      (surface-condition p16 smooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 blue)
      (wood p17 pine)
      (available p18)
      (colour p18 green)
      (treatment p18 varnished)
      (available p19)
      (colour p19 natural)
      (wood p19 pine)
      (available p20)
      (wood p20 walnut)
      (treatment p20 varnished)
      (available p21)
      (colour p21 blue)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 green)
      (surface-condition p22 verysmooth)
      (treatment p22 glazed)
      (available p23)
      (colour p23 mauve)
      (surface-condition p23 verysmooth)
      (available p24)
      (colour p24 white)
      (wood p24 walnut)
      (available p25)
      (colour p25 red)
      (wood p25 mahogany)
      (surface-condition p25 verysmooth)
      (available p26)
      (wood p26 teak)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 blue)
      (surface-condition p27 verysmooth)
      (available p28)
      (colour p28 blue)
      (treatment p28 glazed)
      (available p29)
      (colour p29 blue)
      (wood p29 beech)
      (available p30)
      (colour p30 green)
      (wood p30 oak)
      (available p31)
      (colour p31 blue)
      (wood p31 beech)
      (available p32)
      (colour p32 green)
      (treatment p32 glazed)
      (available p33)
      (colour p33 natural)
      (wood p33 walnut)
      (surface-condition p33 verysmooth)
      (available p34)
      (colour p34 green)
      (surface-condition p34 verysmooth)
      (available p35)
      (colour p35 blue)
      (wood p35 teak)
      (treatment p35 varnished)
      (available p36)
      (colour p36 natural)
      (wood p36 pine)
      (surface-condition p36 verysmooth)
      (available p37)
      (wood p37 walnut)
      (surface-condition p37 smooth)
      (treatment p37 glazed)
      (available p38)
      (colour p38 green)
      (wood p38 cherry)
      (available p39)
      (colour p39 green)
      (treatment p39 varnished)
      (available p40)
      (wood p40 beech)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 white)
      (surface-condition p41 smooth)
      (available p42)
      (surface-condition p42 smooth)
      (treatment p42 varnished)
      (available p43)
      (colour p43 green)
      (surface-condition p43 verysmooth)
      (available p44)
      (wood p44 beech)
      (treatment p44 varnished)
      (available p45)
      (colour p45 red)
      (wood p45 oak)
      (surface-condition p45 verysmooth)
      (treatment p45 glazed)
      (available p46)
      (colour p46 white)
      (wood p46 teak)
      (treatment p46 glazed)
      (available p47)
      (colour p47 mauve)
      (wood p47 teak)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 red)
      (surface-condition p48 verysmooth)
      (available p49)
      (colour p49 mauve)
      (wood p49 mahogany)
      (treatment p49 varnished)
      (available p50)
      (surface-condition p50 verysmooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 red)
      (surface-condition p51 verysmooth)
      (available p52)
      (colour p52 white)
      (surface-condition p52 smooth)
      (treatment p52 varnished)
      (available p53)
      (colour p53 natural)
      (treatment p53 glazed)
      (available p54)
      (wood p54 oak)
      (surface-condition p54 smooth)
      (available p55)
      (surface-condition p55 verysmooth)
      (treatment p55 glazed)
      (available p56)
      (colour p56 white)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 blue)
      (wood p57 teak)
      (surface-condition p57 smooth)
      (treatment p57 glazed)
      (available p58)
      (colour p58 white)
      (wood p58 cherry)
      (treatment p58 glazed)
      (available p59)
      (wood p59 beech)
      (surface-condition p59 smooth)
      (treatment p59 varnished)
      (available p60)
      (colour p60 natural)
      (treatment p60 glazed)
      (available p61)
      (colour p61 white)
      (wood p61 teak)
      (surface-condition p61 smooth)
      (treatment p61 glazed)
      (available p62)
      (colour p62 mauve)
      (treatment p62 glazed)
      (available p63)
      (colour p63 mauve)
      (wood p63 cherry)
      (available p64)
      (colour p64 blue)
      (treatment p64 varnished)
      (available p65)
      (colour p65 blue)
      (wood p65 cherry)
      (surface-condition p65 verysmooth)
      (treatment p65 glazed)
      (available p66)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (surface-condition p67 verysmooth)
      (treatment p67 varnished)
      (available p68)
      (colour p68 black)
      (wood p68 pine)
      (surface-condition p68 verysmooth)
      (available p69)
      (colour p69 green)
      (wood p69 beech)
      (surface-condition p69 smooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 natural)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (wood p71 oak)
      (surface-condition p71 smooth)
      (treatment p71 glazed)
      (available p72)
      (colour p72 white)
      (surface-condition p72 smooth)
      (available p73)
      (colour p73 white)
      (surface-condition p73 smooth)
      (treatment p73 glazed)
      (available p74)
      (wood p74 cherry)
      (surface-condition p74 smooth)
      (available p75)
      (surface-condition p75 smooth)
      (treatment p75 varnished)
      (available p76)
      (colour p76 blue)
      (surface-condition p76 verysmooth)
      (available p77)
      (colour p77 red)
      (wood p77 cherry)
      (surface-condition p77 verysmooth)
      (treatment p77 glazed)
      (available p78)
      (wood p78 oak)
      (surface-condition p78 smooth)
      (treatment p78 varnished)
      (available p79)
      (colour p79 green)
      (wood p79 mahogany)
      (surface-condition p79 smooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 mauve)
      (wood p80 walnut)
      (surface-condition p80 verysmooth)
      (treatment p80 glazed)
      (available p81)
      (colour p81 mauve)
      (wood p81 teak)
      (available p82)
      (colour p82 white)
      (wood p82 mahogany)
      (available p83)
      (colour p83 mauve)
      (wood p83 beech)
      (surface-condition p83 smooth)
      (treatment p83 glazed)
      (available p84)
      (colour p84 white)
      (wood p84 cherry)
      (surface-condition p84 verysmooth)
      (treatment p84 varnished)
      (available p85)
      (wood p85 teak)
      (surface-condition p85 verysmooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 black)
      (wood p86 teak)
      (surface-condition p86 verysmooth)
      (available p87)
      (colour p87 green)
      (surface-condition p87 smooth)
      (available p88)
      (colour p88 red)
      (wood p88 walnut)
      (surface-condition p88 smooth)
      (treatment p88 varnished)
      (available p89)
      (surface-condition p89 smooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 white)
      (surface-condition p90 verysmooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 mauve)
      (wood p91 walnut)
      (treatment p91 glazed)
      (available p92)
      (wood p92 mahogany)
      (treatment p92 glazed)
      (available p93)
      (colour p93 green)
      (surface-condition p93 smooth)
      (treatment p93 glazed)
      (available p94)
      (colour p94 white)
      (surface-condition p94 verysmooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 white)
      (surface-condition p95 smooth)
      (available p96)
      (wood p96 teak)
      (surface-condition p96 verysmooth)
      (available p97)
      (colour p97 white)
      (wood p97 pine)
      (surface-condition p97 verysmooth)
      (available p98)
      (colour p98 white)
      (wood p98 oak)
      (available p99)
      (colour p99 red)
      (wood p99 oak)
      (surface-condition p99 verysmooth)
      (available p100)
      (colour p100 blue)
      (wood p100 beech)
      (available p101)
      (surface-condition p101 verysmooth)
      (treatment p101 glazed)
      (available p102)
      (surface-condition p102 smooth)
      (treatment p102 varnished)
      (available p103)
      (wood p103 pine)
      (surface-condition p103 smooth)
      (available p104)
      (colour p104 natural)
      (wood p104 teak)
      (surface-condition p104 smooth)
      (available p105)
      (surface-condition p105 smooth)
      (treatment p105 varnished)
      (available p106)
      (colour p106 mauve)
      (wood p106 pine)
      (treatment p106 varnished)
      (available p107)
      (colour p107 green)
      (wood p107 pine)
      (surface-condition p107 verysmooth)
      (treatment p107 glazed)
      (available p108)
      (colour p108 white)
      (surface-condition p108 smooth)
      (available p109)
      (surface-condition p109 smooth)
      (treatment p109 varnished)
    )
  )
  
)
