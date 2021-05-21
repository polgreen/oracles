(set-logic BV)
 (declare-oracle-fun ref 
PRE_143_10.sl-ref
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

(constraint (= (f #x56b71824648d03dc) (ref #x56b71824648d03dc )))
(constraint (= (f #x2eae5e05e7abe9e8) (ref #x2eae5e05e7abe9e8 )))
(constraint (= (f #xcd3ec1341d9b9d94) (ref #xcd3ec1341d9b9d94 )))
(constraint (= (f #xa22c2e44413a449a) (ref #xa22c2e44413a449a )))
(constraint (= (f #x61cbc78155de393b) (ref #x61cbc78155de393b )))
(constraint (= (f #xeab8219b6ee7b76d) (ref #xeab8219b6ee7b76d )))
(constraint (= (f #x93899d46b23e71ce) (ref #x93899d46b23e71ce )))
(constraint (= (f #x3766ddab39201e64) (ref #x3766ddab39201e64 )))
(constraint (= (f #xe8a93b7c358a54dc) (ref #xe8a93b7c358a54dc )))
(constraint (= (f #xbe83736d5754cb8e) (ref #xbe83736d5754cb8e )))

(check-synth)

