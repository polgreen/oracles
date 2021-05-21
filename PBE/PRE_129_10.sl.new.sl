(set-logic BV)
 (declare-oracle-fun ref 
PRE_129_10.sl-ref
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

(constraint (= (f #x3cde844eee46e113) (ref #x3cde844eee46e113 )))
(constraint (= (f #xad8dce0d950ed7be) (ref #xad8dce0d950ed7be )))
(constraint (= (f #x938aa22a5e7509c3) (ref #x938aa22a5e7509c3 )))
(constraint (= (f #x197130e6e2abee15) (ref #x197130e6e2abee15 )))
(constraint (= (f #x3b784e15b78c08a2) (ref #x3b784e15b78c08a2 )))
(constraint (= (f #x0ee2d90aeb1e5409) (ref #x0ee2d90aeb1e5409 )))
(constraint (= (f #xba7a0b90bc2b4955) (ref #xba7a0b90bc2b4955 )))
(constraint (= (f #xdcc0e8896d5a53ce) (ref #xdcc0e8896d5a53ce )))
(constraint (= (f #x63ee11461db9e310) (ref #x63ee11461db9e310 )))
(constraint (= (f #xad9910232c4de6bd) (ref #xad9910232c4de6bd )))

(check-synth)

