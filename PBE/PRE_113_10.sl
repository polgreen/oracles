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

(constraint (= (f #x9c6c25661dc9d634) #x38d84acc3b93ac68))
(constraint (= (f #x2be6709487973ced) #x15f3384a43cb9e77))
(constraint (= (f #x2c7eee01e59eb9c0) #x58fddc03cb3d7380))
(constraint (= (f #x7412c40ec51cbc58) #xe825881d8a3978b0))
(constraint (= (f #xde8e3e5d701107a1) #x6f471f2eb80883d1))
(constraint (= (f #x1e9e5e0c6112db31) #x0f4f2f0630896d99))
(constraint (= (f #x848ea0e1e3da4723) #x42475070f1ed2392))
(constraint (= (f #xab08ac3613991219) #x5584561b09cc890d))
(constraint (= (f #xe59b3be1787e9489) #x72cd9df0bc3f4a45))
(constraint (= (f #xd0833761eee6ebeb) #x68419bb0f77375f6))

(check-synth)

