;https://connect.collins.co.uk/repo1/Content/Live/JI/Leckie/GCSE-Maths-Student-Book-Edexcel-Final-03-MarSAMPLEBOOK/wrapper/index.html?r=t#23

;  an odd triangular number that is a multiple of 7
(declare-oracle-fun isTriangle (Int ) Bool istriangle)
;(declare-oracle-fun isPrime primes (Int ) Bool)


(declare-fun n () Int)
(assert (or (= n 12)(= n 8)(= n 13) (= n 17) (= n 15) (= n 21) (= n 9)(= n 10)(= n 18)(= n 14)(= n 16)(= n 6) ))

(declare-fun m () Int)

(assert (= (mod n 2) 1))
(assert (isTriangle n))
(assert (= (* m 7) n))


(check-sat) 
(get-model)

; a. a multiple of 3 and a multiple of 4
; b. a square number and an odd number
; c. a factor of 24 and a factor of 18
; d. a prime number and a factor of 39
; e. an odd factor of 30 and a multiple of 3
; f. a number with four factors and a multiple of 2 and 7
; g. a number with five factors exactly
; h. a triangular number and a factor of 20
; i. an even number and a factor of 36 and a multiple of 9
; j. a prime number that is one more than a square number
; k. a number with factors that, when written out in order, make a number pattern in which each number is twice the one before
; l. an odd triangular number that is a multiple of 7