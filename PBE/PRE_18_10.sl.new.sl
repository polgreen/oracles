(set-logic BV)
 (declare-oracle-fun ref 
PRE_18_10.sl-ref
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

(constraint (= (f #x79c583151dccecdc) (ref #x79c583151dccecdc )))
(constraint (= (f #x145e6dd46e84741d) (ref #x145e6dd46e84741d )))
(constraint (= (f #xb87396e7d47b3cae) (ref #xb87396e7d47b3cae )))
(constraint (= (f #xdd3bae7dce765576) (ref #xdd3bae7dce765576 )))
(constraint (= (f #xc865922a66de88d1) (ref #xc865922a66de88d1 )))
(constraint (= (f #xe677bbc3e08b2ba5) (ref #xe677bbc3e08b2ba5 )))
(constraint (= (f #xb8174e198a4698dd) (ref #xb8174e198a4698dd )))
(constraint (= (f #x86a7a27c6e6485cc) (ref #x86a7a27c6e6485cc )))
(constraint (= (f #x39028982d50c909a) (ref #x39028982d50c909a )))
(constraint (= (f #x5b7bec9e09e225ce) (ref #x5b7bec9e09e225ce )))

(check-synth)

