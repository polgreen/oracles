(set-logic BV)
 (declare-oracle-fun ref 
PRE_150_10.sl-ref
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

(constraint (= (f #xea72d9508ddee7b7) (ref #xea72d9508ddee7b7 )))
(constraint (= (f #x1423b7e1e38305b1) (ref #x1423b7e1e38305b1 )))
(constraint (= (f #x397be52b796e2456) (ref #x397be52b796e2456 )))
(constraint (= (f #x63c19e9d309eeee4) (ref #x63c19e9d309eeee4 )))
(constraint (= (f #xa49e9e74a2470610) (ref #xa49e9e74a2470610 )))
(constraint (= (f #xe62213447e7982de) (ref #xe62213447e7982de )))
(constraint (= (f #xe78e89273859600a) (ref #xe78e89273859600a )))
(constraint (= (f #x42cdeee85e2b0730) (ref #x42cdeee85e2b0730 )))
(constraint (= (f #x3338c1dbd2994d63) (ref #x3338c1dbd2994d63 )))
(constraint (= (f #x11984da0daeaee43) (ref #x11984da0daeaee43 )))

(check-synth)

