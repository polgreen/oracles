(set-logic BV)
 (declare-oracle-fun ref 
PRE_149_10.sl-ref
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

(constraint (= (f #xdeb381c72cbc89c2) (ref #xdeb381c72cbc89c2 )))
(constraint (= (f #x1daae07b7ad8ce3c) (ref #x1daae07b7ad8ce3c )))
(constraint (= (f #x3808341e47ede38e) (ref #x3808341e47ede38e )))
(constraint (= (f #x218949588221e8c5) (ref #x218949588221e8c5 )))
(constraint (= (f #x5c472b66076ebde3) (ref #x5c472b66076ebde3 )))
(constraint (= (f #x2395e7e10a51a8d3) (ref #x2395e7e10a51a8d3 )))
(constraint (= (f #x5b4e6bb40dee30ed) (ref #x5b4e6bb40dee30ed )))
(constraint (= (f #x88ede962bb9583b4) (ref #x88ede962bb9583b4 )))
(constraint (= (f #xeb343ee1e896e112) (ref #xeb343ee1e896e112 )))
(constraint (= (f #x2e60e3eee22cd9e9) (ref #x2e60e3eee22cd9e9 )))

(check-synth)

