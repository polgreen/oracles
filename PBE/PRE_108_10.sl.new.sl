(set-logic BV)
 (declare-oracle-fun ref 
PRE_108_10.sl-ref
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

(constraint (= (f #x9838c02283e8a235) (ref #x9838c02283e8a235 )))
(constraint (= (f #xbea5b19521dee588) (ref #xbea5b19521dee588 )))
(constraint (= (f #xba010ecd01a176eb) (ref #xba010ecd01a176eb )))
(constraint (= (f #x2d51e856b031ca52) (ref #x2d51e856b031ca52 )))
(constraint (= (f #x409d73e061a4c778) (ref #x409d73e061a4c778 )))
(constraint (= (f #xe723ee480a2e98b3) (ref #xe723ee480a2e98b3 )))
(constraint (= (f #x6428aebe501e7ad4) (ref #x6428aebe501e7ad4 )))
(constraint (= (f #x6b715d4c4ede7816) (ref #x6b715d4c4ede7816 )))
(constraint (= (f #x1ea0ac3ca7b9b74a) (ref #x1ea0ac3ca7b9b74a )))
(constraint (= (f #xd6bb7b0a79dd39e6) (ref #xd6bb7b0a79dd39e6 )))

(check-synth)

