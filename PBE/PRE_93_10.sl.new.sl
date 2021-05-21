(set-logic BV)
 (declare-oracle-fun ref 
PRE_93_10.sl-ref
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

(constraint (= (f #x82d9650b78553887) (ref #x82d9650b78553887 )))
(constraint (= (f #xd72d372c255ad082) (ref #xd72d372c255ad082 )))
(constraint (= (f #xb7501b799e51d430) (ref #xb7501b799e51d430 )))
(constraint (= (f #x5eb3055a4e216978) (ref #x5eb3055a4e216978 )))
(constraint (= (f #xce05dec85a3ee20c) (ref #xce05dec85a3ee20c )))
(constraint (= (f #xea55919ad2b9bab6) (ref #xea55919ad2b9bab6 )))
(constraint (= (f #x0712bbb47277d5a0) (ref #x0712bbb47277d5a0 )))
(constraint (= (f #x9243d5177d7e828d) (ref #x9243d5177d7e828d )))
(constraint (= (f #x70a7eadbb26c4ea0) (ref #x70a7eadbb26c4ea0 )))
(constraint (= (f #x78701c0e5c34ebc5) (ref #x78701c0e5c34ebc5 )))

(check-synth)

