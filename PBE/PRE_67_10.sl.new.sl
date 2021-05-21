(set-logic BV)
 (declare-oracle-fun ref 
PRE_67_10.sl-ref
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

(constraint (= (f #x2b05bd2e856b2961) (ref #x2b05bd2e856b2961 )))
(constraint (= (f #x0bae48b4ebedaa3a) (ref #x0bae48b4ebedaa3a )))
(constraint (= (f #xe37be040e010403e) (ref #xe37be040e010403e )))
(constraint (= (f #x30317b894e415a15) (ref #x30317b894e415a15 )))
(constraint (= (f #xeab36cc765ab9e4d) (ref #xeab36cc765ab9e4d )))
(constraint (= (f #xa058eee8103cc077) (ref #xa058eee8103cc077 )))
(constraint (= (f #x1be4c90a3904457b) (ref #x1be4c90a3904457b )))
(constraint (= (f #x71d9eb4ee5010700) (ref #x71d9eb4ee5010700 )))
(constraint (= (f #x65ec20d363989eed) (ref #x65ec20d363989eed )))
(constraint (= (f #xa0856d714ee6608a) (ref #xa0856d714ee6608a )))

(check-synth)

