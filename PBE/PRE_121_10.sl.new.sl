(set-logic BV)
 (declare-oracle-fun ref 
PRE_121_10.sl-ref
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

(constraint (= (f #x39333a33cea27561) (ref #x39333a33cea27561 )))
(constraint (= (f #x875ecd02934eb458) (ref #x875ecd02934eb458 )))
(constraint (= (f #xe280ac2ca0b16551) (ref #xe280ac2ca0b16551 )))
(constraint (= (f #xdd5ec05ac5337bbd) (ref #xdd5ec05ac5337bbd )))
(constraint (= (f #x2253056ebde55d01) (ref #x2253056ebde55d01 )))
(constraint (= (f #x63d67b49ee595645) (ref #x63d67b49ee595645 )))
(constraint (= (f #x83a777109a70880d) (ref #x83a777109a70880d )))
(constraint (= (f #x51d0e144a10ec149) (ref #x51d0e144a10ec149 )))
(constraint (= (f #xcdae3a5c0531702e) (ref #xcdae3a5c0531702e )))
(constraint (= (f #x1deaee9e5e26569c) (ref #x1deaee9e5e26569c )))

(check-synth)

