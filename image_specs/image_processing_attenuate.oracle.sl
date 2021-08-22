(set-logic HO_BV)

(synth-fun tweak ((pixel (_ BitVec 8))) (_ BitVec 8))

; abusing pixel_oracle.sh both for 'correctness' and 'hints'

; correctness (verification)
(declare-oracle-fun pixel_correct  ((-> (_ BitVec 8) (_ BitVec 8))) Bool fake)

(constraint (pixel_correct tweak))

; hints (synthesis)
(oracle-constraint
  ((tweak (-> (_ BitVec 8) (_ BitVec 8))))
  ((correct Bool) (pixelIn (_ BitVec 8)) (pixelOut (_ BitVec 8)))
  (=> (not correct) (= (tweak pixelIn) pixelOut)) fake)

(check-synth)
