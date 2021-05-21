(set-logic BV)
 (declare-oracle-fun ref 
PRE_76_10.sl-ref
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

(constraint (= (f #xec1e737c37696a3d) (ref #xec1e737c37696a3d )))
(constraint (= (f #xd7cc6b697551c449) (ref #xd7cc6b697551c449 )))
(constraint (= (f #xd9b86bade91c4cee) (ref #xd9b86bade91c4cee )))
(constraint (= (f #x1cb71cee8216310d) (ref #x1cb71cee8216310d )))
(constraint (= (f #x0686d155e141e629) (ref #x0686d155e141e629 )))
(constraint (= (f #x115c812037db0dba) (ref #x115c812037db0dba )))
(constraint (= (f #xa5174eeb6dd36a07) (ref #xa5174eeb6dd36a07 )))
(constraint (= (f #x5eeb1cb494e1b33b) (ref #x5eeb1cb494e1b33b )))
(constraint (= (f #x9ce38ea84e8e2ae1) (ref #x9ce38ea84e8e2ae1 )))
(constraint (= (f #xb0e0a62e25ee6adc) (ref #xb0e0a62e25ee6adc )))

(check-synth)

