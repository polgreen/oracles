(set-logic BV)
 (declare-oracle-fun ref 
PRE_59_10.sl-ref
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

(constraint (= (f #x1e17c3635ee6c154) (ref #x1e17c3635ee6c154 )))
(constraint (= (f #xa061e2cb5dbe8b77) (ref #xa061e2cb5dbe8b77 )))
(constraint (= (f #xc3deb3da46cacc52) (ref #xc3deb3da46cacc52 )))
(constraint (= (f #xe8439c6081092bc1) (ref #xe8439c6081092bc1 )))
(constraint (= (f #x17cb8bbeded26d7c) (ref #x17cb8bbeded26d7c )))
(constraint (= (f #xe23ee04ea72e25d5) (ref #xe23ee04ea72e25d5 )))
(constraint (= (f #x09c91033ae2e3e13) (ref #x09c91033ae2e3e13 )))
(constraint (= (f #xcae8c579b244015d) (ref #xcae8c579b244015d )))
(constraint (= (f #x637cb7a85ce28e74) (ref #x637cb7a85ce28e74 )))
(constraint (= (f #x38c75c1a6d999ce1) (ref #x38c75c1a6d999ce1 )))

(check-synth)

