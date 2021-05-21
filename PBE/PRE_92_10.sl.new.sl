(set-logic BV)
 (declare-oracle-fun ref 
PRE_92_10.sl-ref
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

(constraint (= (f #xed7e441cc3b3e149) (ref #xed7e441cc3b3e149 )))
(constraint (= (f #x9b673d051e3db93a) (ref #x9b673d051e3db93a )))
(constraint (= (f #x7032d01decb9dd2e) (ref #x7032d01decb9dd2e )))
(constraint (= (f #xc6ac10e6056b0e3e) (ref #xc6ac10e6056b0e3e )))
(constraint (= (f #x715e535ae7e9361a) (ref #x715e535ae7e9361a )))
(constraint (= (f #x5e6c6529c7b6cce3) (ref #x5e6c6529c7b6cce3 )))
(constraint (= (f #x1433d2c684588bab) (ref #x1433d2c684588bab )))
(constraint (= (f #xec57bbe7e3366b41) (ref #xec57bbe7e3366b41 )))
(constraint (= (f #x5c0b70e35b389e31) (ref #x5c0b70e35b389e31 )))
(constraint (= (f #xee39a563d7e29255) (ref #xee39a563d7e29255 )))

(check-synth)

