(set-logic BV)
 (declare-oracle-fun ref 
PRE_145_10.sl-ref
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

(constraint (= (f #x6ec3248418558b84) (ref #x6ec3248418558b84 )))
(constraint (= (f #x01d6903ea2282e63) (ref #x01d6903ea2282e63 )))
(constraint (= (f #x6becab11e1c19946) (ref #x6becab11e1c19946 )))
(constraint (= (f #x92ed828198ed7441) (ref #x92ed828198ed7441 )))
(constraint (= (f #xc11cece67ca06bad) (ref #xc11cece67ca06bad )))
(constraint (= (f #x13adecabaab1956d) (ref #x13adecabaab1956d )))
(constraint (= (f #x5e4c53e9d83ccce7) (ref #x5e4c53e9d83ccce7 )))
(constraint (= (f #x997e2c9a77a823e1) (ref #x997e2c9a77a823e1 )))
(constraint (= (f #x0b97de3b6b722418) (ref #x0b97de3b6b722418 )))
(constraint (= (f #x7a70e09bd34bc755) (ref #x7a70e09bd34bc755 )))

(check-synth)

