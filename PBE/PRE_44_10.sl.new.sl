(set-logic BV)
 (declare-oracle-fun ref 
PRE_44_10.sl-ref
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

(constraint (= (f #xe8e48617023bc847) (ref #xe8e48617023bc847 )))
(constraint (= (f #xa70c0a2bc6d4ed4a) (ref #xa70c0a2bc6d4ed4a )))
(constraint (= (f #x0ed05860d6e1e703) (ref #x0ed05860d6e1e703 )))
(constraint (= (f #xa5b01a942a9bcad6) (ref #xa5b01a942a9bcad6 )))
(constraint (= (f #xe251dca9acc2d7eb) (ref #xe251dca9acc2d7eb )))
(constraint (= (f #xb4e255bbe0332348) (ref #xb4e255bbe0332348 )))
(constraint (= (f #x6e38c450a5a725ba) (ref #x6e38c450a5a725ba )))
(constraint (= (f #xb383ea0e9eeed2e7) (ref #xb383ea0e9eeed2e7 )))
(constraint (= (f #xec36a2844d2e886e) (ref #xec36a2844d2e886e )))
(constraint (= (f #x85b2caae9ee05cb6) (ref #x85b2caae9ee05cb6 )))

(check-synth)

