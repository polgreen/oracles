(set-logic BV)
 (declare-oracle-fun ref 
PRE_52_10.sl-ref
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

(constraint (= (f #x2e6535c581a8392a) (ref #x2e6535c581a8392a )))
(constraint (= (f #xa153d2ee3ed0ce5d) (ref #xa153d2ee3ed0ce5d )))
(constraint (= (f #x802ca6c48dad2e26) (ref #x802ca6c48dad2e26 )))
(constraint (= (f #xe724ed68de88bead) (ref #xe724ed68de88bead )))
(constraint (= (f #x29d1733e35663b5e) (ref #x29d1733e35663b5e )))
(constraint (= (f #x45c8ec3283143ebb) (ref #x45c8ec3283143ebb )))
(constraint (= (f #x214938924a27324d) (ref #x214938924a27324d )))
(constraint (= (f #x895e15ace4700348) (ref #x895e15ace4700348 )))
(constraint (= (f #xa110d71639987076) (ref #xa110d71639987076 )))
(constraint (= (f #xa0b469693dd6ad2d) (ref #xa0b469693dd6ad2d )))

(check-synth)

