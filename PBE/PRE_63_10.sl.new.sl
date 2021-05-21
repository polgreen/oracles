(set-logic BV)
 (declare-oracle-fun ref 
PRE_63_10.sl-ref
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

(constraint (= (f #x63bbe0e3ee9b44d9) (ref #x63bbe0e3ee9b44d9 )))
(constraint (= (f #x6113ba335eca362c) (ref #x6113ba335eca362c )))
(constraint (= (f #xd5e47b36e4ee7066) (ref #xd5e47b36e4ee7066 )))
(constraint (= (f #xea8e5aee9ee367b5) (ref #xea8e5aee9ee367b5 )))
(constraint (= (f #x0913e7e316e61ebd) (ref #x0913e7e316e61ebd )))
(constraint (= (f #x4a7acedede5c3d3e) (ref #x4a7acedede5c3d3e )))
(constraint (= (f #xa0eee1c1d71405c4) (ref #xa0eee1c1d71405c4 )))
(constraint (= (f #x9ecce41707cd67a0) (ref #x9ecce41707cd67a0 )))
(constraint (= (f #x6437aed38086ec86) (ref #x6437aed38086ec86 )))
(constraint (= (f #xdbc0b1e3bb84cebc) (ref #xdbc0b1e3bb84cebc )))

(check-synth)

