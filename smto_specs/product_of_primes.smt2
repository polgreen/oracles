; find prime factors (two or three only)

(declare-oracle-fun isPrime primes (Int ) Bool)

(declare-fun z () Int)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun w () Int)


(assert (>= x 1))
(assert (>= y 1))
(assert (>= z 1))
(assert (>= w 1))

(assert (isPrime x))
(assert (isPrime y))
(assert (isPrime w))
(assert (or (= (* (* x y ) w) z) (= (* x y ) z)) )
(assert (= z 38))

(check-sat) 
(get-model)