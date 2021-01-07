(set-logic LIA)

(synth-fun max ((x Int) (y Int)) Int
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
                      (>=  Start Start)))))

(declare-var x Int)
(declare-var y Int)
(declare-var myoracle (-> Int Int Int))

(constraint (>= (max x y) x))
(constraint (>= (max x y) y))
(constraint (= (max 10 5) (myoracle 10 5)))
(constraint (= (max 7 9)(myoracle 7 9)))

(oracle-constraint max-io ((x Int)(y Int))((z Int))
(= (myoracle x y) z )
)


(check-synth)

