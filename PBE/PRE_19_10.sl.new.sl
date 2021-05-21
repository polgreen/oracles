(set-logic BV)
 (declare-oracle-fun ref 
PRE_19_10.sl-ref
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

(constraint (= (f #xaec3dee9734a4306) (ref #xaec3dee9734a4306 )))
(constraint (= (f #x772ec24e8c65ab70) (ref #x772ec24e8c65ab70 )))
(constraint (= (f #x806e58130c00a28c) (ref #x806e58130c00a28c )))
(constraint (= (f #xa9b0e5416e3419e4) (ref #xa9b0e5416e3419e4 )))
(constraint (= (f #xdb3c33b4250ee12c) (ref #xdb3c33b4250ee12c )))
(constraint (= (f #x564740439407d2d2) (ref #x564740439407d2d2 )))
(constraint (= (f #x809763ce43994942) (ref #x809763ce43994942 )))
(constraint (= (f #x68477ac79b8b4517) (ref #x68477ac79b8b4517 )))
(constraint (= (f #x88e8cb268279ba71) (ref #x88e8cb268279ba71 )))
(constraint (= (f #x205c19416deb69b0) (ref #x205c19416deb69b0 )))

(check-synth)

