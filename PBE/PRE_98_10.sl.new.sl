(set-logic BV)
 (declare-oracle-fun ref 
PRE_98_10.sl-ref
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

(constraint (= (f #x00983eba6e3050dd) (ref #x00983eba6e3050dd )))
(constraint (= (f #xce7b84b2369ed225) (ref #xce7b84b2369ed225 )))
(constraint (= (f #x84a7d40166cb42de) (ref #x84a7d40166cb42de )))
(constraint (= (f #x4d5705a9239673e5) (ref #x4d5705a9239673e5 )))
(constraint (= (f #xaa373e0beb2dde83) (ref #xaa373e0beb2dde83 )))
(constraint (= (f #xe36141cb84a2c164) (ref #xe36141cb84a2c164 )))
(constraint (= (f #x5e673d99deb8e6da) (ref #x5e673d99deb8e6da )))
(constraint (= (f #x76e02ceec77e4d40) (ref #x76e02ceec77e4d40 )))
(constraint (= (f #x051ae67e0d4ce044) (ref #x051ae67e0d4ce044 )))
(constraint (= (f #xebbb66266593389b) (ref #xebbb66266593389b )))

(check-synth)

