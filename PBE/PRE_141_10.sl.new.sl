(set-logic BV)
 (declare-oracle-fun ref 
PRE_141_10.sl-ref
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

(constraint (= (f #xee2c0ead82c20b4c) (ref #xee2c0ead82c20b4c )))
(constraint (= (f #xd7e0057ceb8db5ed) (ref #xd7e0057ceb8db5ed )))
(constraint (= (f #x09781e1bb68872d1) (ref #x09781e1bb68872d1 )))
(constraint (= (f #x8e83c28b0535ba0d) (ref #x8e83c28b0535ba0d )))
(constraint (= (f #xeecdc0e757031053) (ref #xeecdc0e757031053 )))
(constraint (= (f #xe7d0e3e25dd39e04) (ref #xe7d0e3e25dd39e04 )))
(constraint (= (f #x9a3ea60e26e6660e) (ref #x9a3ea60e26e6660e )))
(constraint (= (f #x910d0c6b73e90e93) (ref #x910d0c6b73e90e93 )))
(constraint (= (f #x6c72b60a078b4530) (ref #x6c72b60a078b4530 )))
(constraint (= (f #x3c6489c1a0e9e75e) (ref #x3c6489c1a0e9e75e )))

(check-synth)

