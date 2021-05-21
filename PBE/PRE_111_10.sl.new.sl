(set-logic BV)
 (declare-oracle-fun ref 
PRE_111_10.sl-ref
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

(constraint (= (f #x78816e053d4a20ea) (ref #x78816e053d4a20ea )))
(constraint (= (f #xe788a27d860dbde8) (ref #xe788a27d860dbde8 )))
(constraint (= (f #x76256d76c3e5d986) (ref #x76256d76c3e5d986 )))
(constraint (= (f #x8ee5bd7343229e4e) (ref #x8ee5bd7343229e4e )))
(constraint (= (f #x92b25872224e4c64) (ref #x92b25872224e4c64 )))
(constraint (= (f #x71c02511615e82b7) (ref #x71c02511615e82b7 )))
(constraint (= (f #x83b21aa78589590b) (ref #x83b21aa78589590b )))
(constraint (= (f #xe044e7b5ea939aa8) (ref #xe044e7b5ea939aa8 )))
(constraint (= (f #xa481a4a2889de652) (ref #xa481a4a2889de652 )))
(constraint (= (f #x2e1572e70432518a) (ref #x2e1572e70432518a )))

(check-synth)

