(set-logic BV)
 (declare-oracle-fun ref 
PRE_1_10.sl-ref
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

(constraint (= (f #x6bedbd49e6e3b640) (ref #x6bedbd49e6e3b640 )))
(constraint (= (f #x3433b756b98b2a5b) (ref #x3433b756b98b2a5b )))
(constraint (= (f #x3166448e9564eb01) (ref #x3166448e9564eb01 )))
(constraint (= (f #x53c94279ed9bbed0) (ref #x53c94279ed9bbed0 )))
(constraint (= (f #x7c9090944b2daab1) (ref #x7c9090944b2daab1 )))
(constraint (= (f #x14e7a33ecc3bc6d6) (ref #x14e7a33ecc3bc6d6 )))
(constraint (= (f #xead60a47dd0ee4ba) (ref #xead60a47dd0ee4ba )))
(constraint (= (f #x37cc81b866519cc3) (ref #x37cc81b866519cc3 )))
(constraint (= (f #x1c5e12c8800d2c9e) (ref #x1c5e12c8800d2c9e )))
(constraint (= (f #x8ea3a7177232c706) (ref #x8ea3a7177232c706 )))

(check-synth)

