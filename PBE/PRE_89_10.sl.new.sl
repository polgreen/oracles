(set-logic BV)
 (declare-oracle-fun ref 
PRE_89_10.sl-ref
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

(constraint (= (f #x5d1a1ba411b5e373) (ref #x5d1a1ba411b5e373 )))
(constraint (= (f #xa67ee6e7e3761380) (ref #xa67ee6e7e3761380 )))
(constraint (= (f #x70144724b1edc80e) (ref #x70144724b1edc80e )))
(constraint (= (f #x48ea0967ae1181da) (ref #x48ea0967ae1181da )))
(constraint (= (f #x7603ee9e575097aa) (ref #x7603ee9e575097aa )))
(constraint (= (f #x964ee3271e075e3e) (ref #x964ee3271e075e3e )))
(constraint (= (f #xd7ec5702beea39ca) (ref #xd7ec5702beea39ca )))
(constraint (= (f #x071b4c9b73e617a1) (ref #x071b4c9b73e617a1 )))
(constraint (= (f #x860b79c184d6c7e6) (ref #x860b79c184d6c7e6 )))
(constraint (= (f #xd8cb21de63aa1a38) (ref #xd8cb21de63aa1a38 )))

(check-synth)

