(set-logic BV)
 (declare-oracle-fun ref 
PRE_137_10.sl-ref
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

(constraint (= (f #x2ce5e9e10c73eb82) (ref #x2ce5e9e10c73eb82 )))
(constraint (= (f #x3015e13ed4b39bed) (ref #x3015e13ed4b39bed )))
(constraint (= (f #xbbea49e80e8ecc1b) (ref #xbbea49e80e8ecc1b )))
(constraint (= (f #xa21d2edd9a4dca23) (ref #xa21d2edd9a4dca23 )))
(constraint (= (f #x1d33b2c138183809) (ref #x1d33b2c138183809 )))
(constraint (= (f #x1ee568b71e6e09ce) (ref #x1ee568b71e6e09ce )))
(constraint (= (f #xe5d593db27461e9b) (ref #xe5d593db27461e9b )))
(constraint (= (f #x17d381ec01aea3e3) (ref #x17d381ec01aea3e3 )))
(constraint (= (f #x88ce7dc6ce9c3e79) (ref #x88ce7dc6ce9c3e79 )))
(constraint (= (f #xa37e551c66670005) (ref #xa37e551c66670005 )))

(check-synth)

