(set-logic BV)
 (declare-oracle-fun ref 
PRE_81_10.sl-ref
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

(constraint (= (f #xbca14022da2cc437) (ref #xbca14022da2cc437 )))
(constraint (= (f #x67c305a708dea7e7) (ref #x67c305a708dea7e7 )))
(constraint (= (f #x7ceae1392a837e6a) (ref #x7ceae1392a837e6a )))
(constraint (= (f #x2b0d3b8d4dc15c98) (ref #x2b0d3b8d4dc15c98 )))
(constraint (= (f #x0e9d1eb3e8b63eb4) (ref #x0e9d1eb3e8b63eb4 )))
(constraint (= (f #xe153edb0eb117ea3) (ref #xe153edb0eb117ea3 )))
(constraint (= (f #x3e18754acb303ed7) (ref #x3e18754acb303ed7 )))
(constraint (= (f #x868a659e313ee3aa) (ref #x868a659e313ee3aa )))
(constraint (= (f #x0601e9e6b9b6d6ce) (ref #x0601e9e6b9b6d6ce )))
(constraint (= (f #x051e1495672159e4) (ref #x051e1495672159e4 )))

(check-synth)

