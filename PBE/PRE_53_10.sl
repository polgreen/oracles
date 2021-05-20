(set-logic BV)

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

(constraint (= (f #x68d9e31c895c7a3c) #xd1b3c63912b8f478))
(constraint (= (f #xea7e9986b346b711) #xc07c110422042600))
(constraint (= (f #x56530dd5da13ee60) #xaca61babb427dcc0))
(constraint (= (f #x7b7e68db8293b0ad) #x727c409300032008))
(constraint (= (f #x81e66b6ced61ea6d) #x01c44248c841c048))
(constraint (= (f #xbbc1e3d784265e9c) #x7783c7af084cbd38))
(constraint (= (f #xc84a3aeeb018458a) #x909475dd60308b14))
(constraint (= (f #xbe58c11e2995176c) #x7cb1823c532a2ed8))
(constraint (= (f #x2be3665dd3e01cce) #x57c6ccbba7c0399c))
(constraint (= (f #x7e6261b6d15c5308) #xfcc4c36da2b8a610))

(check-synth)

