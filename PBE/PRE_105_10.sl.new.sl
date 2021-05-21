(set-logic BV)
 (declare-oracle-fun ref 
PRE_105_10.sl-ref
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

(constraint (= (f #x306c7a7c13802c06) (ref #x306c7a7c13802c06 )))
(constraint (= (f #x4bc3915643c40629) (ref #x4bc3915643c40629 )))
(constraint (= (f #x53ed3096d41c57b4) (ref #x53ed3096d41c57b4 )))
(constraint (= (f #x81a38de92e3badec) (ref #x81a38de92e3badec )))
(constraint (= (f #xa929321a893e34eb) (ref #xa929321a893e34eb )))
(constraint (= (f #xae0e47401697eb6b) (ref #xae0e47401697eb6b )))
(constraint (= (f #xba6e53bb706d9eb5) (ref #xba6e53bb706d9eb5 )))
(constraint (= (f #x98e661bcb965c620) (ref #x98e661bcb965c620 )))
(constraint (= (f #x2abe37287eb8067e) (ref #x2abe37287eb8067e )))
(constraint (= (f #xebb7071ea9950202) (ref #xebb7071ea9950202 )))

(check-synth)

