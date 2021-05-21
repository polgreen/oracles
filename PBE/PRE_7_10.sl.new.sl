(set-logic BV)
 (declare-oracle-fun ref 
PRE_7_10.sl-ref
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

(constraint (= (f #x1be88589ba201842) (ref #x1be88589ba201842 )))
(constraint (= (f #x49ea2ae53e599623) (ref #x49ea2ae53e599623 )))
(constraint (= (f #xea82cc5e6104247d) (ref #xea82cc5e6104247d )))
(constraint (= (f #x75820d31bed79b87) (ref #x75820d31bed79b87 )))
(constraint (= (f #xe682665199ee31a8) (ref #xe682665199ee31a8 )))
(constraint (= (f #x9d8d9c6595ee5ded) (ref #x9d8d9c6595ee5ded )))
(constraint (= (f #xad1b863e6b5351d4) (ref #xad1b863e6b5351d4 )))
(constraint (= (f #xa7465c5c466de212) (ref #xa7465c5c466de212 )))
(constraint (= (f #xc287ecb0e2e8eb85) (ref #xc287ecb0e2e8eb85 )))
(constraint (= (f #xac30404490729c8c) (ref #xac30404490729c8c )))

(check-synth)

