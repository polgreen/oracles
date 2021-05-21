(set-logic BV)
 (declare-oracle-fun ref 
PRE_48_10.sl-ref
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

(constraint (= (f #xb36d1bce56064ea9) (ref #xb36d1bce56064ea9 )))
(constraint (= (f #xc6be0be5db01ee63) (ref #xc6be0be5db01ee63 )))
(constraint (= (f #xe0c74e88a9e415be) (ref #xe0c74e88a9e415be )))
(constraint (= (f #xb7c22be831ee8d6a) (ref #xb7c22be831ee8d6a )))
(constraint (= (f #x16627b532861ddea) (ref #x16627b532861ddea )))
(constraint (= (f #xe4eeb42ce05a9e8b) (ref #xe4eeb42ce05a9e8b )))
(constraint (= (f #x7b2ead61490a06a5) (ref #x7b2ead61490a06a5 )))
(constraint (= (f #x8c2565b3e67be663) (ref #x8c2565b3e67be663 )))
(constraint (= (f #xdb8a4ea75d3ba136) (ref #xdb8a4ea75d3ba136 )))
(constraint (= (f #x25bc62c279774602) (ref #x25bc62c279774602 )))

(check-synth)

