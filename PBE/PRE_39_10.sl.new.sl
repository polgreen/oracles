(set-logic BV)
 (declare-oracle-fun ref 
PRE_39_10.sl-ref
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

(constraint (= (f #xacb61ceeb8401d34) (ref #xacb61ceeb8401d34 )))
(constraint (= (f #x58d1a3366e17b724) (ref #x58d1a3366e17b724 )))
(constraint (= (f #xa4c130529a517258) (ref #xa4c130529a517258 )))
(constraint (= (f #xe7c1c59ea58b3dec) (ref #xe7c1c59ea58b3dec )))
(constraint (= (f #x0e2e259435431dee) (ref #x0e2e259435431dee )))
(constraint (= (f #x6d2be13c93e67aed) (ref #x6d2be13c93e67aed )))
(constraint (= (f #x66e8a966049b3eb2) (ref #x66e8a966049b3eb2 )))
(constraint (= (f #xeedc2a0be801ed07) (ref #xeedc2a0be801ed07 )))
(constraint (= (f #xbe683e2ec7e4e2ac) (ref #xbe683e2ec7e4e2ac )))
(constraint (= (f #x641210b3ced656e2) (ref #x641210b3ced656e2 )))

(check-synth)

