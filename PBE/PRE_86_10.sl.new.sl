(set-logic BV)
 (declare-oracle-fun ref 
PRE_86_10.sl-ref
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

(constraint (= (f #x2716ca40698b1abe) (ref #x2716ca40698b1abe )))
(constraint (= (f #xc389ab11dee16c15) (ref #xc389ab11dee16c15 )))
(constraint (= (f #x3eea93a6e54084ae) (ref #x3eea93a6e54084ae )))
(constraint (= (f #xde72145037bc894e) (ref #xde72145037bc894e )))
(constraint (= (f #xc02cdbe12e8ebace) (ref #xc02cdbe12e8ebace )))
(constraint (= (f #x76cd003eb4945602) (ref #x76cd003eb4945602 )))
(constraint (= (f #xba8740c54e5a8a8d) (ref #xba8740c54e5a8a8d )))
(constraint (= (f #x8228cd0c60eadc4b) (ref #x8228cd0c60eadc4b )))
(constraint (= (f #x0265637e42eb33d0) (ref #x0265637e42eb33d0 )))
(constraint (= (f #x8eb13edd4e789e1a) (ref #x8eb13edd4e789e1a )))

(check-synth)

