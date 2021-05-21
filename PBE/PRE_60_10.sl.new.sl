(set-logic BV)
 (declare-oracle-fun ref 
PRE_60_10.sl-ref
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

(constraint (= (f #x3b81adde9e2802c9) (ref #x3b81adde9e2802c9 )))
(constraint (= (f #xcb9e80912e7d08e3) (ref #xcb9e80912e7d08e3 )))
(constraint (= (f #x9e01d13ee33d3cc6) (ref #x9e01d13ee33d3cc6 )))
(constraint (= (f #x02e0aed199e76a3c) (ref #x02e0aed199e76a3c )))
(constraint (= (f #x7d02be70b5e0ce54) (ref #x7d02be70b5e0ce54 )))
(constraint (= (f #xec87e20dac318b04) (ref #xec87e20dac318b04 )))
(constraint (= (f #xa87a1bc84ee1e6b6) (ref #xa87a1bc84ee1e6b6 )))
(constraint (= (f #xd886c4080cd4a6e7) (ref #xd886c4080cd4a6e7 )))
(constraint (= (f #x8e9a4ea08e4cb7c5) (ref #x8e9a4ea08e4cb7c5 )))
(constraint (= (f #xd40eacb8ccb87540) (ref #xd40eacb8ccb87540 )))

(check-synth)

