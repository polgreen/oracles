(set-logic BV)
 (declare-oracle-fun ref 
PRE_95_10.sl-ref
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

(constraint (= (f #x6a526433946db183) (ref #x6a526433946db183 )))
(constraint (= (f #x70537e3e52455423) (ref #x70537e3e52455423 )))
(constraint (= (f #x3a13584c406871a1) (ref #x3a13584c406871a1 )))
(constraint (= (f #xe9e3d11eb6208ebd) (ref #xe9e3d11eb6208ebd )))
(constraint (= (f #xbe5cc03822a3a7e1) (ref #xbe5cc03822a3a7e1 )))
(constraint (= (f #x4aeec336b4e610e3) (ref #x4aeec336b4e610e3 )))
(constraint (= (f #x6ebd666ee4eec9e7) (ref #x6ebd666ee4eec9e7 )))
(constraint (= (f #x06dd6314116d2195) (ref #x06dd6314116d2195 )))
(constraint (= (f #xce6b15de5ab2d1ce) (ref #xce6b15de5ab2d1ce )))
(constraint (= (f #x457ad0e42c41ac31) (ref #x457ad0e42c41ac31 )))

(check-synth)

