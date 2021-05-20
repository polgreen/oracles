(set-logic BV)
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (bvshl Start #x0000000000000001) (bvlshr Start #x0000000000000001) (bvlshr Start #x0000000000000004) (bvlshr Start #x0000000000000010) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (ite (= Start #x0000000000000001) Start Start)))))

(declare-var x (_ BitVec 64))

(declare-oracle-fun rand rand ((_ BitVec 64)) (_ BitVec 64))
(declare-oracle-fun reffunction
PRE_21_10.sl-ref
((_ BitVec 64)) (_ BitVec 64))
(constraint (=> (and (< (_ bv0 64) x)(>= (_ bv10 64) x))(= (f(rand x)) (reffunction (rand x)))))
(check-synth)  
