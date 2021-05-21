(set-logic BV)
 (declare-oracle-fun ref 
PRE_51_10.sl-ref
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

(constraint (= (f #xe9770aa10cacb30c) (ref #xe9770aa10cacb30c )))
(constraint (= (f #x1c14b64e2717423e) (ref #x1c14b64e2717423e )))
(constraint (= (f #xd123e2eaed9b2040) (ref #xd123e2eaed9b2040 )))
(constraint (= (f #x6bb2782a4cb648ba) (ref #x6bb2782a4cb648ba )))
(constraint (= (f #xe6a8adcd2a0515d6) (ref #xe6a8adcd2a0515d6 )))
(constraint (= (f #x0ada9e34c6e7938d) (ref #x0ada9e34c6e7938d )))
(constraint (= (f #xb93e327e6dcd693d) (ref #xb93e327e6dcd693d )))
(constraint (= (f #xc8293b7147e394ce) (ref #xc8293b7147e394ce )))
(constraint (= (f #x9a778869ee82e19c) (ref #x9a778869ee82e19c )))
(constraint (= (f #xacc924e82ea4eec5) (ref #xacc924e82ea4eec5 )))

(check-synth)

