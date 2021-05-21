(set-logic BV)
 (declare-oracle-fun ref 
PRE_71_10.sl-ref
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

(constraint (= (f #xe2e78ca6c693d53c) (ref #xe2e78ca6c693d53c )))
(constraint (= (f #xa961935eabbcccec) (ref #xa961935eabbcccec )))
(constraint (= (f #x3d552067e8a06422) (ref #x3d552067e8a06422 )))
(constraint (= (f #x191dc16e409ee219) (ref #x191dc16e409ee219 )))
(constraint (= (f #x74e350718010b838) (ref #x74e350718010b838 )))
(constraint (= (f #xe54353ded7589e49) (ref #xe54353ded7589e49 )))
(constraint (= (f #x707e929eec94501d) (ref #x707e929eec94501d )))
(constraint (= (f #x51ede1b7dc676592) (ref #x51ede1b7dc676592 )))
(constraint (= (f #xe7e714224941e0e4) (ref #xe7e714224941e0e4 )))
(constraint (= (f #x1d149620a81046b3) (ref #x1d149620a81046b3 )))

(check-synth)

