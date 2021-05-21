(set-logic BV)
 (declare-oracle-fun ref 
PRE_20_10.sl-ref
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

(constraint (= (f #x6ba85dde49446e3e) (ref #x6ba85dde49446e3e )))
(constraint (= (f #xd14a9567e1e3e174) (ref #xd14a9567e1e3e174 )))
(constraint (= (f #x73eec18bc935e853) (ref #x73eec18bc935e853 )))
(constraint (= (f #x7e1268367456aa6d) (ref #x7e1268367456aa6d )))
(constraint (= (f #xa50b8b60ce5de125) (ref #xa50b8b60ce5de125 )))
(constraint (= (f #x00d377cc616a4a8b) (ref #x00d377cc616a4a8b )))
(constraint (= (f #xeecbec39e14c9464) (ref #xeecbec39e14c9464 )))
(constraint (= (f #x131376035b872e20) (ref #x131376035b872e20 )))
(constraint (= (f #x9503080bc4444573) (ref #x9503080bc4444573 )))
(constraint (= (f #x76222ae89e4c5153) (ref #x76222ae89e4c5153 )))

(check-synth)

