(set-logic BV)
 (declare-oracle-fun ref 
PRE_5_10.sl-ref
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

(constraint (= (f #x0b0ee88aa6d83e36) (ref #x0b0ee88aa6d83e36 )))
(constraint (= (f #x089e7415e53ded3a) (ref #x089e7415e53ded3a )))
(constraint (= (f #x9d04373e13670706) (ref #x9d04373e13670706 )))
(constraint (= (f #xedb5d9e6d00e3e94) (ref #xedb5d9e6d00e3e94 )))
(constraint (= (f #xa5b25cb355c6587d) (ref #xa5b25cb355c6587d )))
(constraint (= (f #xd210e2266521aee5) (ref #xd210e2266521aee5 )))
(constraint (= (f #x1e5734cea9a5dee5) (ref #x1e5734cea9a5dee5 )))
(constraint (= (f #x9a9ebedd7a7c1e3b) (ref #x9a9ebedd7a7c1e3b )))
(constraint (= (f #x62d04368024530c0) (ref #x62d04368024530c0 )))
(constraint (= (f #xe26a0c51e2dcdd90) (ref #xe26a0c51e2dcdd90 )))

(check-synth)

