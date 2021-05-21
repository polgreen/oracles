(set-logic BV)
 (declare-oracle-fun ref 
PRE_123_10.sl-ref
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

(constraint (= (f #xc0611e2e6795204c) (ref #xc0611e2e6795204c )))
(constraint (= (f #x62029ce8be48e4e7) (ref #x62029ce8be48e4e7 )))
(constraint (= (f #xee56e343ec474c9c) (ref #xee56e343ec474c9c )))
(constraint (= (f #xe8abee56db33643e) (ref #xe8abee56db33643e )))
(constraint (= (f #x19e89d165a227092) (ref #x19e89d165a227092 )))
(constraint (= (f #x16e04700c6ec5647) (ref #x16e04700c6ec5647 )))
(constraint (= (f #xb8dad884c2eb4317) (ref #xb8dad884c2eb4317 )))
(constraint (= (f #xae54de673255e139) (ref #xae54de673255e139 )))
(constraint (= (f #x5dd0c29bc2aac571) (ref #x5dd0c29bc2aac571 )))
(constraint (= (f #x47852ca031891ede) (ref #x47852ca031891ede )))

(check-synth)

