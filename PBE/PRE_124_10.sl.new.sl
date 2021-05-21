(set-logic BV)
 (declare-oracle-fun ref 
PRE_124_10.sl-ref
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

(constraint (= (f #x321e6678937339ed) (ref #x321e6678937339ed )))
(constraint (= (f #x671e9ae978b2c33d) (ref #x671e9ae978b2c33d )))
(constraint (= (f #x3ab0a234339486be) (ref #x3ab0a234339486be )))
(constraint (= (f #x358c11cce9a53ee8) (ref #x358c11cce9a53ee8 )))
(constraint (= (f #xec82acc416ee1d51) (ref #xec82acc416ee1d51 )))
(constraint (= (f #x06a698ac31a03bed) (ref #x06a698ac31a03bed )))
(constraint (= (f #xede73acaa9c8b0ca) (ref #xede73acaa9c8b0ca )))
(constraint (= (f #x2eaca61a413e8145) (ref #x2eaca61a413e8145 )))
(constraint (= (f #xab919b00659e40a6) (ref #xab919b00659e40a6 )))
(constraint (= (f #xbaa99b84e74630b8) (ref #xbaa99b84e74630b8 )))

(check-synth)

