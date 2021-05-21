(set-logic BV)
 (declare-oracle-fun ref 
PRE_2_10.sl-ref
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

(constraint (= (f #xae59e79a0d8280a5) (ref #xae59e79a0d8280a5 )))
(constraint (= (f #x36db7ec494a7d256) (ref #x36db7ec494a7d256 )))
(constraint (= (f #xa8de3de436916e42) (ref #xa8de3de436916e42 )))
(constraint (= (f #xaa179ba88a05e60c) (ref #xaa179ba88a05e60c )))
(constraint (= (f #x6a56168e613d3ab4) (ref #x6a56168e613d3ab4 )))
(constraint (= (f #x9dbd4235419a7059) (ref #x9dbd4235419a7059 )))
(constraint (= (f #xc97ecb4bb3b76a20) (ref #xc97ecb4bb3b76a20 )))
(constraint (= (f #x6ec1997b2ea663e2) (ref #x6ec1997b2ea663e2 )))
(constraint (= (f #xea43150ed8e989a8) (ref #xea43150ed8e989a8 )))
(constraint (= (f #x52d196591487ea16) (ref #x52d196591487ea16 )))

(check-synth)

