(set-logic BV)
 (declare-oracle-fun ref 
PRE_13_10.sl-ref
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

(constraint (= (f #x15cae98ece00d80b) (ref #x15cae98ece00d80b )))
(constraint (= (f #x4cc21d35a487ca9d) (ref #x4cc21d35a487ca9d )))
(constraint (= (f #x61e568e2070e28eb) (ref #x61e568e2070e28eb )))
(constraint (= (f #xdd68906be9ab8c64) (ref #xdd68906be9ab8c64 )))
(constraint (= (f #x3ebd9c8bc32e19e3) (ref #x3ebd9c8bc32e19e3 )))
(constraint (= (f #x6ea98024d01c0a3a) (ref #x6ea98024d01c0a3a )))
(constraint (= (f #x32703dc8daee7209) (ref #x32703dc8daee7209 )))
(constraint (= (f #xc499278de4aacb16) (ref #xc499278de4aacb16 )))
(constraint (= (f #xe663b6bb29ec1e22) (ref #xe663b6bb29ec1e22 )))
(constraint (= (f #x68a35dc1e6e782d1) (ref #x68a35dc1e6e782d1 )))

(check-synth)

