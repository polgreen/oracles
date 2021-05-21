(set-logic BV)
 (declare-oracle-fun ref 
PRE_139_10.sl-ref
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

(constraint (= (f #x6d1e607710691396) (ref #x6d1e607710691396 )))
(constraint (= (f #x675aecbae08b4a14) (ref #x675aecbae08b4a14 )))
(constraint (= (f #xbe0160eb542aa373) (ref #xbe0160eb542aa373 )))
(constraint (= (f #x253ac2ea42e1a49e) (ref #x253ac2ea42e1a49e )))
(constraint (= (f #x4238c39857ad3006) (ref #x4238c39857ad3006 )))
(constraint (= (f #x6cb09733ce90d037) (ref #x6cb09733ce90d037 )))
(constraint (= (f #xac3c44aa716920ee) (ref #xac3c44aa716920ee )))
(constraint (= (f #x98ec5d22bd30b4d2) (ref #x98ec5d22bd30b4d2 )))
(constraint (= (f #xbc4955e77a7eb8b6) (ref #xbc4955e77a7eb8b6 )))
(constraint (= (f #x993eee07446e8a7e) (ref #x993eee07446e8a7e )))

(check-synth)

