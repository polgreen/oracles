(set-logic BV)
 (declare-oracle-fun ref 
PRE_56_10.sl-ref
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

(constraint (= (f #x3e028b121ce9770b) (ref #x3e028b121ce9770b )))
(constraint (= (f #x2612baaa403edde9) (ref #x2612baaa403edde9 )))
(constraint (= (f #xbaac9b72a25aeae5) (ref #xbaac9b72a25aeae5 )))
(constraint (= (f #x41614953a3eed8d9) (ref #x41614953a3eed8d9 )))
(constraint (= (f #xe8e28e56e35b9bb5) (ref #xe8e28e56e35b9bb5 )))
(constraint (= (f #xe876e15baebbbe9e) (ref #xe876e15baebbbe9e )))
(constraint (= (f #xd5b1e6be238d4c47) (ref #xd5b1e6be238d4c47 )))
(constraint (= (f #x07c63e46a22ed5e1) (ref #x07c63e46a22ed5e1 )))
(constraint (= (f #x8b18a86eeaeca52b) (ref #x8b18a86eeaeca52b )))
(constraint (= (f #x66b3d68cb990c91e) (ref #x66b3d68cb990c91e )))

(check-synth)

