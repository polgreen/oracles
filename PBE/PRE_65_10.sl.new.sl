(set-logic BV)
 (declare-oracle-fun ref 
PRE_65_10.sl-ref
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

(constraint (= (f #x79d92c5c843bccea) (ref #x79d92c5c843bccea )))
(constraint (= (f #xd18e1623d8c754eb) (ref #xd18e1623d8c754eb )))
(constraint (= (f #x5dbc9b21eec41ecd) (ref #x5dbc9b21eec41ecd )))
(constraint (= (f #x43d867dc6b7ce512) (ref #x43d867dc6b7ce512 )))
(constraint (= (f #x3297313bb65bc2a8) (ref #x3297313bb65bc2a8 )))
(constraint (= (f #xeb230a656e3476a5) (ref #xeb230a656e3476a5 )))
(constraint (= (f #x85223786275c124c) (ref #x85223786275c124c )))
(constraint (= (f #x44c287924780396e) (ref #x44c287924780396e )))
(constraint (= (f #x77a6b68aa94ce623) (ref #x77a6b68aa94ce623 )))
(constraint (= (f #xec0d010e915509b0) (ref #xec0d010e915509b0 )))

(check-synth)

