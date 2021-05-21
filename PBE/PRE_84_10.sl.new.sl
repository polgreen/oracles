(set-logic BV)
 (declare-oracle-fun ref 
PRE_84_10.sl-ref
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

(constraint (= (f #xe093a45011447027) (ref #xe093a45011447027 )))
(constraint (= (f #x222ee77dbb47d602) (ref #x222ee77dbb47d602 )))
(constraint (= (f #xe9d6351259ee1ed4) (ref #xe9d6351259ee1ed4 )))
(constraint (= (f #xb4294084760655ad) (ref #xb4294084760655ad )))
(constraint (= (f #x63580b071e7661a3) (ref #x63580b071e7661a3 )))
(constraint (= (f #xb6de6711d9cd7e20) (ref #xb6de6711d9cd7e20 )))
(constraint (= (f #x57a3bb75d75edd42) (ref #x57a3bb75d75edd42 )))
(constraint (= (f #xae869555954769d4) (ref #xae869555954769d4 )))
(constraint (= (f #x164db6b971e3d9a9) (ref #x164db6b971e3d9a9 )))
(constraint (= (f #xd97714baed4295e9) (ref #xd97714baed4295e9 )))

(check-synth)

