(set-logic BV)
 (declare-oracle-fun ref 
PRE_148_10.sl-ref
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

(constraint (= (f #x544b5bbdc571c6b2) (ref #x544b5bbdc571c6b2 )))
(constraint (= (f #xb0e3e76e26dec17d) (ref #xb0e3e76e26dec17d )))
(constraint (= (f #xaa57bd1e9404189e) (ref #xaa57bd1e9404189e )))
(constraint (= (f #xee8945eee40843e9) (ref #xee8945eee40843e9 )))
(constraint (= (f #x7765687d88e2b740) (ref #x7765687d88e2b740 )))
(constraint (= (f #xb8a35d2394b12601) (ref #xb8a35d2394b12601 )))
(constraint (= (f #xbde490e51eee6803) (ref #xbde490e51eee6803 )))
(constraint (= (f #x944b84dc0d85e3aa) (ref #x944b84dc0d85e3aa )))
(constraint (= (f #x67e425422e8a5b77) (ref #x67e425422e8a5b77 )))
(constraint (= (f #x4426a656eeeb0ae3) (ref #x4426a656eeeb0ae3 )))

(check-synth)

