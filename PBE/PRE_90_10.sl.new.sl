(set-logic BV)
 (declare-oracle-fun ref 
PRE_90_10.sl-ref
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

(constraint (= (f #xd5752ee87720d71e) (ref #xd5752ee87720d71e )))
(constraint (= (f #xe670aad84eee5ed9) (ref #xe670aad84eee5ed9 )))
(constraint (= (f #xc20133e172eabe7c) (ref #xc20133e172eabe7c )))
(constraint (= (f #x57b6e71e0e176250) (ref #x57b6e71e0e176250 )))
(constraint (= (f #xc39eda372131903c) (ref #xc39eda372131903c )))
(constraint (= (f #x4d0e212b30c5c1ab) (ref #x4d0e212b30c5c1ab )))
(constraint (= (f #xe336c0825b34e2b6) (ref #xe336c0825b34e2b6 )))
(constraint (= (f #x092697eb5b6b61d5) (ref #x092697eb5b6b61d5 )))
(constraint (= (f #x03262104ebc638b6) (ref #x03262104ebc638b6 )))
(constraint (= (f #x8e8e7ac6504aea2c) (ref #x8e8e7ac6504aea2c )))

(check-synth)

