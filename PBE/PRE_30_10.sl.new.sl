(set-logic BV)
 (declare-oracle-fun ref 
PRE_30_10.sl-ref
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

(constraint (= (f #x058767e45e7b87d4) (ref #x058767e45e7b87d4 )))
(constraint (= (f #xee7ede4e01ee3428) (ref #xee7ede4e01ee3428 )))
(constraint (= (f #x0d8c239eb8b788e2) (ref #x0d8c239eb8b788e2 )))
(constraint (= (f #xc263d516250d671c) (ref #xc263d516250d671c )))
(constraint (= (f #x7e3bc4a78e1b3363) (ref #x7e3bc4a78e1b3363 )))
(constraint (= (f #x0e8e32c4db1a0e29) (ref #x0e8e32c4db1a0e29 )))
(constraint (= (f #x2cc0d2ae491ea6b8) (ref #x2cc0d2ae491ea6b8 )))
(constraint (= (f #x1871b609e2280353) (ref #x1871b609e2280353 )))
(constraint (= (f #x6ccec6c79043606e) (ref #x6ccec6c79043606e )))
(constraint (= (f #x1413ca735596d82c) (ref #x1413ca735596d82c )))

(check-synth)

