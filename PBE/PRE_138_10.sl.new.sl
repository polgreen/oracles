(set-logic BV)
 (declare-oracle-fun ref 
PRE_138_10.sl-ref
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

(constraint (= (f #x8dd35cbd49233180) (ref #x8dd35cbd49233180 )))
(constraint (= (f #x366bbea1de6b0bee) (ref #x366bbea1de6b0bee )))
(constraint (= (f #x4dd2c3b4e846eb22) (ref #x4dd2c3b4e846eb22 )))
(constraint (= (f #xd843c1e3007309c2) (ref #xd843c1e3007309c2 )))
(constraint (= (f #xaea0e94c2ece11c5) (ref #xaea0e94c2ece11c5 )))
(constraint (= (f #x52e5d4ab78c94e93) (ref #x52e5d4ab78c94e93 )))
(constraint (= (f #x284b29584e931890) (ref #x284b29584e931890 )))
(constraint (= (f #xe0a89468735e7bed) (ref #xe0a89468735e7bed )))
(constraint (= (f #xe85e5eeed078618a) (ref #xe85e5eeed078618a )))
(constraint (= (f #x8ee1303e8a504039) (ref #x8ee1303e8a504039 )))

(check-synth)

