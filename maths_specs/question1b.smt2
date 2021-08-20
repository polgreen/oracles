;https://connect.collins.co.uk/repo1/Content/Live/JI/Leckie/GCSE-Maths-Student-Book-Edexcel-Final-03-MarSAMPLEBOOK/wrapper/index.html?r=t#23

;(declare-oracle-fun isSquare (Int ) Bool issquare)

; a square number and an odd number

(declare-fun n () Int)
(assert (or (= n 12)(= n 8)(= n 13) (= n 17) (= n 15) (= n 21) (= n 9)(= n 10)(= n 18)(= n 14)(= n 16)(= n 6) ))

(declare-fun root () Int)

(assert (= (* root root) n))
;(assert (isSquare n))
(assert (= (mod n 2) 1))

(check-sat) 
(get-model)