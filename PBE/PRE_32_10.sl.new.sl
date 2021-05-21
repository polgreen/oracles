(set-logic BV)
 (declare-oracle-fun ref 
PRE_32_10.sl-ref
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

(constraint (= (f #x346e81ee5e6e7b8e) (ref #x346e81ee5e6e7b8e )))
(constraint (= (f #x1b953974763ce562) (ref #x1b953974763ce562 )))
(constraint (= (f #x97017b13600a38aa) (ref #x97017b13600a38aa )))
(constraint (= (f #x446be8317c4e7e55) (ref #x446be8317c4e7e55 )))
(constraint (= (f #x00275721e39063de) (ref #x00275721e39063de )))
(constraint (= (f #x3d7264e6ce8182bd) (ref #x3d7264e6ce8182bd )))
(constraint (= (f #x1bd8572c94021e76) (ref #x1bd8572c94021e76 )))
(constraint (= (f #xe153274d4eeed5ea) (ref #xe153274d4eeed5ea )))
(constraint (= (f #xe22ee857bb80e9c8) (ref #xe22ee857bb80e9c8 )))
(constraint (= (f #xa203cd9864e5a014) (ref #xa203cd9864e5a014 )))

(check-synth)

