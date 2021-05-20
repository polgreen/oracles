;https://connect.collins.co.uk/repo1/Content/Live/JI/Leckie/GCSE-Maths-Student-Book-Edexcel-Final-03-MarSAMPLEBOOK/wrapper/index.html?r=t#23

(declare-oracle-fun isPrime isprime (Int ) Bool)

; (define-fun-rec isPrimeRec ((a Int) (b Int)) Bool
;   (ite (> b (div a 2))
;     true
;     (ite (= (mod a b) 0) 
;       false
;       (isPrimeRec a (+ b 1))))
; )

; (define-fun isPrime ((a Int)) Bool
;   (ite (<= a 1)
;     false
;     (isPrimeRec a 2)))


(declare-fun factor1 () Int)
(declare-fun factor2 () Int)
(declare-fun factor3 () Int)


(assert (and (isPrime factor1)(isPrime factor2)(isPrime factor3)))
(assert (= (* factor1 factor2 factor3) 76))

(check-sat)
(get-model)
