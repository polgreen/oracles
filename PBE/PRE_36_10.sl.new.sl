(set-logic BV)
 (declare-oracle-fun ref 
PRE_36_10.sl-ref
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

(constraint (= (f #x283b9e991d25a487) (ref #x283b9e991d25a487 )))
(constraint (= (f #xe18d186592997a06) (ref #xe18d186592997a06 )))
(constraint (= (f #xc1adaea38452eec0) (ref #xc1adaea38452eec0 )))
(constraint (= (f #x8509c657e993ade8) (ref #x8509c657e993ade8 )))
(constraint (= (f #x410d5ede613250be) (ref #x410d5ede613250be )))
(constraint (= (f #x76ae910d897c9d2c) (ref #x76ae910d897c9d2c )))
(constraint (= (f #x4ba6642874560093) (ref #x4ba6642874560093 )))
(constraint (= (f #x125e054b0c61aee2) (ref #x125e054b0c61aee2 )))
(constraint (= (f #x18d0dd4357bb0517) (ref #x18d0dd4357bb0517 )))
(constraint (= (f #x9c9503352d1da3c3) (ref #x9c9503352d1da3c3 )))

(check-synth)

