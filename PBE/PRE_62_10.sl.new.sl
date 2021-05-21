(set-logic BV)
 (declare-oracle-fun ref 
PRE_62_10.sl-ref
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

(constraint (= (f #x994e85271c1e3a70) (ref #x994e85271c1e3a70 )))
(constraint (= (f #xe2e02781e4ce825c) (ref #xe2e02781e4ce825c )))
(constraint (= (f #x178618d7e6e38904) (ref #x178618d7e6e38904 )))
(constraint (= (f #x16a0506a1e682a8e) (ref #x16a0506a1e682a8e )))
(constraint (= (f #x478b428a199b00e4) (ref #x478b428a199b00e4 )))
(constraint (= (f #xedadaedc0c9ede14) (ref #xedadaedc0c9ede14 )))
(constraint (= (f #x58917d6bdca5dc84) (ref #x58917d6bdca5dc84 )))
(constraint (= (f #x1a1a94e73ee890c6) (ref #x1a1a94e73ee890c6 )))
(constraint (= (f #x9cbdbb86ae15e55e) (ref #x9cbdbb86ae15e55e )))
(constraint (= (f #x2c5d499e0553e944) (ref #x2c5d499e0553e944 )))

(check-synth)

