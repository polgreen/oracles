(set-logic BV)
 (declare-oracle-fun ref 
PRE_47_10.sl-ref
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

(constraint (= (f #x2ace6154c9d65db4) (ref #x2ace6154c9d65db4 )))
(constraint (= (f #xddc2726b7eabe005) (ref #xddc2726b7eabe005 )))
(constraint (= (f #x8a4b66e6de3de165) (ref #x8a4b66e6de3de165 )))
(constraint (= (f #x5e61087b2954178d) (ref #x5e61087b2954178d )))
(constraint (= (f #x3e9520ed2bd2b515) (ref #x3e9520ed2bd2b515 )))
(constraint (= (f #x678d3e83d88b258e) (ref #x678d3e83d88b258e )))
(constraint (= (f #x494964c29dec25a9) (ref #x494964c29dec25a9 )))
(constraint (= (f #xa340aede7d209a66) (ref #xa340aede7d209a66 )))
(constraint (= (f #x5a611e3e2e855bed) (ref #x5a611e3e2e855bed )))
(constraint (= (f #x17266a760c37e395) (ref #x17266a760c37e395 )))

(check-synth)

