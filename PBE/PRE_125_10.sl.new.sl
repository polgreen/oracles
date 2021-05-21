(set-logic BV)
 (declare-oracle-fun ref 
PRE_125_10.sl-ref
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

(constraint (= (f #x1dea8379eebdceb0) (ref #x1dea8379eebdceb0 )))
(constraint (= (f #x2abc048154191b93) (ref #x2abc048154191b93 )))
(constraint (= (f #xa8472bd3838ebdc8) (ref #xa8472bd3838ebdc8 )))
(constraint (= (f #x20ed136260d51b5a) (ref #x20ed136260d51b5a )))
(constraint (= (f #xe1ba389d81122339) (ref #xe1ba389d81122339 )))
(constraint (= (f #xed72e6e97c80ec49) (ref #xed72e6e97c80ec49 )))
(constraint (= (f #x2bab98ddb4a69d3d) (ref #x2bab98ddb4a69d3d )))
(constraint (= (f #x1ebb8ac38e903975) (ref #x1ebb8ac38e903975 )))
(constraint (= (f #x6507809ee4ccee86) (ref #x6507809ee4ccee86 )))
(constraint (= (f #x1a1b7cde82e79eb1) (ref #x1a1b7cde82e79eb1 )))

(check-synth)

