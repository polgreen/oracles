(set-logic BV)
 (declare-oracle-fun ref 
PRE_12_10.sl-ref
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

(constraint (= (f #x7ccc6e8b28aeee9d) (ref #x7ccc6e8b28aeee9d )))
(constraint (= (f #x19e8e4125382c6c0) (ref #x19e8e4125382c6c0 )))
(constraint (= (f #xe137a30c1d3c2eb6) (ref #xe137a30c1d3c2eb6 )))
(constraint (= (f #x54eac1dc9853aed7) (ref #x54eac1dc9853aed7 )))
(constraint (= (f #xaeb15d8e05e32553) (ref #xaeb15d8e05e32553 )))
(constraint (= (f #x8935e3b7034e6697) (ref #x8935e3b7034e6697 )))
(constraint (= (f #xe0ddea4eb0b4b1e9) (ref #xe0ddea4eb0b4b1e9 )))
(constraint (= (f #xb0ec41ceae410296) (ref #xb0ec41ceae410296 )))
(constraint (= (f #x25a9eb4d0a8717d8) (ref #x25a9eb4d0a8717d8 )))
(constraint (= (f #x4c80d548e86d4eb5) (ref #x4c80d548e86d4eb5 )))

(check-synth)

