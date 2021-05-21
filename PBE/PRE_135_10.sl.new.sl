(set-logic BV)
 (declare-oracle-fun ref 
PRE_135_10.sl-ref
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

(constraint (= (f #x1ee1a02ae82bbd5d) (ref #x1ee1a02ae82bbd5d )))
(constraint (= (f #x0acd72d89a2cea29) (ref #x0acd72d89a2cea29 )))
(constraint (= (f #x2c3b8d463c3e31d8) (ref #x2c3b8d463c3e31d8 )))
(constraint (= (f #x281ee351059ee7d3) (ref #x281ee351059ee7d3 )))
(constraint (= (f #x79b5452658cabc0e) (ref #x79b5452658cabc0e )))
(constraint (= (f #xc75649ee0c398b30) (ref #xc75649ee0c398b30 )))
(constraint (= (f #x732aeee686c80d7c) (ref #x732aeee686c80d7c )))
(constraint (= (f #x5ecaede3c57db56d) (ref #x5ecaede3c57db56d )))
(constraint (= (f #x3ce3b23e2dbe4e96) (ref #x3ce3b23e2dbe4e96 )))
(constraint (= (f #x745366e292980959) (ref #x745366e292980959 )))

(check-synth)

