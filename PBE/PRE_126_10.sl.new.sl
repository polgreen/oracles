(set-logic BV)
 (declare-oracle-fun ref 
PRE_126_10.sl-ref
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

(constraint (= (f #x71c7e1ab41379480) (ref #x71c7e1ab41379480 )))
(constraint (= (f #x7b4319c0667e8b53) (ref #x7b4319c0667e8b53 )))
(constraint (= (f #xb4c780718adb8ed7) (ref #xb4c780718adb8ed7 )))
(constraint (= (f #x204b051e056a95e0) (ref #x204b051e056a95e0 )))
(constraint (= (f #x758d3e93d508c7aa) (ref #x758d3e93d508c7aa )))
(constraint (= (f #xa91e81c7989ab3ed) (ref #xa91e81c7989ab3ed )))
(constraint (= (f #x7bb37b8ea0e551bb) (ref #x7bb37b8ea0e551bb )))
(constraint (= (f #x9e72bc3e96c7ea68) (ref #x9e72bc3e96c7ea68 )))
(constraint (= (f #x35e1057c93242bd7) (ref #x35e1057c93242bd7 )))
(constraint (= (f #x405b3287eb0a36e5) (ref #x405b3287eb0a36e5 )))

(check-synth)

