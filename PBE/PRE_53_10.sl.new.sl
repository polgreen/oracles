(set-logic BV)
 (declare-oracle-fun ref 
PRE_53_10.sl-ref
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

(constraint (= (f #x68d9e31c895c7a3c) (ref #x68d9e31c895c7a3c )))
(constraint (= (f #xea7e9986b346b711) (ref #xea7e9986b346b711 )))
(constraint (= (f #x56530dd5da13ee60) (ref #x56530dd5da13ee60 )))
(constraint (= (f #x7b7e68db8293b0ad) (ref #x7b7e68db8293b0ad )))
(constraint (= (f #x81e66b6ced61ea6d) (ref #x81e66b6ced61ea6d )))
(constraint (= (f #xbbc1e3d784265e9c) (ref #xbbc1e3d784265e9c )))
(constraint (= (f #xc84a3aeeb018458a) (ref #xc84a3aeeb018458a )))
(constraint (= (f #xbe58c11e2995176c) (ref #xbe58c11e2995176c )))
(constraint (= (f #x2be3665dd3e01cce) (ref #x2be3665dd3e01cce )))
(constraint (= (f #x7e6261b6d15c5308) (ref #x7e6261b6d15c5308 )))

(check-synth)

