(set-logic BV)
 (declare-oracle-fun ref 
PRE_8_10.sl-ref
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

(constraint (= (f #x2963d0b107bb27a8) (ref #x2963d0b107bb27a8 )))
(constraint (= (f #xe46e1ea225c311ba) (ref #xe46e1ea225c311ba )))
(constraint (= (f #x068c92dda82cade4) (ref #x068c92dda82cade4 )))
(constraint (= (f #x2461aa8e4eb06e58) (ref #x2461aa8e4eb06e58 )))
(constraint (= (f #xc7cab4c50b4c26a3) (ref #xc7cab4c50b4c26a3 )))
(constraint (= (f #x2cc767751283b208) (ref #x2cc767751283b208 )))
(constraint (= (f #x6b044d2c4a769e58) (ref #x6b044d2c4a769e58 )))
(constraint (= (f #xa4de59beeb52d8e8) (ref #xa4de59beeb52d8e8 )))
(constraint (= (f #x1ee075b4a42c2509) (ref #x1ee075b4a42c2509 )))
(constraint (= (f #xde1d5e85ec587acc) (ref #xde1d5e85ec587acc )))

(check-synth)

