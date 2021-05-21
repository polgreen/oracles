(set-logic BV)
 (declare-oracle-fun ref 
PRE_22_10.sl-ref
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

(constraint (= (f #x539baa47cce652eb) (ref #x539baa47cce652eb )))
(constraint (= (f #x1830a28d0397ede3) (ref #x1830a28d0397ede3 )))
(constraint (= (f #xce446c93184237e3) (ref #xce446c93184237e3 )))
(constraint (= (f #x4c5db01617c2543a) (ref #x4c5db01617c2543a )))
(constraint (= (f #x5b91db88014c9bea) (ref #x5b91db88014c9bea )))
(constraint (= (f #xdeb38e93e565aadb) (ref #xdeb38e93e565aadb )))
(constraint (= (f #x9ecddee93607e0e9) (ref #x9ecddee93607e0e9 )))
(constraint (= (f #x33b5e3eae3c68e7c) (ref #x33b5e3eae3c68e7c )))
(constraint (= (f #x09ee594e3446334e) (ref #x09ee594e3446334e )))
(constraint (= (f #x5d3800240bda631e) (ref #x5d3800240bda631e )))

(check-synth)

