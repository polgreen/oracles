(set-logic BV)
 (declare-oracle-fun ref 
PRE_131_10.sl-ref
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

(constraint (= (f #x1a5465e6ded59d1a) (ref #x1a5465e6ded59d1a )))
(constraint (= (f #x82c812e32014aba7) (ref #x82c812e32014aba7 )))
(constraint (= (f #x5d27238ceda6eaec) (ref #x5d27238ceda6eaec )))
(constraint (= (f #x084d96d972a85e52) (ref #x084d96d972a85e52 )))
(constraint (= (f #x2155e9e78287952c) (ref #x2155e9e78287952c )))
(constraint (= (f #x90b0b38958b5b8e6) (ref #x90b0b38958b5b8e6 )))
(constraint (= (f #x251865a4ed5387c1) (ref #x251865a4ed5387c1 )))
(constraint (= (f #x8e85cda9ae87c23e) (ref #x8e85cda9ae87c23e )))
(constraint (= (f #x8ade8e2ec1e53599) (ref #x8ade8e2ec1e53599 )))
(constraint (= (f #x0626ce3beee88dea) (ref #x0626ce3beee88dea )))

(check-synth)

