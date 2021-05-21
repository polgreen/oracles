(set-logic BV)
 (declare-oracle-fun ref 
PRE_132_10.sl-ref
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

(constraint (= (f #x29b5ce505c4ebb04) (ref #x29b5ce505c4ebb04 )))
(constraint (= (f #x12810cad518e8ca9) (ref #x12810cad518e8ca9 )))
(constraint (= (f #xc2b4bee92a4b4227) (ref #xc2b4bee92a4b4227 )))
(constraint (= (f #x1c24d0b9cbb7762a) (ref #x1c24d0b9cbb7762a )))
(constraint (= (f #xe60ce5178052bb0e) (ref #xe60ce5178052bb0e )))
(constraint (= (f #xde96e435eb9dead8) (ref #xde96e435eb9dead8 )))
(constraint (= (f #x5950edc7b9e8be45) (ref #x5950edc7b9e8be45 )))
(constraint (= (f #x525eaba42b17293a) (ref #x525eaba42b17293a )))
(constraint (= (f #x0ee65966a7c9a03e) (ref #x0ee65966a7c9a03e )))
(constraint (= (f #x32aa8c70e534752d) (ref #x32aa8c70e534752d )))

(check-synth)

