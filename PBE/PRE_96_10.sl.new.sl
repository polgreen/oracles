(set-logic BV)
 (declare-oracle-fun ref 
PRE_96_10.sl-ref
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

(constraint (= (f #x4b44d589543a565b) (ref #x4b44d589543a565b )))
(constraint (= (f #x60e4741ede572dae) (ref #x60e4741ede572dae )))
(constraint (= (f #x377e80057ae8bca6) (ref #x377e80057ae8bca6 )))
(constraint (= (f #xe5aa51edae79ee50) (ref #xe5aa51edae79ee50 )))
(constraint (= (f #x2c947e52d713642d) (ref #x2c947e52d713642d )))
(constraint (= (f #xe0680844d6470e22) (ref #xe0680844d6470e22 )))
(constraint (= (f #xe6ddc3ee7242a70c) (ref #xe6ddc3ee7242a70c )))
(constraint (= (f #x46bb5e5b69cdb903) (ref #x46bb5e5b69cdb903 )))
(constraint (= (f #xba16321b911b1ead) (ref #xba16321b911b1ead )))
(constraint (= (f #x6987b7c65b0725ce) (ref #x6987b7c65b0725ce )))

(check-synth)

