(set-logic BV)
 (declare-oracle-fun ref 
PRE_117_10.sl-ref
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

(constraint (= (f #x9bbc9a8037ebabc8) (ref #x9bbc9a8037ebabc8 )))
(constraint (= (f #x97e64ac15279e90a) (ref #x97e64ac15279e90a )))
(constraint (= (f #x0b29a7367e4154dc) (ref #x0b29a7367e4154dc )))
(constraint (= (f #xe04d4640a6077568) (ref #xe04d4640a6077568 )))
(constraint (= (f #xc45de3b998c119ea) (ref #xc45de3b998c119ea )))
(constraint (= (f #xb6bebc97944c7bac) (ref #xb6bebc97944c7bac )))
(constraint (= (f #xd87adc2caed18135) (ref #xd87adc2caed18135 )))
(constraint (= (f #x4520104ba3b189e5) (ref #x4520104ba3b189e5 )))
(constraint (= (f #x698cba6a92662eee) (ref #x698cba6a92662eee )))
(constraint (= (f #xd1910ae768491370) (ref #xd1910ae768491370 )))

(check-synth)

