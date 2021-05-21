(set-logic BV)
 (declare-oracle-fun ref 
PRE_116_10.sl-ref
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

(constraint (= (f #x44ccce634ace1b4a) (ref #x44ccce634ace1b4a )))
(constraint (= (f #xa8156b111c178b62) (ref #xa8156b111c178b62 )))
(constraint (= (f #xa6e07852e989c07e) (ref #xa6e07852e989c07e )))
(constraint (= (f #x1127052aee98853e) (ref #x1127052aee98853e )))
(constraint (= (f #x84a5e15c77ce2ca0) (ref #x84a5e15c77ce2ca0 )))
(constraint (= (f #x609844195a9e8761) (ref #x609844195a9e8761 )))
(constraint (= (f #x3ee4c84a6aa90298) (ref #x3ee4c84a6aa90298 )))
(constraint (= (f #xed8b1e372e1b98dd) (ref #xed8b1e372e1b98dd )))
(constraint (= (f #x437473a7e33042ee) (ref #x437473a7e33042ee )))
(constraint (= (f #x69dd4e35a0e80909) (ref #x69dd4e35a0e80909 )))

(check-synth)

