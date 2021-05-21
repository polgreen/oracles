(set-logic BV)
 (declare-oracle-fun ref 
PRE_64_10.sl-ref
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

(constraint (= (f #xc7b50625b38b3d97) (ref #xc7b50625b38b3d97 )))
(constraint (= (f #x7db2ed908ed01205) (ref #x7db2ed908ed01205 )))
(constraint (= (f #x2ae94c2b23e3cd79) (ref #x2ae94c2b23e3cd79 )))
(constraint (= (f #x3b8d94ea7d03e216) (ref #x3b8d94ea7d03e216 )))
(constraint (= (f #xeab381d47c86b2ed) (ref #xeab381d47c86b2ed )))
(constraint (= (f #x3e6d5dded43d849b) (ref #x3e6d5dded43d849b )))
(constraint (= (f #x20e37c512e44e4e9) (ref #x20e37c512e44e4e9 )))
(constraint (= (f #x317a3e9298946612) (ref #x317a3e9298946612 )))
(constraint (= (f #xbe9160bde8eed92d) (ref #xbe9160bde8eed92d )))
(constraint (= (f #x9bd9866ce63eb972) (ref #x9bd9866ce63eb972 )))

(check-synth)

