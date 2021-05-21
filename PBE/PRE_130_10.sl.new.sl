(set-logic BV)
 (declare-oracle-fun ref 
PRE_130_10.sl-ref
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

(constraint (= (f #x64696e76c5588442) (ref #x64696e76c5588442 )))
(constraint (= (f #x0bc43a44e7d4533c) (ref #x0bc43a44e7d4533c )))
(constraint (= (f #x29e61e9e6d51300a) (ref #x29e61e9e6d51300a )))
(constraint (= (f #xaa3e30ee79d2945a) (ref #xaa3e30ee79d2945a )))
(constraint (= (f #xc27b0bd99b52ba3c) (ref #xc27b0bd99b52ba3c )))
(constraint (= (f #x8cdd161e33b71ee4) (ref #x8cdd161e33b71ee4 )))
(constraint (= (f #x114cc9a56332b3dd) (ref #x114cc9a56332b3dd )))
(constraint (= (f #xc23dee6ce4d1ee12) (ref #xc23dee6ce4d1ee12 )))
(constraint (= (f #x416ec37e51d9a5ae) (ref #x416ec37e51d9a5ae )))
(constraint (= (f #xac5a4153684d624b) (ref #xac5a4153684d624b )))

(check-synth)

