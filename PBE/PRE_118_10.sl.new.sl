(set-logic BV)
 (declare-oracle-fun ref 
PRE_118_10.sl-ref
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

(constraint (= (f #x7ae6e89bceabea30) (ref #x7ae6e89bceabea30 )))
(constraint (= (f #x4c1d10e3542b7b59) (ref #x4c1d10e3542b7b59 )))
(constraint (= (f #x06ea177047e59e6d) (ref #x06ea177047e59e6d )))
(constraint (= (f #x7d48ba79dd2a578d) (ref #x7d48ba79dd2a578d )))
(constraint (= (f #x6e1327bd87241083) (ref #x6e1327bd87241083 )))
(constraint (= (f #x02700e1ed96ad31d) (ref #x02700e1ed96ad31d )))
(constraint (= (f #xdaeb644158573713) (ref #xdaeb644158573713 )))
(constraint (= (f #x2ed5be278659e2ed) (ref #x2ed5be278659e2ed )))
(constraint (= (f #xa3e518eb9ee32de4) (ref #xa3e518eb9ee32de4 )))
(constraint (= (f #xac96c241231ea9ee) (ref #xac96c241231ea9ee )))

(check-synth)

