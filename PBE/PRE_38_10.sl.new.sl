(set-logic BV)
 (declare-oracle-fun ref 
PRE_38_10.sl-ref
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

(constraint (= (f #x541a486debee6ee3) (ref #x541a486debee6ee3 )))
(constraint (= (f #xe5be55a30ebc7880) (ref #xe5be55a30ebc7880 )))
(constraint (= (f #x322473791e191dbc) (ref #x322473791e191dbc )))
(constraint (= (f #xe735725aee3eebeb) (ref #xe735725aee3eebeb )))
(constraint (= (f #x83bbebe9e88e3257) (ref #x83bbebe9e88e3257 )))
(constraint (= (f #x9dcebed0204c4146) (ref #x9dcebed0204c4146 )))
(constraint (= (f #x1bb3c7716677ae6c) (ref #x1bb3c7716677ae6c )))
(constraint (= (f #xa955e45a3c83cbca) (ref #xa955e45a3c83cbca )))
(constraint (= (f #x27762c119e3ae5ad) (ref #x27762c119e3ae5ad )))
(constraint (= (f #xc49e108cb38623b0) (ref #xc49e108cb38623b0 )))

(check-synth)

