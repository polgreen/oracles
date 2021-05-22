;https://connect.collins.co.uk/repo1/Content/Live/JI/Leckie/GCSE-Maths-Student-Book-Edexcel-Final-03-MarSAMPLEBOOK/wrapper/index.html?r=t#23

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

; a prime number and a factor of 39

(declare-fun n () Int)
(assert (or (= n 12)(= n 8)(= n 13) (= n 17) (= n 15) (= n 21) (= n 9)(= n 10)(= n 18)(= n 14)(= n 16)(= n 6) ))

(declare-fun multiplier () Int)

(assert (= (* n multiplier) 39))
(assert (isPrime n))
(check-sat) 
(get-model)