(set-logic BV)
 (declare-oracle-fun ref 
PRE_61_10.sl-ref
((_ BitVec 64)) (_ BitVec 64))

(define-fun ehad ((x (_ BitVec 64))) (_ BitVec 64)
    (bvlshr x #x0000000000000001))
(define-fun arba ((x (_ BitVec 64))) (_ BitVec 64)
    (bvlshr x #x0000000000000004))
(define-fun shesh ((x (_ BitVec 64))) (_ BitVec 64)
    (bvlshr x #x0000000000000010))
(define-fun smol ((x (_ BitVec 64))) (_ BitVec 64)
    (bvshl x #x0000000000000001))
(define-fun im ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64)
    (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (bvshl Start #x0000000000000001) (bvlshr Start #x0000000000000001) (bvlshr Start #x0000000000000004) (bvlshr Start #x0000000000000010) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (ite (= Start #x0000000000000001) Start Start)))))

(constraint (= (f #xedee2a48b7853845) (ref #xedee2a48b7853845 )))
(constraint (= (f #x064d2ba44438e16e) (ref #x064d2ba44438e16e )))
(constraint (= (f #x8ceed2803c300ae6) (ref #x8ceed2803c300ae6 )))
(constraint (= (f #xa4410e00e3a0abca) (ref #xa4410e00e3a0abca )))
(constraint (= (f #xa5c2e52b88ad5a44) (ref #xa5c2e52b88ad5a44 )))
(constraint (= (f #x36d8137e3eb0a2a1) (ref #x36d8137e3eb0a2a1 )))
(constraint (= (f #x068d0a456788c03b) (ref #x068d0a456788c03b )))
(constraint (= (f #xc9e2c45e256664b3) (ref #xc9e2c45e256664b3 )))
(constraint (= (f #x930e85d58d8ea100) (ref #x930e85d58d8ea100 )))
(constraint (= (f #x3b96bb9033aa2bed) (ref #x3b96bb9033aa2bed )))

(check-synth)

