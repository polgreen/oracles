; SMT 2
; Generated for Z3
;   dcmotor_Ts1000ms
;   double A00 = 9.012249e-01;
; 	double A01 = 1.342930e-08;
; 	double A10 = 7.450581e-09;
; 	double A11 = 0;

; 	double B0 = 128;
; 	double B1 = 0;
; 	double K0;
; 	double K1;


(define-fun A00 () (_ FloatingPoint 11 53) (fp #b0 #b10000000000 #b0000000000000000000000000000000000000000000000000000))

; set_to true (equal)
(define-fun A01() (_ FloatingPoint 11 53) (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000000))

; set_to true (equal)
(define-fun A10 () (_ FloatingPoint 11 53) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))

; set_to true (equal)
(define-fun A11 () (_ FloatingPoint 11 53) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))

; set_to true (equal)
(define-fun B0 () (_ FloatingPoint 11 53) (fp #b0 #b01111110011 #b1111111111111111111111001001000001100100000001001100))

; set_to true (equal)
(define-fun B1 () (_ FloatingPoint 11 53) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))


; controller
(declare-fun K0 () (_ FloatingPoint 11 53))
(declare-fun K1 () (_ FloatingPoint 11 53))


(define-fun AminusBK00 () (_ FloatingPoint 11 53) (fp.sub roundNearestTiesToEven A00 (fp.mul roundNearestTiesToEven B0 K0)))
(define-fun AminusBK01 () (_ FloatingPoint 11 53) (fp.sub roundNearestTiesToEven A01 (fp.mul roundNearestTiesToEven B0 K1)))
(define-fun AminusBK10 () (_ FloatingPoint 11 53) (fp.sub roundNearestTiesToEven A10 (fp.mul roundNearestTiesToEven B1 K0)))
(define-fun AminusBK11 () (_ FloatingPoint 11 53) (fp.sub roundNearestTiesToEven A11 (fp.mul roundNearestTiesToEven B1 K1)))

(declare-oracle-fun isStable isstable ((_ FloatingPoint 11 53)(_ FloatingPoint 11 53)(_ FloatingPoint 11 53)(_ FloatingPoint 11 53)) Bool)
;(declare-fun isStable ((_ FloatingPoint 11 53)(_ FloatingPoint 11 53)(_ FloatingPoint 11 53)(_ FloatingPoint 11 53)) Bool)


(assert (isStable AminusBK00 AminusBK01 AminusBK10 AminusBK11))
(assert (not (fp.isNaN AminusBK00)))
(assert (not (fp.isNaN AminusBK01)))
(assert (not (fp.isNaN AminusBK10)))
(assert (not (fp.isNaN AminusBK11)))
(check-sat)
(get-model)

