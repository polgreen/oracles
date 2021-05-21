(set-logic BV)
 (declare-oracle-fun ref 
PRE_101_10.sl-ref
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

(constraint (= (f #x28085a970e13e12c) (ref #x28085a970e13e12c )))
(constraint (= (f #xbe5341bebd2a0749) (ref #xbe5341bebd2a0749 )))
(constraint (= (f #xe239460eed2cc34e) (ref #xe239460eed2cc34e )))
(constraint (= (f #xac5b1b5e9b236b10) (ref #xac5b1b5e9b236b10 )))
(constraint (= (f #x4069a4c7173e1786) (ref #x4069a4c7173e1786 )))
(constraint (= (f #x39419062091119a6) (ref #x39419062091119a6 )))
(constraint (= (f #x49aeeca628644ee0) (ref #x49aeeca628644ee0 )))
(constraint (= (f #x75e5bc2a07c77c97) (ref #x75e5bc2a07c77c97 )))
(constraint (= (f #x4c5ee4be98c5ee7d) (ref #x4c5ee4be98c5ee7d )))
(constraint (= (f #xcd67bd5beaac575e) (ref #xcd67bd5beaac575e )))

(check-synth)

