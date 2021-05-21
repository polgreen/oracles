(set-logic BV)
 (declare-oracle-fun ref 
PRE_17_10.sl-ref
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

(constraint (= (f #x462de0de1125b950) (ref #x462de0de1125b950 )))
(constraint (= (f #x23564099dc9e076d) (ref #x23564099dc9e076d )))
(constraint (= (f #xa1199b5717c3bcee) (ref #xa1199b5717c3bcee )))
(constraint (= (f #x3a5ee8e4e34da67b) (ref #x3a5ee8e4e34da67b )))
(constraint (= (f #xeca686a3eaec9565) (ref #xeca686a3eaec9565 )))
(constraint (= (f #xcbe015cc4240ac1b) (ref #xcbe015cc4240ac1b )))
(constraint (= (f #x6c9271a3b619b696) (ref #x6c9271a3b619b696 )))
(constraint (= (f #x1bedceca48c8e033) (ref #x1bedceca48c8e033 )))
(constraint (= (f #xd0b46cc12deb61e0) (ref #xd0b46cc12deb61e0 )))
(constraint (= (f #x51205ccce3ba2880) (ref #x51205ccce3ba2880 )))

(check-synth)

