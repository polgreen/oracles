; time discretisation 1.200  
; NSTATES 2 
; NINPUTS 1 
; NINPUTS 1 
(define-fun A00r () Real  1.135064313514 )
(define-fun A01r () Real 0.445808510699 )
(define-fun A10r () Real 0.250000000000 )
(define-fun A11r () Real 0.000000000000 )
(define-fun B0r () Real 2.000000000000 )
(define-fun B1r () Real 0.000000000000 )




(define-fun upperr () Real 1.0)
(define-fun lowerr () Real (- 1.0))
(define-fun init_upperr () Real 0.1)
(define-fun init_lowerr () Real (- 0.1))
(define-fun inputs_upperr () Real 10.0)
(define-fun inputs_lowerr () Real (- 10.0))


; float point representation of spec
(define-fun A00 () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven A00r))
(define-fun A01 () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven A01r))
(define-fun A10 () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven A10r))
(define-fun A11 () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven A11r))
(define-fun B0 () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven B0r))
(define-fun B1 () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven B1r))

(define-fun upper () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven upperr))
(define-fun lower () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven lowerr))
(define-fun init_upper () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven init_upperr))
(define-fun init_lower () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven init_lowerr))
(define-fun inputupper () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven 10.0))
(define-fun inputlower () (_ FloatingPoint 11 53) ((_ to_fp 11 53) roundNearestTiesToEven (- 10.0)))

; controller
(synth-fun K0 () (_ FloatingPoint 11 53))
(synth-fun K1 () (_ FloatingPoint 11 53))

; #### is stable #### 
(define-fun AminusBK00 () (_ FloatingPoint 11 53) (fp.sub roundNearestTiesToEven A00 (fp.mul roundNearestTiesToEven B0 K0)))
(define-fun AminusBK01 () (_ FloatingPoint 11 53) (fp.sub roundNearestTiesToEven A01 (fp.mul roundNearestTiesToEven B0 K1)))
(define-fun AminusBK10 () (_ FloatingPoint 11 53) (fp.sub roundNearestTiesToEven A10 (fp.mul roundNearestTiesToEven B1 K0)))
(define-fun AminusBK11 () (_ FloatingPoint 11 53) (fp.sub roundNearestTiesToEven A11 (fp.mul roundNearestTiesToEven B1 K1)))

(declare-var root  (_ FloatingPoint 11 53))
(define-fun four () (_ FloatingPoint 11 53) (fp #b0 #b10000000001 #b0000000000000000000000000000000000000000000000000000))
(define-fun two () (_ FloatingPoint 11 53) (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000))
(define-fun one () (_ FloatingPoint 11 53) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))


;root  = (m00^2 - 2*m00*m11 + m11^2 + 4*m01*m10)^(1/2)
(constraint (= (fp.mul roundNearestTiesToEven root root)  
	(fp.add roundNearestTiesToEven 
	(fp.add roundNearestTiesToEven 
	(fp.sub roundNearestTiesToEven (fp.mul roundNearestTiesToEven AminusBK00 AminusBK00)  ;m00^2 
		(fp.mul roundNearestTiesToEven two (fp.mul roundNearestTiesToEven AminusBK00 AminusBK11));2*m00*m11
		)
	(fp.mul roundNearestTiesToEven AminusBK11 AminusBK11)) ;m11^2
	(fp.mul roundNearestTiesToEven one (fp.mul roundNearestTiesToEven AminusBK01 AminusBK10)))))

; eigenvalue 1 (m00/2 + m11/2 - (m00^2 - 2*m00*m11 + m11^2 + 4*m01*m10)^(1/2)/2)
(constraint (fp.lt (fp.sub roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.div roundNearestTiesToEven AminusBK00 two) (fp.div roundNearestTiesToEven AminusBK11 two))  
	(fp.div roundNearestTiesToEven root two)) one))

;eigenvalue 2 (m00/2 + m11/2 + (m00^2 - 2*m00*m11 + m11^2 + 4*m01*m10)^(1/2)/2)
(constraint (fp.lt (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.div roundNearestTiesToEven AminusBK00 two) (fp.div roundNearestTiesToEven AminusBK11 two))  
	(fp.div roundNearestTiesToEven root two)) one))

(constraint (and (not (fp.isNaN AminusBK00))(fp.lt AminusBK00 inputupper)(fp.gt AminusBK00 inputlower)))
(constraint (and (not (fp.isNaN AminusBK01))(fp.lt AminusBK01 inputupper)(fp.gt AminusBK01 inputlower)))
(constraint (and (not (fp.isNaN AminusBK10))(fp.lt AminusBK10 inputupper)(fp.gt AminusBK10 inputlower)))
(constraint (and (not (fp.isNaN AminusBK11))(fp.lt AminusBK11 inputupper)(fp.gt AminusBK11 inputlower)))
; ####  assert unrolling is safe using floating point####

