(set-logic BV)
 (declare-oracle-fun ref 
PRE_142_10.sl-ref
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

(constraint (= (f #x58703d430d67a0a3) (ref #x58703d430d67a0a3 )))
(constraint (= (f #x3de45654801b9c2e) (ref #x3de45654801b9c2e )))
(constraint (= (f #xb44144144b24522b) (ref #xb44144144b24522b )))
(constraint (= (f #x3b17e28895aeb19e) (ref #x3b17e28895aeb19e )))
(constraint (= (f #xeb3131b22abb4257) (ref #xeb3131b22abb4257 )))
(constraint (= (f #x6ce21b13a02eba79) (ref #x6ce21b13a02eba79 )))
(constraint (= (f #x2db0458a6a069eed) (ref #x2db0458a6a069eed )))
(constraint (= (f #x458a9c54bcd143c5) (ref #x458a9c54bcd143c5 )))
(constraint (= (f #x74ae46a61c9d85e7) (ref #x74ae46a61c9d85e7 )))
(constraint (= (f #x10335e027857a12e) (ref #x10335e027857a12e )))

(check-synth)

