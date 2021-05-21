(set-logic BV)
 (declare-oracle-fun ref 
PRE_57_10.sl-ref
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

(constraint (= (f #x67e8e46bb31d6e42) (ref #x67e8e46bb31d6e42 )))
(constraint (= (f #xa3dc6c9be02db165) (ref #xa3dc6c9be02db165 )))
(constraint (= (f #x0b640eeedc8306eb) (ref #x0b640eeedc8306eb )))
(constraint (= (f #x6c74cac0054bc64d) (ref #x6c74cac0054bc64d )))
(constraint (= (f #x46ee8602ccabea5e) (ref #x46ee8602ccabea5e )))
(constraint (= (f #xc4300d3937d2e24d) (ref #xc4300d3937d2e24d )))
(constraint (= (f #xe1e315a3ee2164b7) (ref #xe1e315a3ee2164b7 )))
(constraint (= (f #xcac874b956d47ea4) (ref #xcac874b956d47ea4 )))
(constraint (= (f #xcc44d4d8b20e4a16) (ref #xcc44d4d8b20e4a16 )))
(constraint (= (f #xe224ce8d6ecc4b15) (ref #xe224ce8d6ecc4b15 )))

(check-synth)

