(set-logic BV)
 (declare-oracle-fun ref 
PRE_40_10.sl-ref
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

(constraint (= (f #x101335e013bde390) (ref #x101335e013bde390 )))
(constraint (= (f #xba0b23905bd40ed5) (ref #xba0b23905bd40ed5 )))
(constraint (= (f #xc500e9873dc481a9) (ref #xc500e9873dc481a9 )))
(constraint (= (f #x8d8b6999026190e8) (ref #x8d8b6999026190e8 )))
(constraint (= (f #x29d1a69b7e33c114) (ref #x29d1a69b7e33c114 )))
(constraint (= (f #xbd4c8e4e110ed143) (ref #xbd4c8e4e110ed143 )))
(constraint (= (f #x06a236b8e03bec86) (ref #x06a236b8e03bec86 )))
(constraint (= (f #x22ae86d500cee873) (ref #x22ae86d500cee873 )))
(constraint (= (f #xbe92b0e848463c32) (ref #xbe92b0e848463c32 )))
(constraint (= (f #xe64468e0c7317db0) (ref #xe64468e0c7317db0 )))

(check-synth)

