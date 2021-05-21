(set-logic BV)
 (declare-oracle-fun ref 
PRE_109_10.sl-ref
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

(constraint (= (f #xa6e766de7cb220c6) (ref #xa6e766de7cb220c6 )))
(constraint (= (f #x8e86e818b0a38a5e) (ref #x8e86e818b0a38a5e )))
(constraint (= (f #xa275cb8493415895) (ref #xa275cb8493415895 )))
(constraint (= (f #x7a27474d4ca949e8) (ref #x7a27474d4ca949e8 )))
(constraint (= (f #x6413c8b6291e0197) (ref #x6413c8b6291e0197 )))
(constraint (= (f #x0bd5784596e4b383) (ref #x0bd5784596e4b383 )))
(constraint (= (f #xae526429d1eb7013) (ref #xae526429d1eb7013 )))
(constraint (= (f #xadd1324d4608eb56) (ref #xadd1324d4608eb56 )))
(constraint (= (f #x0908731a830c3db6) (ref #x0908731a830c3db6 )))
(constraint (= (f #xe94b861e34b7ae1a) (ref #xe94b861e34b7ae1a )))

(check-synth)

