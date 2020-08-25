(set-logic BV)

(synth-fun multiply45 ((y (_ BitVec 32))) (z (_ BitVec 32)))

(declare-var y (_ BitVec 32))


(constraint (>= (max x y) x))
(constraint (>= (max x y) y))
(constraint (or (= x (max x y))
				(= y (max x y))))


(check-synth)

