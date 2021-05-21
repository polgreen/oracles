(set-logic BV)
 (declare-oracle-fun ref 
PRE_115_10.sl-ref
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

(constraint (= (f #x407342b4898da67e) (ref #x407342b4898da67e )))
(constraint (= (f #xa454175d3cb6e7a2) (ref #xa454175d3cb6e7a2 )))
(constraint (= (f #xe426ed5261cac26e) (ref #xe426ed5261cac26e )))
(constraint (= (f #xbeecd7cb22e535ab) (ref #xbeecd7cb22e535ab )))
(constraint (= (f #x469724129ed193c0) (ref #x469724129ed193c0 )))
(constraint (= (f #x3e7c6de6d950ca21) (ref #x3e7c6de6d950ca21 )))
(constraint (= (f #x4095ab0ea98867eb) (ref #x4095ab0ea98867eb )))
(constraint (= (f #xa020c51c71dac296) (ref #xa020c51c71dac296 )))
(constraint (= (f #x8eb8e91016deb707) (ref #x8eb8e91016deb707 )))
(constraint (= (f #xd17cb63dbd94e05b) (ref #xd17cb63dbd94e05b )))

(check-synth)

