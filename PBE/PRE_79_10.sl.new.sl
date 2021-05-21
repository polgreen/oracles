(set-logic BV)
 (declare-oracle-fun ref 
PRE_79_10.sl-ref
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

(constraint (= (f #x8bab9dd87e49bce3) (ref #x8bab9dd87e49bce3 )))
(constraint (= (f #x82d4e2b3b3d33b57) (ref #x82d4e2b3b3d33b57 )))
(constraint (= (f #x9dd383ea163ea0a8) (ref #x9dd383ea163ea0a8 )))
(constraint (= (f #x16b50630e1d55ce2) (ref #x16b50630e1d55ce2 )))
(constraint (= (f #x621e2aeecc5462c8) (ref #x621e2aeecc5462c8 )))
(constraint (= (f #x9ed424e94c5088b8) (ref #x9ed424e94c5088b8 )))
(constraint (= (f #x05a8577ae0ea9642) (ref #x05a8577ae0ea9642 )))
(constraint (= (f #xe17eceebe77ee84e) (ref #xe17eceebe77ee84e )))
(constraint (= (f #xe8c59d20e4186e70) (ref #xe8c59d20e4186e70 )))
(constraint (= (f #xe953ce70bca3e0e8) (ref #xe953ce70bca3e0e8 )))

(check-synth)

