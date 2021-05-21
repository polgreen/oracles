(set-logic BV)
 (declare-oracle-fun ref 
PRE_122_10.sl-ref
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

(constraint (= (f #xebe5824b78c14870) (ref #xebe5824b78c14870 )))
(constraint (= (f #xcb475e2ecc79224e) (ref #xcb475e2ecc79224e )))
(constraint (= (f #x5e4cd698331aea5e) (ref #x5e4cd698331aea5e )))
(constraint (= (f #x3207d55929cbe707) (ref #x3207d55929cbe707 )))
(constraint (= (f #xe09e922b84d0bb0c) (ref #xe09e922b84d0bb0c )))
(constraint (= (f #x7d6edeaa19d3ece3) (ref #x7d6edeaa19d3ece3 )))
(constraint (= (f #xdebe3b485a26576e) (ref #xdebe3b485a26576e )))
(constraint (= (f #x2d5d4e59ed4e33ec) (ref #x2d5d4e59ed4e33ec )))
(constraint (= (f #x1d59ee5b7e3ea36e) (ref #x1d59ee5b7e3ea36e )))
(constraint (= (f #x37e14126a2914aa0) (ref #x37e14126a2914aa0 )))

(check-synth)

