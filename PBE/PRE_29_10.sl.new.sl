(set-logic BV)
 (declare-oracle-fun ref 
PRE_29_10.sl-ref
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

(constraint (= (f #x246e88986924c323) (ref #x246e88986924c323 )))
(constraint (= (f #x48b162101680916a) (ref #x48b162101680916a )))
(constraint (= (f #x8e2c34ba355ce1e5) (ref #x8e2c34ba355ce1e5 )))
(constraint (= (f #x81b8d8e7a57e8d92) (ref #x81b8d8e7a57e8d92 )))
(constraint (= (f #x3e12ddba88d0a20d) (ref #x3e12ddba88d0a20d )))
(constraint (= (f #x6dcb0ed0130d3248) (ref #x6dcb0ed0130d3248 )))
(constraint (= (f #x88e48dab89a09c10) (ref #x88e48dab89a09c10 )))
(constraint (= (f #x0b1999ed2c83e58d) (ref #x0b1999ed2c83e58d )))
(constraint (= (f #xd94e40238de02d8c) (ref #xd94e40238de02d8c )))
(constraint (= (f #x27abd6c58a26630e) (ref #x27abd6c58a26630e )))

(check-synth)

