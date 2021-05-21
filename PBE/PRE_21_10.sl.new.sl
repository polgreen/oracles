(set-logic BV)
 (declare-oracle-fun ref 
PRE_21_10.sl-ref
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

(constraint (= (f #xde63ae7ee7992973) (ref #xde63ae7ee7992973 )))
(constraint (= (f #xe4ad7ac0353dbe4c) (ref #xe4ad7ac0353dbe4c )))
(constraint (= (f #x194981e790292aac) (ref #x194981e790292aac )))
(constraint (= (f #xd931e9eca0478582) (ref #xd931e9eca0478582 )))
(constraint (= (f #xe59be1ccbe526633) (ref #xe59be1ccbe526633 )))
(constraint (= (f #x5164d0772bbe47e5) (ref #x5164d0772bbe47e5 )))
(constraint (= (f #x21dc6d394818442e) (ref #x21dc6d394818442e )))
(constraint (= (f #x39ca9702b62bade0) (ref #x39ca9702b62bade0 )))
(constraint (= (f #x18e54e0623a2ae33) (ref #x18e54e0623a2ae33 )))
(constraint (= (f #xce9d217e849d93cd) (ref #xce9d217e849d93cd )))

(check-synth)

