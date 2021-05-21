(set-logic BV)
 (declare-oracle-fun ref 
PRE_110_10.sl-ref
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

(constraint (= (f #x0e6b171e43c3eaa2) (ref #x0e6b171e43c3eaa2 )))
(constraint (= (f #x0c304d27a8177561) (ref #x0c304d27a8177561 )))
(constraint (= (f #xee6c6e9e9da6d272) (ref #xee6c6e9e9da6d272 )))
(constraint (= (f #x92e6dd6ae5477983) (ref #x92e6dd6ae5477983 )))
(constraint (= (f #x91c26d7214762523) (ref #x91c26d7214762523 )))
(constraint (= (f #x5b1c9bb9835eee34) (ref #x5b1c9bb9835eee34 )))
(constraint (= (f #x5a9a0e1850ee9ea8) (ref #x5a9a0e1850ee9ea8 )))
(constraint (= (f #x661ee53c4698b7be) (ref #x661ee53c4698b7be )))
(constraint (= (f #xbe79cd6be8b0a19e) (ref #xbe79cd6be8b0a19e )))
(constraint (= (f #x3b35d14cd6bea4a1) (ref #x3b35d14cd6bea4a1 )))

(check-synth)

