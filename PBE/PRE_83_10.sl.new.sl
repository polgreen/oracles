(set-logic BV)
 (declare-oracle-fun ref 
PRE_83_10.sl-ref
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

(constraint (= (f #xae8222e8155d4a81) (ref #xae8222e8155d4a81 )))
(constraint (= (f #xe610de43d0868381) (ref #xe610de43d0868381 )))
(constraint (= (f #x1a1e5274e339bb63) (ref #x1a1e5274e339bb63 )))
(constraint (= (f #x1a4351575b97eba4) (ref #x1a4351575b97eba4 )))
(constraint (= (f #x1e267c44cc3beaae) (ref #x1e267c44cc3beaae )))
(constraint (= (f #x403ba2870033d967) (ref #x403ba2870033d967 )))
(constraint (= (f #xe57587e9652017b6) (ref #xe57587e9652017b6 )))
(constraint (= (f #x95c600e75ac36e1d) (ref #x95c600e75ac36e1d )))
(constraint (= (f #x86db6296a33eebb7) (ref #x86db6296a33eebb7 )))
(constraint (= (f #x7a761e4b7ad2269c) (ref #x7a761e4b7ad2269c )))

(check-synth)

