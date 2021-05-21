(set-logic BV)
 (declare-oracle-fun ref 
PRE_102_10.sl-ref
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

(constraint (= (f #xeed40423e830e30d) (ref #xeed40423e830e30d )))
(constraint (= (f #x869d96c21cca0aeb) (ref #x869d96c21cca0aeb )))
(constraint (= (f #x83d263239ecb1da3) (ref #x83d263239ecb1da3 )))
(constraint (= (f #x757278b1ec911824) (ref #x757278b1ec911824 )))
(constraint (= (f #xa5288029843a5e1d) (ref #xa5288029843a5e1d )))
(constraint (= (f #xe64778a61a5eb27e) (ref #xe64778a61a5eb27e )))
(constraint (= (f #x7a61a580854cad5d) (ref #x7a61a580854cad5d )))
(constraint (= (f #x3ab21d42b8d4d1cc) (ref #x3ab21d42b8d4d1cc )))
(constraint (= (f #xca68ad92b35451ed) (ref #xca68ad92b35451ed )))
(constraint (= (f #x7e8012eec6892947) (ref #x7e8012eec6892947 )))

(check-synth)

