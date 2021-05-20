;https://connect.collins.co.uk/repo1/Content/Live/JI/Leckie/GCSE-Maths-Student-Book-Edexcel-Final-03-MarSAMPLEBOOK/wrapper/index.html?r=t#23

(declare-oracle-fun isPrime primes (Int ) Bool)


(declare-fun factor1 () Int)
(declare-fun factor2 () Int)
(declare-fun factor3 () Int)
(declare-fun factor4 () Int)

(assert (isPrime factor1))
(assert (isPrime factor2))
(assert (isPrime factor3))
(assert (isPrime factor4))
(assert (= (* factor1 factor2 factor3 factor4) 24))

(check-sat)
(get-model)
