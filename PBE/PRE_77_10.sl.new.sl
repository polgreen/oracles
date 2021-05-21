(set-logic BV)
 (declare-oracle-fun ref 
PRE_77_10.sl-ref
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

(constraint (= (f #x1abba9be668cda41) (ref #x1abba9be668cda41 )))
(constraint (= (f #xe923a0a8d16b270e) (ref #xe923a0a8d16b270e )))
(constraint (= (f #x2cee5c341e8b3eed) (ref #x2cee5c341e8b3eed )))
(constraint (= (f #x16b658c11b7c4912) (ref #x16b658c11b7c4912 )))
(constraint (= (f #xe792ee1ebdd4c941) (ref #xe792ee1ebdd4c941 )))
(constraint (= (f #x62ebebedad01d4a1) (ref #x62ebebedad01d4a1 )))
(constraint (= (f #x8ddeeea6e3ebb584) (ref #x8ddeeea6e3ebb584 )))
(constraint (= (f #x0855465e336995b1) (ref #x0855465e336995b1 )))
(constraint (= (f #x864eb2188184eedb) (ref #x864eb2188184eedb )))
(constraint (= (f #x3e089698ebc46bb7) (ref #x3e089698ebc46bb7 )))

(check-synth)

