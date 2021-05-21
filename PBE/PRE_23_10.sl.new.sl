(set-logic BV)
 (declare-oracle-fun ref 
PRE_23_10.sl-ref
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

(constraint (= (f #xa17786ed31a6e983) (ref #xa17786ed31a6e983 )))
(constraint (= (f #xc23dd03148950a79) (ref #xc23dd03148950a79 )))
(constraint (= (f #x1d580634321d0383) (ref #x1d580634321d0383 )))
(constraint (= (f #x0e87dc233541d363) (ref #x0e87dc233541d363 )))
(constraint (= (f #x9066deeb92e18765) (ref #x9066deeb92e18765 )))
(constraint (= (f #x053e043e354c3e39) (ref #x053e043e354c3e39 )))
(constraint (= (f #xe21557d61574c836) (ref #xe21557d61574c836 )))
(constraint (= (f #xd458484d230b9ceb) (ref #xd458484d230b9ceb )))
(constraint (= (f #x9d6333334d838e5d) (ref #x9d6333334d838e5d )))
(constraint (= (f #x78decdc1a43610b3) (ref #x78decdc1a43610b3 )))

(check-synth)

