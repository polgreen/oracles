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

(constraint (= (f #x39333a33cea27561) #xfffffffffffffffe))
(constraint (= (f #x875ecd02934eb458) #x01d872a3e128b08c))
(constraint (= (f #xe280ac2ca0b16551) #xfffffffffffffffe))
(constraint (= (f #xdd5ec05ac5337bbd) #xfffffffffffffffe))
(constraint (= (f #x2253056ebde55d01) #xfffffffffffffffe))
(constraint (= (f #x63d67b49ee595645) #xfffffffffffffffe))
(constraint (= (f #x83a777109a70880d) #xfffffffffffffffe))
(constraint (= (f #x51d0e144a10ec149) #xfffffffffffffffe))
(constraint (= (f #xcdae3a5c0531702e) #x02a436c46fc2b1be))
(constraint (= (f #x1deaee9e5e26569c) #x0367033174765411))

(check-synth)

