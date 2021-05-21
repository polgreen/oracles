(set-logic BV)
 (declare-oracle-fun ref 
PRE_87_10.sl-ref
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

(constraint (= (f #x66724b71e3b8a452) (ref #x66724b71e3b8a452 )))
(constraint (= (f #x6b566e6d3670d9ce) (ref #x6b566e6d3670d9ce )))
(constraint (= (f #xd3e1ac6bb2e995c3) (ref #xd3e1ac6bb2e995c3 )))
(constraint (= (f #x0226c8a04ebeea5e) (ref #x0226c8a04ebeea5e )))
(constraint (= (f #x9489e05b83e0784c) (ref #x9489e05b83e0784c )))
(constraint (= (f #x87de2ed85dc94818) (ref #x87de2ed85dc94818 )))
(constraint (= (f #x3352ea4b75c79e83) (ref #x3352ea4b75c79e83 )))
(constraint (= (f #x2970e37c57ad922e) (ref #x2970e37c57ad922e )))
(constraint (= (f #xbba2644d2de32e14) (ref #xbba2644d2de32e14 )))
(constraint (= (f #xe481b69326876ec3) (ref #xe481b69326876ec3 )))

(check-synth)

