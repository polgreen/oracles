(set-logic BV)
 (declare-oracle-fun ref 
PRE_91_10.sl-ref
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

(constraint (= (f #x479eba22051d0a70) (ref #x479eba22051d0a70 )))
(constraint (= (f #x306bde7a42803084) (ref #x306bde7a42803084 )))
(constraint (= (f #xc06e62b54de98bd3) (ref #xc06e62b54de98bd3 )))
(constraint (= (f #xd5608e6e64a0eaae) (ref #xd5608e6e64a0eaae )))
(constraint (= (f #xad153b354ecd58e3) (ref #xad153b354ecd58e3 )))
(constraint (= (f #x33902172a1ba5220) (ref #x33902172a1ba5220 )))
(constraint (= (f #xd6ca529c854a29eb) (ref #xd6ca529c854a29eb )))
(constraint (= (f #x3bc64ea2c25eda4b) (ref #x3bc64ea2c25eda4b )))
(constraint (= (f #x7d677dcbd4179e54) (ref #x7d677dcbd4179e54 )))
(constraint (= (f #x176dc21ce004014a) (ref #x176dc21ce004014a )))

(check-synth)

