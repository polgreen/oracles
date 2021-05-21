(set-logic BV)
 (declare-oracle-fun ref 
PRE_58_10.sl-ref
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

(constraint (= (f #xdc452be7242c1a1e) (ref #xdc452be7242c1a1e )))
(constraint (= (f #xc4636197a50b3e36) (ref #xc4636197a50b3e36 )))
(constraint (= (f #x1e8da262013499e5) (ref #x1e8da262013499e5 )))
(constraint (= (f #x58e046e06b41306b) (ref #x58e046e06b41306b )))
(constraint (= (f #xdeec6ae8e5ed97eb) (ref #xdeec6ae8e5ed97eb )))
(constraint (= (f #x5d713121e99b6151) (ref #x5d713121e99b6151 )))
(constraint (= (f #x8c5cc5e425bada5c) (ref #x8c5cc5e425bada5c )))
(constraint (= (f #xbeaebdece50913e4) (ref #xbeaebdece50913e4 )))
(constraint (= (f #x84e219ddd90314d8) (ref #x84e219ddd90314d8 )))
(constraint (= (f #x11674b54ee3623d1) (ref #x11674b54ee3623d1 )))

(check-synth)

