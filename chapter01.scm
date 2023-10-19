;; exercise 1.1
;; this exercise was actually to interpret the code yourself, so there is no sense in adding it here

;; exercise 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))) (* 3 (- 6 2) (- 2 7)))))

;; exercice 1.3
(define (sumsquare a b c) (cond ((and (< a b) (< a c)) (+ (* b b) (* c c)))
			     ((and (< b a) (< b c)) (+ (* a a) (* c c)))
			     (else (+ (* a a) (* b b))))
)

(sumsquare 1 2 3)

;; exercise 1.4
;;(define (a-plus-abs-b a b)
;;  ((if (> b 0) + -) a b))
;;
;; since smaller expressions are evaluated first following the applicative model of evaluation
;; > b 0 is evaluated first, then the conditional operator if, which results in a compound operator + or -
;; the compound operator with the arguments will be evaluated in the end

;; exercise 1.5
;; given
;; (define (p) (p))
;; (define (test x y) (if (= x 0) 0 y))
;; (test 0 (p))
;;
;; applicative-order evaluation
;; this way of evaluation starts by evaluating operators and operands
;; since we get two arguments 0, and a procedure '(p)', replacing in applicative order from the operands we obtain

(if (= 0 0) 0 y)
;; result is 0

;; normal-order evaluation
;; normal order starts by replacing operands with primitives and evaluating the whole in the end

(if (= 0 0) 0 (p))
; since (p) is a procedure there nothing to evaluate there, cannot be converted to primitive type
; result is 0
