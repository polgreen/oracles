# Oracles 
This repository contains sample oracles for synthesis modulo oracles and satisfiability modulo oracles

## Building the oracles

- Download Eigen and CBMC
- Edit Config.inc to include the correct paths to Eigen and CBMC
- Compile CBMC
- run Make

## number_oracles


## max-example

Examples which could be used to synthesise a function that computes the maximum of 2 numbers, i.e., to solve this SyGuS problem

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

## image oracles

## matrices

## prime_oracles

# Specs
The repository also contains sample SMTO and Synthesis files. 

- SMTO files with the extension '.smt2' can be run with Delphi 
- SMT files with the extension no-oracle.smt2 can be run with any SMT solver
- synthesis files with the extension '.sl' can be run with Delphi
- synthesis files with the extension 'no-oracle.sl' can be run with any SyGuS solver