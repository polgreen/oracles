(set-logic BV)
 (declare-oracle-fun ref 
PRE_136_10.sl-ref
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

(constraint (= (f #xc8960d58101e6361) (ref #xc8960d58101e6361 )))
(constraint (= (f #x3c49a54b6653dc62) (ref #x3c49a54b6653dc62 )))
(constraint (= (f #xc9c8200106ea8c53) (ref #xc9c8200106ea8c53 )))
(constraint (= (f #xd8da1cbe597682e3) (ref #xd8da1cbe597682e3 )))
(constraint (= (f #x310a69e352cddc99) (ref #x310a69e352cddc99 )))
(constraint (= (f #x5e284a0ebdeb0b4e) (ref #x5e284a0ebdeb0b4e )))
(constraint (= (f #xd46d496623aa034c) (ref #xd46d496623aa034c )))
(constraint (= (f #x4003196eaa59981e) (ref #x4003196eaa59981e )))
(constraint (= (f #xb3a2ab8176a2e1ea) (ref #xb3a2ab8176a2e1ea )))
(constraint (= (f #xeca576ba37527a05) (ref #xeca576ba37527a05 )))

(check-synth)

