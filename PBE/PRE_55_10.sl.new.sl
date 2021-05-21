(set-logic BV)
 (declare-oracle-fun ref 
PRE_55_10.sl-ref
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

(constraint (= (f #x82ac45ee3c37420c) (ref #x82ac45ee3c37420c )))
(constraint (= (f #xe4e188020b9ed5ee) (ref #xe4e188020b9ed5ee )))
(constraint (= (f #x08e8671a92d701b4) (ref #x08e8671a92d701b4 )))
(constraint (= (f #xdeec3c623654c432) (ref #xdeec3c623654c432 )))
(constraint (= (f #x84a859670eba3de2) (ref #x84a859670eba3de2 )))
(constraint (= (f #x43de90ad71b616ed) (ref #x43de90ad71b616ed )))
(constraint (= (f #xd3b12c8e96b8e5b6) (ref #xd3b12c8e96b8e5b6 )))
(constraint (= (f #xdeb7620a9a5bd31d) (ref #xdeb7620a9a5bd31d )))
(constraint (= (f #xae1deae8eea5d752) (ref #xae1deae8eea5d752 )))
(constraint (= (f #x934ab303a7c787e9) (ref #x934ab303a7c787e9 )))

(check-synth)

