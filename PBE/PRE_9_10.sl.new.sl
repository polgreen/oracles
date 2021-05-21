(set-logic BV)
 (declare-oracle-fun ref 
PRE_9_10.sl-ref
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

(constraint (= (f #xd70894e15a6d6477) (ref #xd70894e15a6d6477 )))
(constraint (= (f #xb47b9809eb1e63c2) (ref #xb47b9809eb1e63c2 )))
(constraint (= (f #x4c926e5787ec9514) (ref #x4c926e5787ec9514 )))
(constraint (= (f #x3b7a11e01c3a0c05) (ref #x3b7a11e01c3a0c05 )))
(constraint (= (f #x9051719149096de6) (ref #x9051719149096de6 )))
(constraint (= (f #x84d52223ea329667) (ref #x84d52223ea329667 )))
(constraint (= (f #x7a7b84ced6e08801) (ref #x7a7b84ced6e08801 )))
(constraint (= (f #x0b9de3e38606aee1) (ref #x0b9de3e38606aee1 )))
(constraint (= (f #xd3b8b711ed0de2e5) (ref #xd3b8b711ed0de2e5 )))
(constraint (= (f #xeb83c95898c23a22) (ref #xeb83c95898c23a22 )))

(check-synth)

