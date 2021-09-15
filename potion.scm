(load "nondeterminism.scm")

;; 4 clues
;;

;; need to model size
;; also need to have an attribute of what they "are" so that we can specify that second left and second right are twins

(define (distinct? items)
  (cond ((null? items) true)
        ((null? (cdr items)) true)
        ((member (car items) (cdr items)) false)
        (else (distinct? (cdr items)))))

;; the order of the choose operations does determine whether the program runs out of memory or not

(define (potions)
  (let* ((potions '(1 2 3 4 5 6 7))
         (poison-1 (choose potions))
        (nettle-1 (choose potions))
        (poison-2 (choose potions))
        (nettle-2 (choose potions))
        (poison-3 (choose potions))
        (reverse (choose potions))
        (forward (choose potions)))
    (require (distinct? (list nettle-1 nettle-2 poison-1 poison-2 poison-3 forward reverse)))
    (require (= (- nettle-1 poison-1) 1)) ;; poison is always to the left of nettle
    (require (= (- nettle-2 poison-2) 1))
    (require (< forward 7))
    (require (> forward 1))
    (list (list 'nettle-1 nettle-1)
          (list 'nettle-2 nettle-2)
          (list 'poison-1 poison-1)
          (list 'poison-2 poison-2)
          (list 'poison-3 poison-3)
          (list 'forward forward)
          (list 'reverse reverse))))

(potions)
