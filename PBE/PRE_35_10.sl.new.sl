(set-logic BV)
 (declare-oracle-fun ref 
PRE_35_10.sl-ref
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

(constraint (= (f #xdc07568507beda16) (ref #xdc07568507beda16 )))
(constraint (= (f #x19481d0200571ab7) (ref #x19481d0200571ab7 )))
(constraint (= (f #xdce951283ae95ed9) (ref #xdce951283ae95ed9 )))
(constraint (= (f #xa61dbe03dab5b6d2) (ref #xa61dbe03dab5b6d2 )))
(constraint (= (f #xbad6165b60a89e61) (ref #xbad6165b60a89e61 )))
(constraint (= (f #x180c94216ce407a8) (ref #x180c94216ce407a8 )))
(constraint (= (f #xcca3e151b99be015) (ref #xcca3e151b99be015 )))
(constraint (= (f #x2232cac3248c6499) (ref #x2232cac3248c6499 )))
(constraint (= (f #xe37bb395c6a89120) (ref #xe37bb395c6a89120 )))
(constraint (= (f #x8ac6c70581e4deeb) (ref #x8ac6c70581e4deeb )))

(check-synth)