; initial states
; (declare-var x0  (_ FloatingPoint 11 53))
; (declare-var x1  (_ FloatingPoint 11 53))
; ; step states
; (declare-var x0step1  (_ FloatingPoint 11 53))
; (declare-var x1step1  (_ FloatingPoint 11 53))
; (declare-var x0step2  (_ FloatingPoint 11 53))
; (declare-var x1step2 (_ FloatingPoint 11 53))
; (declare-var x0step3 (_ FloatingPoint 11 53))
; (declare-var x1step3 (_ FloatingPoint 11 53))


; (define-fun unroll ((x0 (_ FloatingPoint 11 53)) (x1 (_ FloatingPoint 11 53))(x0step1 (_ FloatingPoint 11 53) ) (x1step1 (_ FloatingPoint 11 53)) ) Bool
; (and
; (= x0step1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven AminusBK00 x0) (fp.mul roundNearestTiesToEven AminusBK01 x1)))
; (= x1step1 (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven AminusBK10 x0) (fp.mul roundNearestTiesToEven AminusBK11 x1)))
; ))

; ; states are safe
; (define-fun bounds_check ((x0 (_ FloatingPoint 11 53)) (x1 (_ FloatingPoint 11 53))) Bool
; 	(and (fp.lt x0 upper) (fp.lt x1 upper) (fp.gt x0 lower)(fp.gt x1 lower)))

; ; states are corner cases of init box
; (define-fun init ((x0 (_ FloatingPoint 11 53)) (x1 (_ FloatingPoint 11 53))) Bool
; 	(and (or (= x0 init_upper) (= x0 init_lower))(or (= x1 init_upper)(= x1 init_lower))))


; (constraint (=> (and (init x0 x1)(unroll x0 x1 x0step1 x1step1))(bounds_check x0step1 x1step1)))
; (constraint (=> (and (init x0 x1)(unroll x0 x1 x0step1 x1step1)(unroll x0step1 x1step1 x0step2 x1step2) )(bounds_check x0step2 x1step2)))
; (constraint (=> (and (init x0 x1)(unroll x0 x1 x0step1 x1step1)(unroll x0step1 x1step1 x0step2 x1step2)(unroll x0step2 x1step2 x0step3 x1step3)  )(bounds_check x0step3 x1step3)))


; ### assert unrolling is safe using reals ###

; (declare-var xr0  Real)
; (declare-var xr1 Real)
; (declare-var xr0step1  Real)
; (declare-var xr1step1  Real)
; (declare-var xr0step2  Real)
; (declare-var xr1step2  Real)
; (declare-var xr0step3  Real)
; (declare-var xr1step3  Real)

; ; u = k*x
; (define-fun controller_inputs () Real
;  (fp.to_real (fp.add roundNearestTiesToEven 
;  	(fp.mul roundNearestTiesToEven K0 ((_ to_fp 11 53) roundNearestTiesToEven B0r))
;  	(fp.mul roundNearestTiesToEven K1 ((_ to_fp 11 53) roundNearestTiesToEven B1r))
; )))

; (define-fun bounds_checkr ((x0 Real) (x1 Real)) Bool
; 	(and (< x0 upperr) (< x1 upperr) (> x0 lowerr)(> x1 lowerr)))

; (define-fun initr ((x0 Real) (x1 Real)) Bool
; 	(and (or (= x0 init_upperr) (= x0 init_lowerr))(or (= x1 init_upperr)(= x1 init_lowerr))))

; (define-fun unrollr ((x0 Real) (x1 Real)(x0step1 Real ) (x1step1 Real)) Bool
; (and
; (= x0step1 (- (+ (* A00r x0) (* A01r x1) ) (* B0r controller_inputs)))
; (= x1step1 (- (+ (* A10r x0) (* A11r x1) ) (* B1r controller_inputs)))
; ))

; (constraint (=> (and (initr xr0 xr1)(unrollr xr0 xr1 xr0step1 xr1step1))(bounds_checkr xr0step1 xr1step1)))
; (constraint (=> (and (initr xr0 xr1)(unrollr xr0 xr1 xr0step1 xr1step1)(unrollr xr0step1 xr1step1 xr0step2 xr1step2) )(bounds_checkr xr0step2 xr1step2)))
; (constraint (=> (and (initr xr0 xr1)(unrollr xr0 xr1 xr0step1 xr1step1)(unrollr xr0step1 xr1step1 xr0step2 xr1step2)(unrollr xr0step2 xr1step2 xr0step3 xr1step3))(bounds_checkr xr0step3 xr1step3)))


(check-synth)


