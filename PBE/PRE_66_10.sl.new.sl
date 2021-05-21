(set-logic BV)
 (declare-oracle-fun ref 
PRE_66_10.sl-ref
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

(constraint (= (f #x3d73ab5edad76a9c) (ref #x3d73ab5edad76a9c )))
(constraint (= (f #x9a378cd3ae7cadd4) (ref #x9a378cd3ae7cadd4 )))
(constraint (= (f #x1bb7cc2eec047cdd) (ref #x1bb7cc2eec047cdd )))
(constraint (= (f #xd1575300c8c778e2) (ref #xd1575300c8c778e2 )))
(constraint (= (f #x01d588651c756949) (ref #x01d588651c756949 )))
(constraint (= (f #xd973d0d6e3dccb72) (ref #xd973d0d6e3dccb72 )))
(constraint (= (f #xc1356dadeee4dd46) (ref #xc1356dadeee4dd46 )))
(constraint (= (f #x04952d5eab9c6ba1) (ref #x04952d5eab9c6ba1 )))
(constraint (= (f #x8a56a4e7e3d52061) (ref #x8a56a4e7e3d52061 )))
(constraint (= (f #x5b2ee7b77d750de9) (ref #x5b2ee7b77d750de9 )))

(check-synth)

