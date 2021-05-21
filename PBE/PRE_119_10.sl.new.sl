(set-logic BV)
 (declare-oracle-fun ref 
PRE_119_10.sl-ref
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

(constraint (= (f #xaeb7c6a4cce5da7d) (ref #xaeb7c6a4cce5da7d )))
(constraint (= (f #xa58be9d4ac5e9755) (ref #xa58be9d4ac5e9755 )))
(constraint (= (f #x8072c4019611c34e) (ref #x8072c4019611c34e )))
(constraint (= (f #xbde1560090759e33) (ref #xbde1560090759e33 )))
(constraint (= (f #x1c3de1da08aaa0cc) (ref #x1c3de1da08aaa0cc )))
(constraint (= (f #x900791e23e66e404) (ref #x900791e23e66e404 )))
(constraint (= (f #xb320361a529cebb3) (ref #xb320361a529cebb3 )))
(constraint (= (f #xbb3185ce299caac4) (ref #xbb3185ce299caac4 )))
(constraint (= (f #xd5eaccdcc1e076e0) (ref #xd5eaccdcc1e076e0 )))
(constraint (= (f #x6edbe9b1c8bac512) (ref #x6edbe9b1c8bac512 )))

(check-synth)

