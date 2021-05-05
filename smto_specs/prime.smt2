

(declare-oracle-fun isPrime primes (Int ) Bool)

(declare-fun n () Int)

(assert (isPrime 200004019))

(check-sat) 