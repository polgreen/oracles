(set-logic BV)
 (declare-oracle-fun ref 
PRE_78_10.sl-ref
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

(constraint (= (f #xcb811430e70a8385) (ref #xcb811430e70a8385 )))
(constraint (= (f #x0740ec3ae90051e7) (ref #x0740ec3ae90051e7 )))
(constraint (= (f #x1eb87952ba16c7eb) (ref #x1eb87952ba16c7eb )))
(constraint (= (f #x737e3745835cbe2a) (ref #x737e3745835cbe2a )))
(constraint (= (f #x695a65ab504578e1) (ref #x695a65ab504578e1 )))
(constraint (= (f #x5c04be5bb9ed2840) (ref #x5c04be5bb9ed2840 )))
(constraint (= (f #x3579b1b1ebb2ba1a) (ref #x3579b1b1ebb2ba1a )))
(constraint (= (f #x3524d1be542199e7) (ref #x3524d1be542199e7 )))
(constraint (= (f #x1a740959ad3b0b47) (ref #x1a740959ad3b0b47 )))
(constraint (= (f #xb29abad0be12dc2e) (ref #xb29abad0be12dc2e )))

(check-synth)

