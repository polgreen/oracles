

(declare-oracle-fun isPrime  (Int ) Bool isprime)

; note that this will only say "unsat" or "unknown", should do unsat queries below


; Example:
; 769129 = 877 * 877 ... slow ~5 seconds
(assert (isPrime 769129))

(check-sat) 