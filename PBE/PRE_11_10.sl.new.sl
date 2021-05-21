(set-logic BV)
 (declare-oracle-fun ref 
PRE_11_10.sl-ref
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

(constraint (= (f #x9db91b67d1eee4b4) (ref #x9db91b67d1eee4b4 )))
(constraint (= (f #x211526232b50ea1d) (ref #x211526232b50ea1d )))
(constraint (= (f #xedcec1de604e94ec) (ref #xedcec1de604e94ec )))
(constraint (= (f #xede1841179ee3684) (ref #xede1841179ee3684 )))
(constraint (= (f #x9c623bcc40d252bd) (ref #x9c623bcc40d252bd )))
(constraint (= (f #x4601c6d84a50d01b) (ref #x4601c6d84a50d01b )))
(constraint (= (f #x0c5ed1e748c4e26c) (ref #x0c5ed1e748c4e26c )))
(constraint (= (f #x6bb653229e60ee94) (ref #x6bb653229e60ee94 )))
(constraint (= (f #x483db90b3dee6596) (ref #x483db90b3dee6596 )))
(constraint (= (f #x55376e703c4a1ea8) (ref #x55376e703c4a1ea8 )))

(check-synth)

