(set-logic BV)
 (declare-oracle-fun ref 
PRE_46_10.sl-ref
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

(constraint (= (f #x8a58ae9717d6609e) (ref #x8a58ae9717d6609e )))
(constraint (= (f #x95ecde6028563645) (ref #x95ecde6028563645 )))
(constraint (= (f #xe984b6e7d44eeb66) (ref #xe984b6e7d44eeb66 )))
(constraint (= (f #x17be5d03173c2103) (ref #x17be5d03173c2103 )))
(constraint (= (f #x293464579a6bc09a) (ref #x293464579a6bc09a )))
(constraint (= (f #x550e81a29ab3da53) (ref #x550e81a29ab3da53 )))
(constraint (= (f #x665924aae4267679) (ref #x665924aae4267679 )))
(constraint (= (f #xec16561c7952ad1b) (ref #xec16561c7952ad1b )))
(constraint (= (f #x6e395d22e2a26718) (ref #x6e395d22e2a26718 )))
(constraint (= (f #xec8b67e0c40e5829) (ref #xec8b67e0c40e5829 )))

(check-synth)

