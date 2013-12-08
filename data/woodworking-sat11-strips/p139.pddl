; woodworking task with 104 parts and 140% wood
; Machines:
;   3 grinder
;   3 glazer
;   3 immersion-varnisher
;   3 planer
;   3 highspeed-saw
;   3 spray-varnisher
;   3 saw
; random seed: 688996

(define (problem wood-prob)
  (:domain woodworking)
  (:objects
    grinder0 grinder1 grinder2 - grinder
    glazer0 glazer1 glazer2 - glazer
    immersion-varnisher0 immersion-varnisher1 immersion-varnisher2 - immersion-varnisher
    planer0 planer1 planer2 - planer
    highspeed-saw0 highspeed-saw1 highspeed-saw2 - highspeed-saw
    spray-varnisher0 spray-varnisher1 spray-varnisher2 - spray-varnisher
    saw0 saw1 saw2 - saw
    white black blue red green mauve - acolour
    beech walnut oak pine teak cherry mahogany - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31 p32 p33 p34 p35 p36 p37 p38 p39 p40 p41 p42 p43 p44 p45 p46 p47 p48 p49 p50 p51 p52 p53 p54 p55 p56 p57 p58 p59 p60 p61 p62 p63 p64 p65 p66 p67 p68 p69 p70 p71 p72 p73 p74 p75 p76 p77 p78 p79 p80 p81 p82 p83 p84 p85 p86 p87 p88 p89 p90 p91 p92 p93 p94 p95 p96 p97 p98 p99 p100 p101 p102 p103 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (= (total-cost) 0)
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
    (has-colour glazer0 natural)
    (has-colour glazer0 mauve)
    (has-colour glazer0 green)
    (has-colour glazer0 black)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour glazer1 blue)
    (has-colour glazer1 natural)
    (has-colour glazer1 mauve)
    (has-colour glazer1 black)
    (has-colour glazer1 white)
    (has-colour glazer1 red)
    (has-colour glazer2 blue)
    (has-colour glazer2 green)
    (has-colour glazer2 natural)
    (has-colour glazer2 red)
    (has-colour glazer2 black)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (has-colour immersion-varnisher1 blue)
    (has-colour immersion-varnisher1 mauve)
    (has-colour immersion-varnisher1 black)
    (has-colour immersion-varnisher1 green)
    (has-colour immersion-varnisher2 mauve)
    (has-colour immersion-varnisher2 white)
    (has-colour immersion-varnisher2 natural)
    (has-colour immersion-varnisher2 red)
    (empty highspeed-saw0)
    (empty highspeed-saw1)
    (empty highspeed-saw2)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher1 blue)
    (has-colour spray-varnisher1 mauve)
    (has-colour spray-varnisher1 natural)
    (has-colour spray-varnisher1 red)
    (has-colour spray-varnisher1 black)
    (has-colour spray-varnisher2 blue)
    (has-colour spray-varnisher2 mauve)
    (has-colour spray-varnisher2 white)
    (has-colour spray-varnisher2 natural)
    (has-colour spray-varnisher2 red)
    (available p0)
    (colour p0 red)
    (wood p0 walnut)
    (surface-condition p0 verysmooth)
    (treatment p0 glazed)
    (goalsize p0 small)
    (= (spray-varnish-cost p0) 5)
    (= (glaze-cost p0) 10)
    (= (grind-cost p0) 15)
    (= (plane-cost p0) 10)
    (unused p1)
    (goalsize p1 medium)
    (= (spray-varnish-cost p1) 10)
    (= (glaze-cost p1) 15)
    (= (grind-cost p1) 30)
    (= (plane-cost p1) 20)
    (unused p2)
    (goalsize p2 medium)
    (= (spray-varnish-cost p2) 10)
    (= (glaze-cost p2) 15)
    (= (grind-cost p2) 30)
    (= (plane-cost p2) 20)
    (available p3)
    (colour p3 mauve)
    (wood p3 oak)
    (surface-condition p3 smooth)
    (treatment p3 varnished)
    (goalsize p3 medium)
    (= (spray-varnish-cost p3) 10)
    (= (glaze-cost p3) 15)
    (= (grind-cost p3) 30)
    (= (plane-cost p3) 20)
    (available p4)
    (colour p4 black)
    (wood p4 walnut)
    (surface-condition p4 verysmooth)
    (treatment p4 glazed)
    (goalsize p4 large)
    (= (spray-varnish-cost p4) 15)
    (= (glaze-cost p4) 20)
    (= (grind-cost p4) 45)
    (= (plane-cost p4) 30)
    (unused p5)
    (goalsize p5 large)
    (= (spray-varnish-cost p5) 15)
    (= (glaze-cost p5) 20)
    (= (grind-cost p5) 45)
    (= (plane-cost p5) 30)
    (unused p6)
    (goalsize p6 large)
    (= (spray-varnish-cost p6) 15)
    (= (glaze-cost p6) 20)
    (= (grind-cost p6) 45)
    (= (plane-cost p6) 30)
    (available p7)
    (colour p7 black)
    (wood p7 oak)
    (surface-condition p7 rough)
    (treatment p7 varnished)
    (goalsize p7 large)
    (= (spray-varnish-cost p7) 15)
    (= (glaze-cost p7) 20)
    (= (grind-cost p7) 45)
    (= (plane-cost p7) 30)
    (unused p8)
    (goalsize p8 small)
    (= (spray-varnish-cost p8) 5)
    (= (glaze-cost p8) 10)
    (= (grind-cost p8) 15)
    (= (plane-cost p8) 10)
    (unused p9)
    (goalsize p9 small)
    (= (spray-varnish-cost p9) 5)
    (= (glaze-cost p9) 10)
    (= (grind-cost p9) 15)
    (= (plane-cost p9) 10)
    (unused p10)
    (goalsize p10 medium)
    (= (spray-varnish-cost p10) 10)
    (= (glaze-cost p10) 15)
    (= (grind-cost p10) 30)
    (= (plane-cost p10) 20)
    (unused p11)
    (goalsize p11 medium)
    (= (spray-varnish-cost p11) 10)
    (= (glaze-cost p11) 15)
    (= (grind-cost p11) 30)
    (= (plane-cost p11) 20)
    (unused p12)
    (goalsize p12 large)
    (= (spray-varnish-cost p12) 15)
    (= (glaze-cost p12) 20)
    (= (grind-cost p12) 45)
    (= (plane-cost p12) 30)
    (unused p13)
    (goalsize p13 medium)
    (= (spray-varnish-cost p13) 10)
    (= (glaze-cost p13) 15)
    (= (grind-cost p13) 30)
    (= (plane-cost p13) 20)
    (available p14)
    (colour p14 natural)
    (wood p14 oak)
    (surface-condition p14 smooth)
    (treatment p14 colourfragments)
    (goalsize p14 small)
    (= (spray-varnish-cost p14) 5)
    (= (glaze-cost p14) 10)
    (= (grind-cost p14) 15)
    (= (plane-cost p14) 10)
    (unused p15)
    (goalsize p15 small)
    (= (spray-varnish-cost p15) 5)
    (= (glaze-cost p15) 10)
    (= (grind-cost p15) 15)
    (= (plane-cost p15) 10)
    (available p16)
    (colour p16 white)
    (wood p16 cherry)
    (surface-condition p16 verysmooth)
    (treatment p16 colourfragments)
    (goalsize p16 small)
    (= (spray-varnish-cost p16) 5)
    (= (glaze-cost p16) 10)
    (= (grind-cost p16) 15)
    (= (plane-cost p16) 10)
    (unused p17)
    (goalsize p17 medium)
    (= (spray-varnish-cost p17) 10)
    (= (glaze-cost p17) 15)
    (= (grind-cost p17) 30)
    (= (plane-cost p17) 20)
    (available p18)
    (colour p18 white)
    (wood p18 mahogany)
    (surface-condition p18 verysmooth)
    (treatment p18 colourfragments)
    (goalsize p18 small)
    (= (spray-varnish-cost p18) 5)
    (= (glaze-cost p18) 10)
    (= (grind-cost p18) 15)
    (= (plane-cost p18) 10)
    (unused p19)
    (goalsize p19 medium)
    (= (spray-varnish-cost p19) 10)
    (= (glaze-cost p19) 15)
    (= (grind-cost p19) 30)
    (= (plane-cost p19) 20)
    (unused p20)
    (goalsize p20 small)
    (= (spray-varnish-cost p20) 5)
    (= (glaze-cost p20) 10)
    (= (grind-cost p20) 15)
    (= (plane-cost p20) 10)
    (available p21)
    (colour p21 natural)
    (wood p21 walnut)
    (surface-condition p21 smooth)
    (treatment p21 glazed)
    (goalsize p21 large)
    (= (spray-varnish-cost p21) 15)
    (= (glaze-cost p21) 20)
    (= (grind-cost p21) 45)
    (= (plane-cost p21) 30)
    (unused p22)
    (goalsize p22 large)
    (= (spray-varnish-cost p22) 15)
    (= (glaze-cost p22) 20)
    (= (grind-cost p22) 45)
    (= (plane-cost p22) 30)
    (unused p23)
    (goalsize p23 large)
    (= (spray-varnish-cost p23) 15)
    (= (glaze-cost p23) 20)
    (= (grind-cost p23) 45)
    (= (plane-cost p23) 30)
    (unused p24)
    (goalsize p24 large)
    (= (spray-varnish-cost p24) 15)
    (= (glaze-cost p24) 20)
    (= (grind-cost p24) 45)
    (= (plane-cost p24) 30)
    (unused p25)
    (goalsize p25 medium)
    (= (spray-varnish-cost p25) 10)
    (= (glaze-cost p25) 15)
    (= (grind-cost p25) 30)
    (= (plane-cost p25) 20)
    (unused p26)
    (goalsize p26 small)
    (= (spray-varnish-cost p26) 5)
    (= (glaze-cost p26) 10)
    (= (grind-cost p26) 15)
    (= (plane-cost p26) 10)
    (unused p27)
    (goalsize p27 small)
    (= (spray-varnish-cost p27) 5)
    (= (glaze-cost p27) 10)
    (= (grind-cost p27) 15)
    (= (plane-cost p27) 10)
    (unused p28)
    (goalsize p28 large)
    (= (spray-varnish-cost p28) 15)
    (= (glaze-cost p28) 20)
    (= (grind-cost p28) 45)
    (= (plane-cost p28) 30)
    (unused p29)
    (goalsize p29 small)
    (= (spray-varnish-cost p29) 5)
    (= (glaze-cost p29) 10)
    (= (grind-cost p29) 15)
    (= (plane-cost p29) 10)
    (available p30)
    (colour p30 natural)
    (wood p30 cherry)
    (surface-condition p30 smooth)
    (treatment p30 glazed)
    (goalsize p30 medium)
    (= (spray-varnish-cost p30) 10)
    (= (glaze-cost p30) 15)
    (= (grind-cost p30) 30)
    (= (plane-cost p30) 20)
    (unused p31)
    (goalsize p31 small)
    (= (spray-varnish-cost p31) 5)
    (= (glaze-cost p31) 10)
    (= (grind-cost p31) 15)
    (= (plane-cost p31) 10)
    (unused p32)
    (goalsize p32 medium)
    (= (spray-varnish-cost p32) 10)
    (= (glaze-cost p32) 15)
    (= (grind-cost p32) 30)
    (= (plane-cost p32) 20)
    (unused p33)
    (goalsize p33 large)
    (= (spray-varnish-cost p33) 15)
    (= (glaze-cost p33) 20)
    (= (grind-cost p33) 45)
    (= (plane-cost p33) 30)
    (available p34)
    (colour p34 blue)
    (wood p34 pine)
    (surface-condition p34 smooth)
    (treatment p34 colourfragments)
    (goalsize p34 large)
    (= (spray-varnish-cost p34) 15)
    (= (glaze-cost p34) 20)
    (= (grind-cost p34) 45)
    (= (plane-cost p34) 30)
    (available p35)
    (colour p35 green)
    (wood p35 walnut)
    (surface-condition p35 verysmooth)
    (treatment p35 glazed)
    (goalsize p35 medium)
    (= (spray-varnish-cost p35) 10)
    (= (glaze-cost p35) 15)
    (= (grind-cost p35) 30)
    (= (plane-cost p35) 20)
    (unused p36)
    (goalsize p36 small)
    (= (spray-varnish-cost p36) 5)
    (= (glaze-cost p36) 10)
    (= (grind-cost p36) 15)
    (= (plane-cost p36) 10)
    (unused p37)
    (goalsize p37 medium)
    (= (spray-varnish-cost p37) 10)
    (= (glaze-cost p37) 15)
    (= (grind-cost p37) 30)
    (= (plane-cost p37) 20)
    (unused p38)
    (goalsize p38 medium)
    (= (spray-varnish-cost p38) 10)
    (= (glaze-cost p38) 15)
    (= (grind-cost p38) 30)
    (= (plane-cost p38) 20)
    (available p39)
    (colour p39 blue)
    (wood p39 cherry)
    (surface-condition p39 verysmooth)
    (treatment p39 colourfragments)
    (goalsize p39 small)
    (= (spray-varnish-cost p39) 5)
    (= (glaze-cost p39) 10)
    (= (grind-cost p39) 15)
    (= (plane-cost p39) 10)
    (unused p40)
    (goalsize p40 small)
    (= (spray-varnish-cost p40) 5)
    (= (glaze-cost p40) 10)
    (= (grind-cost p40) 15)
    (= (plane-cost p40) 10)
    (unused p41)
    (goalsize p41 large)
    (= (spray-varnish-cost p41) 15)
    (= (glaze-cost p41) 20)
    (= (grind-cost p41) 45)
    (= (plane-cost p41) 30)
    (unused p42)
    (goalsize p42 large)
    (= (spray-varnish-cost p42) 15)
    (= (glaze-cost p42) 20)
    (= (grind-cost p42) 45)
    (= (plane-cost p42) 30)
    (unused p43)
    (goalsize p43 large)
    (= (spray-varnish-cost p43) 15)
    (= (glaze-cost p43) 20)
    (= (grind-cost p43) 45)
    (= (plane-cost p43) 30)
    (unused p44)
    (goalsize p44 small)
    (= (spray-varnish-cost p44) 5)
    (= (glaze-cost p44) 10)
    (= (grind-cost p44) 15)
    (= (plane-cost p44) 10)
    (unused p45)
    (goalsize p45 small)
    (= (spray-varnish-cost p45) 5)
    (= (glaze-cost p45) 10)
    (= (grind-cost p45) 15)
    (= (plane-cost p45) 10)
    (available p46)
    (colour p46 white)
    (wood p46 beech)
    (surface-condition p46 smooth)
    (treatment p46 glazed)
    (goalsize p46 medium)
    (= (spray-varnish-cost p46) 10)
    (= (glaze-cost p46) 15)
    (= (grind-cost p46) 30)
    (= (plane-cost p46) 20)
    (unused p47)
    (goalsize p47 large)
    (= (spray-varnish-cost p47) 15)
    (= (glaze-cost p47) 20)
    (= (grind-cost p47) 45)
    (= (plane-cost p47) 30)
    (unused p48)
    (goalsize p48 large)
    (= (spray-varnish-cost p48) 15)
    (= (glaze-cost p48) 20)
    (= (grind-cost p48) 45)
    (= (plane-cost p48) 30)
    (available p49)
    (colour p49 blue)
    (wood p49 cherry)
    (surface-condition p49 verysmooth)
    (treatment p49 colourfragments)
    (goalsize p49 medium)
    (= (spray-varnish-cost p49) 10)
    (= (glaze-cost p49) 15)
    (= (grind-cost p49) 30)
    (= (plane-cost p49) 20)
    (unused p50)
    (goalsize p50 large)
    (= (spray-varnish-cost p50) 15)
    (= (glaze-cost p50) 20)
    (= (grind-cost p50) 45)
    (= (plane-cost p50) 30)
    (unused p51)
    (goalsize p51 medium)
    (= (spray-varnish-cost p51) 10)
    (= (glaze-cost p51) 15)
    (= (grind-cost p51) 30)
    (= (plane-cost p51) 20)
    (unused p52)
    (goalsize p52 medium)
    (= (spray-varnish-cost p52) 10)
    (= (glaze-cost p52) 15)
    (= (grind-cost p52) 30)
    (= (plane-cost p52) 20)
    (unused p53)
    (goalsize p53 small)
    (= (spray-varnish-cost p53) 5)
    (= (glaze-cost p53) 10)
    (= (grind-cost p53) 15)
    (= (plane-cost p53) 10)
    (unused p54)
    (goalsize p54 small)
    (= (spray-varnish-cost p54) 5)
    (= (glaze-cost p54) 10)
    (= (grind-cost p54) 15)
    (= (plane-cost p54) 10)
    (unused p55)
    (goalsize p55 large)
    (= (spray-varnish-cost p55) 15)
    (= (glaze-cost p55) 20)
    (= (grind-cost p55) 45)
    (= (plane-cost p55) 30)
    (available p56)
    (colour p56 mauve)
    (wood p56 teak)
    (surface-condition p56 verysmooth)
    (treatment p56 varnished)
    (goalsize p56 medium)
    (= (spray-varnish-cost p56) 10)
    (= (glaze-cost p56) 15)
    (= (grind-cost p56) 30)
    (= (plane-cost p56) 20)
    (available p57)
    (colour p57 black)
    (wood p57 cherry)
    (surface-condition p57 smooth)
    (treatment p57 colourfragments)
    (goalsize p57 small)
    (= (spray-varnish-cost p57) 5)
    (= (glaze-cost p57) 10)
    (= (grind-cost p57) 15)
    (= (plane-cost p57) 10)
    (unused p58)
    (goalsize p58 small)
    (= (spray-varnish-cost p58) 5)
    (= (glaze-cost p58) 10)
    (= (grind-cost p58) 15)
    (= (plane-cost p58) 10)
    (unused p59)
    (goalsize p59 small)
    (= (spray-varnish-cost p59) 5)
    (= (glaze-cost p59) 10)
    (= (grind-cost p59) 15)
    (= (plane-cost p59) 10)
    (unused p60)
    (goalsize p60 small)
    (= (spray-varnish-cost p60) 5)
    (= (glaze-cost p60) 10)
    (= (grind-cost p60) 15)
    (= (plane-cost p60) 10)
    (unused p61)
    (goalsize p61 small)
    (= (spray-varnish-cost p61) 5)
    (= (glaze-cost p61) 10)
    (= (grind-cost p61) 15)
    (= (plane-cost p61) 10)
    (unused p62)
    (goalsize p62 large)
    (= (spray-varnish-cost p62) 15)
    (= (glaze-cost p62) 20)
    (= (grind-cost p62) 45)
    (= (plane-cost p62) 30)
    (unused p63)
    (goalsize p63 medium)
    (= (spray-varnish-cost p63) 10)
    (= (glaze-cost p63) 15)
    (= (grind-cost p63) 30)
    (= (plane-cost p63) 20)
    (unused p64)
    (goalsize p64 large)
    (= (spray-varnish-cost p64) 15)
    (= (glaze-cost p64) 20)
    (= (grind-cost p64) 45)
    (= (plane-cost p64) 30)
    (available p65)
    (colour p65 natural)
    (wood p65 mahogany)
    (surface-condition p65 smooth)
    (treatment p65 varnished)
    (goalsize p65 medium)
    (= (spray-varnish-cost p65) 10)
    (= (glaze-cost p65) 15)
    (= (grind-cost p65) 30)
    (= (plane-cost p65) 20)
    (available p66)
    (colour p66 mauve)
    (wood p66 pine)
    (surface-condition p66 smooth)
    (treatment p66 glazed)
    (goalsize p66 small)
    (= (spray-varnish-cost p66) 5)
    (= (glaze-cost p66) 10)
    (= (grind-cost p66) 15)
    (= (plane-cost p66) 10)
    (unused p67)
    (goalsize p67 medium)
    (= (spray-varnish-cost p67) 10)
    (= (glaze-cost p67) 15)
    (= (grind-cost p67) 30)
    (= (plane-cost p67) 20)
    (unused p68)
    (goalsize p68 large)
    (= (spray-varnish-cost p68) 15)
    (= (glaze-cost p68) 20)
    (= (grind-cost p68) 45)
    (= (plane-cost p68) 30)
    (available p69)
    (colour p69 red)
    (wood p69 pine)
    (surface-condition p69 verysmooth)
    (treatment p69 colourfragments)
    (goalsize p69 small)
    (= (spray-varnish-cost p69) 5)
    (= (glaze-cost p69) 10)
    (= (grind-cost p69) 15)
    (= (plane-cost p69) 10)
    (unused p70)
    (goalsize p70 medium)
    (= (spray-varnish-cost p70) 10)
    (= (glaze-cost p70) 15)
    (= (grind-cost p70) 30)
    (= (plane-cost p70) 20)
    (unused p71)
    (goalsize p71 medium)
    (= (spray-varnish-cost p71) 10)
    (= (glaze-cost p71) 15)
    (= (grind-cost p71) 30)
    (= (plane-cost p71) 20)
    (unused p72)
    (goalsize p72 small)
    (= (spray-varnish-cost p72) 5)
    (= (glaze-cost p72) 10)
    (= (grind-cost p72) 15)
    (= (plane-cost p72) 10)
    (unused p73)
    (goalsize p73 large)
    (= (spray-varnish-cost p73) 15)
    (= (glaze-cost p73) 20)
    (= (grind-cost p73) 45)
    (= (plane-cost p73) 30)
    (unused p74)
    (goalsize p74 large)
    (= (spray-varnish-cost p74) 15)
    (= (glaze-cost p74) 20)
    (= (grind-cost p74) 45)
    (= (plane-cost p74) 30)
    (unused p75)
    (goalsize p75 medium)
    (= (spray-varnish-cost p75) 10)
    (= (glaze-cost p75) 15)
    (= (grind-cost p75) 30)
    (= (plane-cost p75) 20)
    (unused p76)
    (goalsize p76 medium)
    (= (spray-varnish-cost p76) 10)
    (= (glaze-cost p76) 15)
    (= (grind-cost p76) 30)
    (= (plane-cost p76) 20)
    (unused p77)
    (goalsize p77 small)
    (= (spray-varnish-cost p77) 5)
    (= (glaze-cost p77) 10)
    (= (grind-cost p77) 15)
    (= (plane-cost p77) 10)
    (unused p78)
    (goalsize p78 medium)
    (= (spray-varnish-cost p78) 10)
    (= (glaze-cost p78) 15)
    (= (grind-cost p78) 30)
    (= (plane-cost p78) 20)
    (unused p79)
    (goalsize p79 small)
    (= (spray-varnish-cost p79) 5)
    (= (glaze-cost p79) 10)
    (= (grind-cost p79) 15)
    (= (plane-cost p79) 10)
    (unused p80)
    (goalsize p80 medium)
    (= (spray-varnish-cost p80) 10)
    (= (glaze-cost p80) 15)
    (= (grind-cost p80) 30)
    (= (plane-cost p80) 20)
    (unused p81)
    (goalsize p81 large)
    (= (spray-varnish-cost p81) 15)
    (= (glaze-cost p81) 20)
    (= (grind-cost p81) 45)
    (= (plane-cost p81) 30)
    (unused p82)
    (goalsize p82 medium)
    (= (spray-varnish-cost p82) 10)
    (= (glaze-cost p82) 15)
    (= (grind-cost p82) 30)
    (= (plane-cost p82) 20)
    (unused p83)
    (goalsize p83 medium)
    (= (spray-varnish-cost p83) 10)
    (= (glaze-cost p83) 15)
    (= (grind-cost p83) 30)
    (= (plane-cost p83) 20)
    (unused p84)
    (goalsize p84 large)
    (= (spray-varnish-cost p84) 15)
    (= (glaze-cost p84) 20)
    (= (grind-cost p84) 45)
    (= (plane-cost p84) 30)
    (unused p85)
    (goalsize p85 medium)
    (= (spray-varnish-cost p85) 10)
    (= (glaze-cost p85) 15)
    (= (grind-cost p85) 30)
    (= (plane-cost p85) 20)
    (unused p86)
    (goalsize p86 medium)
    (= (spray-varnish-cost p86) 10)
    (= (glaze-cost p86) 15)
    (= (grind-cost p86) 30)
    (= (plane-cost p86) 20)
    (unused p87)
    (goalsize p87 medium)
    (= (spray-varnish-cost p87) 10)
    (= (glaze-cost p87) 15)
    (= (grind-cost p87) 30)
    (= (plane-cost p87) 20)
    (unused p88)
    (goalsize p88 medium)
    (= (spray-varnish-cost p88) 10)
    (= (glaze-cost p88) 15)
    (= (grind-cost p88) 30)
    (= (plane-cost p88) 20)
    (unused p89)
    (goalsize p89 small)
    (= (spray-varnish-cost p89) 5)
    (= (glaze-cost p89) 10)
    (= (grind-cost p89) 15)
    (= (plane-cost p89) 10)
    (unused p90)
    (goalsize p90 medium)
    (= (spray-varnish-cost p90) 10)
    (= (glaze-cost p90) 15)
    (= (grind-cost p90) 30)
    (= (plane-cost p90) 20)
    (unused p91)
    (goalsize p91 large)
    (= (spray-varnish-cost p91) 15)
    (= (glaze-cost p91) 20)
    (= (grind-cost p91) 45)
    (= (plane-cost p91) 30)
    (available p92)
    (colour p92 red)
    (wood p92 cherry)
    (surface-condition p92 smooth)
    (treatment p92 colourfragments)
    (goalsize p92 large)
    (= (spray-varnish-cost p92) 15)
    (= (glaze-cost p92) 20)
    (= (grind-cost p92) 45)
    (= (plane-cost p92) 30)
    (unused p93)
    (goalsize p93 small)
    (= (spray-varnish-cost p93) 5)
    (= (glaze-cost p93) 10)
    (= (grind-cost p93) 15)
    (= (plane-cost p93) 10)
    (unused p94)
    (goalsize p94 medium)
    (= (spray-varnish-cost p94) 10)
    (= (glaze-cost p94) 15)
    (= (grind-cost p94) 30)
    (= (plane-cost p94) 20)
    (unused p95)
    (goalsize p95 small)
    (= (spray-varnish-cost p95) 5)
    (= (glaze-cost p95) 10)
    (= (grind-cost p95) 15)
    (= (plane-cost p95) 10)
    (unused p96)
    (goalsize p96 medium)
    (= (spray-varnish-cost p96) 10)
    (= (glaze-cost p96) 15)
    (= (grind-cost p96) 30)
    (= (plane-cost p96) 20)
    (unused p97)
    (goalsize p97 small)
    (= (spray-varnish-cost p97) 5)
    (= (glaze-cost p97) 10)
    (= (grind-cost p97) 15)
    (= (plane-cost p97) 10)
    (available p98)
    (colour p98 natural)
    (wood p98 pine)
    (surface-condition p98 rough)
    (treatment p98 colourfragments)
    (goalsize p98 small)
    (= (spray-varnish-cost p98) 5)
    (= (glaze-cost p98) 10)
    (= (grind-cost p98) 15)
    (= (plane-cost p98) 10)
    (unused p99)
    (goalsize p99 medium)
    (= (spray-varnish-cost p99) 10)
    (= (glaze-cost p99) 15)
    (= (grind-cost p99) 30)
    (= (plane-cost p99) 20)
    (unused p100)
    (goalsize p100 medium)
    (= (spray-varnish-cost p100) 10)
    (= (glaze-cost p100) 15)
    (= (grind-cost p100) 30)
    (= (plane-cost p100) 20)
    (unused p101)
    (goalsize p101 medium)
    (= (spray-varnish-cost p101) 10)
    (= (glaze-cost p101) 15)
    (= (grind-cost p101) 30)
    (= (plane-cost p101) 20)
    (unused p102)
    (goalsize p102 small)
    (= (spray-varnish-cost p102) 5)
    (= (glaze-cost p102) 10)
    (= (grind-cost p102) 15)
    (= (plane-cost p102) 10)
    (available p103)
    (colour p103 natural)
    (wood p103 pine)
    (surface-condition p103 verysmooth)
    (treatment p103 varnished)
    (goalsize p103 medium)
    (= (spray-varnish-cost p103) 10)
    (= (glaze-cost p103) 15)
    (= (grind-cost p103) 30)
    (= (plane-cost p103) 20)
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s8)
    (wood b1 cherry)
    (surface-condition b1 rough)
    (available b1)
    (boardsize b2 s8)
    (wood b2 cherry)
    (surface-condition b2 rough)
    (available b2)
    (boardsize b3 s10)
    (wood b3 cherry)
    (surface-condition b3 rough)
    (available b3)
    (boardsize b4 s2)
    (wood b4 cherry)
    (surface-condition b4 rough)
    (available b4)
    (boardsize b5 s8)
    (wood b5 mahogany)
    (surface-condition b5 rough)
    (available b5)
    (boardsize b6 s7)
    (wood b6 mahogany)
    (surface-condition b6 rough)
    (available b6)
    (boardsize b7 s10)
    (wood b7 mahogany)
    (surface-condition b7 rough)
    (available b7)
    (boardsize b8 s6)
    (wood b8 mahogany)
    (surface-condition b8 smooth)
    (available b8)
    (boardsize b9 s7)
    (wood b9 oak)
    (surface-condition b9 smooth)
    (available b9)
    (boardsize b10 s6)
    (wood b10 oak)
    (surface-condition b10 rough)
    (available b10)
    (boardsize b11 s7)
    (wood b11 oak)
    (surface-condition b11 rough)
    (available b11)
    (boardsize b12 s3)
    (wood b12 oak)
    (surface-condition b12 rough)
    (available b12)
    (boardsize b13 s6)
    (wood b13 pine)
    (surface-condition b13 smooth)
    (available b13)
    (boardsize b14 s10)
    (wood b14 pine)
    (surface-condition b14 smooth)
    (available b14)
    (boardsize b15 s8)
    (wood b15 pine)
    (surface-condition b15 smooth)
    (available b15)
    (boardsize b16 s9)
    (wood b16 pine)
    (surface-condition b16 rough)
    (available b16)
    (boardsize b17 s9)
    (wood b17 pine)
    (surface-condition b17 rough)
    (available b17)
    (boardsize b18 s2)
    (wood b18 pine)
    (surface-condition b18 rough)
    (available b18)
    (boardsize b19 s10)
    (wood b19 walnut)
    (surface-condition b19 rough)
    (available b19)
    (boardsize b20 s12)
    (wood b20 walnut)
    (surface-condition b20 rough)
    (available b20)
    (boardsize b21 s8)
    (wood b21 walnut)
    (surface-condition b21 rough)
    (available b21)
    (boardsize b22 s6)
    (wood b22 walnut)
    (surface-condition b22 smooth)
    (available b22)
    (boardsize b23 s4)
    (wood b23 walnut)
    (surface-condition b23 smooth)
    (available b23)
    (boardsize b24 s9)
    (wood b24 teak)
    (surface-condition b24 rough)
    (available b24)
    (boardsize b25 s9)
    (wood b25 teak)
    (surface-condition b25 rough)
    (available b25)
    (boardsize b26 s9)
    (wood b26 teak)
    (surface-condition b26 rough)
    (available b26)
    (boardsize b27 s3)
    (wood b27 teak)
    (surface-condition b27 rough)
    (available b27)
    (boardsize b28 s9)
    (wood b28 beech)
    (surface-condition b28 rough)
    (available b28)
    (boardsize b29 s6)
    (wood b29 beech)
    (surface-condition b29 rough)
    (available b29)
    (boardsize b30 s9)
    (wood b30 beech)
    (surface-condition b30 rough)
    (available b30)
  )
  (:goal
    (and
      (available p0)
      (wood p0 walnut)
      (surface-condition p0 smooth)
      (treatment p0 varnished)
      (available p1)
      (colour p1 mauve)
      (wood p1 cherry)
      (surface-condition p1 verysmooth)
      (available p2)
      (colour p2 blue)
      (wood p2 teak)
      (surface-condition p2 verysmooth)
      (treatment p2 glazed)
      (available p3)
      (colour p3 black)
      (wood p3 oak)
      (surface-condition p3 verysmooth)
      (treatment p3 varnished)
      (available p4)
      (wood p4 walnut)
      (treatment p4 varnished)
      (available p5)
      (colour p5 blue)
      (wood p5 cherry)
      (treatment p5 varnished)
      (available p6)
      (colour p6 natural)
      (treatment p6 glazed)
      (available p7)
      (colour p7 white)
      (surface-condition p7 smooth)
      (available p8)
      (surface-condition p8 verysmooth)
      (treatment p8 varnished)
      (available p9)
      (colour p9 mauve)
      (surface-condition p9 smooth)
      (treatment p9 glazed)
      (available p10)
      (colour p10 blue)
      (surface-condition p10 verysmooth)
      (available p11)
      (colour p11 black)
      (wood p11 walnut)
      (treatment p11 varnished)
      (available p12)
      (colour p12 red)
      (wood p12 teak)
      (surface-condition p12 verysmooth)
      (available p13)
      (colour p13 white)
      (wood p13 walnut)
      (surface-condition p13 verysmooth)
      (treatment p13 varnished)
      (available p14)
      (colour p14 black)
      (wood p14 oak)
      (surface-condition p14 verysmooth)
      (treatment p14 glazed)
      (available p15)
      (surface-condition p15 verysmooth)
      (treatment p15 glazed)
      (available p16)
      (wood p16 cherry)
      (treatment p16 varnished)
      (available p17)
      (wood p17 cherry)
      (surface-condition p17 smooth)
      (available p18)
      (colour p18 natural)
      (wood p18 mahogany)
      (available p19)
      (wood p19 cherry)
      (surface-condition p19 smooth)
      (available p20)
      (colour p20 green)
      (treatment p20 glazed)
      (available p21)
      (colour p21 green)
      (wood p21 walnut)
      (available p22)
      (colour p22 blue)
      (surface-condition p22 smooth)
      (treatment p22 varnished)
      (available p23)
      (wood p23 pine)
      (surface-condition p23 smooth)
      (available p24)
      (surface-condition p24 verysmooth)
      (treatment p24 glazed)
      (available p25)
      (wood p25 oak)
      (surface-condition p25 smooth)
      (available p26)
      (wood p26 pine)
      (surface-condition p26 smooth)
      (treatment p26 varnished)
      (available p27)
      (colour p27 red)
      (wood p27 mahogany)
      (surface-condition p27 smooth)
      (treatment p27 varnished)
      (available p28)
      (wood p28 teak)
      (surface-condition p28 smooth)
      (available p29)
      (colour p29 red)
      (wood p29 pine)
      (surface-condition p29 smooth)
      (treatment p29 varnished)
      (available p30)
      (colour p30 black)
      (surface-condition p30 smooth)
      (available p31)
      (colour p31 black)
      (wood p31 beech)
      (surface-condition p31 smooth)
      (treatment p31 glazed)
      (available p32)
      (colour p32 blue)
      (wood p32 oak)
      (treatment p32 glazed)
      (available p33)
      (colour p33 green)
      (wood p33 beech)
      (available p34)
      (colour p34 mauve)
      (surface-condition p34 smooth)
      (available p35)
      (wood p35 walnut)
      (surface-condition p35 smooth)
      (treatment p35 glazed)
      (available p36)
      (colour p36 natural)
      (surface-condition p36 verysmooth)
      (treatment p36 glazed)
      (available p37)
      (colour p37 black)
      (treatment p37 glazed)
      (available p38)
      (colour p38 mauve)
      (treatment p38 varnished)
      (available p39)
      (colour p39 red)
      (wood p39 cherry)
      (surface-condition p39 verysmooth)
      (treatment p39 varnished)
      (available p40)
      (colour p40 natural)
      (wood p40 cherry)
      (treatment p40 varnished)
      (available p41)
      (colour p41 white)
      (surface-condition p41 verysmooth)
      (available p42)
      (colour p42 mauve)
      (wood p42 pine)
      (surface-condition p42 verysmooth)
      (treatment p42 glazed)
      (available p43)
      (colour p43 mauve)
      (surface-condition p43 smooth)
      (available p44)
      (wood p44 pine)
      (surface-condition p44 verysmooth)
      (available p45)
      (colour p45 mauve)
      (wood p45 walnut)
      (available p46)
      (colour p46 black)
      (wood p46 beech)
      (treatment p46 varnished)
      (available p47)
      (surface-condition p47 verysmooth)
      (treatment p47 glazed)
      (available p48)
      (surface-condition p48 verysmooth)
      (treatment p48 glazed)
      (available p49)
      (surface-condition p49 verysmooth)
      (treatment p49 glazed)
      (available p50)
      (colour p50 blue)
      (wood p50 pine)
      (surface-condition p50 verysmooth)
      (treatment p50 varnished)
      (available p51)
      (colour p51 green)
      (wood p51 teak)
      (surface-condition p51 verysmooth)
      (treatment p51 glazed)
      (available p52)
      (colour p52 mauve)
      (wood p52 mahogany)
      (treatment p52 varnished)
      (available p53)
      (colour p53 red)
      (wood p53 mahogany)
      (surface-condition p53 smooth)
      (treatment p53 varnished)
      (available p54)
      (colour p54 red)
      (treatment p54 varnished)
      (available p55)
      (wood p55 mahogany)
      (surface-condition p55 verysmooth)
      (treatment p55 varnished)
      (available p56)
      (wood p56 teak)
      (surface-condition p56 smooth)
      (available p57)
      (colour p57 natural)
      (treatment p57 varnished)
      (available p58)
      (colour p58 white)
      (wood p58 mahogany)
      (surface-condition p58 verysmooth)
      (treatment p58 glazed)
      (available p59)
      (colour p59 natural)
      (wood p59 cherry)
      (available p60)
      (wood p60 walnut)
      (surface-condition p60 smooth)
      (available p61)
      (colour p61 green)
      (wood p61 teak)
      (available p62)
      (surface-condition p62 smooth)
      (treatment p62 varnished)
      (available p63)
      (surface-condition p63 verysmooth)
      (treatment p63 glazed)
      (available p64)
      (colour p64 mauve)
      (surface-condition p64 smooth)
      (treatment p64 glazed)
      (available p65)
      (colour p65 mauve)
      (wood p65 mahogany)
      (available p66)
      (colour p66 natural)
      (surface-condition p66 verysmooth)
      (available p67)
      (wood p67 cherry)
      (surface-condition p67 smooth)
      (available p68)
      (wood p68 cherry)
      (treatment p68 glazed)
      (available p69)
      (colour p69 black)
      (wood p69 pine)
      (surface-condition p69 smooth)
      (treatment p69 glazed)
      (available p70)
      (colour p70 natural)
      (wood p70 walnut)
      (surface-condition p70 verysmooth)
      (treatment p70 glazed)
      (available p71)
      (colour p71 white)
      (wood p71 mahogany)
      (surface-condition p71 verysmooth)
      (treatment p71 glazed)
      (available p72)
      (colour p72 green)
      (wood p72 oak)
      (surface-condition p72 smooth)
      (treatment p72 glazed)
      (available p73)
      (wood p73 walnut)
      (surface-condition p73 smooth)
      (available p74)
      (colour p74 mauve)
      (wood p74 beech)
      (available p75)
      (colour p75 red)
      (wood p75 teak)
      (surface-condition p75 smooth)
      (treatment p75 glazed)
      (available p76)
      (wood p76 teak)
      (surface-condition p76 smooth)
      (available p77)
      (wood p77 beech)
      (surface-condition p77 verysmooth)
      (treatment p77 varnished)
      (available p78)
      (colour p78 natural)
      (surface-condition p78 smooth)
      (treatment p78 glazed)
      (available p79)
      (wood p79 mahogany)
      (treatment p79 varnished)
      (available p80)
      (colour p80 green)
      (surface-condition p80 verysmooth)
      (available p81)
      (colour p81 red)
      (wood p81 mahogany)
      (surface-condition p81 verysmooth)
      (available p82)
      (colour p82 mauve)
      (treatment p82 glazed)
      (available p83)
      (colour p83 red)
      (surface-condition p83 smooth)
      (available p84)
      (colour p84 white)
      (treatment p84 varnished)
      (available p85)
      (surface-condition p85 smooth)
      (treatment p85 glazed)
      (available p86)
      (colour p86 red)
      (wood p86 beech)
      (surface-condition p86 verysmooth)
      (treatment p86 glazed)
      (available p87)
      (surface-condition p87 smooth)
      (treatment p87 varnished)
      (available p88)
      (colour p88 green)
      (surface-condition p88 verysmooth)
      (available p89)
      (surface-condition p89 smooth)
      (treatment p89 glazed)
      (available p90)
      (colour p90 green)
      (surface-condition p90 smooth)
      (available p91)
      (colour p91 green)
      (surface-condition p91 smooth)
      (treatment p91 glazed)
      (available p92)
      (colour p92 green)
      (wood p92 cherry)
      (available p93)
      (colour p93 red)
      (wood p93 oak)
      (surface-condition p93 verysmooth)
      (treatment p93 glazed)
      (available p94)
      (colour p94 red)
      (treatment p94 glazed)
      (available p95)
      (colour p95 red)
      (wood p95 pine)
      (surface-condition p95 verysmooth)
      (treatment p95 glazed)
      (available p96)
      (colour p96 mauve)
      (surface-condition p96 smooth)
      (treatment p96 glazed)
      (available p97)
      (colour p97 mauve)
      (wood p97 teak)
      (available p98)
      (colour p98 white)
      (surface-condition p98 smooth)
      (available p99)
      (colour p99 mauve)
      (wood p99 cherry)
      (treatment p99 varnished)
      (available p100)
      (colour p100 natural)
      (wood p100 beech)
      (surface-condition p100 smooth)
      (treatment p100 glazed)
      (available p101)
      (colour p101 green)
      (treatment p101 glazed)
      (available p102)
      (colour p102 green)
      (treatment p102 glazed)
      (available p103)
      (colour p103 mauve)
      (wood p103 pine)
      (surface-condition p103 smooth)
    )
  )
  (:metric minimize (total-cost))
)
