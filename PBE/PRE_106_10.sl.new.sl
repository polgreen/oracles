(set-logic BV)
 (declare-oracle-fun ref 
PRE_106_10.sl-ref
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

(constraint (= (f #xd294433703509ebe) (ref #xd294433703509ebe )))
(constraint (= (f #x3a3bedc07eed85c2) (ref #x3a3bedc07eed85c2 )))
(constraint (= (f #x56e47683a3048407) (ref #x56e47683a3048407 )))
(constraint (= (f #x0d1c0dc1a60067e9) (ref #x0d1c0dc1a60067e9 )))
(constraint (= (f #xc376beca2c4543cc) (ref #xc376beca2c4543cc )))
(constraint (= (f #x5e28869a0431dea4) (ref #x5e28869a0431dea4 )))
(constraint (= (f #xed6e301cc30c8297) (ref #xed6e301cc30c8297 )))
(constraint (= (f #x48e4d74b57acd410) (ref #x48e4d74b57acd410 )))
(constraint (= (f #x2939610db8da9e01) (ref #x2939610db8da9e01 )))
(constraint (= (f #x14a2ea25d992879c) (ref #x14a2ea25d992879c )))

(check-synth)

