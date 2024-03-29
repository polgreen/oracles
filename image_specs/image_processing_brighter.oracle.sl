(set-logic BV)

(set-logic ALL)
(synth-fun tweak((pixel (_ BitVec 8)))
 (_ BitVec 8)
(( NTnonbool (_ BitVec 8))(NTbool Bool))
((NTnonbool (_ BitVec 8)(pixel (_ bv0 8) (_ bv1 8) (bvadd NTnonbool NTnonbool)(bvsub NTnonbool NTnonbool)(bvshl NTnonbool NTnonbool)(bvlshr NTnonbool NTnonbool)(ite NTbool NTnonbool NTnonbool)))
(NTbool Bool((and NTbool NTbool)(or NTbool NTbool)(not NTbool)(= NTnonbool NTnonbool)(bvuge NTnonbool NTnonbool)(bvugt NTnonbool NTnonbool)))
)
)

; abusing pixel_oracle.sh both for 'correctness' and 'hints'

; correctness (verification)
(declare-oracle-fun pixel_correct ./pixel_oracle_brighter.sh ((-> (_ BitVec 8) (_ BitVec 8))) Bool)

(constraint (pixel_correct tweak))

; hints (synthesis)
(oracle-constraint
  ./pixel_oracle_brighter.sh
  ((tweak (-> (_ BitVec 8) (_ BitVec 8))))
  ((correct Bool) (pixelIn (_ BitVec 8)) (pixelOut (_ BitVec 8)))
  (=> (not correct) (= (tweak pixelIn) pixelOut)))

(check-synth)
