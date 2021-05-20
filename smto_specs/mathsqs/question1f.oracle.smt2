;https://connect.collins.co.uk/repo1/Content/Live/JI/Leckie/GCSE-Maths-Student-Book-Edexcel-Final-03-MarSAMPLEBOOK/wrapper/index.html?r=t#23

;  a number with four prime factors and a multiple of 2 and 7. is unsat
(declare-oracle-fun isPrime primes (Int ) Bool)

(declare-fun n () Int)
(assert (or (= n 12)(= n 8)(= n 13) (= n 17) (= n 15) (= n 21) (= n 9)(= n 10)(= n 18)(= n 14)(= n 16)(= n 6) ))

(declare-fun multiplier () Int)
(declare-fun multiplier2 () Int)
(declare-fun factor1 () Int)
(declare-fun factor2 () Int)
(declare-fun factor3 () Int)
(declare-fun factor4 () Int)

(assert (= (* 2 multiplier) n))
(assert (= (* 7 multiplier2) n))
(assert (isPrime factor1))
(assert (isPrime factor2))
(assert (isPrime factor3))
(assert (isPrime factor4))

(assert (= (* factor1 factor2 factor3 factor4) n))
(check-sat) 
(get-model)

