(load "nondeterminism.scm")

(define (distinct? items)
  (cond ((null? items) true)
        ((null? (cdr items)) true)
        ((member (car items) (cdr items)) false)
        (else (distinct? (cdr items)))))


(define (multiple-dwelling)
  (let ((baker (choose 1 2 3 4 5))
        (cooper (choose 1 2 3 4 5))
        (fletcher (choose 1 2 3 4 5))
        (miller (choose 1 2 3 4 5))
        (smith (choose 1 2 3 4 5)))))

