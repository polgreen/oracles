(set-logic BV)
 (declare-oracle-fun ref 
PRE_94_10.sl-ref
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

(constraint (= (f #x8186d3e081baae46) (ref #x8186d3e081baae46 )))
(constraint (= (f #xa6c1dcd5ae68008b) (ref #xa6c1dcd5ae68008b )))
(constraint (= (f #x56e2b6c5006a408d) (ref #x56e2b6c5006a408d )))
(constraint (= (f #x4ec50ede7e8a101d) (ref #x4ec50ede7e8a101d )))
(constraint (= (f #x4141051d040da8b3) (ref #x4141051d040da8b3 )))
(constraint (= (f #x9d150d19c10b6596) (ref #x9d150d19c10b6596 )))
(constraint (= (f #xe8d804ca63cd9775) (ref #xe8d804ca63cd9775 )))
(constraint (= (f #xe08d298dd9ee4224) (ref #xe08d298dd9ee4224 )))
(constraint (= (f #x7ab5586b9ad9573e) (ref #x7ab5586b9ad9573e )))
(constraint (= (f #x6ea3edae14546baa) (ref #x6ea3edae14546baa )))

(check-synth)

