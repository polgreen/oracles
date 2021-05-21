(set-logic BV)
 (declare-oracle-fun ref 
PRE_72_10.sl-ref
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

(constraint (= (f #x7e68103aa3adc1c8) (ref #x7e68103aa3adc1c8 )))
(constraint (= (f #xeea4069881de9e20) (ref #xeea4069881de9e20 )))
(constraint (= (f #xda16d0abad2b5818) (ref #xda16d0abad2b5818 )))
(constraint (= (f #x4801cbab5ace8577) (ref #x4801cbab5ace8577 )))
(constraint (= (f #x09e8d69ebee4add2) (ref #x09e8d69ebee4add2 )))
(constraint (= (f #xd402696eb0896b04) (ref #xd402696eb0896b04 )))
(constraint (= (f #x51b74d3de1eb6c2e) (ref #x51b74d3de1eb6c2e )))
(constraint (= (f #x66618e5291de00c0) (ref #x66618e5291de00c0 )))
(constraint (= (f #x1481302b08ee8a77) (ref #x1481302b08ee8a77 )))
(constraint (= (f #x3cb584e035ea3ab1) (ref #x3cb584e035ea3ab1 )))

(check-synth)

