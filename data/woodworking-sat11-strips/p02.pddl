; woodworking task with 24 parts and 140% wood
; Machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 490926

(define (problem wood-prob-2)
  (:domain woodworking)
  (:objects
    grinder0 - grinder
    glazer0 - glazer
    immersion-varnisher0 - immersion-varnisher
    planer0 - planer
    highspeed-saw0 - highspeed-saw
    spray-varnisher0 - spray-varnisher
    saw0 - saw
    black mauve green blue red white - acolour
    beech pine mahogany walnut cherry teak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 - part
    b0 b1 b2 b3 b4 b5 b6 b7 b8 b9 - board
    s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 - aboardsize
  )
  (:init
   ;; ニスを塗ってあると、grindで色がポチポチになる。
   ;; colourfragmentsは二回grindするとuntreatedになる。
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
    (has-colour glazer0 mauve) ;; 紫色
    (has-colour glazer0 white)
    (has-colour glazer0 natural) ;; 木のまま
    (has-colour glazer0 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 red)
    (empty highspeed-saw0)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 red)

    ;; 目標となる製品の仕様
    ;; p0,1,2はまだ切り出されていない。
    (unused p0)
    (goalsize p0 large)
    (= (spray-varnish-cost p0) 15)
    (= (glaze-cost p0) 20)
    (= (grind-cost p0) 45)
    (= (plane-cost p0) 30)
    
    ;; p1 と p2 は初期状態が同じ、でもゴールは違う。
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

    ;; (available p1)
    ;; (colour p1 blue)
    ;; (treatment p1 glazed)
    ;; (available p2)
    ;; (wood p2 beech)
    ;; (treatment p2 varnished)

    ;; p3はもう色が塗ってある。再利用するときは削らないといけない。
    (available p3)
    (colour p3 green)
    (wood p3 pine)
    (surface-condition p3 verysmooth)
    (treatment p3 varnished)
    (goalsize p3 small)
    (= (spray-varnish-cost p3) 5)
    (= (glaze-cost p3) 10)
    (= (grind-cost p3) 15)
    (= (plane-cost p3) 10)
    
    ;; 以下p23まで切り出されていない。
    (unused p4)
    (goalsize p4 large)
    (= (spray-varnish-cost p4) 15)
    (= (glaze-cost p4) 20)
    (= (grind-cost p4) 45)
    (= (plane-cost p4) 30)
    (unused p5)
    (goalsize p5 small)
    ;; p4とgoalsizeが違う。コストも違う。
    (= (spray-varnish-cost p5) 5)
    (= (glaze-cost p5) 10)
    (= (grind-cost p5) 15)
    (= (plane-cost p5) 10)
    ;; p6,p7,p8はp4と同じ
    ;; ゴールは違うかも。
    (unused p6)
    (goalsize p6 large)
    (= (spray-varnish-cost p6) 15)
    (= (glaze-cost p6) 20)
    (= (grind-cost p6) 45)
    (= (plane-cost p6) 30)
    (unused p7)
    (goalsize p7 large)
    (= (spray-varnish-cost p7) 15)
    (= (glaze-cost p7) 20)
    (= (grind-cost p7) 45)
    (= (plane-cost p7) 30)
    (unused p8)
    (goalsize p8 large)
    (= (spray-varnish-cost p8) 15)
    (= (glaze-cost p8) 20)
    (= (grind-cost p8) 45)
    (= (plane-cost p8) 30)
    (unused p9)
    (goalsize p9 medium)
    (= (spray-varnish-cost p9) 10)
    (= (glaze-cost p9) 15)
    (= (grind-cost p9) 30)
    (= (plane-cost p9) 20)
    (unused p10)
    (goalsize p10 large)
    (= (spray-varnish-cost p10) 15)
    (= (glaze-cost p10) 20)
    (= (grind-cost p10) 45)
    (= (plane-cost p10) 30)
    (unused p11)
    (goalsize p11 medium)
    (= (spray-varnish-cost p11) 10)
    (= (glaze-cost p11) 15)
    (= (grind-cost p11) 30)
    (= (plane-cost p11) 20)
    (unused p12)
    (goalsize p12 small)
    (= (spray-varnish-cost p12) 5)
    (= (glaze-cost p12) 10)
    (= (grind-cost p12) 15)
    (= (plane-cost p12) 10)
    (unused p13)
    (goalsize p13 large)
    (= (spray-varnish-cost p13) 15)
    (= (glaze-cost p13) 20)
    (= (grind-cost p13) 45)
    (= (plane-cost p13) 30)
    (unused p14)
    (goalsize p14 small)
    (= (spray-varnish-cost p14) 5)
    (= (glaze-cost p14) 10)
    (= (grind-cost p14) 15)
    (= (plane-cost p14) 10)
    (unused p15)
    (goalsize p15 large)
    (= (spray-varnish-cost p15) 15)
    (= (glaze-cost p15) 20)
    (= (grind-cost p15) 45)
    (= (plane-cost p15) 30)
    (available p16)
    (colour p16 red)
    (wood p16 teak)
    (surface-condition p16 rough)
    (treatment p16 varnished)
    (goalsize p16 small)
    (= (spray-varnish-cost p16) 5)
    (= (glaze-cost p16) 10)
    (= (grind-cost p16) 15)
    (= (plane-cost p16) 10)
    (unused p17)
    (goalsize p17 large)
    (= (spray-varnish-cost p17) 15)
    (= (glaze-cost p17) 20)
    (= (grind-cost p17) 45)
    (= (plane-cost p17) 30)
    (unused p18)
    (goalsize p18 large)
    (= (spray-varnish-cost p18) 15)
    (= (glaze-cost p18) 20)
    (= (grind-cost p18) 45)
    (= (plane-cost p18) 30)
    (unused p19)
    (goalsize p19 large)
    (= (spray-varnish-cost p19) 15)
    (= (glaze-cost p19) 20)
    (= (grind-cost p19) 45)
    (= (plane-cost p19) 30)
    (unused p20)
    (goalsize p20 large)
    (= (spray-varnish-cost p20) 15)
    (= (glaze-cost p20) 20)
    (= (grind-cost p20) 45)
    (= (plane-cost p20) 30)
    (unused p21)
    (goalsize p21 large)
    (= (spray-varnish-cost p21) 15)
    (= (glaze-cost p21) 20)
    (= (grind-cost p21) 45)
    (= (plane-cost p21) 30)
    (unused p22)
    (goalsize p22 small)
    (= (spray-varnish-cost p22) 5)
    (= (glaze-cost p22) 10)
    (= (grind-cost p22) 15)
    (= (plane-cost p22) 10)
    (unused p23)
    (goalsize p23 large)
    (= (spray-varnish-cost p23) 15)
    (= (glaze-cost p23) 20)
    (= (grind-cost p23) 45)
    (= (plane-cost p23) 30)

    ;; 今ある板の仕様
    (boardsize b0 s9)
    (wood b0 cherry)
    (surface-condition b0 rough)
    (available b0)
    
    (boardsize b1 s12)
    (wood b1 mahogany)
    (surface-condition b1 rough)
    (available b1)
    
    (boardsize b2 s7)
    (wood b2 mahogany)
    (surface-condition b2 smooth)
    (available b2)
    
    (boardsize b3 s9)
    (wood b3 pine)
    (surface-condition b3 rough)
    (available b3)
    
    (boardsize b4 s8)
    (wood b4 walnut)
    (surface-condition b4 rough)
    (available b4)
    
    (boardsize b5 s6)
    (wood b5 walnut)
    (surface-condition b5 rough)
    (available b5)
    
    (boardsize b6 s10)
    (wood b6 teak)
    (surface-condition b6 rough)
    (available b6)
    
    (boardsize b7 s3)
    (wood b7 teak)
    (surface-condition b7 rough)
    (available b7)
    
    (boardsize b8 s8)
    (wood b8 beech)
    (surface-condition b8 smooth)
    (available b8)
    
    (boardsize b9 s6)
    (wood b9 beech)
    (surface-condition b9 rough)
    (available b9)
  )
  (:goal
    (and
     ;; サイズが増えると作らないといけないものが増える?
      (available p0)
      (wood p0 cherry)
      (treatment p0 varnished)
      
      (available p1)
      (colour p1 blue)
      (treatment p1 glazed)
      (available p2)
      (wood p2 beech)
      (treatment p2 varnished)
      
      (available p3)
      (colour p3 red)
      (wood p3 pine)
      (surface-condition p3 smooth)
      (treatment p3 glazed)
      
      (available p4)
      (colour p4 red)
      (wood p4 mahogany)
      (surface-condition p4 verysmooth)
      (treatment p4 varnished)
      
      (available p5)
      (colour p5 white)
      (surface-condition p5 smooth)
      (treatment p5 glazed)
      
      (available p6)
      (colour p6 natural)
      (wood p6 walnut)
      (surface-condition p6 verysmooth)
      (treatment p6 glazed)
      
      (available p7)
      (colour p7 red)
      (wood p7 beech)
      (surface-condition p7 smooth)
      (treatment p7 varnished)
      
      (available p8)
      (colour p8 mauve)
      (wood p8 pine)
      (treatment p8 varnished)
      (available p9)
      (colour p9 red)
      (wood p9 beech)
      (surface-condition p9 smooth)
      (treatment p9 varnished)
      (available p10)
      (surface-condition p10 verysmooth)
      (treatment p10 varnished)
      (available p11)
      (colour p11 mauve)
      (surface-condition p11 smooth)
      (available p12)
      (colour p12 blue)
      (wood p12 mahogany)
      (surface-condition p12 verysmooth)
      (treatment p12 varnished)
      (available p13)
      (colour p13 natural)
      (treatment p13 glazed)
      (available p14)
      (colour p14 mauve)
      (wood p14 beech)
      (treatment p14 glazed)
      (available p15)
      (wood p15 pine)
      (surface-condition p15 verysmooth)
      (available p16)
      (wood p16 teak)
      (surface-condition p16 verysmooth)
      (available p17)
      (surface-condition p17 verysmooth)
      (treatment p17 glazed)
      (available p18)
      (wood p18 walnut)
      (treatment p18 glazed)
      (available p19)
      (wood p19 mahogany)
      (surface-condition p19 verysmooth)
      (available p20)
      (wood p20 teak)
      (treatment p20 varnished)
      (available p21)
      (wood p21 mahogany)
      (surface-condition p21 verysmooth)
      (available p22)
      (wood p22 cherry)
      (surface-condition p22 verysmooth)
      (available p23)
      (colour p23 natural)
      (wood p23 teak)
      (surface-condition p23 smooth)
      (treatment p23 varnished)
    )
  )
  (:metric minimize (total-cost))
)
