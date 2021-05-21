(set-logic BV)
 (declare-oracle-fun ref 
PRE_80_10.sl-ref
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

(constraint (= (f #x31b89a6e3356b240) (ref #x31b89a6e3356b240 )))
(constraint (= (f #xc192ea128ad82dd6) (ref #xc192ea128ad82dd6 )))
(constraint (= (f #xe7a658ee0e27e583) (ref #xe7a658ee0e27e583 )))
(constraint (= (f #xee201d97438486a5) (ref #xee201d97438486a5 )))
(constraint (= (f #xa85b91667db28e15) (ref #xa85b91667db28e15 )))
(constraint (= (f #xaa7321ab163764bd) (ref #xaa7321ab163764bd )))
(constraint (= (f #xdaebb8b1bbedeeec) (ref #xdaebb8b1bbedeeec )))
(constraint (= (f #x38a50903364a8d82) (ref #x38a50903364a8d82 )))
(constraint (= (f #xeee47814c1d81989) (ref #xeee47814c1d81989 )))
(constraint (= (f #xe06e034804a598cd) (ref #xe06e034804a598cd )))

(check-synth)

