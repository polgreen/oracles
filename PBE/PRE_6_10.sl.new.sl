(set-logic BV)
 (declare-oracle-fun ref 
PRE_6_10.sl-ref
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

(constraint (= (f #xb0b2cba4276ad9a6) (ref #xb0b2cba4276ad9a6 )))
(constraint (= (f #xab3a93b9bde29c3c) (ref #xab3a93b9bde29c3c )))
(constraint (= (f #x80e2462784378141) (ref #x80e2462784378141 )))
(constraint (= (f #x8848bb7e1cc40e4e) (ref #x8848bb7e1cc40e4e )))
(constraint (= (f #x1d753032cce42412) (ref #x1d753032cce42412 )))
(constraint (= (f #x23b59452ad91506b) (ref #x23b59452ad91506b )))
(constraint (= (f #x226e09a45c71e776) (ref #x226e09a45c71e776 )))
(constraint (= (f #x38448ad67016cc92) (ref #x38448ad67016cc92 )))
(constraint (= (f #x2cb3e1e79c6e96d5) (ref #x2cb3e1e79c6e96d5 )))
(constraint (= (f #xb69c7ce8e63dec24) (ref #xb69c7ce8e63dec24 )))

(check-synth)

