(set-logic BV)
 (declare-oracle-fun ref 
PRE_127_10.sl-ref
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

(constraint (= (f #xe2aad860ccbeb9ec) (ref #xe2aad860ccbeb9ec )))
(constraint (= (f #xe85a01a9ee3b3b2b) (ref #xe85a01a9ee3b3b2b )))
(constraint (= (f #x1c3404d442e676c8) (ref #x1c3404d442e676c8 )))
(constraint (= (f #x16820d5bb4a612b6) (ref #x16820d5bb4a612b6 )))
(constraint (= (f #x25987358e5a5c622) (ref #x25987358e5a5c622 )))
(constraint (= (f #xeb8ede4b3deb2046) (ref #xeb8ede4b3deb2046 )))
(constraint (= (f #x1292b5490e1ccb77) (ref #x1292b5490e1ccb77 )))
(constraint (= (f #xe5d0e653830b8855) (ref #xe5d0e653830b8855 )))
(constraint (= (f #x8be246981e2267a6) (ref #x8be246981e2267a6 )))
(constraint (= (f #x76a70d5360aa01b5) (ref #x76a70d5360aa01b5 )))

(check-synth)

