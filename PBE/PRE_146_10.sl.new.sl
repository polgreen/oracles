(set-logic BV)
 (declare-oracle-fun ref 
PRE_146_10.sl-ref
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

(constraint (= (f #x057b494d47c86436) (ref #x057b494d47c86436 )))
(constraint (= (f #xa3b05289dc347d26) (ref #xa3b05289dc347d26 )))
(constraint (= (f #xaec1e4ce32a79336) (ref #xaec1e4ce32a79336 )))
(constraint (= (f #x221ca8b7490eaa6e) (ref #x221ca8b7490eaa6e )))
(constraint (= (f #x0e5e645ae81ba346) (ref #x0e5e645ae81ba346 )))
(constraint (= (f #x866723d29e0d05e3) (ref #x866723d29e0d05e3 )))
(constraint (= (f #x998d30ede66b88b5) (ref #x998d30ede66b88b5 )))
(constraint (= (f #x4533148bc4913e4e) (ref #x4533148bc4913e4e )))
(constraint (= (f #x13c6a8c49aeee9a6) (ref #x13c6a8c49aeee9a6 )))
(constraint (= (f #x23ee0489de1ebee3) (ref #x23ee0489de1ebee3 )))

(check-synth)

