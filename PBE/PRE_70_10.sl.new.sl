(set-logic BV)
 (declare-oracle-fun ref 
PRE_70_10.sl-ref
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

(constraint (= (f #x1ac819241ab68b13) (ref #x1ac819241ab68b13 )))
(constraint (= (f #x15eb0b7e72304521) (ref #x15eb0b7e72304521 )))
(constraint (= (f #x5d9a1de8546ddd7e) (ref #x5d9a1de8546ddd7e )))
(constraint (= (f #x5848cc61e174e0ee) (ref #x5848cc61e174e0ee )))
(constraint (= (f #x3e74bbd20aa72ed7) (ref #x3e74bbd20aa72ed7 )))
(constraint (= (f #x0d4c057a339dd6ce) (ref #x0d4c057a339dd6ce )))
(constraint (= (f #xc3c77c8ebdcd3e10) (ref #xc3c77c8ebdcd3e10 )))
(constraint (= (f #x74666d37aaeb5a40) (ref #x74666d37aaeb5a40 )))
(constraint (= (f #xe7a4c9035ce78c62) (ref #xe7a4c9035ce78c62 )))
(constraint (= (f #x4ecc4014540c93b8) (ref #x4ecc4014540c93b8 )))

(check-synth)

