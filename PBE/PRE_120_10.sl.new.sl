(set-logic BV)
 (declare-oracle-fun ref 
PRE_120_10.sl-ref
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

(constraint (= (f #x9242b6dae8883bb3) (ref #x9242b6dae8883bb3 )))
(constraint (= (f #x73108d32440c677e) (ref #x73108d32440c677e )))
(constraint (= (f #xc81a3db6eaaea2ee) (ref #xc81a3db6eaaea2ee )))
(constraint (= (f #x67bdd02d959b1e03) (ref #x67bdd02d959b1e03 )))
(constraint (= (f #xe0c0e0375167a783) (ref #xe0c0e0375167a783 )))
(constraint (= (f #x51cadbaee51cd706) (ref #x51cadbaee51cd706 )))
(constraint (= (f #x0b868527dea43769) (ref #x0b868527dea43769 )))
(constraint (= (f #xc0e42167c984ee9e) (ref #xc0e42167c984ee9e )))
(constraint (= (f #x402eea7a20ce6c0e) (ref #x402eea7a20ce6c0e )))
(constraint (= (f #xbae36b08c0ca9c30) (ref #xbae36b08c0ca9c30 )))

(check-synth)

