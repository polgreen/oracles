(set-logic BV)
 (declare-oracle-fun ref 
PRE_28_10.sl-ref
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

(constraint (= (f #xd74594057974e439) (ref #xd74594057974e439 )))
(constraint (= (f #x74641ebeee92e8a2) (ref #x74641ebeee92e8a2 )))
(constraint (= (f #x91c80141d7ec76b1) (ref #x91c80141d7ec76b1 )))
(constraint (= (f #xe4e55862e5ee4bec) (ref #xe4e55862e5ee4bec )))
(constraint (= (f #x367da67ede4260ce) (ref #x367da67ede4260ce )))
(constraint (= (f #xa365eb36246b3d8e) (ref #xa365eb36246b3d8e )))
(constraint (= (f #xcd8a44a6d4c09c29) (ref #xcd8a44a6d4c09c29 )))
(constraint (= (f #xa97e9b9b7970433d) (ref #xa97e9b9b7970433d )))
(constraint (= (f #x474dec0dd75d6894) (ref #x474dec0dd75d6894 )))
(constraint (= (f #x12430014ed058b24) (ref #x12430014ed058b24 )))

(check-synth)

