(set-logic BV)
 (declare-oracle-fun ref 
PRE_34_10.sl-ref
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

(constraint (= (f #x096053b430bb426d) (ref #x096053b430bb426d )))
(constraint (= (f #x2532d1c56d0acae9) (ref #x2532d1c56d0acae9 )))
(constraint (= (f #x6c707ecc6451d705) (ref #x6c707ecc6451d705 )))
(constraint (= (f #x46d1e968eaea1754) (ref #x46d1e968eaea1754 )))
(constraint (= (f #xc6e990ec5458e96e) (ref #xc6e990ec5458e96e )))
(constraint (= (f #xa6d713b00ce037de) (ref #xa6d713b00ce037de )))
(constraint (= (f #x920c8c1eeec7d93c) (ref #x920c8c1eeec7d93c )))
(constraint (= (f #x401dd7bb4a1e5470) (ref #x401dd7bb4a1e5470 )))
(constraint (= (f #x300782ebccd1272d) (ref #x300782ebccd1272d )))
(constraint (= (f #x87e60eccd4aa0b93) (ref #x87e60eccd4aa0b93 )))

(check-synth)

