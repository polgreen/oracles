(set-logic BV)
 (declare-oracle-fun ref 
PRE_114_10.sl-ref
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

(constraint (= (f #xb5d319e72c70b41e) (ref #xb5d319e72c70b41e )))
(constraint (= (f #x000a21910c417e93) (ref #x000a21910c417e93 )))
(constraint (= (f #x4dd41437805bc948) (ref #x4dd41437805bc948 )))
(constraint (= (f #x870a55ec609d6896) (ref #x870a55ec609d6896 )))
(constraint (= (f #xe2eb1cd253e24776) (ref #xe2eb1cd253e24776 )))
(constraint (= (f #xd20ea744e72c09d8) (ref #xd20ea744e72c09d8 )))
(constraint (= (f #x2762ed62e9ec9561) (ref #x2762ed62e9ec9561 )))
(constraint (= (f #xc6cc66655cdc46a4) (ref #xc6cc66655cdc46a4 )))
(constraint (= (f #x0ec1399e70dd2d07) (ref #x0ec1399e70dd2d07 )))
(constraint (= (f #x42e06e86367a4e8e) (ref #x42e06e86367a4e8e )))

(check-synth)

