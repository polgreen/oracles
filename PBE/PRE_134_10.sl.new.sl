(set-logic BV)
 (declare-oracle-fun ref 
PRE_134_10.sl-ref
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

(constraint (= (f #xc9ee82786e38ab9b) (ref #xc9ee82786e38ab9b )))
(constraint (= (f #xec48302e13b292b2) (ref #xec48302e13b292b2 )))
(constraint (= (f #x1d32eba06b25743b) (ref #x1d32eba06b25743b )))
(constraint (= (f #x69ce62c63901eee7) (ref #x69ce62c63901eee7 )))
(constraint (= (f #xc41d69980db9b5e7) (ref #xc41d69980db9b5e7 )))
(constraint (= (f #xc0893d72064152eb) (ref #xc0893d72064152eb )))
(constraint (= (f #x6be4882a16a811e9) (ref #x6be4882a16a811e9 )))
(constraint (= (f #xdb82eaee1d5e72ec) (ref #xdb82eaee1d5e72ec )))
(constraint (= (f #x67026ed6e353be18) (ref #x67026ed6e353be18 )))
(constraint (= (f #xca31ce8ccc4b7ba8) (ref #xca31ce8ccc4b7ba8 )))

(check-synth)

