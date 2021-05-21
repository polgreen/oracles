(set-logic BV)
 (declare-oracle-fun ref 
PRE_33_10.sl-ref
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

(constraint (= (f #xa58199527021aecd) (ref #xa58199527021aecd )))
(constraint (= (f #x0a8e1b47152b045b) (ref #x0a8e1b47152b045b )))
(constraint (= (f #xa2ae6e15ae402a80) (ref #xa2ae6e15ae402a80 )))
(constraint (= (f #xcd3e2c76d2967379) (ref #xcd3e2c76d2967379 )))
(constraint (= (f #xe432767845375e02) (ref #xe432767845375e02 )))
(constraint (= (f #x7ce2ec4d032e4006) (ref #x7ce2ec4d032e4006 )))
(constraint (= (f #x7b04438bb147022c) (ref #x7b04438bb147022c )))
(constraint (= (f #x67e90e24e2aadeac) (ref #x67e90e24e2aadeac )))
(constraint (= (f #x14e560c5b8b59c65) (ref #x14e560c5b8b59c65 )))
(constraint (= (f #xd0dd6177289ba994) (ref #xd0dd6177289ba994 )))

(check-synth)

