(set-logic BV)
 (declare-oracle-fun ref 
PRE_54_10.sl-ref
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

(constraint (= (f #x3ea459a928bee9b0) (ref #x3ea459a928bee9b0 )))
(constraint (= (f #x4b4159b281637d86) (ref #x4b4159b281637d86 )))
(constraint (= (f #x49e0ee5bec4486c6) (ref #x49e0ee5bec4486c6 )))
(constraint (= (f #x0216c8608935a551) (ref #x0216c8608935a551 )))
(constraint (= (f #x16ce9164ba6199b9) (ref #x16ce9164ba6199b9 )))
(constraint (= (f #x8da2ecb6d52b9e65) (ref #x8da2ecb6d52b9e65 )))
(constraint (= (f #x7742b8e77713e3c4) (ref #x7742b8e77713e3c4 )))
(constraint (= (f #x40c8cd2d84d6335e) (ref #x40c8cd2d84d6335e )))
(constraint (= (f #x2e9880aee087bb23) (ref #x2e9880aee087bb23 )))
(constraint (= (f #xa17eda1be75e4850) (ref #xa17eda1be75e4850 )))

(check-synth)

