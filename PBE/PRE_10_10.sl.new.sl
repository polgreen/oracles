(set-logic BV)
 (declare-oracle-fun ref 
PRE_10_10.sl-ref
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

(constraint (= (f #xae064e188be601e0) (ref #xae064e188be601e0 )))
(constraint (= (f #xca7ae372909c2906) (ref #xca7ae372909c2906 )))
(constraint (= (f #x6833e2a6d59ebd8c) (ref #x6833e2a6d59ebd8c )))
(constraint (= (f #xe752d90d263734eb) (ref #xe752d90d263734eb )))
(constraint (= (f #x1564469c9e2d4247) (ref #x1564469c9e2d4247 )))
(constraint (= (f #xa923ca523156a7ce) (ref #xa923ca523156a7ce )))
(constraint (= (f #x9ec50b4d3cde96be) (ref #x9ec50b4d3cde96be )))
(constraint (= (f #x1876d06e3833abce) (ref #x1876d06e3833abce )))
(constraint (= (f #x03ee74ec16dab097) (ref #x03ee74ec16dab097 )))
(constraint (= (f #x626335a2956e1c8e) (ref #x626335a2956e1c8e )))

(check-synth)

