(set-logic BV)
 (declare-oracle-fun ref 
PRE_15_10.sl-ref
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

(constraint (= (f #x2e06e138a01be4ec) (ref #x2e06e138a01be4ec )))
(constraint (= (f #xc5479a03b8ad40d5) (ref #xc5479a03b8ad40d5 )))
(constraint (= (f #xb84d9d77284eb244) (ref #xb84d9d77284eb244 )))
(constraint (= (f #x7e14893876abdc0a) (ref #x7e14893876abdc0a )))
(constraint (= (f #x75e909118e5b5ae4) (ref #x75e909118e5b5ae4 )))
(constraint (= (f #x2d85aa78aace1add) (ref #x2d85aa78aace1add )))
(constraint (= (f #xee4b91c8a03ae200) (ref #xee4b91c8a03ae200 )))
(constraint (= (f #x8549d93e95b13e60) (ref #x8549d93e95b13e60 )))
(constraint (= (f #xd96912ebe9be9ceb) (ref #xd96912ebe9be9ceb )))
(constraint (= (f #xe2413169cecd32de) (ref #xe2413169cecd32de )))

(check-synth)

