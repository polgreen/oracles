(set-logic BV)
 (declare-oracle-fun ref 
PRE_97_10.sl-ref
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

(constraint (= (f #x92123e7041ee43c1) (ref #x92123e7041ee43c1 )))
(constraint (= (f #x4de85d23756a544a) (ref #x4de85d23756a544a )))
(constraint (= (f #xa329341be562e976) (ref #xa329341be562e976 )))
(constraint (= (f #xd39ed8e49b6a7347) (ref #xd39ed8e49b6a7347 )))
(constraint (= (f #x185a8aea12a9325d) (ref #x185a8aea12a9325d )))
(constraint (= (f #xe6925aed00be61e6) (ref #xe6925aed00be61e6 )))
(constraint (= (f #x84e4e1e7380e629e) (ref #x84e4e1e7380e629e )))
(constraint (= (f #x92845de481d2c029) (ref #x92845de481d2c029 )))
(constraint (= (f #xdd57e5639d8853a5) (ref #xdd57e5639d8853a5 )))
(constraint (= (f #x7e326765d326718e) (ref #x7e326765d326718e )))

(check-synth)

