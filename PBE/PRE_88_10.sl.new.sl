(set-logic BV)
 (declare-oracle-fun ref 
PRE_88_10.sl-ref
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

(constraint (= (f #x84aae1da2c5ccd64) (ref #x84aae1da2c5ccd64 )))
(constraint (= (f #x01b04334d6a7ebd3) (ref #x01b04334d6a7ebd3 )))
(constraint (= (f #x92364ce9909c74c4) (ref #x92364ce9909c74c4 )))
(constraint (= (f #x8442bb3e6032ec93) (ref #x8442bb3e6032ec93 )))
(constraint (= (f #x65ed4301e69c6d7c) (ref #x65ed4301e69c6d7c )))
(constraint (= (f #x30aebe7c9dc565a7) (ref #x30aebe7c9dc565a7 )))
(constraint (= (f #x9eb13da1be5cc56e) (ref #x9eb13da1be5cc56e )))
(constraint (= (f #x6e0b139b9addd15a) (ref #x6e0b139b9addd15a )))
(constraint (= (f #xa478bb348039ecee) (ref #xa478bb348039ecee )))
(constraint (= (f #x24a35e5b7562e098) (ref #x24a35e5b7562e098 )))

(check-synth)

