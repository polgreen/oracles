(set-logic BV)
 (declare-oracle-fun ref 
PRE_24_10.sl-ref
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

(constraint (= (f #xa043199d86d9bdca) (ref #xa043199d86d9bdca )))
(constraint (= (f #xd0157656939e52c5) (ref #xd0157656939e52c5 )))
(constraint (= (f #x4b12ae416b7aab37) (ref #x4b12ae416b7aab37 )))
(constraint (= (f #x6edc862e43e27be5) (ref #x6edc862e43e27be5 )))
(constraint (= (f #xeee46e8ee3ebb086) (ref #xeee46e8ee3ebb086 )))
(constraint (= (f #x1352b8171e6e0b23) (ref #x1352b8171e6e0b23 )))
(constraint (= (f #x753a24cda205c03b) (ref #x753a24cda205c03b )))
(constraint (= (f #x773d5d96782e178a) (ref #x773d5d96782e178a )))
(constraint (= (f #xa91e181ed0922d7a) (ref #xa91e181ed0922d7a )))
(constraint (= (f #x3d46d2228186d5da) (ref #x3d46d2228186d5da )))

(check-synth)

