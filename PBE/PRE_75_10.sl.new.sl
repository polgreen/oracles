(set-logic BV)
 (declare-oracle-fun ref 
PRE_75_10.sl-ref
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

(constraint (= (f #x20856be98e1e206e) (ref #x20856be98e1e206e )))
(constraint (= (f #x376dc13e5ced3bc3) (ref #x376dc13e5ced3bc3 )))
(constraint (= (f #x840b9c61ea141aa4) (ref #x840b9c61ea141aa4 )))
(constraint (= (f #x2917d19e25873672) (ref #x2917d19e25873672 )))
(constraint (= (f #xe1ec806bc484ec45) (ref #xe1ec806bc484ec45 )))
(constraint (= (f #x7e84ab45de6d6a17) (ref #x7e84ab45de6d6a17 )))
(constraint (= (f #x12d16e5646e7b8d0) (ref #x12d16e5646e7b8d0 )))
(constraint (= (f #x309166c4cd400648) (ref #x309166c4cd400648 )))
(constraint (= (f #xc6bc306c1296379a) (ref #xc6bc306c1296379a )))
(constraint (= (f #x45c450e90de32b65) (ref #x45c450e90de32b65 )))

(check-synth)

