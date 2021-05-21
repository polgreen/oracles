(set-logic BV)
 (declare-oracle-fun ref 
PRE_104_10.sl-ref
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

(constraint (= (f #xb321e2bcb5d4ce60) (ref #xb321e2bcb5d4ce60 )))
(constraint (= (f #x48776ed52a38663a) (ref #x48776ed52a38663a )))
(constraint (= (f #xe0642c2e018e40e4) (ref #xe0642c2e018e40e4 )))
(constraint (= (f #xe7ea80d80b2ea9ee) (ref #xe7ea80d80b2ea9ee )))
(constraint (= (f #xe82de1215d08cc8e) (ref #xe82de1215d08cc8e )))
(constraint (= (f #xd03e8a11d2a7a889) (ref #xd03e8a11d2a7a889 )))
(constraint (= (f #xbec219398a108952) (ref #xbec219398a108952 )))
(constraint (= (f #x849702c9ee9a767b) (ref #x849702c9ee9a767b )))
(constraint (= (f #x826ec5c883d48b71) (ref #x826ec5c883d48b71 )))
(constraint (= (f #x5503401395759099) (ref #x5503401395759099 )))

(check-synth)

