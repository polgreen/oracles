(set-logic BV)
 (declare-oracle-fun ref 
PRE_113_10.sl-ref
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

(constraint (= (f #x9c6c25661dc9d634) (ref #x9c6c25661dc9d634 )))
(constraint (= (f #x2be6709487973ced) (ref #x2be6709487973ced )))
(constraint (= (f #x2c7eee01e59eb9c0) (ref #x2c7eee01e59eb9c0 )))
(constraint (= (f #x7412c40ec51cbc58) (ref #x7412c40ec51cbc58 )))
(constraint (= (f #xde8e3e5d701107a1) (ref #xde8e3e5d701107a1 )))
(constraint (= (f #x1e9e5e0c6112db31) (ref #x1e9e5e0c6112db31 )))
(constraint (= (f #x848ea0e1e3da4723) (ref #x848ea0e1e3da4723 )))
(constraint (= (f #xab08ac3613991219) (ref #xab08ac3613991219 )))
(constraint (= (f #xe59b3be1787e9489) (ref #xe59b3be1787e9489 )))
(constraint (= (f #xd0833761eee6ebeb) (ref #xd0833761eee6ebeb )))

(check-synth)

