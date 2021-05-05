; SMT 2
; invpendang
(define-fun A00 () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven 1.185043))
(define-fun A01 () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven 0))
(define-fun A10 () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven 1))
(define-fun A11 () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven 0))
(define-fun B0 () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven 1))
(define-fun B1 () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven 0))

; set_to true (equal)
;(define-fun A00 () (_ FloatingPoint 11 53) (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000))

; controller
(declare-fun K0 () (_ FloatingPoint 11 53))
(declare-fun K1 () (_ FloatingPoint 11 53))

(define-fun AminusBK00 () (_ FloatingPoint 11 53) (fp.sub roundNearestTiesToEven A00 (fp.mul roundNearestTiesToEven B0 K0)))
(define-fun AminusBK01 () (_ FloatingPoint 11 53) (fp.sub roundNearestTiesToEven A01 (fp.mul roundNearestTiesToEven B0 K1)))
(define-fun AminusBK10 () (_ FloatingPoint 11 53) (fp.sub roundNearestTiesToEven A10 (fp.mul roundNearestTiesToEven B1 K0)))
(define-fun AminusBK11 () (_ FloatingPoint 11 53) (fp.sub roundNearestTiesToEven A11 (fp.mul roundNearestTiesToEven B1 K1)))

;(declare-oracle-fun isStable isstable ((_ FloatingPoint 11 53)(_ FloatingPoint 11 53)(_ FloatingPoint 11 53)(_ FloatingPoint 11 53)) Bool)
;(declare-fun isStable ((_ FloatingPoint 11 53)(_ FloatingPoint 11 53)(_ FloatingPoint 11 53)(_ FloatingPoint 11 53)) Bool)
; eigenvalue 1 (m00/2 + m11/2 - (m00^2 - 2*m00*m11 + m11^2 + 4*m01*m10)^(1/2)/2)

(declare-fun root () (_ FloatingPoint 11 53))

(define-fun four () (_ FloatingPoint 11 53) (fp #b0 #b10000000001 #b0000000000000000000000000000000000000000000000000000))
(define-fun two () (_ FloatingPoint 11 53) (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000))
(define-fun one () (_ FloatingPoint 11 53) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))


; root  = (m00^2 - 2*m00*m11 + m11^2 + 4*m01*m10)^(1/2)
(assert (= (fp.mul roundNearestTiesToEven root root)  
	(fp.add roundNearestTiesToEven 
	(fp.add roundNearestTiesToEven 
	(fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven AminusBK00 AminusBK00)  ;m00^2 
		(fp.mul roundNearestTiesToEven two (fp.mul roundNearestTiesToEven AminusBK00 AminusBK11));2*m00*m11
		)
	(fp.mul roundNearestTiesToEven AminusBK11 AminusBK11)) ;m11^2
	(fp.mul roundNearestTiesToEven one (fp.mul roundNearestTiesToEven AminusBK01 AminusBK10)))))

(assert (fp.lt (fp.sub roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.div roundNearestTiesToEven AminusBK00 two) (fp.div roundNearestTiesToEven AminusBK11 two))  
	(fp.div roundNearestTiesToEven root two)) one))

;eigenvalue 2 (m00/2 + m11/2 + (m00^2 - 2*m00*m11 + m11^2 + 4*m01*m10)^(1/2)/2)

(assert (fp.lt (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.div roundNearestTiesToEven AminusBK00 two) (fp.div roundNearestTiesToEven AminusBK11 two))  
	(fp.div roundNearestTiesToEven root two)) one))


;(assert (isStable AminusBK00 AminusBK01 AminusBK10 AminusBK11))
(assert (not (fp.isNaN AminusBK00)))
(assert (not (fp.isNaN AminusBK01)))
(assert (not (fp.isNaN AminusBK10)))
(assert (not (fp.isNaN AminusBK11)))




(check-sat)
(get-model)

