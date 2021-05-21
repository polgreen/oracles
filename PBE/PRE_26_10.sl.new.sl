(set-logic BV)
 (declare-oracle-fun ref 
PRE_26_10.sl-ref
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

(constraint (= (f #x200207893b142311) (ref #x200207893b142311 )))
(constraint (= (f #xe54b05a051e040e4) (ref #xe54b05a051e040e4 )))
(constraint (= (f #x1414d859b47396e6) (ref #x1414d859b47396e6 )))
(constraint (= (f #xb6b05d27e9d3e028) (ref #xb6b05d27e9d3e028 )))
(constraint (= (f #xee3d5e2929c00b15) (ref #xee3d5e2929c00b15 )))
(constraint (= (f #xd7a6a3e6c44ed8ec) (ref #xd7a6a3e6c44ed8ec )))
(constraint (= (f #x5a7be26701c23be3) (ref #x5a7be26701c23be3 )))
(constraint (= (f #x5914a5b004eca9b1) (ref #x5914a5b004eca9b1 )))
(constraint (= (f #x6a0430c555d0b6ab) (ref #x6a0430c555d0b6ab )))
(constraint (= (f #xcd2b110cc4642dde) (ref #xcd2b110cc4642dde )))

(check-synth)

