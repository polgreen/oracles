(set-logic BV)
 (declare-oracle-fun ref 
PRE_69_10.sl-ref
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

(constraint (= (f #xe037be6b4e8b9a78) (ref #xe037be6b4e8b9a78 )))
(constraint (= (f #x2a8b7c5be7d117b4) (ref #x2a8b7c5be7d117b4 )))
(constraint (= (f #x6a0b469313010a20) (ref #x6a0b469313010a20 )))
(constraint (= (f #x89480e7d5361277c) (ref #x89480e7d5361277c )))
(constraint (= (f #x22da0d08a693cd1b) (ref #x22da0d08a693cd1b )))
(constraint (= (f #xd7b0e6a3b081207e) (ref #xd7b0e6a3b081207e )))
(constraint (= (f #x201027ad1948b188) (ref #x201027ad1948b188 )))
(constraint (= (f #x83e0ce570116d363) (ref #x83e0ce570116d363 )))
(constraint (= (f #x33bd43ee87c9b3d1) (ref #x33bd43ee87c9b3d1 )))
(constraint (= (f #x7ae36a145e676d42) (ref #x7ae36a145e676d42 )))

(check-synth)

