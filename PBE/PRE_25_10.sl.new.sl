(set-logic BV)
 (declare-oracle-fun ref 
PRE_25_10.sl-ref
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

(constraint (= (f #xe5ba16a0cde4e589) (ref #xe5ba16a0cde4e589 )))
(constraint (= (f #x741d790c2ab5c990) (ref #x741d790c2ab5c990 )))
(constraint (= (f #x06a1eb613b768d55) (ref #x06a1eb613b768d55 )))
(constraint (= (f #x7ed38e8ce9029ba6) (ref #x7ed38e8ce9029ba6 )))
(constraint (= (f #xd2cd44e9a04e1e4d) (ref #xd2cd44e9a04e1e4d )))
(constraint (= (f #x5417a08e80eceb0c) (ref #x5417a08e80eceb0c )))
(constraint (= (f #x713e1384e9b13c68) (ref #x713e1384e9b13c68 )))
(constraint (= (f #x592e869385c640a3) (ref #x592e869385c640a3 )))
(constraint (= (f #x956ee45beea75536) (ref #x956ee45beea75536 )))
(constraint (= (f #x9ece8de3d1350422) (ref #x9ece8de3d1350422 )))

(check-synth)

