; woodworking task with 5 parts and 100% wood
; Machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 370348

(define (problem wood-prob-opt-1)
  (:domain woodworking)
  (:objects
    grinder0 - grinder
    glazer0 - glazer
    immersion-varnisher0 - immersion-varnisher
    planer0 - planer
    highspeed-saw0 - highspeed-saw
    spray-varnisher0 - spray-varnisher
    saw0 - saw
    green white red black - acolour
    teak mahogany - awood
    p0 p1 p2 p3 p4 - part
    b0 b1 - board
    s0 s1 s2 s3 s4 s5 - aboardsize
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

    
    (has-colour glazer0 green)
    (has-colour immersion-varnisher0 green)
    (empty highspeed-saw0)
    (has-colour spray-varnisher0 green)
    
    (unused p0)
    (goalsize p0 medium) ;; small を medium,largeにすると 同じプランを適用できなくなる。
    (= (spray-varnish-cost p0) 10) ;; コストは変えても同じプランを適用できる。
    (= (glaze-cost p0) 15) ;; ただ、最適ではなくなる。
    (= (grind-cost p0) 30)
    (= (plane-cost p0) 20)

    (boardsize b0 s3)
    (wood b0 teak)
    (surface-condition b0 rough)
    (available b0)
    (boardsize b1 s5)
    (wood b1 mahogany)
    (surface-condition b1 rough)
    (available b1)

  )
  (:goal
    (and
      (available p0)
      (surface-condition p0 smooth) ;; smooth を rough,verysmooth にするとプランが変わる。roughは不可
      
      ;; varnished glazed untreated colourfragments
      (treatment p0 varnished) ; varnished と glazed しか 解はない 変えるとプランも変わる
      (wood p0 teak) ; teak を mahogany にしても解は変わらない ただboardsizeは変わる
      ;; narural *green* white red black
      (colour p0 black) ; 色は green しか無いのでほかは失敗する

      ;; 総当りでやっておいてもいいものか?
      ;; すなわち、3*4*2*5 = 120通りをすべて実行してみる
      
    )
  )
  (:metric minimize (total-cost))
)
