(set-logic BV)
 (declare-oracle-fun ref 
PRE_82_10.sl-ref
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

(constraint (= (f #x296e29c563670c08) (ref #x296e29c563670c08 )))
(constraint (= (f #x9096a7e3127e9b38) (ref #x9096a7e3127e9b38 )))
(constraint (= (f #x7670839c2ae8eb77) (ref #x7670839c2ae8eb77 )))
(constraint (= (f #x1ab9e2248573e1ee) (ref #x1ab9e2248573e1ee )))
(constraint (= (f #x5e1e722cecd24e91) (ref #x5e1e722cecd24e91 )))
(constraint (= (f #x0e362e1e4ae97ded) (ref #x0e362e1e4ae97ded )))
(constraint (= (f #xa7e4c4437b4e5e0b) (ref #xa7e4c4437b4e5e0b )))
(constraint (= (f #x80ea76a7e097ea87) (ref #x80ea76a7e097ea87 )))
(constraint (= (f #xd06e03c3ba82e5ae) (ref #xd06e03c3ba82e5ae )))
(constraint (= (f #x868e5ac7d6019609) (ref #x868e5ac7d6019609 )))

(check-synth)

