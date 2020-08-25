(set-logic BV)
(declare-oracle example-neg ()((x (_ BitVec 64))(z(_ BitVec 64))) :q-neg)
(declare-oracle example-pos ()((x (_ BitVec 64))(z(_ BitVec 64))) :q-pos)

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

(synth-fun f ((x (_ BitVec 64))) (z (_ BitVec 64))

    ((Start (_ BitVec 64)))

    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start))))

    (oracle-interface (example-neg) (example-pos))
 )

(constraint (= (f #xd5a6481ee2ba1030) #xfffffffffffffffe))
(constraint (= (f #x03e887e72dee55cd) #x03e887e72dee55cd))
(constraint (= (f #xaced92921c8e318d) #xaced92921c8e318d))
(constraint (= (f #x95e5e4184e40aaec) #xfffffffffffffffe))
(constraint (= (f #x352367e34d76550b) #x352367e34d76550b))
(constraint (= (f #x398560eeee7b1b6c) #xfffffffffffffffe))
(constraint (= (f #x099be4899986c29a) #xfffffffffffffffe))
(constraint (= (f #xb14b75be2e13445a) #xfffffffffffffffe))
(constraint (= (f #xb4c680ad7e6b16ce) #xfffffffffffffffe))
(constraint (= (f #x7e4954872868acb8) #xfffffffffffffffe))

(check-synth)
