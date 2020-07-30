# Oracles for synthesis

This repository contains some example oracles for synthesis which could be used to synthesise a function that computes the maximum of 2 numbers, i.e., to solve this SyGuS problem

~~~
(set-logic LIA)

(synth-fun max ((x Int) (y Int)) Int )

(declare-var x Int)
(declare-var y Int)

(constraint (>= (max2 x y) x))
(constraint (>= (max2 x y) y))
(constraint (or (= x (max2 x y)) (= y (max2 x y))))
(check-synth)
~~~

To build the oracles run 
~~~
Make
~~~

The following oracles are created:
- an input-ouput oracle: max-io, which is called with the command `max-io input1 input2` where `input1` and `input2` are the inputs to the `max` function. It will return a value for `z`, the output.
- a positive witness oracle: max-pos, which is called with the command `max-pos`. It will return a positive example for `x`, `y` and `z`.
- a negative witness oracle: max-neg, which is called with the command `max-neg`. It will return a negative example for `x`, `y` and `z`.
