(set-logic BV)
 (declare-oracle-fun ref 
PRE_16_10.sl-ref
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

(constraint (= (f #xb3c79edee2095aed) (ref #xb3c79edee2095aed )))
(constraint (= (f #x76ed5eee31143254) (ref #x76ed5eee31143254 )))
(constraint (= (f #x21a53457d7654c7e) (ref #x21a53457d7654c7e )))
(constraint (= (f #x535aaae1c56215c5) (ref #x535aaae1c56215c5 )))
(constraint (= (f #x3d6b06edc5e5deb0) (ref #x3d6b06edc5e5deb0 )))
(constraint (= (f #xee385e33e0e31233) (ref #xee385e33e0e31233 )))
(constraint (= (f #xe11ba934ae84d2ad) (ref #xe11ba934ae84d2ad )))
(constraint (= (f #x3527c488dee7d6a1) (ref #x3527c488dee7d6a1 )))
(constraint (= (f #xe8e1be4ee47d47e5) (ref #xe8e1be4ee47d47e5 )))
(constraint (= (f #x5684914527a22c91) (ref #x5684914527a22c91 )))

(check-synth)

