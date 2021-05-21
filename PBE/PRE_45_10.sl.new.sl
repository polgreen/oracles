(set-logic BV)
 (declare-oracle-fun ref 
PRE_45_10.sl-ref
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

(constraint (= (f #xed5eee4004416702) (ref #xed5eee4004416702 )))
(constraint (= (f #x59a7e2ee2a47d16e) (ref #x59a7e2ee2a47d16e )))
(constraint (= (f #xa9616e3dac571c3a) (ref #xa9616e3dac571c3a )))
(constraint (= (f #x6ac6c6e143ce3bc5) (ref #x6ac6c6e143ce3bc5 )))
(constraint (= (f #x6c6eb64dedeedce2) (ref #x6c6eb64dedeedce2 )))
(constraint (= (f #x8a25e96cd52e2ec5) (ref #x8a25e96cd52e2ec5 )))
(constraint (= (f #x31e8d0a38a4e167e) (ref #x31e8d0a38a4e167e )))
(constraint (= (f #xe4272013c59595ac) (ref #xe4272013c59595ac )))
(constraint (= (f #x38e5937596e06d47) (ref #x38e5937596e06d47 )))
(constraint (= (f #x9eeeadb04d099ea8) (ref #x9eeeadb04d099ea8 )))

(check-synth)

