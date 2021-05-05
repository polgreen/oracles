; goldbach's conjecture: every even whole number greater than 2 is the sum of 2 prime numbers
; finds a witness to the goldbach conjecture (NB not proof, proof needs quantifiers)

(define-fun-rec isPrimeRec ((a Int) (b Int)) Bool
  (ite (> b (div a 2))
    true
    (ite (= (mod a b) 0) 
      false
      (isPrimeRec a (+ b 1))))
)

(define-fun isPrime ((a Int)) Bool
  (ite (<= a 1)
    false
    (isPrimeRec a 2)))

(declare-fun z () Int)
(declare-fun x () Int)
(declare-fun y () Int)


(assert (>= x 1))
(assert (>= y 1))
(assert (>= z 1))


(assert (isPrime x))
(assert (isPrime y))
(assert (= (* x y) z))
(assert (= z 15))

(check-sat) 