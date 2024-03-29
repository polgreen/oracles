(set-logic BV)
 (declare-oracle-fun ref 
PRE_3_10.sl-ref
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

(constraint (= (f #x4cb86ddc83ce50a2) (ref #x4cb86ddc83ce50a2 )))
(constraint (= (f #xec64bb73d0e8ba14) (ref #xec64bb73d0e8ba14 )))
(constraint (= (f #x7cae1d68e5ee2eb8) (ref #x7cae1d68e5ee2eb8 )))
(constraint (= (f #x1aedd0e026c49408) (ref #x1aedd0e026c49408 )))
(constraint (= (f #x540b2c9e007b5422) (ref #x540b2c9e007b5422 )))
(constraint (= (f #x3ea34ed7052e99db) (ref #x3ea34ed7052e99db )))
(constraint (= (f #x9900ed412c53262c) (ref #x9900ed412c53262c )))
(constraint (= (f #x8e21e59225eae682) (ref #x8e21e59225eae682 )))
(constraint (= (f #x81bc9ed221c6a904) (ref #x81bc9ed221c6a904 )))
(constraint (= (f #x12e6ec5aac0e57e7) (ref #x12e6ec5aac0e57e7 )))

(check-synth)

