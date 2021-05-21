(set-logic BV)
 (declare-oracle-fun ref 
PRE_128_10.sl-ref
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

(constraint (= (f #x05571722de4db775) (ref #x05571722de4db775 )))
(constraint (= (f #xaa9d55ace66a929e) (ref #xaa9d55ace66a929e )))
(constraint (= (f #x4c2e7dbaeec91772) (ref #x4c2e7dbaeec91772 )))
(constraint (= (f #x7a892ba42e90e373) (ref #x7a892ba42e90e373 )))
(constraint (= (f #xb901c4e77da95e7c) (ref #xb901c4e77da95e7c )))
(constraint (= (f #xad4e32a194be4e62) (ref #xad4e32a194be4e62 )))
(constraint (= (f #xa41a8c6140763856) (ref #xa41a8c6140763856 )))
(constraint (= (f #x2e0060d6d761b97d) (ref #x2e0060d6d761b97d )))
(constraint (= (f #x536291dc5036b77a) (ref #x536291dc5036b77a )))
(constraint (= (f #x16c2e8d9e4e6055b) (ref #x16c2e8d9e4e6055b )))

(check-synth)

