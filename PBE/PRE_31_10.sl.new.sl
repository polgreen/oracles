(set-logic BV)
 (declare-oracle-fun ref 
PRE_31_10.sl-ref
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

(constraint (= (f #x782311ce9a01e21a) (ref #x782311ce9a01e21a )))
(constraint (= (f #xee68c1a59be2955e) (ref #xee68c1a59be2955e )))
(constraint (= (f #x723ba7e585e8282a) (ref #x723ba7e585e8282a )))
(constraint (= (f #x758010363b8956ed) (ref #x758010363b8956ed )))
(constraint (= (f #x52ab23ada6e98b72) (ref #x52ab23ada6e98b72 )))
(constraint (= (f #xde942ad776a2655b) (ref #xde942ad776a2655b )))
(constraint (= (f #x2635dbbb666b92b5) (ref #x2635dbbb666b92b5 )))
(constraint (= (f #xa6e146c451842a6c) (ref #xa6e146c451842a6c )))
(constraint (= (f #xb21a19ead2000d63) (ref #xb21a19ead2000d63 )))
(constraint (= (f #xed82e4ddaa889d6a) (ref #xed82e4ddaa889d6a )))

(check-synth)

