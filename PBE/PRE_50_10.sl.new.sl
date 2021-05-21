(set-logic BV)
 (declare-oracle-fun ref 
PRE_50_10.sl-ref
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

(constraint (= (f #xbc9b36c3d3a6d7ae) (ref #xbc9b36c3d3a6d7ae )))
(constraint (= (f #x618e7d2b3028b505) (ref #x618e7d2b3028b505 )))
(constraint (= (f #xb2b31021e72b4583) (ref #xb2b31021e72b4583 )))
(constraint (= (f #x903339ca8258b7e1) (ref #x903339ca8258b7e1 )))
(constraint (= (f #x0d72a11da419b8ba) (ref #x0d72a11da419b8ba )))
(constraint (= (f #x2aa39ec9b16d03ed) (ref #x2aa39ec9b16d03ed )))
(constraint (= (f #xa5eed08e88aa35e9) (ref #xa5eed08e88aa35e9 )))
(constraint (= (f #xa114ed4659e71556) (ref #xa114ed4659e71556 )))
(constraint (= (f #x115e3b5bccb66c11) (ref #x115e3b5bccb66c11 )))
(constraint (= (f #xd0c872b4060c0d8a) (ref #xd0c872b4060c0d8a )))

(check-synth)

