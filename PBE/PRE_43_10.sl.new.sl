(set-logic BV)
 (declare-oracle-fun ref 
PRE_43_10.sl-ref
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

(constraint (= (f #xd1e68781115390b4) (ref #xd1e68781115390b4 )))
(constraint (= (f #xe78c6924e1e3c089) (ref #xe78c6924e1e3c089 )))
(constraint (= (f #x9e8d6ae31d83eaed) (ref #x9e8d6ae31d83eaed )))
(constraint (= (f #x1d106ede55242139) (ref #x1d106ede55242139 )))
(constraint (= (f #x440c0dd3548626b6) (ref #x440c0dd3548626b6 )))
(constraint (= (f #x2ee717ce0ccbee64) (ref #x2ee717ce0ccbee64 )))
(constraint (= (f #x2be2ee8b4e68c9c9) (ref #x2be2ee8b4e68c9c9 )))
(constraint (= (f #xdbadae1c6867de6a) (ref #xdbadae1c6867de6a )))
(constraint (= (f #x84eb789a226b07c5) (ref #x84eb789a226b07c5 )))
(constraint (= (f #x0973ae7b780b3c5b) (ref #x0973ae7b780b3c5b )))

(check-synth)

