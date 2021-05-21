(set-logic BV)
 (declare-oracle-fun ref 
PRE_107_10.sl-ref
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

(constraint (= (f #xc7c78c355c3eb4ec) (ref #xc7c78c355c3eb4ec )))
(constraint (= (f #x582b3633a28793e4) (ref #x582b3633a28793e4 )))
(constraint (= (f #xacad5b76053e37ee) (ref #xacad5b76053e37ee )))
(constraint (= (f #x889551ee25b285b7) (ref #x889551ee25b285b7 )))
(constraint (= (f #x53cd253676e37e4a) (ref #x53cd253676e37e4a )))
(constraint (= (f #x412a7694e0b8dcc2) (ref #x412a7694e0b8dcc2 )))
(constraint (= (f #xd5c973a98792891c) (ref #xd5c973a98792891c )))
(constraint (= (f #xb773418550a85c3e) (ref #xb773418550a85c3e )))
(constraint (= (f #xe0ee505c5617d429) (ref #xe0ee505c5617d429 )))
(constraint (= (f #x127ce8d7eaae1bcc) (ref #x127ce8d7eaae1bcc )))

(check-synth)

