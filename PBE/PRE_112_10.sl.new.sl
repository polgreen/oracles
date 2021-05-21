(set-logic BV)
 (declare-oracle-fun ref 
PRE_112_10.sl-ref
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

(constraint (= (f #x78c97a78c9a86653) (ref #x78c97a78c9a86653 )))
(constraint (= (f #x9e8969bd7e39ee48) (ref #x9e8969bd7e39ee48 )))
(constraint (= (f #xa5e016e1056e1dca) (ref #xa5e016e1056e1dca )))
(constraint (= (f #x7799082a428aa965) (ref #x7799082a428aa965 )))
(constraint (= (f #xd85172bd9beb73c7) (ref #xd85172bd9beb73c7 )))
(constraint (= (f #x7ea8541d9c2ab554) (ref #x7ea8541d9c2ab554 )))
(constraint (= (f #x36bbc8b1a6050ec2) (ref #x36bbc8b1a6050ec2 )))
(constraint (= (f #x05e67429c1dc893e) (ref #x05e67429c1dc893e )))
(constraint (= (f #x7a22c90ed54aab68) (ref #x7a22c90ed54aab68 )))
(constraint (= (f #xa16d9de778940d13) (ref #xa16d9de778940d13 )))

(check-synth)

