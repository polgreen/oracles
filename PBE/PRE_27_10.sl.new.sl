(set-logic BV)
 (declare-oracle-fun ref 
PRE_27_10.sl-ref
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

(constraint (= (f #x032d792de0ae3224) (ref #x032d792de0ae3224 )))
(constraint (= (f #x531e454c79e076ea) (ref #x531e454c79e076ea )))
(constraint (= (f #x6eeba4be14e0da51) (ref #x6eeba4be14e0da51 )))
(constraint (= (f #x1e6697219164c3de) (ref #x1e6697219164c3de )))
(constraint (= (f #x90d602c2245aad30) (ref #x90d602c2245aad30 )))
(constraint (= (f #xc62be2c5eb598b9d) (ref #xc62be2c5eb598b9d )))
(constraint (= (f #xa529c9558cd346c8) (ref #xa529c9558cd346c8 )))
(constraint (= (f #x5d0119506e6ed842) (ref #x5d0119506e6ed842 )))
(constraint (= (f #x0da86818c4268984) (ref #x0da86818c4268984 )))
(constraint (= (f #x8510a5bdb8912bd8) (ref #x8510a5bdb8912bd8 )))

(check-synth)

