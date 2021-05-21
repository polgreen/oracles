(set-logic BV)
 (declare-oracle-fun ref 
PRE_49_10.sl-ref
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

(constraint (= (f #x4a4e85e8c6ea8e2a) (ref #x4a4e85e8c6ea8e2a )))
(constraint (= (f #x8d9cb7e53c37917e) (ref #x8d9cb7e53c37917e )))
(constraint (= (f #x0cc6be549e771135) (ref #x0cc6be549e771135 )))
(constraint (= (f #x25e7b608ebd6e358) (ref #x25e7b608ebd6e358 )))
(constraint (= (f #xb086795a31e75330) (ref #xb086795a31e75330 )))
(constraint (= (f #xc4a0e023eb9259e1) (ref #xc4a0e023eb9259e1 )))
(constraint (= (f #x4e07475142118aa7) (ref #x4e07475142118aa7 )))
(constraint (= (f #x21ae4ebe5ee394ac) (ref #x21ae4ebe5ee394ac )))
(constraint (= (f #xa7ed87165ba054e1) (ref #xa7ed87165ba054e1 )))
(constraint (= (f #x435d6926745c40d9) (ref #x435d6926745c40d9 )))

(check-synth)

