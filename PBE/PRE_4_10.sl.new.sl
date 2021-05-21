(set-logic BV)
 (declare-oracle-fun ref 
PRE_4_10.sl-ref
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

(constraint (= (f #xd5a6481ee2ba1030) (ref #xd5a6481ee2ba1030 )))
(constraint (= (f #x03e887e72dee55cd) (ref #x03e887e72dee55cd )))
(constraint (= (f #xaced92921c8e318d) (ref #xaced92921c8e318d )))
(constraint (= (f #x95e5e4184e40aaec) (ref #x95e5e4184e40aaec )))
(constraint (= (f #x352367e34d76550b) (ref #x352367e34d76550b )))
(constraint (= (f #x398560eeee7b1b6c) (ref #x398560eeee7b1b6c )))
(constraint (= (f #x099be4899986c29a) (ref #x099be4899986c29a )))
(constraint (= (f #xb14b75be2e13445a) (ref #xb14b75be2e13445a )))
(constraint (= (f #xb4c680ad7e6b16ce) (ref #xb4c680ad7e6b16ce )))
(constraint (= (f #x7e4954872868acb8) (ref #x7e4954872868acb8 )))

(check-synth)

