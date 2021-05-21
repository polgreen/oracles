(set-logic BV)
 (declare-oracle-fun ref 
PRE_42_10.sl-ref
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

(constraint (= (f #x6bd04dae088ba1e6) (ref #x6bd04dae088ba1e6 )))
(constraint (= (f #xa9adcee87a73e7b1) (ref #xa9adcee87a73e7b1 )))
(constraint (= (f #x633ebe378109b91a) (ref #x633ebe378109b91a )))
(constraint (= (f #x0b7145d321b080dd) (ref #x0b7145d321b080dd )))
(constraint (= (f #x90d350011cd6e593) (ref #x90d350011cd6e593 )))
(constraint (= (f #x21d87bcbd012d601) (ref #x21d87bcbd012d601 )))
(constraint (= (f #xd85e0b2be9e5b4e8) (ref #xd85e0b2be9e5b4e8 )))
(constraint (= (f #xe5a02325d2043e9b) (ref #xe5a02325d2043e9b )))
(constraint (= (f #x8c4eeee7d278250a) (ref #x8c4eeee7d278250a )))
(constraint (= (f #x3ce5ae12e4d68015) (ref #x3ce5ae12e4d68015 )))

(check-synth)

