(set-logic BV)
 (declare-oracle-fun ref 
PRE_147_10.sl-ref
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

(constraint (= (f #x0e710eaca45caeeb) (ref #x0e710eaca45caeeb )))
(constraint (= (f #xb322271bee6a4318) (ref #xb322271bee6a4318 )))
(constraint (= (f #x76eed95b6b4a1db8) (ref #x76eed95b6b4a1db8 )))
(constraint (= (f #x3a8023d138c8387e) (ref #x3a8023d138c8387e )))
(constraint (= (f #x7998de93b53a88b6) (ref #x7998de93b53a88b6 )))
(constraint (= (f #x288bc73657059770) (ref #x288bc73657059770 )))
(constraint (= (f #x3c91a460d8c7c338) (ref #x3c91a460d8c7c338 )))
(constraint (= (f #xd19e4e31274048ea) (ref #xd19e4e31274048ea )))
(constraint (= (f #x4b76c459eed41be9) (ref #x4b76c459eed41be9 )))
(constraint (= (f #xb82a693d190cadce) (ref #xb82a693d190cadce )))

(check-synth)

