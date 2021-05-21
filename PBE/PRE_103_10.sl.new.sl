(set-logic BV)
 (declare-oracle-fun ref 
PRE_103_10.sl-ref
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

(constraint (= (f #x85c12c65236e72be) (ref #x85c12c65236e72be )))
(constraint (= (f #xe1207ed6c7320aa4) (ref #xe1207ed6c7320aa4 )))
(constraint (= (f #x748b82c95946458e) (ref #x748b82c95946458e )))
(constraint (= (f #x0b0003596ea5995d) (ref #x0b0003596ea5995d )))
(constraint (= (f #xb9e5beb5996d60e6) (ref #xb9e5beb5996d60e6 )))
(constraint (= (f #x972d6beb1e70e93d) (ref #x972d6beb1e70e93d )))
(constraint (= (f #x7aab56992019613b) (ref #x7aab56992019613b )))
(constraint (= (f #xe00e4ba6954cce75) (ref #xe00e4ba6954cce75 )))
(constraint (= (f #x023eee407d28b485) (ref #x023eee407d28b485 )))
(constraint (= (f #x0b439aacbb976580) (ref #x0b439aacbb976580 )))

(check-synth)

