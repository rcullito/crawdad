(load "nondeterminism.scm")

(define (distinct? items)
  (cond ((null? items) true)
        ((null? (cdr items)) true)
        ((member (car items) (cdr items)) false)
        (else (distinct? (cdr items)))))


(define (multiple-dwelling)
  (let* ((floors '(1 2 3 4 5))
        (baker (choose floors))
        (cooper (choose floors))
        (fletcher (choose floors))
        (miller (choose floors))
        (smith (choose floors)))
    (if (not (distinct? (list baker cooper fletcher miller smith)))
        (fail)
        (list (list 'baker baker)
              (list 'cooper cooper)
              (list 'fletcher fletcher)
              (list 'miller miller)
              (list 'smith smith)))))

(multiple-dwelling)

