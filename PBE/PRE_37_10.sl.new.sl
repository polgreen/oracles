(set-logic BV)
 (declare-oracle-fun ref 
PRE_37_10.sl-ref
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

(constraint (= (f #x55533c00d5be6ce0) (ref #x55533c00d5be6ce0 )))
(constraint (= (f #xa64756e3318e7243) (ref #xa64756e3318e7243 )))
(constraint (= (f #xa1167ee86372ec38) (ref #xa1167ee86372ec38 )))
(constraint (= (f #x5b5e3e088674b469) (ref #x5b5e3e088674b469 )))
(constraint (= (f #xe9199c4d8261e833) (ref #xe9199c4d8261e833 )))
(constraint (= (f #xbe7d2b7b076ea6e0) (ref #xbe7d2b7b076ea6e0 )))
(constraint (= (f #x8b2e5815ba4d39ec) (ref #x8b2e5815ba4d39ec )))
(constraint (= (f #x08484e7d34a5a501) (ref #x08484e7d34a5a501 )))
(constraint (= (f #x1e69ae205ad2e0a2) (ref #x1e69ae205ad2e0a2 )))
(constraint (= (f #x501ee15ecbc5cb6a) (ref #x501ee15ecbc5cb6a )))

(check-synth)

