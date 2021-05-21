(set-logic BV)
 (declare-oracle-fun ref 
PRE_68_10.sl-ref
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

(constraint (= (f #xec20ecd05c0851ae) (ref #xec20ecd05c0851ae )))
(constraint (= (f #x1de6b6dc97db1751) (ref #x1de6b6dc97db1751 )))
(constraint (= (f #x4e4936e9c5c1ed81) (ref #x4e4936e9c5c1ed81 )))
(constraint (= (f #xaecd2a928edc006e) (ref #xaecd2a928edc006e )))
(constraint (= (f #x34e4ecebbcdee8b2) (ref #x34e4ecebbcdee8b2 )))
(constraint (= (f #x8c3d7149ce70b888) (ref #x8c3d7149ce70b888 )))
(constraint (= (f #x37c76099679ca5ab) (ref #x37c76099679ca5ab )))
(constraint (= (f #xe503727605e04a00) (ref #xe503727605e04a00 )))
(constraint (= (f #x00b2ec55de67ea2b) (ref #x00b2ec55de67ea2b )))
(constraint (= (f #x046e1189d57e8ec2) (ref #x046e1189d57e8ec2 )))

(check-synth)

