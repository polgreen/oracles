(set-logic BV)

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

(constraint (= (f #x9bbc9a8037ebabc8) #x9bbc9a8037ebabc9))
(constraint (= (f #x97e64ac15279e90a) #x02fcc9582a4f3d21))
(constraint (= (f #x0b29a7367e4154dc) #x0b29a7367e4154dd))
(constraint (= (f #xe04d4640a6077568) #xe04d4640a6077569))
(constraint (= (f #xc45de3b998c119ea) #x088bbc773318233d))
(constraint (= (f #xb6bebc97944c7bac) #xb6bebc97944c7bad))
(constraint (= (f #xd87adc2caed18135) #xd87adc2caed18134))
(constraint (= (f #x4520104ba3b189e5) #x4520104ba3b189e4))
(constraint (= (f #x698cba6a92662eee) #x0d31974d524cc5dd))
(constraint (= (f #xd1910ae768491370) #xd1910ae768491371))

(check-synth)

