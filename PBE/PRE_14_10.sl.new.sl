(set-logic BV)
 (declare-oracle-fun ref 
PRE_14_10.sl-ref
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

(constraint (= (f #xa2793ba0447489ee) (ref #xa2793ba0447489ee )))
(constraint (= (f #x2190c3de12635b0c) (ref #x2190c3de12635b0c )))
(constraint (= (f #xe5ebea8de65bb421) (ref #xe5ebea8de65bb421 )))
(constraint (= (f #x650402c24c0a5b17) (ref #x650402c24c0a5b17 )))
(constraint (= (f #x8ed342e62a50b171) (ref #x8ed342e62a50b171 )))
(constraint (= (f #x8b2066cac5a480e5) (ref #x8b2066cac5a480e5 )))
(constraint (= (f #x8647e54b7730c9ae) (ref #x8647e54b7730c9ae )))
(constraint (= (f #x2bde841154e15b2b) (ref #x2bde841154e15b2b )))
(constraint (= (f #x203b9524ea07b1ce) (ref #x203b9524ea07b1ce )))
(constraint (= (f #xe381a307106b9087) (ref #xe381a307106b9087 )))

(check-synth)

