;https://connect.collins.co.uk/repo1/Content/Live/JI/Leckie/GCSE-Maths-Student-Book-Edexcel-Final-03-MarSAMPLEBOOK/wrapper/index.html?r=t#23

;(declare-oracle-fun isPrime primes (Int ) Bool)

; need to fix modulo parsing

(declare-fun n () Int)
(assert (or (= n 12)(= n 8)(= n 13) (= n 17) (= n 15) (= n 21) (= n 9)(= n 10)(= n 18)(= n 14)(= n 16)(= n 6) ))

(assert (= (mod n 3) 0))
(assert (= (mod n 4) 0))

(check-sat) 
(get-model)