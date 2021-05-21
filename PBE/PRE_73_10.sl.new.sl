(set-logic BV)
 (declare-oracle-fun ref 
PRE_73_10.sl-ref
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

(constraint (= (f #xbd2e7ea9b463ce62) (ref #xbd2e7ea9b463ce62 )))
(constraint (= (f #x3e9d2a58375e0cec) (ref #x3e9d2a58375e0cec )))
(constraint (= (f #x549693d347db136e) (ref #x549693d347db136e )))
(constraint (= (f #xa51d9c807d697b37) (ref #xa51d9c807d697b37 )))
(constraint (= (f #xacbc0945b57eedd9) (ref #xacbc0945b57eedd9 )))
(constraint (= (f #xcde4c5943e78c87b) (ref #xcde4c5943e78c87b )))
(constraint (= (f #x31ab192ce1eb4ca4) (ref #x31ab192ce1eb4ca4 )))
(constraint (= (f #xe14e457ec37821da) (ref #xe14e457ec37821da )))
(constraint (= (f #xb64a18144e5d70d8) (ref #xb64a18144e5d70d8 )))
(constraint (= (f #xd1a7d7c2c6c511ad) (ref #xd1a7d7c2c6c511ad )))

(check-synth)

