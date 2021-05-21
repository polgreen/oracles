(set-logic BV)
 (declare-oracle-fun ref 
PRE_144_10.sl-ref
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

(constraint (= (f #x2b1da9306cb4eb14) (ref #x2b1da9306cb4eb14 )))
(constraint (= (f #xa011c2452cc97991) (ref #xa011c2452cc97991 )))
(constraint (= (f #xe8376aaee5ad0e18) (ref #xe8376aaee5ad0e18 )))
(constraint (= (f #x8e07b682d6e783cc) (ref #x8e07b682d6e783cc )))
(constraint (= (f #xa1091b0ebd139a7a) (ref #xa1091b0ebd139a7a )))
(constraint (= (f #x0aa6670a04b97cbe) (ref #x0aa6670a04b97cbe )))
(constraint (= (f #x9e25186aac01e7e1) (ref #x9e25186aac01e7e1 )))
(constraint (= (f #xec7e6d355e274c91) (ref #xec7e6d355e274c91 )))
(constraint (= (f #x992e3a3ed15c6aba) (ref #x992e3a3ed15c6aba )))
(constraint (= (f #xa39e2ed3a1c30ec0) (ref #xa39e2ed3a1c30ec0 )))

(check-synth)

