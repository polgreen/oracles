(set-logic BV)
 (declare-oracle-fun ref 
PRE_85_10.sl-ref
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

(constraint (= (f #x68c20964a024e417) (ref #x68c20964a024e417 )))
(constraint (= (f #x9e686926dde2b208) (ref #x9e686926dde2b208 )))
(constraint (= (f #x29801e64a0b50d72) (ref #x29801e64a0b50d72 )))
(constraint (= (f #x93709e4694a44c47) (ref #x93709e4694a44c47 )))
(constraint (= (f #xcc21ce876043a944) (ref #xcc21ce876043a944 )))
(constraint (= (f #xd57e0a1e75e1c30d) (ref #xd57e0a1e75e1c30d )))
(constraint (= (f #x94b673e96d703309) (ref #x94b673e96d703309 )))
(constraint (= (f #xeae6e9c61cac407a) (ref #xeae6e9c61cac407a )))
(constraint (= (f #xeb77d30544028e9e) (ref #xeb77d30544028e9e )))
(constraint (= (f #xa182aea7c2e2ee27) (ref #xa182aea7c2e2ee27 )))

(check-synth)

