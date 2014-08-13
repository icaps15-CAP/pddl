;; Woodworking
;;

(define (domain woodworking)
  (:requirements :typing)
  (:types
   ;; 色、木材種別、木材、機械
   acolour awood woodobj machine 
   ;; 表面状態 ワニスなどの状態
   surface treatmentstatus
   ;; 板のサイズ規格、パーツサイズ規格
   aboardsize apartsize - object
   highspeed-saw glazer grinder immersion-varnisher
   planer saw spray-varnisher - machine
   board part - woodobj)

  (:constants
   verysmooth smooth rough - surface
   ;; ニス、光ってる、なにもされてない、色がついてる?
   varnished glazed untreated colourfragments - treatmentstatus
   ;; 色
   natural - acolour
   small medium large - apartsize)

  (:predicates
   ;; 切り出されていない。
   (unused ?obj - part)
   ;; 機械の中に入っておらず、または切り出されており、手で操作することができる。
   (available ?obj - woodobj)

   (surface-condition ?obj - woodobj ?surface - surface)
   (treatment ?obj - part ?treatment - treatmentstatus)
   (colour ?obj - part ?colour - acolour)

   ;; 木の種類。
   (wood ?obj - woodobj ?wood - awood)
   (boardsize ?board - board ?size - aboardsize)
   (goalsize ?part - part ?size - apartsize)
   (boardsize-successor ?size1 ?size2 - aboardsize)

   (in-highspeed-saw ?b - board ?m - highspeed-saw)
   (empty ?m - highspeed-saw)
   ;; 機械に装填されている塗料の色
   (has-colour ?machine - machine ?colour - acolour)
   (contains-part ?b - board ?p - part)
   ;; grindによる順序を規定
   (grind-treatment-change ?old ?new - treatmentstatus)
   (is-smooth ?surface - surface))

  ;; immersion: (液体に)浸すこと.
  ;; varnish : ニス，ワニス.
  ;; 浸すことによって塗装+ニス。
  ;; 大きさによってコストが変わらないみたいだ。
  ;; smooth でないといけない。
  (:action do-immersion-varnish
           :parameters (?x - part ?m - immersion-varnisher 
                           ?newcolour - acolour ?surface - surface)
           :precondition (and
                          (available ?x)
                          (has-colour ?m ?newcolour)
                          (surface-condition ?x ?surface)
                          (is-smooth ?surface)
                          (treatment ?x untreated))
           :effect (and
                    ;; コスト固定
                    (not (treatment ?x untreated))
                    (treatment ?x varnished)
                    (not (colour ?x natural))
                    (colour ?x ?newcolour)))

  ;; スプレーによって塗装+ニス。
  ;; 効果は do-immersion-varnish と同じ。
  ;; smooth でないといけない。
  (:action do-spray-varnish
           :parameters (?x - part ?m - spray-varnisher 
                           ?newcolour - acolour ?surface - surface)
           :precondition (and
                          (available ?x)
                          (has-colour ?m ?newcolour)
                          (surface-condition ?x ?surface)
                          (is-smooth ?surface)
                          (treatment ?x untreated))
           :effect (and 
                    
                    (not (treatment ?x untreated))
                    (treatment ?x varnished)
                    (not (colour ?x natural))
                    (colour ?x ?newcolour)))

  

  ;;〈紙・布・皮などに〉光滑剤を塗る，つやつけをする.
  ;; smooth でなくてもいい。色+glazed状態
  (:action do-glaze
           :parameters (?x - part ?m - glazer 
                           ?newcolour - acolour)
           :precondition (and
                          (available ?x)
                          (has-colour ?m ?newcolour)
                          (treatment ?x untreated))
           :effect (and 
                    
                    (not (treatment ?x untreated))
                    (treatment ?x glazed)
                    (not (colour ?x natural))
                    (colour ?x ?newcolour)))

  ;; 削ってverysmoothに。塗装をやり直し。色は消える。
  ;; 表面は grind-treatment-change に従って順番に変化していく。
  (:action do-grind
           :parameters (?x - part ?m - grinder ?oldsurface - surface
                           ?oldcolour - acolour 
                           ?oldtreatment ?newtreatment - treatmentstatus) 
           :precondition (and 
                          (available ?x)
                          (surface-condition ?x ?oldsurface)
                          (is-smooth ?oldsurface)
                          (colour ?x ?oldcolour)
                          (treatment ?x ?oldtreatment)
                          (grind-treatment-change ?oldtreatment ?newtreatment))
           :effect (and
                    
                    (not (surface-condition ?x ?oldsurface))
                    (surface-condition ?x verysmooth)
                    (not (treatment ?x ?oldtreatment))
                    (treatment ?x ?newtreatment)
                    (not (colour ?x ?oldcolour))
                    (colour ?x natural)))

  ;; 削ってsmoothに。
  (:action do-plane
           :parameters (?x - part ?m - planer ?oldsurface - surface
                           ?oldcolour - acolour ?oldtreatment - treatmentstatus) 
           :precondition (and 
                          (available ?x)
                          (surface-condition ?x ?oldsurface)
                          (treatment ?x ?oldtreatment)
                          (colour ?x ?oldcolour))
           :effect (and
                    
                    (not (surface-condition ?x ?oldsurface))
                    (surface-condition ?x smooth)
                    (not (treatment ?x ?oldtreatment))
                    (treatment ?x untreated)
                    (not (colour ?x ?oldcolour))
                    (colour ?x natural)))

  ;; のこぎりで切る機械に入れる。
  (:action load-highspeed-saw
           :parameters (?b - board ?m - highspeed-saw)
           :precondition (and
                          (empty ?m)
                          (available ?b))
           :effect (and
                    
                    (not (available ?b))
                    (not (empty ?m))
                    (in-highspeed-saw ?b ?m)))
  
  ;; のこぎりで切る機械から取り出す。
  (:action unload-highspeed-saw
           :parameters (?b - board ?m - highspeed-saw)
           :precondition (in-highspeed-saw ?b ?m)
           :effect (and
                    
                    (available ?b)
                    (not (in-highspeed-saw ?b ?m))
                    (empty ?m)))
  
  ;; のこぎり機械に入っている場合、小さく切る。
  ;; do-saw-small と違って、時間は10しかかからない。
  ;; 
  (:action cut-board-small
           :parameters (?b - board ?p - part ?m - highspeed-saw ?w - awood
                           ?surface - surface ?size_before ?size_after - aboardsize)
           :precondition (and
                          (unused ?p)
                          (goalsize ?p small)
                          (in-highspeed-saw ?b ?m)
                          (wood ?b ?w)
                          (surface-condition ?b ?surface)
                          (boardsize ?b ?size_before)
                          (boardsize-successor ?size_after ?size_before))
           :effect (and
                    
                    (not (unused ?p))
                    (available ?p)
                    (wood ?p ?w)
                    (surface-condition ?p ?surface)
                    (colour ?p natural)
                    (treatment ?p untreated)
                    (not (boardsize ?b ?size_before))
                    (boardsize ?b ?size_after)))

  ;; 中くらいに切る。
  (:action cut-board-medium
           :parameters (?b - board ?p - part ?m - highspeed-saw ?w - awood
                           ?surface - surface 
                           ?size_before ?s1 ?size_after - aboardsize)
           :precondition (and
                          (unused ?p)
                          (goalsize ?p medium)
                          (in-highspeed-saw ?b ?m)
                          (wood ?b ?w)
                          (surface-condition ?b ?surface)
                          (boardsize ?b ?size_before)
                          (boardsize-successor ?size_after ?s1)
                          (boardsize-successor ?s1 ?size_before))
           :effect (and
                    
                    (not (unused ?p))
                    (available ?p)
                    (wood ?p ?w)
                    (surface-condition ?p ?surface)
                    (colour ?p natural)
                    (treatment ?p untreated)
                    (not (boardsize ?b ?size_before))
                    (boardsize ?b ?size_after)))

  (:action cut-board-large
           :parameters (?b - board ?p - part ?m - highspeed-saw ?w - awood
                           ?surface - surface 
                           ?size_before ?s1 ?s2 ?size_after - aboardsize)
           :precondition (and
                          (unused ?p)
                          (goalsize ?p large)
                          (in-highspeed-saw ?b ?m)
                          (wood ?b ?w)
                          (surface-condition ?b ?surface)
                          (boardsize ?b ?size_before)
                          (boardsize-successor ?size_after ?s1)
                          (boardsize-successor ?s1 ?s2)
                          (boardsize-successor ?s2 ?size_before))
           :effect (and
                    
                    (not (unused ?p))
                    (available ?p)
                    (wood ?p ?w)
                    (surface-condition ?p ?surface)
                    (colour ?p natural)
                    (treatment ?p untreated)
                    (not (boardsize ?b ?size_before))
                    (boardsize ?b ?size_after)))

  ;; 手で板を切り出す。板が大きかろうが小さかろうが30かかる
  ;; 板の大きさは小さくなる。(size_after になる)
  ;; ここらへんは do-saw-small/medium/large全部同じ。
  ;; largeを切りだそうとすると板が3段階小さくなる。
  (:action do-saw-small
           :parameters (?b - board ?p - part ?m - saw ?w - awood
                           ?surface - surface ?size_before ?size_after - aboardsize) 
           :precondition (and 
                          (unused ?p)
                          (goalsize ?p small)
                          (available ?b)
                          (wood ?b ?w)
                          (surface-condition ?b ?surface)
                          (boardsize ?b ?size_before)
                          (boardsize-successor ?size_after ?size_before))
           :effect (and
                    
                    (not (unused ?p))
                    (available ?p)
                    (wood ?p ?w)
                    (surface-condition ?p ?surface)
                    (colour ?p natural) 
                    (treatment ?p untreated)
                    (not (boardsize ?b ?size_before))
                    (boardsize ?b ?size_after)))

  (:action do-saw-medium
           :parameters (?b - board ?p - part ?m - saw ?w - awood
                           ?surface - surface 
                           ?size_before ?s1 ?size_after - aboardsize) 
           :precondition (and 
                          (unused ?p)
                          (goalsize ?p medium)
                          (available ?b)
                          (wood ?b ?w)
                          (surface-condition ?b ?surface)
                          (boardsize ?b ?size_before)
                          (boardsize-successor ?size_after ?s1)
                          (boardsize-successor ?s1 ?size_before))
           :effect (and
                    
                    (not (unused ?p))
                    (available ?p)
                    (wood ?p ?w)
                    (surface-condition ?p ?surface)
                    (colour ?p natural) 
                    (treatment ?p untreated)
                    (not (boardsize ?b ?size_before))
                    (boardsize ?b ?size_after)))

  (:action do-saw-large
           :parameters (?b - board ?p - part ?m - saw ?w - awood
                           ?surface - surface 
                           ?size_before ?s1 ?s2 ?size_after - aboardsize) 
           :precondition (and 
                          (unused ?p)
                          (goalsize ?p large)
                          (available ?b)
                          (wood ?b ?w)
                          (surface-condition ?b ?surface)
                          (boardsize ?b ?size_before)
                          (boardsize-successor ?size_after ?s1)
                          (boardsize-successor ?s1 ?s2)
                          (boardsize-successor ?s2 ?size_before))
           :effect (and
                    
                    (not (unused ?p))
                    (available ?p)
                    (wood ?p ?w)
                    (surface-condition ?p ?surface)
                    (colour ?p natural) 
                    (treatment ?p untreated)
                    (not (boardsize ?b ?size_before))
                    (boardsize ?b ?size_after)))
  )
