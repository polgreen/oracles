(set-logic LIA)

(declare-oracle max-io ((x Int) (y Int)) ((z Int)) :q-io)

(synth-fun max ((x Int) (y Int)) (z Int)
    ((Start Int (x
                 y
                 0
                 1
                 (+ Start Start)
                 (- Start Start)
                 (ite StartBool Start Start)))
     (StartBool Bool ((and StartBool StartBool)
                      (or  StartBool StartBool)
                      (not StartBool)
                      (<=  Start Start)
                      (=   Start Start)
                      (>=  Start Start))))

    (oracle-interface (max-io x y)))

(declare-var x Int)
(declare-var y Int)

(constraint (>= (max x y) x))
(constraint (>= (max x y) y))
(constraint (or (= x (max x y))
				(= y (max x y))))


(check-synth)

