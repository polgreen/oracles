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

(declare-fun n () Int)


; note that this will only say "unsat" or "unknown", should do unsat queries below

; Example:
;(assert (isPrime 4))

; Example:
;(assert (not (isPrime 7)))

; Example:
; 769129 = 877 * 877 ... slow ~5 seconds
(assert (isPrime 200004019))

(check-sat) 