(set-logic BV)

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

(constraint (= (f #xec20ecd05c0851ae) #x0ec20ecd05c0851a))
(constraint (= (f #x1de6b6dc97db1751) #x01de6b6dc97db175))
(constraint (= (f #x4e4936e9c5c1ed81) #x00004e4936e9c5c1))
(constraint (= (f #xaecd2a928edc006e) #x0aecd2a928edc006))
(constraint (= (f #x34e4ecebbcdee8b2) #x000034e4ecebbcde))
(constraint (= (f #x8c3d7149ce70b888) #x00008c3d7149ce70))
(constraint (= (f #x37c76099679ca5ab) #x037c76099679ca5a))
(constraint (= (f #xe503727605e04a00) #x0000e503727605e0))
(constraint (= (f #x00b2ec55de67ea2b) #x000b2ec55de67ea2))
(constraint (= (f #x046e1189d57e8ec2) #x0046e1189d57e8ec))

(check-synth)

