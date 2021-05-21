(set-logic BV)
 (declare-oracle-fun ref 
PRE_99_10.sl-ref
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

(constraint (= (f #xec54b1528e483750) (ref #xec54b1528e483750 )))
(constraint (= (f #x83217ee5c2e5aa1e) (ref #x83217ee5c2e5aa1e )))
(constraint (= (f #x0e64cb96c38e7e0e) (ref #x0e64cb96c38e7e0e )))
(constraint (= (f #x1835eae3ddec0457) (ref #x1835eae3ddec0457 )))
(constraint (= (f #x58774c55a08d6c70) (ref #x58774c55a08d6c70 )))
(constraint (= (f #xa576265225941ad6) (ref #xa576265225941ad6 )))
(constraint (= (f #x86eb0658d7e059ee) (ref #x86eb0658d7e059ee )))
(constraint (= (f #x30171ca5a9610ec9) (ref #x30171ca5a9610ec9 )))
(constraint (= (f #x2aee8cc9a721554b) (ref #x2aee8cc9a721554b )))
(constraint (= (f #x3414db69de676130) (ref #x3414db69de676130 )))

(check-synth)

