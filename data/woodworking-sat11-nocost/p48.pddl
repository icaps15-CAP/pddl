; woodworking task with 113 parts and 120% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 429962

(define (problem wood-prob-sat-48)
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
    walnut cherry pine oak beech teak mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 p104 p105 p106 p107 p108 p109 p110 p111 p112 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 - board
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
    (has-colour glazer0 green)
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
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
    (has-colour glazer2 black)
    (has-colour glazer2 green)
    (has-colour glazer2 white)
    (has-colour glazer2 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher1 white)
    (has-colour immersion-varnisher1 natural)
    (has-colour immersion-varnisher1 red)
    (has-colour immersion-varnisher2 blue)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 green)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 red)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 white)
    (has-colour spray-varnisher1 natural)
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
    (goalsize p1 small)
    
    
    
    
    (available p2)
    (colour p2 mauve)
    (wood p2 oak)
    (surface-condition p2 rough)
    (treatment p2 glazed)
    (goalsize p2 medium)
    
    
    
    
    (unused p3)
    (goalsize p3 medium)
    
    
    
    
    (unused p4)
    (goalsize p4 small)
    
    
    
    
    (available p5)
    (colour p5 mauve)
    (wood p5 mahogany)
    (surface-condition p5 verysmooth)
    (treatment p5 colourfragments)
    (goalsize p5 large)
    
    
    
    
    (unused p6)
    (goalsize p6 large)
    
    
    
    
    (unused p7)
    (goalsize p7 large)
    
    
    
    
    (unused p8)
    (goalsize p8 small)
    
    
    
    
    (unused p9)
    (goalsize p9 large)
    
    
    
    
    (unused p10)
    (goalsize p10 medium)
    
    
    
    
    (unused p11)
    (goalsize p11 large)
    
    
    
    
    (unused p12)
    (goalsize p12 small)
    
    
    
    
    (unused p13)
    (goalsize p13 small)
    
    
    
    
    (unused p14)
    (goalsize p14 small)
    
    
    
    
    (unused p15)
    (goalsize p15 small)
    
    
    
    
    (available p16)
    (colour p16 mauve)
    (wood p16 oak)
    (surface-condition p16 smooth)
    (treatment p16 glazed)
    (goalsize p16 small)
    
    
    
    
    (unused p17)
    (goalsize p17 small)
    
    
    
    
    (unused p18)
    (goalsize p18 small)
    
    
    
    
    (available p19)
    (colour p19 black)
    (wood p19 pine)
    (surface-condition p19 rough)
    (treatment p19 colourfragments)
    (goalsize p19 large)
    
    
    
    
    (unused p20)
    (goalsize p20 small)
    
    
    
    
    (unused p21)
    (goalsize p21 small)
    
    
    
    
    (unused p22)
    (goalsize p22 large)
    
    
    
    
    (available p23)
    (colour p23 natural)
    (wood p23 teak)
    (surface-condition p23 rough)
    (treatment p23 varnished)
    (goalsize p23 large)
    
    
    
    
    (available p24)
    (colour p24 white)
    (wood p24 teak)
    (surface-condition p24 rough)
    (treatment p24 colourfragments)
    (goalsize p24 small)
    
    
    
    
    (unused p25)
    (goalsize p25 medium)
    
    
    
    
    (unused p26)
    (goalsize p26 large)
    
    
    
    
    (available p27)
    (colour p27 black)
    (wood p27 cherry)
    (surface-condition p27 smooth)
    (treatment p27 varnished)
    (goalsize p27 small)
    
    
    
    
    (unused p28)
    (goalsize p28 large)
    
    
    
    
    (unused p29)
    (goalsize p29 small)
    
    
    
    
    (unused p30)
    (goalsize p30 large)
    
    
    
    
    (unused p31)
    (goalsize p31 medium)
    
    
    
    
    (unused p32)
    (goalsize p32 large)
    
    
    
    
    (unused p33)
    (goalsize p33 large)
    
    
    
    
    (available p34)
    (colour p34 mauve)
    (wood p34 pine)
    (surface-condition p34 smooth)
    (treatment p34 glazed)
    (goalsize p34 medium)
    
    
    
    
    (unused p35)
    (goalsize p35 large)
    
    
    
    
    (available p36)
    (colour p36 white)
    (wood p36 cherry)
    (surface-condition p36 smooth)
    (treatment p36 varnished)
    (goalsize p36 medium)
    
    
    
    
    (available p37)
    (colour p37 natural)
    (wood p37 cherry)
    (surface-condition p37 rough)
    (treatment p37 glazed)
    (goalsize p37 large)
    
    
    
    
    (unused p38)
    (goalsize p38 small)
    
    
    
    
    (available p39)
    (colour p39 white)
    (wood p39 pine)
    (surface-condition p39 smooth)
    (treatment p39 varnished)
    (goalsize p39 large)
    
    
    
    
    (unused p40)
    (goalsize p40 medium)
    
    
    
    
    (unused p41)
    (goalsize p41 small)
    
    
    
    
    (available p42)
    (colour p42 mauve)
    (wood p42 walnut)
    (surface-condition p42 verysmooth)
    (treatment p42 colourfragments)
    (goalsize p42 small)
    
    
    
    
    (unused p43)
    (goalsize p43 large)
    
    
    
    
    (unused p44)
    (goalsize p44 medium)
    
    
    
    
    (unused p45)
    (goalsize p45 medium)
    
    
    
    
    (unused p46)
    (goalsize p46 small)
    
    
    
    
    (unused p47)
    (goalsize p47 small)
    
    
    
    
    (unused p48)
    (goalsize p48 medium)
    
    
    
    
    (unused p49)
    (goalsize p49 small)
    
    
    
    
    (unused p50)
    (goalsize p50 small)
    
    
    
    
    (unused p51)
    (goalsize p51 large)
    
    
    
    
    (unused p52)
    (goalsize p52 medium)
    
    
    
    
    (unused p53)
    (goalsize p53 large)
    
    
    
    
    (unused p54)
    (goalsize p54 large)
    
    
    
    
    (available p55)
    (colour p55 white)
    (wood p55 mahogany)
    (surface-condition p55 rough)
    (treatment p55 varnished)
    (goalsize p55 medium)
    
    
    
    
    (unused p56)
    (goalsize p56 small)
    
    
    
    
    (available p57)
    (colour p57 blue)
    (wood p57 beech)
    (surface-condition p57 smooth)
    (treatment p57 varnished)
    (goalsize p57 large)
    
    
    
    
    (available p58)
    (colour p58 blue)
    (wood p58 teak)
    (surface-condition p58 rough)
    (treatment p58 glazed)
    (goalsize p58 medium)
    
    
    
    
    (unused p59)
    (goalsize p59 large)
    
    
    
    
    (unused p60)
    (goalsize p60 small)
    
    
    
    
    (available p61)
    (colour p61 black)
    (wood p61 beech)
    (surface-condition p61 rough)
    (treatment p61 colourfragments)
    (goalsize p61 medium)
    
    
    
    
    (unused p62)
    (goalsize p62 small)
    
    
    
    
    (unused p63)
    (goalsize p63 large)
    
    
    
    
    (available p64)
    (colour p64 white)
    (wood p64 beech)
    (surface-condition p64 smooth)
    (treatment p64 varnished)
    (goalsize p64 medium)
    
    
    
    
    (unused p65)
    (goalsize p65 large)
    
    
    
    
    (unused p66)
    (goalsize p66 large)
    
    
    
    
    (unused p67)
    (goalsize p67 small)
    
    
    
    
    (unused p68)
    (goalsize p68 large)
    
    
    
    
    (unused p69)
    (goalsize p69 large)
    
    
    
    
    (unused p70)
    (goalsize p70 small)
    
    
    
    
    (available p71)
    (colour p71 white)
    (wood p71 teak)
    (surface-condition p71 smooth)
    (treatment p71 colourfragments)
    (goalsize p71 medium)
    
    
    
    
    (available p72)
    (colour p72 natural)
    (wood p72 teak)
    (surface-condition p72 rough)
    (treatment p72 colourfragments)
    (goalsize p72 medium)
    
    
    
    
    (unused p73)
    (goalsize p73 small)
    
    
    
    
    (unused p74)
    (goalsize p74 medium)
    
    
    
    
    (available p75)
    (colour p75 mauve)
    (wood p75 mahogany)
    (surface-condition p75 verysmooth)
    (treatment p75 glazed)
    (goalsize p75 large)
    
    
    
    
    (unused p76)
    (goalsize p76 medium)
    
    
    
    
    (unused p77)
    (goalsize p77 small)
    
    
    
    
    (unused p78)
    (goalsize p78 medium)
    
    
    
    
    (unused p79)
    (goalsize p79 medium)
    
    
    
    
    (unused p80)
    (goalsize p80 small)
    
    
    
    
    (unused p81)
    (goalsize p81 small)
    
    
    
    
    (available p82)
    (colour p82 natural)
    (wood p82 walnut)
    (surface-condition p82 smooth)
    (treatment p82 colourfragments)
    (goalsize p82 medium)
    
    
    
    
    (available p83)
    (colour p83 natural)
    (wood p83 oak)
    (surface-condition p83 rough)
    (treatment p83 glazed)
    (goalsize p83 medium)
    
    
    
    
    (unused p84)
    (goalsize p84 small)
    
    
    
    
    (unused p85)
    (goalsize p85 medium)
    
    
    
    
    (unused p86)
    (goalsize p86 large)
    
    
    
    
    (unused p87)
    (goalsize p87 small)
    
    
    
    
    (unused p88)
    (goalsize p88 medium)
    
    
    
    
    (unused p89)
    (goalsize p89 medium)
    
    
    
    
    (unused p90)
    (goalsize p90 small)
    
    
    
    
    (unused p91)
    (goalsize p91 small)
    
    
    
    
    (unused p92)
    (goalsize p92 small)
    
    
    
    
    (unused p93)
    (goalsize p93 large)
    
    
    
    
    (available p94)
    (colour p94 mauve)
    (wood p94 pine)
    (surface-condition p94 smooth)
    (treatment p94 glazed)
    (goalsize p94 small)
    
    
    
    
    (unused p95)
    (goalsize p95 small)
    
    
    
    
    (unused p96)
    (goalsize p96 large)
    
    
    
    
    (unused p97)
    (goalsize p97 medium)
    
    
    
    
    (unused p98)
    (goalsize p98 large)
    
    
    
    
    (available p99)
    (colour p99 red)
    (wood p99 teak)
    (surface-condition p99 verysmooth)
    (treatment p99 colourfragments)
    (goalsize p99 small)
    
    
    
    
    (unused p100)
    (goalsize p100 large)
    
    
    
    
    (unused p101)
    (goalsize p101 small)
    
    
    
    
    (available p102)
    (colour p102 natural)
    (wood p102 walnut)
    (surface-condition p102 verysmooth)
    (treatment p102 glazed)
    (goalsize p102 medium)
    
    
    
    
    (unused p103)
    (goalsize p103 medium)
    
    
    
    
    (unused p104)
    (goalsize p104 small)
    
    
    
    
    (unused p105)
    (goalsize p105 large)
    
    
    
    
    (unused p106)
    (goalsize p106 large)
    
    
    
    
    (unused p107)
    (goalsize p107 small)
    
    
    
    
    (unused p108)
    (goalsize p108 small)
    
    
    
    
    (unused p109)
    (goalsize p109 large)
    
    
    
    
    (unused p110)
    (goalsize p110 medium)
    
    
    
    
    (unused p111)
    (goalsize p111 small)
    
    
    
    
    (unused p112)
    (goalsize p112 small)
    
    
    
    
    (boardsize b0 s8)
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
    (boardsize b3 s9)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s3)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s10)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s5)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s8)
    (wood b7 mahogany)
    (surface-condition b7 smooth)
    (available b7)
    (boardsize b8 s7)
    (wood b8 oak)
    (surface-condition b8 rough)
    (available b8)
    (boardsize b9 s7)
    (wood b9 oak)
    (surface-condition b9 rough)
    (available b9)
    (boardsize b10 s8)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s5)
    (wood b11 oak)
    (surface-condition b11 smooth)
    (available b11)
    (boardsize b12 s6)
    (wood b12 pine)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s8)
    (wood b13 pine)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s9)
    (wood b14 walnut)
    (surface-condition b14 rough)
    (available b14)
    (boardsize b15 s8)
    (wood b15 walnut)
    (surface-condition b15 rough)
    (available b15)
    (boardsize b16 s7)
    (wood b16 walnut)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s8)
    (wood b17 walnut)
    (surface-condition b17 smooth)
    (available b17)
    (boardsize b18 s7)
    (wood b18 walnut)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s9)
    (wood b19 teak)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s7)
    (wood b20 teak)
    (surface-condition b20 smooth)
    (available b20)
    (boardsize b21 s6)
    (wood b21 teak)
    (surface-condition b21 smooth)
    (available b21)
    (boardsize b22 s8)
    (wood b22 teak)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s5)
    (wood b23 teak)
    (surface-condition b23 rough)
    (available b23)
    (boardsize b24 s6)
    (wood b24 beech)
    (surface-condition b24 smooth)
    (available b24)
    (boardsize b25 s8)
    (wood b25 beech)
    (surface-condition b25 smooth)
    (available b25)
    (boardsize b26 s5)
    (wood b26 beech)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s8)
    (wood b27 beech)
    (surface-condition b27 rough)
    (available b27)
  )
  (:goal
    (and
      (available p0)
      (wood p0 beech)
      (surface-condition p0 verysmooth)
      (treatment p0 glazed)
      (available p1)
      (colour p1 green)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 white)
      (treatment p2 glazed)
      (available p3)
      (colour p3 red)
      (wood p3 teak)
      (surface-condition p3 smooth)
      (available p4)
      (colour p4 red)
      (surface-condition p4 verysmooth)
      (available p5)
      (wood p5 mahogany)
      (treatment p5 varnished)
      (available p6)
      (colour p6 mauve)
      (wood p6 cherry)
      (surface-condition p6 smooth)
      (treatment p6 glazed)
      (available p7)
      (colour p7 red)
      (wood p7 teak)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      (available p8)
      (surface-condition p8 smooth)
      (treatment p8 varnished)
      (available p9)
      (surface-condition p9 verysmooth)
      (treatment p9 varnished)
      (available p10)
      (wood p10 pine)
      (treatment p10 varnished)
      (available p11)
      (wood p11 walnut)
      (surface-condition p11 smooth)
      (treatment p11 glazed)
      (available p12)
      (colour p12 black)
      (wood p12 teak)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 blue)
      (wood p13 beech)
      (surface-condition p13 smooth)
      (treatment p13 glazed)
      (available p14)
      (colour p14 mauve)
      (treatment p14 varnished)
      (available p15)
      (colour p15 natural)
      (wood p15 teak)
      (treatment p15 glazed)
      (available p16)
      (colour p16 green)
      (wood p16 oak)
      (surface-condition p16 verysmooth)
      (treatment p16 glazed)
      (available p17)
      (colour p17 red)
      (treatment p17 glazed)
      (available p18)
      (surface-condition p18 verysmooth)
      (treatment p18 varnished)
      (available p19)
      (colour p19 white)
      (treatment p19 varnished)
      (available p20)
      (surface-condition p20 verysmooth)
      (treatment p20 varnished)
      (available p21)
      (surface-condition p21 verysmooth)
      (treatment p21 glazed)
      (available p22)
      (colour p22 blue)
      (wood p22 cherry)
      (surface-condition p22 verysmooth)
      (treatment p22 varnished)
      (available p23)
      (colour p23 white)
      (wood p23 teak)
      (surface-condition p23 verysmooth)
      (treatment p23 varnished)
      (available p24)
      (colour p24 blue)
      (wood p24 teak)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (wood p25 beech)
      (treatment p25 varnished)
      (available p26)
      (colour p26 blue)
      (surface-condition p26 smooth)
      (available p27)
      (colour p27 green)
      (surface-condition p27 smooth)
      (available p28)
      (colour p28 blue)
      (wood p28 walnut)
      (surface-condition p28 verysmooth)
      (treatment p28 glazed)
      (available p29)
      (colour p29 mauve)
      (wood p29 walnut)
      (surface-condition p29 verysmooth)
      (available p30)
      (colour p30 red)
      (wood p30 cherry)
      (available p31)
      (colour p31 mauve)
      (wood p31 pine)
      (surface-condition p31 verysmooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 red)
      (wood p32 teak)
      (surface-condition p32 smooth)
      (treatment p32 glazed)
      (available p33)
      (colour p33 green)
      (wood p33 mahogany)
      (surface-condition p33 smooth)
      (treatment p33 glazed)
      (available p34)
      (colour p34 natural)
      (wood p34 pine)
      (surface-condition p34 smooth)
      (treatment p34 glazed)
      (available p35)
      (wood p35 teak)
      (surface-condition p35 verysmooth)
      (available p36)
      (colour p36 blue)
      (wood p36 cherry)
      (available p37)
      (colour p37 white)
      (surface-condition p37 verysmooth)
      (available p38)
      (wood p38 beech)
      (treatment p38 varnished)
      (available p39)
      (colour p39 natural)
      (surface-condition p39 smooth)
      (treatment p39 varnished)
      (available p40)
      (wood p40 walnut)
      (surface-condition p40 smooth)
      (available p41)
      (colour p41 white)
      (surface-condition p41 smooth)
      (available p42)
      (wood p42 walnut)
      (treatment p42 varnished)
      (available p43)
      (colour p43 natural)
      (surface-condition p43 verysmooth)
      (treatment p43 varnished)
      (available p44)
      (colour p44 natural)
      (surface-condition p44 smooth)
      (available p45)
      (colour p45 red)
      (wood p45 cherry)
      (treatment p45 glazed)
      (available p46)
      (surface-condition p46 verysmooth)
      (treatment p46 varnished)
      (available p47)
      (colour p47 mauve)
      (surface-condition p47 smooth)
      (available p48)
      (colour p48 mauve)
      (wood p48 teak)
      (surface-condition p48 verysmooth)
      (treatment p48 glazed)
      (available p49)
      (wood p49 cherry)
      (surface-condition p49 verysmooth)
      (available p50)
      (colour p50 blue)
      (surface-condition p50 verysmooth)
      (available p51)
      (wood p51 walnut)
      (surface-condition p51 smooth)
      (available p52)
      (wood p52 mahogany)
      (treatment p52 varnished)
      (available p53)
      (surface-condition p53 smooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 blue)
      (wood p54 pine)
      (surface-condition p54 smooth)
      (treatment p54 glazed)
      (available p55)
      (colour p55 black)
      (wood p55 mahogany)
      (available p56)
      (colour p56 blue)
      (wood p56 pine)
      (treatment p56 glazed)
      (available p57)
      (colour p57 red)
      (wood p57 beech)
      (surface-condition p57 smooth)
      (treatment p57 varnished)
      (available p58)
      (colour p58 white)
      (wood p58 teak)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 red)
      (wood p59 walnut)
      (surface-condition p59 verysmooth)
      (treatment p59 glazed)
      (available p60)
      (colour p60 red)
      (wood p60 walnut)
      (surface-condition p60 smooth)
      (available p61)
      (colour p61 white)
      (wood p61 beech)
      (surface-condition p61 verysmooth)
      (treatment p61 varnished)
      (available p62)
      (colour p62 blue)
      (wood p62 mahogany)
      (available p63)
      (wood p63 walnut)
      (treatment p63 glazed)
      (available p64)
      (colour p64 natural)
      (treatment p64 varnished)
      (available p65)
      (wood p65 walnut)
      (treatment p65 glazed)
      (available p66)
      (colour p66 blue)
      (wood p66 cherry)
      (surface-condition p66 smooth)
      (treatment p66 varnished)
      (available p67)
      (colour p67 green)
      (wood p67 beech)
      (surface-condition p67 smooth)
      (treatment p67 varnished)
      (available p68)
      (surface-condition p68 smooth)
      (treatment p68 glazed)
      (available p69)
      (colour p69 green)
      (surface-condition p69 verysmooth)
      (available p70)
      (colour p70 green)
      (wood p70 walnut)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 green)
      (wood p71 teak)
      (surface-condition p71 smooth)
      (treatment p71 glazed)
      (available p72)
      (wood p72 teak)
      (treatment p72 varnished)
      (available p73)
      (colour p73 green)
      (wood p73 walnut)
      (available p74)
      (colour p74 white)
      (wood p74 oak)
      (available p75)
      (colour p75 green)
      (wood p75 mahogany)
      (available p76)
      (colour p76 natural)
      (wood p76 oak)
      (surface-condition p76 smooth)
      (treatment p76 varnished)
      (available p77)
      (surface-condition p77 smooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 mauve)
      (wood p78 teak)
      (treatment p78 varnished)
      (available p79)
      (surface-condition p79 verysmooth)
      (treatment p79 glazed)
      (available p80)
      (colour p80 natural)
      (treatment p80 glazed)
      (available p81)
      (colour p81 red)
      (wood p81 mahogany)
      (surface-condition p81 verysmooth)
      (treatment p81 varnished)
      (available p82)
      (wood p82 walnut)
      (treatment p82 glazed)
      (available p83)
      (colour p83 green)
      (wood p83 oak)
      (surface-condition p83 smooth)
      (treatment p83 varnished)
      (available p84)
      (surface-condition p84 verysmooth)
      (treatment p84 varnished)
      (available p85)
      (colour p85 white)
      (wood p85 beech)
      (surface-condition p85 verysmooth)
      (available p86)
      (colour p86 natural)
      (wood p86 beech)
      (surface-condition p86 smooth)
      (treatment p86 glazed)
      (available p87)
      (colour p87 red)
      (wood p87 cherry)
      (available p88)
      (surface-condition p88 verysmooth)
      (treatment p88 varnished)
      (available p89)
      (colour p89 white)
      (wood p89 mahogany)
      (surface-condition p89 verysmooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 white)
      (wood p90 teak)
      (surface-condition p90 smooth)
      (treatment p90 varnished)
      (available p91)
      (colour p91 green)
      (surface-condition p91 verysmooth)
      (available p92)
      (colour p92 blue)
      (wood p92 pine)
      (surface-condition p92 verysmooth)
      (treatment p92 glazed)
      (available p93)
      (colour p93 mauve)
      (treatment p93 varnished)
      (available p94)
      (colour p94 black)
      (wood p94 pine)
      (surface-condition p94 smooth)
      (treatment p94 glazed)
      (available p95)
      (colour p95 green)
      (surface-condition p95 smooth)
      (treatment p95 glazed)
      (available p96)
      (wood p96 cherry)
      (treatment p96 glazed)
      (available p97)
      (colour p97 black)
      (wood p97 cherry)
      (available p98)
      (colour p98 green)
      (wood p98 oak)
      (surface-condition p98 verysmooth)
      (treatment p98 varnished)
      (available p99)
      (colour p99 blue)
      (wood p99 teak)
      (surface-condition p99 verysmooth)
      (treatment p99 varnished)
      (available p100)
      (colour p100 black)
      (surface-condition p100 verysmooth)
      (available p101)
      (colour p101 black)
      (wood p101 oak)
      (surface-condition p101 smooth)
      (available p102)
      (surface-condition p102 smooth)
      (treatment p102 glazed)
      (available p103)
      (surface-condition p103 smooth)
      (treatment p103 varnished)
      (available p104)
      (wood p104 walnut)
      (treatment p104 glazed)
      (available p105)
      (colour p105 red)
      (surface-condition p105 verysmooth)
      (available p106)
      (colour p106 mauve)
      (wood p106 cherry)
      (surface-condition p106 smooth)
      (treatment p106 varnished)
      (available p107)
      (colour p107 red)
      (treatment p107 varnished)
      (available p108)
      (colour p108 blue)
      (wood p108 cherry)
      (surface-condition p108 smooth)
      (treatment p108 varnished)
      (available p109)
      (surface-condition p109 smooth)
      (treatment p109 varnished)
      (available p110)
      (colour p110 red)
      (surface-condition p110 verysmooth)
      (available p111)
      (colour p111 green)
      (treatment p111 glazed)
      (available p112)
      (colour p112 blue)
      (wood p112 cherry)
    )
  )
  
)
