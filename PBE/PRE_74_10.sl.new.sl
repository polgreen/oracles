(set-logic BV)
 (declare-oracle-fun ref 
PRE_74_10.sl-ref
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

(constraint (= (f #x09b006eeb2e88a19) (ref #x09b006eeb2e88a19 )))
(constraint (= (f #x157ddd888346b7d7) (ref #x157ddd888346b7d7 )))
(constraint (= (f #xdea83587e06667e6) (ref #xdea83587e06667e6 )))
(constraint (= (f #xee090693a3d29a1a) (ref #xee090693a3d29a1a )))
(constraint (= (f #x2458e49e31e34a65) (ref #x2458e49e31e34a65 )))
(constraint (= (f #x02ac3ce11e610b3b) (ref #x02ac3ce11e610b3b )))
(constraint (= (f #xe0ca6a8281e5b0ba) (ref #xe0ca6a8281e5b0ba )))
(constraint (= (f #xa45cee2ea020157d) (ref #xa45cee2ea020157d )))
(constraint (= (f #x1a7d765be85d44c0) (ref #x1a7d765be85d44c0 )))
(constraint (= (f #xa1ae39945e9ee100) (ref #xa1ae39945e9ee100 )))

(check-synth)

