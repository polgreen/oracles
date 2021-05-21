(set-logic BV)
 (declare-oracle-fun ref 
PRE_41_10.sl-ref
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

(constraint (= (f #x0b80bcce081d6022) (ref #x0b80bcce081d6022 )))
(constraint (= (f #xd9eabcbc78ac8230) (ref #xd9eabcbc78ac8230 )))
(constraint (= (f #x8c852ae6e269a12e) (ref #x8c852ae6e269a12e )))
(constraint (= (f #x6b32e26d1ca63440) (ref #x6b32e26d1ca63440 )))
(constraint (= (f #x119a7e445ee7eed3) (ref #x119a7e445ee7eed3 )))
(constraint (= (f #x23b0b691ca45585e) (ref #x23b0b691ca45585e )))
(constraint (= (f #x579729ee56601c26) (ref #x579729ee56601c26 )))
(constraint (= (f #x229c90c44d29c079) (ref #x229c90c44d29c079 )))
(constraint (= (f #x7ced72a06c5b771d) (ref #x7ced72a06c5b771d )))
(constraint (= (f #xb5e879e31e817da3) (ref #xb5e879e31e817da3 )))

(check-synth)

