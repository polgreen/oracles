(set-logic BV)
 (declare-oracle-fun ref 
PRE_140_10.sl-ref
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

(constraint (= (f #x079d6cad4a88077e) (ref #x079d6cad4a88077e )))
(constraint (= (f #xbe1863d9211bc3de) (ref #xbe1863d9211bc3de )))
(constraint (= (f #x0174eb79eec52e84) (ref #x0174eb79eec52e84 )))
(constraint (= (f #xd0d396dc6e1e49d4) (ref #xd0d396dc6e1e49d4 )))
(constraint (= (f #xa216b83d87cb304c) (ref #xa216b83d87cb304c )))
(constraint (= (f #x1395680e44e4c257) (ref #x1395680e44e4c257 )))
(constraint (= (f #xb50c0be6453d8979) (ref #xb50c0be6453d8979 )))
(constraint (= (f #x699e23340de2d37c) (ref #x699e23340de2d37c )))
(constraint (= (f #x1e829e1c5847e41e) (ref #x1e829e1c5847e41e )))
(constraint (= (f #x07d79b0bdcdece98) (ref #x07d79b0bdcdece98 )))

(check-synth)

